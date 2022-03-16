<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>{{ title }} - My Bottle Application</title>
	<link rel="stylesheet" type="text/css" href="/static/content/bootstrap.min.css" />
	<link rel="stylesheet" type="text/css" href="/static/content/site.css" />
	<script src="/static/scripts/modernizr-2.6.2.js"></script>
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
		<div class="container-fluid"> <a class="navbar-brand" href="#">Mountain paradise</a>
			<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarColor01" aria-controls="navbarColor01" aria-expanded="false" aria-label="Toggle navigation"> <span class="navbar-toggler-icon"></span> </button>
			<div class="collapse navbar-collapse" id="navbarColor01">
				<ul class="navbar-nav me-auto">
					<li class="nav-item"> <a class="nav-link active" href="/home">Главная
						<span class="visually-hidden">(current)</span> 
					</a> </li>
					<li class="nav-item"> <a class="nav-link" href="/mnt/everest">Гора Эверест</a> </li>
					<li class="nav-item"> <a class="nav-link" href="/bio/bukreev">А.Н. Букреев</a> </li>
					<li class="nav-item"> <a class="nav-link" href="/bio/messner">Р.А. Месснер</a> </li>
					<li class="nav-item"> <a class="nav-link" href="/about">Контакты</a> </li>
				</ul>
			</div>
		</div>
	</nav>
	<div class="container body-content"> {{!base}}
		<hr />
		<footer>
			<p>&copy; {{ year }} - Mountain paradise</p>
		</footer>
	</div>
	<script src="/static/scripts/jquery-1.10.2.js"></script>
	<script src="/static/scripts/bootstrap.js"></script>
	<script src="/static/scripts/respond.js"></script>
</body>
</html>