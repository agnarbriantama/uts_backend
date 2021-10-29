<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Menu_Pakaian extends CI_Model {

    public function tampilMenu()
    {
       return $this->db->get('outfit')->result();
    }

    public function tampilTerbaru()
    {
        $query = $this->db->query("SELECT * FROM outfit ORDER BY kd_menu DESC LIMIT 6");
        return $query->result();
    }

    public function tampilPakaian()
    {
        $query = $this->db->query("SELECT * FROM outfit WHERE type = 'pakaian'");
        return $query->result();
    }

    public function tampilSepatu()
    {
        $query = $this->db->query("SELECT * FROM outfit WHERE type = 'sepatu'");
        return $query->result();
    }

    public function tampilTas()
    {
        $query = $this->db->query("SELECT * FROM outfit WHERE type = 'tas'");
        return $query->result();
    }

    public function tambahMenu($kd_menu, $img){
        $this->load->library('upload');
        $dataMenu=[
              'kd_menu'=>$kd_menu,
              'nama_outfit'=>$this->input->post('nama_outfit', true),
              'type'=>$this->input->post('type', true),
              'deskripsi'=>$this->input->post('deskripsi', true),
              'harga_satuan'=> $this->input->post('harga_satuan', true),
              'stok'=>$this->input->post('stok', true),
              'img'=>$img,
        ];
        $this->db->insert('outfit', $dataMenu); 
    }

    public function editMenu($kd_menu, $img){
        $dataMenu=[
              'harga_satuan'=> $this->input->post('harga_satuan', true),
              'stok'=>$this->input->post('stok', true),
              'img'=>$img,
        ];
        $this->db->where('kd_menu', $kd_menu);
        $this->db->update('outfit', $dataMenu);
    }
    
    public function hapusMenu($kd_menu)
    {
		$this->db->where('kd_menu', $kd_menu);
		$this->db->delete('outfit');
    }

    public function cariMenu(){
	    $keyword=$this->input->post('keyword');
	    $this->db->like('nama_outfit', $keyword);
        $this->db->or_like('type', $keyword);
        $this->db->or_like('deskripsi', $keyword);
        $this->db->or_like('harga_satuan', $keyword);
	    return $this->db->get('outfit')->result_array();
	}

    public function cekKodeMenu()
    {
        $query = $this->db->query("SELECT MAX(kd_menu) as kodemenu from outfit");
        $hasil = $query->row();
        return $hasil->kodemenu;
    }

    public function getMenuToCart($kd_menu){
        $query = $this->db->query("SELECT * from outfit where kd_menu='$kd_menu'");
        $hasil = $query->row();
        $cart = array(
            'id'      => $hasil->kd_menu,
            'qty'     => 1,
            'price'   => $hasil->harga_satuan,
            'name'    => $hasil->nama_outfit,
            'stok'    => $hasil->stok, 
            'catatan' => '' 
        );
        $this->cart->insert($cart);
    }

    public function cekStok($kd_menu)
    {
        $query = $this->db->query("SELECT stok from outfit where kd_menu= '$kd_menu'");
        $hasil = $query->row();
        return $hasil->stok;
    }

    public function cekImg($kd_menu)
    {
        $query = $this->db->query("SELECT img from outfit where kd_menu= '$kd_menu'");
        $hasil = $query->row();
        return $hasil->img;
    }

    public function updateStok($kd_menu, $stok){
        $dataMenu=[
              'stok'=>$stok,
        ];
        $this->db->where('kd_menu', $kd_menu);
        $this->db->update('outfit', $dataMenu);
    }    
}

