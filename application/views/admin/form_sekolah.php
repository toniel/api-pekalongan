<div class="col-md-12">
    <div class="box box-primary">
        <div class="box-header with-border">
            <h3 class="box-title">Tambah Sekolah</h3>
        </div>
        <form role="form" action="<?=site_url('sekolah')?>" method="post">
            <div class="box-body">
                <div class="form-group">
                    <label for="nama_sekolah">Nama Sekolah</label>
                    <input type="text" name="nama_sekolah" placeholder="Masukkan nama Sekolah" class="form-control">
                </div>
            </div>
            <div class="box-body">
                <div class="form-group">
                    <label for="alamat_sekolah">Alamat</label>
                    <textarea placeholder="alamat" name="alamat_sekolah" class="form-control"></textarea>
                </div>
            </div>
            <div class="box-body">
                <div class="form-group">
                    <label for="tingkat">Pilih tingkat</label>
                    <select name="tingkat" class="form-control">
                        <option value="0">---PILIH TINGKAT---</option>
                        <option value="1">SD</option>
                        <option value="2">SMP</option>
                        <option value="3">SMA/SMK</option>
                    </select>
                </div>
            </div>
            <div class="box-body">
                <div class="form-group">
                    <label for="kecamatan_id">Pilih Kecamatan</label>
                    <select name="kecamatan_id" id="kecamatan" onchange="getKelurahan()" class="form-control">
                        <option value="0">---PILIH KECAMATAN---</option>
                        <?php foreach ($kecamatan as $k): ?>
                          <option value="<?=$k->id_kecamatan?>"><?= $k->nama_kecamatan ?></option>
                        <?php endforeach ?>
                    </select>
                </div>
            </div>
            <div id="kelurahan">

            </div>
            <div class="box-body">
                <div class="form-group">
                    <button type="submit" class="btn btn-primary">Simpan</button>
                </div>
            </div>
        </form>
    </div>
</div>
<script>
  function getKelurahan() {
    // body...
    var kecamatan_id = $('#kecamatan').val();
    $.post("http://localhost/api-pekalongan/admin/sekolah/get_kelurahan",{kecamatan_id:kecamatan_id},function(data){
        $('#kelurahan').html(data);
    });
  }
</script>
