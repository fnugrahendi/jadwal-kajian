<html>
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>Kajian Rutin | <?echo $judul;?></title>
		<link href="dist/css/bootstrap.min.css" rel="stylesheet">
		<script src="dist/js/jquery.min.js"></script>
		<script src="dist/js/bootstrap.min.js"></script>
	</head>
	<body>
		<nav class="navbar navbar-inverse">
			<div class="container-fluid">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#menuAtas">
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span> 
					</button>
					<a class="navbar-brand" href="#">Kajian Rutin di Jogja</a>
				</div>
				<div class="collapse navbar-collapse" id="menuAtas">
					<ul class="nav navbar-nav navbar-right">
						<li <?if ($page==0) echo "class='active'";?>><a href="index.php">Hari ini</a></li>
						<li class="dropdown">
						<a class="dropdown-toggle" data-toggle="dropdown" href="#">Kajian Sepekan<span class="caret"></span></a>
							<ul class="dropdown-menu">
								<li <?if ($page==1) echo "class='active'";?>><a href="pekan-hari.php">Sesuai Hari</a></li>
								<li <?if ($page==2) echo "class='active'";?>><a href="pekan-tempat.php">Sesuai Tempat</a></li>
							</ul>
							</li>
						<li <?if ($page==3) echo "class='active'";?>><a href="input.php">Tambah Jadwal</a></li>
					</ul>
				</div>
			</div>
		</nav>
