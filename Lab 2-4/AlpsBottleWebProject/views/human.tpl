% rebase('layout.tpl',title='h', year=year)

<!-- Шаблон стрица с людьми -->

<!DOCTYPE html>
<html style="font-size: 16px;">
<head>
	<meta charset="utf-8" />
	<link rel="stylesheet" type="text/css" href="/static/content/bootstrap.min.css" />
	<link rel="stylesheet" type="text/css" href="/static/content/our_cute_style.css" />
</head>
<body>
	<div class="container-custom">
		<div class="text-center">

			<img class="img-thumbnail img-thumbnail-custom" width="822" height="612" src="{{img}}" />

			<figure class="text-center">
				<blockquote class="blockquote">
					<p class="mb-0">Приключения случаются только если ты идёшь туда, куда не следует.</p>
				</blockquote>
				<figcaption class="blockquote-footer">
					Стэн Марш из <cite title="Source Title">Южного Парка</cite>
				</figcaption>
			</figure>
		</div>

		<div class="tb sm">
			<!--<div class=" lg">-->
			<h1>{{name}} </h1>
			<p>
				{{disc}}
			</p>
			<p>
				{{early}}
			</p>
			<!--<p>Nullam quis risus eget <a href="#">urna mollis ornare</a> vel eu leo. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nullam id dolor id nibh ultricies vehicula.</p>
	<p><small>This line of text is meant to be treated as fine print.</small></p>
	<p>The following is <strong>rendered as bold text</strong>.</p>
	<p>The following is <em>rendered as italicized text</em>.</p>
	<p>An abbreviation of the word attribute is <abbr title="attribute">attr</abbr>.</p>-->

			<br />
			<h2>Общие сведения</h2>
			<p>
				{{common}}
			</p>

			<br />
			<h2>Смерть</h2>
			<p>
				{{death}}
			</p>

			<br />
			<h2>Видеоматериалы</h2>
			<br />
			<div class="text-center">
				<iframe class="size-bio" marginheight="20" src="{{vid1}}" title="YouTube video player" frameborder="0" allow="autoplay; clipboard-write; encrypted-media; picture-in-picture" allowfullscreen></iframe>
			</div>

			<br />

			<div class="text-center">
				<iframe class="size-bio" width="1640" height="723" src="{{vid2}}" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
			</div>


		</div>
	</div>
</body>
</html>