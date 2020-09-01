@extends('admin.master')

@section('konten')

<div class="container-fluid">
  <div class="row mt-1">
  <!-- Gambar Buku -->
  <div class="col-md-4">
    <br>
      <img src="{{url('images/noimg.png')}}" class="d-block w-100 img-fluid"><br>
      <input type="file" name="">
  </div>
  <div class="col-md-8 mt-3">
    <!-- Judul Buku -->
    <div class="col-md-12">
      <div class="card border rounded shadow-sm">
        <!-- Status -->
        <h5 class="card-header text">
          Edit calon
        </h5>

        <div class="card-body">
        
              <!-- Input Disembunyikan -->
              <input type="hidden" name="id" value="">
              <input type="hidden" name="nama_produk" value="">


              <!-- Nama -->
              <div class="form-group row">
                <label for="Nama" class="col-md-2 col-form-label col-form-label-md">Nama ketua</label>
                <div class="col-md-4">
                  <input type="text" name="nama" class="form-control form-control-md border " id="colFormLabelSm" placeholder="Masukan nama">
                </div>
                <label for="Nama" class="col-md-2 col-form-label col-form-label-md">Nama wakil</label>
                <div class="col-md-4">
                  <input type="text" name="nama" class="form-control form-control-md border " id="colFormLabelSm" placeholder="Masukan nama">
                </div>
              </div>

              <!-- Kelas -->
              <div class="form-group row">
                <label for="Kelas" class="col-md-2 col-form-label col-form-label-md">Kelas ketua</label>
                <div class="col-md-4">
                  <input type="text" name="Kelas" class="form-control form-control-md border " id="colFormLabelSm" value="" placeholder="Masukan Kelas">
                </div>
                <label for="Kelas" class="col-md-2 col-form-label col-form-label-md">Kelas wakil</label>
                <div class="col-md-4">
                  <input type="text" name="Kelas" class="form-control form-control-md border " id="colFormLabelSm" value="" placeholder="Masukan Kelas">
                </div>
              </div>

              <!-- Visi  -->
              <div class="form-group row">
                <label for="Visi" class="col-md-2 col-form-label col-form-label-md">Visi</label>
                <div class="col-md-10">
                  <textarea type="text" name="Visi" class="form-control form-control-md border " id="colFormLabelSm" rows="3"></textarea> 
                </div>
              </div>

              <!-- Misi -->
              <div class="form-group row">
                <label for="misi" class="col-md-2 col-form-label col-form-label-md">Misi</label>
                <div class="col-md-10">
                  <textarea type="text" name="misi" class="form-control form-control-md border " id="colFormLabelSm" rows="3"></textarea> 
                </div>
              </div>

              <a href="?page=home" class="btn btn-warning">Edit</a>
              <a href="/calon" class="btn btn-danger">Kembali</a> 
        </div>
      </div>
    </div>
  </div>
</div>
<br>
<br>
<br>
<br>
<br>
</div>

@endsection