<?php
class Site_settings extends MX_Controller 
{

function __construct() {
parent::__construct();
}

function _get_map_code()
{
    $code = '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2239.2283190121584!2d-4.257482484450545!3d55.8587049805818!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4888469ee3846eff%3A0x7944a8803f167889!2s56+Buchanan+St%2C+Glasgow+G1+3HL!5e0!3m2!1sen!2suk!4v1473833012696" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>';
    return $code;
}

function _get_our_name()
{
    $name = 'Coolness Inc';
    return $name;
}

function _get_our_address()
{
    $address = '88 Something Ave, Suite 600<br>';
    $address.= 'San Francisco, CA 94188';
    return $address;
}

function _get_our_telnum()
{
    $telnum = '(123) 456-1234';
    return $telnum;
}

function _get_paypal_email()
{
    $email = 'david@dcradionetwork.com';
    return $email;
}

function _get_support_team_name()
{
    $name = "Customer Support";
    return $name;
}

function _get_welcome_msg($customer_id)
{
    $this->load->module('store_accounts');
    $customer_name = $this->store_accounts->_get_customer_name($customer_id);

    $msg = "Hello ".$customer_name.",<br><br>";
    $msg.= "Thank you for creating an account with CI Shop.  If you have any questions ";
    $msg.= "about any of our products and services then please do get in touch.  We are here ";
    $msg.= "seven days a week and would be happy to help you.<br><br>";
    $msg.= "Regards,<br><br>";
    $msg.= "David Connelly (founder)";
    return $msg;
}

function _get_cookie_name()
{
    $cookie_name = 'hwefcdsdfhz';
    return $cookie_name;
}

function _get_currency_symbol()
{
    $symbol = "&pound;";
    return $symbol;
}

function _get_currency_code()
{
    $code = "GBP";
    return $code;
}

function _get_item_segments()
{
    //return the segments for the store_item pages (produce pages)
    $segments = "musical/instrument/";
    return $segments;
}

function _get_items_segments()
{
    //return the segments for the category pages
    $segments = "music/instruments/";
    return $segments;
}

function _get_page_not_found_msg()
{
    $msg = "<h1>It's a webpage Jim but not as we know it!</h1>";
    $msg.= "<p>Please check your vibe and try again.</p>";
    return $msg;
}











}