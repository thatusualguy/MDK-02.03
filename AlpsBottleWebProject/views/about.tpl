% rebase('layout.tpl', title=title, year=year)

<!DOCTYPE html>
<html style="font-size: 16px;">
<head>
<!--- <link rel="stylesheet" type="text/css" href="/static/content/bootstrap.min.css" /> -->
	<link rel="stylesheet" type="text/css" href="/static/content/our_cute_style.css" /> 
</head>
<body>
    <script src="https://api-maps.yandex.ru/2.1/?apikey=ваш API-ключ&lang=ru_RU" type="text/javascript">
    </script>
    <script type="text/javascript">
        ymaps.ready(init);
        function init(){
            var myMap = new ymaps.Map("map", {
                center: [59.873704, 30.316200],
                zoom: 17
            });

            map.controls.remove('geolocationControl'); // удаляем геолокацию
			map.controls.remove('searchControl'); // удаляем поиск
			map.controls.remove('trafficControl'); // удаляем контроль трафика
			map.controls.remove('typeSelector'); // удаляем тип
			map.controls.remove('fullscreenControl'); // удаляем кнопку перехода в полноэкранный режим
			map.controls.remove('zoomControl'); // удаляем контрол зуммирования
			map.controls.remove('rulerControl'); // удаляем контрол правил
			map.behaviors.disable(['scrollZoom']); // отключаем скролл карты (опционально)
        }
    </script>
</head>

<body>
<div class="container-custom">
	<div class = "tb lg">
		Горы на карте
	</div>
		
	<div id = "map-test" class = "map image-custom" >
		<div id="map" style="height: 600px"></div>
</div>
</div>
<footer> </footer>
</body>	
</html>information.</p>