<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Normaldata extends CI_Model {

	function __construct($data = null) {
		$this->data = $data;	
	}
	public function get_routes($sk='')
	{
		$query = $this->db->get_where('routes', array('route_long_name'=>$sk));		
		$data = array();
		$main = array();
		foreach ($query->result() as $row)
		{
			
		    $data['route_short_name'] = $row->route_short_name;
		    $data['route_long_name'] = $row->route_long_name;
		    $data['route_desc'] = $row->route_desc;
		    $main[] = $data;
		}
		// print_r($query);
		return $main;

	}

	public function search_all_routes($sk='')
	{
		$query = $this->db->select('*');
		$query = $this->db->from('routes');
		$query = $this->db->like('route_long_name', $sk);
		$query = $this->db->or_like('route_short_name', $sk);
		$query = $this->db->or_like('route_desc', $sk);
		$query = $this->db->get();
		$data = array();
		$main = array();
		foreach ($query->result() as $row)
		{
			
		    $data['route_short_name'] = $row->route_short_name;
		    $data['route_long_name'] = $row->route_long_name;
		    $data['route_desc'] = $row->route_desc;
		    $main[] = $data;
		}
		// print_r($query);
		return $main;
	}

}

/* End of file normaldata.php */
/* Location: ./application/models/normaldata.php */