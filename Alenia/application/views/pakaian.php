 <!-- MAIN -->
    <div class="col">
        <div class="container">
            <div class="row mt-4">
              <div class="col">
                <center>
                  <h1>Zona Pakaian</h1>  
                </center>
                <br>
              </div>
            </div>
                



                <div class="row mt-3">
                    <?php foreach($pakaian as $lt): ?>
                    <div class="col-md-4 py-3">
                      <div class="card round h-100">
                          <img src="upload/menu/<?php echo $lt->img; ?>" class="card-img-top" alt="...">
                            <div class="card-body">
                            <center>
                                <h3 class="card-title"><?php echo $lt->nama_outfit; ?> <small><span class="badge badge-success">Rp. <?php echo $lt->harga_satuan ?> </span></small>  </h3>
                            </center>
                            <p class="card-text"><?php echo $lt->deskripsi ?>

                            </div>
                          <a href="<?= base_url().'Cart_controller/addCart/'.$lt->kd_menu ?>" style="text-decoration: none; color: black;" class="card mb-3">
                        <button type="button" class="btn btn-primary" >Beli sekarang</button>
                        </a>
                    </div>
                  </div>
                    <?php endforeach ?>
                </div>
        </div>
    </div>
    <!-- END MAIN -->