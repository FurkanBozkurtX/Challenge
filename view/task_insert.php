<?php 
	require "inc/config.php";
	
?>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

</head>
<div class="container">
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
	  <div class="container-fluid">
		<a class="navbar-brand" href="#">TASK</a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
		  <span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarNav">
		  <ul class="navbar-nav">
			
			<li class="nav-item">
			  <a class="nav-link" href="#">PURE</a>
			</li>
			
			<li class="nav-item">
			  <a class="nav-link" href="#">CODEIGNITER</a>
			</li>
			
			<li class="nav-item">
			  <a class="nav-link" href="#">LARAVEL</a>
			</li>
			
			<li class="nav-item">
			  <a class="nav-link" href="#">SYMFONY</a>
			</li>
			
		  </ul>
		</div>
	  </div>
	</nav>
	
<?php 
$Report=new Report();
$Dque=$Report->Dev();

?>
	<div class="col-md-12">
		<div class="bd-example">
		<table class="table">
		  <thead class="table-light">
			<tr>
			  <th scope="col">#</th>
			  <th scope="col">Geliştirici Adı</th>
			  <th scope="col">Zorluk Derecesi</th>
			  <th scope="col">Toplam Saat</th>
			  <th scope="col">Haftalık Çalışma Süresi</th>
			  <th scope="col">Kişi Bazlı Ortalama Bitirme Süresi</th>
			</tr>
		  </thead>
		  <tbody>
		  <?php 
			foreach($Dque as $row){
				$Task=$Report->Dopt($row->d_level);
		  ?>
			<tr>
			  <th scope="row"><?php echo $row->d_id; ?></th>
			  <td><?php echo $row->d_name; ?></td>
			  <td><?php echo $row->d_level;?></td>
			  <td><?php echo $Task->total_duration;?></td>
			  <td>45</td>
			  <td><?php echo $Task->or_duration;?> Hafta</td>
			</tr>
		<?php } ?>
			
		  </tbody>
		</table>
		</div>
		<strong>Tahmini En Erken Bitiş Süresi: <?php  echo $Report->DCount(); ?> </strong>
	</div>
</div>
</body>

</html>
