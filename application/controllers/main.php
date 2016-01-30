<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Main extends CI_Controller {

	public function index()
	{
		// $this->load->model('normal')
		$this->load->view('main_view');
	}
	public function search($search_key='')
	{
		$route_array = $this->normaldata->get_routes($search_key);
		// var_dump($route_array);
		echo json_encode($route_array);
			// return $route_array;
	}
	public function look($search_key='')
	{
		$route_array = $this->normaldata->search_all_routes($search_key);
		// var_dump($route_array);
		echo json_encode($route_array);
			// return $route_array;
		// print_r($route_array);
	}

}

/* End of file main.php */
/* Location: ./application/controllers/main.php */