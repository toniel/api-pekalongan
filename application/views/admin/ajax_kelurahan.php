<div class="box-body">
    <div class="form-group">
        <label for="kelurahan_id">Pilih Kelurahan</label>
        <select name="kelurahan_id" class="form-control">
            <option value="0">---PILIH KELURAHAN---</option>
            <?php foreach ($kelurahan as $k): ?>
              <option value="<?=$k->id_kelurahan?>"><?= $k->nama_kelurahan ?></option>
            <?php endforeach ?>
        </select>
    </div>
</div>