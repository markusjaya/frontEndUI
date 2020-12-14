<!DOCTYPE html>
<html lang="en"><!-- Basic -->
<head>
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">   
   
    <!-- Mobile Metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
 
     <!-- Site Metas -->
    <title>Yummy Restaurant - Responsive HTML5 Template</title>  
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Site Icons -->
    <link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon">
    <link rel="apple-touch-icon" href="images/apple-touch-icon.png">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">    
	<!-- Site CSS -->
    <link rel="stylesheet" href="css/style.css">    
    <!-- Responsive CSS -->
    <link rel="stylesheet" href="css/responsive.css">
    <!-- Custom CSS -->
    <link rel="stylesheet" href="css/custom.css">

</head>

<body>
	<!-- Start header -->
	<header class="top-navbar">

		<nav class="navbar navbar-expand-lg navbar-light bg-light">

			<div class="container">
				<!--Logo-->
				<a class="navbar-brand" href="index.html">
					<img src="images/logo2.png" alt="logo"  />
				</a>

				<!--navigation button-->
			
				<button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse"
						data-target="#navbars-rs-food">
						<span class="navbar-toggler-icon"></span>
				</button>


				<div class="collapse navbar-collapse">
					<ul class="navbar-nav ml-auto mr-3">
						<!--home-->
						<li class="nav-item "><a class="nav-link active" href="index.html">Home</a></li>
						<!--menu-->
						<li class="nav-item "><a class="nav-link" href="menu.html">Menu</a></li>
						<!--about-->
						<li class="nav-item "><a class="nav-link" href="about.html">About</a></li>
						<!--Reservasi-->
						<li class="nav-item "><a class="nav-link" href="reservation.html">Reservasi</a></li>
						<!--Order-->
						<li class="nav-item "><a class="nav-link" href="order.php">Order</a></a></li>
						<!--Contact-->
						<li class="nav-item "><a class="nav-link" href="contact.html">Kontak</a></li>
				</div>

			</div>
		</nav>
	</header>
	<!-- End header -->
	

	
	
	
	<!-- Start Menu -->
	<div class="menu-box">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="heading-title text-center">
					</div>
				</div>
			</div>
			
			<div class="row">
				<!--Menu-->
				<div class="col-lg-12">
					<div class="special-menu text-center">
						<div class="button-group filter-button-group">
							<button class="active" data-filter="*">Semua</button>
							<button data-filter=".drinks">Minuman</button>
							<button data-filter=".lunch">Makanan</button>
						</div>
					</div>
				</div>
			</div>
				
			<!--minuman1-->
			<div class="row special-list" id="spesial-list">
				<script>
					var ajax = new XMLHttpRequest();
                    const queryString1 = window.location.search;
                    var id = queryString1.substring(4);
                    var name = "";
					var lenght = 0;
					console.log(id)
                    var url = "http://localhost/self_service/dao/menu/GetMenu.php?id="+id;
                    ajax.open("GET", url, true);
                    ajax.send();
                                                                
                    ajax.onreadystatechange = function() {
                    if (this.readyState == 4 && this.status == 200) {
                            var data = JSON.parse(this.responseText);
							var html = "";
							length = data.length;
							
						for(var a = 0; a < length; a++) {
								if(data[a].category==1||data[a].category=='1'){
									html+='<div class="col-lg-4 col-md-6 special-grid lunch"><div class="gallery-single fix"><img src="'+data[a].img+'" class="img-fluid" alt="Image">';
									html+='<div class="why-text">';
									html+='		<h4>'+data[a].name+'</h4>';
									html+='		<h5>'+data[a].price+'</h5>';
									html+='	</div>';
									html+='</div>';
									html+='</div>';
								}else{
									html+='<div class="col-lg-4 col-md-6 special-grid drinks"><div class="gallery-single fix"><img src="'+data[a].img+'" class="img-fluid" alt="Image">';
									html+='<div class="why-text">';
									html+='		<h4>'+data[a].name+'</h4>';
									html+='		<h5>'+data[a].price+'</h5>';
									html+='	</div>';
									html+='</div>';
									html+='</div>';
								}
                        }
                        	document.getElementById("spesial-list").innerHTML += html;
                    	}
                    };
				</script>
				
			</div>
		</div>
	</div>
	<!-- End Menu -->
	

	<!-- Start Contact info -->
	<div class="contact-imfo-box">
		<div class="container">
			<!--no telp-->
			<div class="row">
				<div class="col-md-4">
					<i class="fa fa-volume-control-phone"></i>
					<div class="overflow-hidden">
						<h4>Phone</h4>
						<p class="lead">
							+62123456789
						</p>
					</div>
				</div>
				<!--email-->
				<div class="col-md-4">
					<i class="fa fa-envelope"></i>
					<div class="overflow-hidden">
						<h4>Email</h4>
						<p class="lead">
							kelompok6@gmail.com
						</p>
					</div>
				</div>
				<!--lokasi-->
				<div class="col-md-4">
					<i class="fa fa-map-marker"></i>
					<div class="overflow-hidden">
						<h4>Lokasi</h4>
						<p class="lead">
							Dipatiukur
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- End Contact info -->
	
	<!-- Start Footer -->
	<footer class="footer-area bg-f">
		<div class="container">
			<div class="row">
				<div class="col-lg-3 col-md-6">
					<h3>Jadwal Operasional Kami:</h3>
					<p><span class="text-color">Senin: </span>Tutup</p>
					<p><span class="text-color">Selasa-Rabu :</span> 9:00 - 22.00</p>
					<p><span class="text-color">Kamis-Jumat :</span> 9:00 - 22.00</p>
					<p><span class="text-color">Sabtu-Minggu:</span> 5:00 - 22.00</p>
				</div>

				<!--Informasi Kontak-->
				<div class="col-lg-3 col-md-6">
					<h3>Contact information</h3>
					<p class="lead">Dipatiukur Street, Bandung.</p>
					<p class="lead"><a href="#">+62 1235 1235 2352</a></p>
					<p><a href="#"> info@admin.com</a></p>
				</div>


				<div class="col-lg-3 col-md-6">
					<!--Logo Sosial Media-->
					<ul class="list-inline f-social">
						<li class="list-inline-item"><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
						<li class="list-inline-item"><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
						<li class="list-inline-item"><a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
						<li class="list-inline-item"><a href="#"><i class="fa fa-google-plus" aria-hidden="true"></i></a></li>
						<li class="list-inline-item"><a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
					</ul>
				</div>
			</div>
		</div>
		
		<!--Copyright-->
		<div class="copyright">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<p class="company-name">All Rights Reserved. &copy; 2020 <a href="#">Yummy Restaurant</a> Design By : 
					<a href="">Kelompok 6 </a></p>
					</div>
				</div>
			</div>
		</div>
		
	</footer>
	<!-- End Footer -->
	
	<a href="#" id="back-to-top" title="Back to top" style="display: none;">&uarr;</a>

	<!-- ALL JS FILES -->
	<script src="js/jquery-3.2.1.min.js"></script>
	<script src="js/popper.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
    <!-- ALL PLUGINS -->
	<script src="js/jquery.superslides.min.js"></script>
	<script src="js/images-loded.min.js"></script>
	<script src="js/isotope.min.js"></script>
	<script src="js/baguetteBox.min.js"></script>
	<script src="js/form-validator.min.js"></script>
    <script src="js/contact-form-script.js"></script>
    <script src="js/custom.js"></script>
</body>
</html>