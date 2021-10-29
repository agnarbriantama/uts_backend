
<?php
defined('BASEPATH') OR exit('No direct scipt access allowes');
/**
 * 
 */
class Pakaian_controller extends CI_Controller
{
	public function __construct(){
		parent::__construct();
		if($this->session->userdata('username')==NULL){
            redirect('Login_controller','refresh');   
        }
		$this->load->model('Menu_Pakaian');
		$this->load->helper('url');
		$this->load->helper('form');
	}

	public function index(){
		$content = $this->cart->contents();
		$data ['pakaian']= $this->Menu_Pakaian->tampilPakaian();
		$nav ['title']= "Pakaian";
		$this->load->view('navbar/index_navbar.php',$nav);
		$this->load->view('pakaian.php', $data);
		$this->load->view('cart/index_cart.php', array('content' => $content));
	}
}
?>
