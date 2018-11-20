<?php
	include_once('config.php');
?>

<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>Latihan Membuat Blog</title>

		<!-- Bootstrap -->
		<link href="css/bootstrap.min.css" rel="stylesheet">
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" 
		integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

	</head>
	<body>
		<nav class="navbar navbar-expand-sm justify-content-center bg-dark navbar-dark fixed-top">
  			<h4 class="text-center" style="color: white"><em>havituloh</em></h4>		
		</nav>
	
		<!-- CONTENT GOES HERE -->
		<div class="container" style="margin-top:80px">
			<div class="blog-header">
				<h1 class="blog-title text-center">Latihan Membuat Blog  Tanpa MVC</h1>
				<a href="index.php">Pencarian di Menu My Blog</a>
			</div>

			<div class="row">
				<div class="col-md-9 blog-main">
					<?php
						//cek apakah ada proses menekan tombol search atau tidak
						if(isset($_GET['submit'])){
							$search_keyword = $_GET['search_keyword'];
						}else{
							$search_keyword = "";
						}

						$result = mysqli_query($mysqli, "select * from artikel join kategori on artikel.id_kategori = kategori.id_kategori where judul_artikel like '%$search_keyword%' order by tanggal_artikel desc");
					?>

					<form action="index.php" method="GET">

						<div class="row">
							<div class="col-md-8">
								<div class="form-group">
									<input type="text" class="form-control" name="search_keyword" placeholder="Cari..." value="<?php echo $search_keyword; ?>">
								</div>
							</div>
							<div class="col-md-2">
								<input type="submit" class="btn btn-primary btn-block" name="submit" value="Search">
							</div>
							<div class="col-md-2">
								<a href="index.php" class="btn btn-primary btn-block">Reset</a>
							</div>
						</div>

					</form>
					

					<?php
						//fungsi cek jumlah baris dari hasil query
						if(mysqli_num_rows($result) == 0){
							echo "<em>Tidak ada artikel</em>";
						}else{
							while($artikel_data = mysqli_fetch_array($result)){
								?>
								<div class="blog-post">
									<h2 class="blog-post-title"><?php echo $artikel_data['judul_artikel']; ?></h2>
									<p class="blog-post-meta"><?= $artikel_data['tanggal_artikel'] ?> by <a href="#"><?= $artikel_data['author_artikel'] ?></a></p>

									<span class="label label-success"><?php echo $artikel_data['nama_kategori']; ?></span>

									<p>
										<?= $artikel_data['isi_artikel'] ?>
									</p>

									<a href="edit.php?id_artikel=<?php echo $artikel_data['id_artikel']; ?>" class="btn btn-primary">Edit</a>
									<a href="delete.php?id_artikel=<?php echo $artikel_data['id_artikel']; ?>" class="btn btn-warning" onclick="return confirm('Apakah anda yakin akan menghapus artikel ini?');">Delete</a>
								</div>
								<?php
							}
						}
					?>

				</div>
				<br>
				<div></div>
				<div class="col-md-3">
					<a href="add.php" class="btn btn-success btn-block">Tambah Artikel</a>
				</div>
			</div>

		</div>

		<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
		<!-- Include all compiled plugins (below), or include individual files as needed -->
		<script src="js/bootstrap.min.js"></script>
	</body>
</html>