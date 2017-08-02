<?php
class Slides extends MX_Controller 
{

function __construct() {
parent::__construct();
}


function _get_parent_title($parent_id)
{
    $this->load->module('sliders');
    $parent_title=$this->sliders->_get_title($parent_id);
    return $parent_title;
}

function _get_entity_name($type)
{
    //type can be singular or prular 
    if($type=='singular')
    {
        $entity_type='slide';
    }
    else
    {
        // plural 
        $entity_type='slides';
    }
    return $entity_type;
}

function _get_update_group_headline($parent_id)
{
    $parent_title= ucfirst($this->_get_parent_title($parent_id));
    $entity_name=ucfirst($this->_get_entity_name('plural'));
    $headline='Update '. $entity_name.' for '.$parent_title;
    return $headline;
}

function update_group($parent_id)
{
    // update/ manage records belonging to a parent category 
    $this->load->module('site_security');
    $this->site_security->_make_sure_is_admin();

    $data['parent_id']= $parent_id;
    $data['flash']=$this->session->flashdata('item'); 
    $data['headline']=$this->_get_update_group_headline($parent_id);
    $data['query']=$this->get_where_custom('parent_id', $parent_id);
    $data['num_rows']=$data['query']->num_rows();
    $data['entity_name']=$this->_get_entity_name('plural');
    $data['parent_title']=$this->_get_parent_title($parent_id);
    $data['view_file']="update_group";
    $this->load->module('templates');
    $this->templates->admin($data);
}


function deleteconf($update_id)
{
    if (!is_numeric($update_id)) 
     {
        redirect('site_security/not_allowed');
     }

    $this->load->module('site_security');
    $this->site_security->_make_sure_is_admin();

    $entity_name=$this->_get_entity_name('singular');
    $data['headline']= "Delete ".$entity_name;
    $data['update_id']=$update_id;
    $data['flash']=$this->session->flashdata('item');  
    $data['view_file']="deleteconf";
    $this->load->module('templates');
    $this->templates->admin($data);

}

function delete($update_id)
{
     if (!is_numeric($update_id)) 
     {
        redirect('site_security/not_allowed');
     }

    $this->load->module('site_security');
    $this->site_security->_make_sure_is_admin();

    $submit=$this->input->post('submit', TRUE);
    if ($submit=="Cancel")
     {
        redirect('slides/view/'.$update_id);
    }

    elseif ($submit=="Yes - Delete") 
    {
        $parent_id=$this->_get_parent_id($update_id);
        $this->_process_delete($update_id);

        $entity_name=$this->_get_entity_name('singular');
        $flash_msg="The ".$entity_name." was successfull deleted";
        $value= '<div class="alert alert-success" role="alert">'.$flash_msg.'</div>';
        $this->session->set_flashdata('item',$value);

        redirect('slides/update_group/'.$parent_id);


    }
}


function _process_delete($update_id)
{
    $data=$this->fetch_data_from_db($update_id);
    $picture= $data['picture'];

    $picture_path='./assets/slider_pics/'.$picture;

    // attempt to delete images
    if(file_exists($picture_path))
    {
        unlink($picture_path);
    }
 
    // attempt to delete the item records from store_items 
    $this->_delete($update_id);


}

function _draw_create_modal($parent_id)
{
    // modal for creating new records 
    $data['parent_id']=$parent_id;
    $data['form_location']= base_url().'slides/submit_create';
    $this->load->view('create_modal', $data);
}

function submit_create()
{
    // form hs been submitted , try to create new records 
    $this->load->module('site_security');
    $this->site_security->_make_sure_is_admin();

    $data['parent_id']=$this->input->post('parent_id', TRUE);
    $data['target_url']=$this->input->post('target_url', TRUE);
    $data['alt_text']=$this->input->post('alt_text', TRUE);
    $this->_insert($data);
    $max_id=$this->get_max();
    redirect('slides/view/'.$max_id);
}


function _get_parent_id($update_id)
{
    $data=$this->fetch_data_from_db($update_id);
    $parent_id=$data['parent_id'];
    return $parent_id;
}

function fetch_data_from_post()
{
    $data['target_url'] = $this->input->post('target_url',TRUE);
    $data['alt_text'] = $this->input->post('alt_text',TRUE);
    $data['parent_id'] = $this->input->post('parent_id',TRUE);
    return $data;
}

function fetch_data_from_db($update_id)
{

     if (!is_numeric($update_id)) 
     {
        redirect('site_security/not_allowed');
     }

    $query= $this->get_where($update_id);
    foreach ($query->result() as $row) {
        $data['target_url']= $row->target_url;
        $data['alt_text']= $row->alt_text;
        $data['picture']= $row->picture;
        $data['parent_id']= $row->parent_id;
    }

    if(!isset($data))
    {
        $data= "";
    }
    return $data;
}


function view($update_id)
{
    // view details regording this record and display form
    $this->load->module('site_security');
    $this->site_security->_make_sure_is_admin();

    $update_id = $this->uri->segment(3);
    $submit= $this->input->post('submit',TRUE);

    if($submit=="Cancel")
    {
        redirect('slides/update_group/'.$parent_id);
    }  

    if($submit!="Submit")
    {
        $data= $this->fetch_data_from_db($update_id);
    }
    else
    {
        $data= $this->fetch_data_from_post();
        $data['picture']="";
    }

    $entity_name=ucfirst($this->_get_entity_name('singular'));
    $data['entity_name']=$entity_name;
    $data['headline'] = "Update ".$entity_name;   
    $data['update_id']=$update_id;
    $data['flash']=$this->session->flashdata('item');  
    $data['view_file']="view";
    $this->load->module('templates');
    $this->templates->admin($data);
}

function _draw_img_btn($update_id)
{
    // drwa'upload image' button on the top of the view page 
    $data=$this->fetch_data_from_db($update_id);
    $picture= $data['picture'];
    if($picture=='')
    {
        $data['got_pic']=FALSE;
        $data['btn_style']='';
        $data['btn_info']='No picture has been submitted so far for this slide ';
    }
    else
    {
        $data['got_pic']=TRUE;
        $data['btn_style']=" style='clear: both; margin-top:24px;'";
        $data['btn_info']='The picture that is used for this slide is shown below';
        $data['pic_path']= base_url().'assets/slider_pics/'.$picture;
    }
    $this->load->view('img_btn', $data);
}


function upload_image($update_id)
{

     if (!is_numeric($update_id)) 
     {
        redirect('site_security/not_allowed');
     }

    $this->load->library('session');
    $this->load->module('site_security');
    $this->site_security->_make_sure_is_admin();

    $data['headline']= "Upload Image";
    $data['update_id']=$update_id;
    $data['flash']=$this->session->flashdata('item');  
    $data['view_file']="upload_image";
    $this->load->module('templates');
    $this->templates->admin($data);

}


//  function of uploading image
function do_upload($update_id)
{

     if (!is_numeric($update_id)) 
     {
        redirect('site_security/not_allowed');
     }


    $this->load->library('session');
    $this->load->module('site_security');
    $this->site_security->_make_sure_is_admin();

    $submit=$this->input->post('submit',TRUE);
    if ($submit=="Cancel") 
    {
        $parent_id=$this->_get_parent_id($update_id);
        redirect('slides/update_group/'.$parent_id);
    }

    $config['upload_path']          = './assets/slider_pics/';
    $config['allowed_types']        = 'gif|jpg|png';
    $config['max_size']             = 400;
    $config['max_width']            = 1624;
    $config['max_height']           = 968;

    $this->load->library('upload', $config);

    // if image uploading is unsuccessfull
    if ( !$this->upload->do_upload('userfile'))
     {
          $data['error'] = array('error' => $this->upload->display_errors("<p style='color: red;'>","</p>"));
          $data['headline']= "Upload Error";
          $data['update_id']=$update_id;
          $data['flash']=$this->session->flashdata('item');  
          $data['view_file']="upload_image";
          $this->load->module('templates');
          $this->templates->admin($data);

     }
   else
    {
        // upload was successfull
          $data = array('upload_data' => $this->upload->data());

          $upload_data= $data['upload_data'];
          $file_name= $upload_data['file_name'];

          // update the data base
          $update_data['picture']= $file_name;
          $this->_update($update_id,$update_data);

          // divert the user to the view 
          redirect('slides/view/'.$update_id);

    }
}


function submit($update_id)
{
    // update the form that has been submitted via or through / view
    $this->load->module('site_security');
    $this->site_security->_make_sure_is_admin();

    $submit=$this->input->post('submit', TRUE);
    $target_url=$this->input->post('target_url', TRUE);
    $alt_text=$this->input->post('alt_text', TRUE);

    if($submit=="Cancel")
    {
        $parent_id=$this->_get_parent_id($update_id);
        redirect('slides/update_group/'.$parent_id);
    }
    elseif ($submit=="Submit") 
    {
        $data['target_url']=$target_url;
        $data['alt_text']=$alt_text;
        $this->_update($update_id, $data);
        redirect('slides/view/'.$update_id);
    }
}


function get($order_by)
{
    $this->load->model('mdl_slides');
    $query = $this->mdl_slides->get($order_by);
    return $query;
}

function get_with_limit($limit, $offset, $order_by) 
{
    if ((!is_numeric($limit)) || (!is_numeric($offset))) {
        die('Non-numeric variable!');
    }

    $this->load->model('mdl_slides');
    $query = $this->mdl_slides->get_with_limit($limit, $offset, $order_by);
    return $query;
}

function get_where($id)
{
    if (!is_numeric($id)) {
        die('Non-numeric variable!');
    }

    $this->load->model('mdl_slides');
    $query = $this->mdl_slides->get_where($id);
    return $query;
}

function get_where_custom($col, $value) 
{
    $this->load->model('mdl_slides');
    $query = $this->mdl_slides->get_where_custom($col, $value);
    return $query;
}

function _insert($data)
{
    $this->load->model('mdl_slides');
    $this->mdl_slides->_insert($data);
}

function _update($id, $data)
{
    if (!is_numeric($id)) {
        die('Non-numeric variable!');
    }

    $this->load->model('mdl_slides');
    $this->mdl_slides->_update($id, $data);
}

function _delete($id)
{
    if (!is_numeric($id)) {
        die('Non-numeric variable!');
    }

    $this->load->model('mdl_slides');
    $this->mdl_slides->_delete($id);
}

function count_where($column, $value) 
{
    $this->load->model('mdl_slides');
    $count = $this->mdl_slides->count_where($column, $value);
    return $count;
}

function get_max() 
{
    $this->load->model('mdl_slides');
    $max_id = $this->mdl_slides->get_max();
    return $max_id;
}

function _custom_query($mysql_query) 
{
    $this->load->model('mdl_slides');
    $query = $this->mdl_slides->_custom_query($mysql_query);
    return $query;
}

}