<form role="form" action="tambahdata.php" method="post">
				<div class="form-group">
					<label for="hari">Hari:</label>
					<select class="form-control" id="hari" name="hari">
						<option>Ahad</option>
						<option>Senin</option>
						<option>Selasa</option>
						<option>Rabu</option>
						<option>Kamis</option>
						<option>Jum'at</option>
						<option>Sabtu</option>
					</select>
					</div>
				<div class="form-group">
					<label for="kajian">Kajian Rutin:</label>
					<input type="text" class="form-control" id="kajian" name="kajian">
				</div>
				<div class="form-group">
					<label for="nama">Pengisi:</label>
					<input type="text" class="form-control" id="nama" name="nama">
				</div>
				<div class="form-group">
					<label for="tempat">Tempat Kajian:</label>
					<input type="text" class="form-control" id="tempat" name="tempat">
				</div>
				<div class="form-group">
					<label for="waktu">Waktu Kajian (format: hh:mm:ss) :</label>
					<input name="waktu" type='time' class="form-control" id="waktu">
                </div>
				<button type="submit" class="btn btn-default">Tambah</button>
			</form>
