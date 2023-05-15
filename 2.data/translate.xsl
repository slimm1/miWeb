<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
				xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:template match="/web">

		<xsl:call-template name="newTemplate"/>

	</xsl:template>

	<xsl:template name="newTemplate">

		<html lang="es">
		<head>
			<meta charset="UTF-8"/>
			<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
			<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
			<link rel="stylesheet" href="style/style.css"/>
			<link rel="stylesheet" href="https://manuelmsni.github.io/IMAGG/css/IMAGG_default.css"/>
			<title>slimm1</title>
		</head>
		<body>
			<nav id="contenedor">
				<div class="boton_menu">
					<img id="img1" src="images/slimm1_logos_rgb-05.png" alt="myLogo"/>
				</div>

				<div id="titulo">
					<h1>Martín Ramonda Sáenz</h1>
				</div>

				<div class="boton2">
					<img id="img2" src="images/github.png" alt="githubLogo" onclick="window.open('https://github.com/slimm1')"/>
				</div>
			</nav>
			<div class="panel_container">
				<div class="panel">
					<div class="img_menu" onclick="window.open('https://www.youtube.com/channel/UC5j7oUaC80o83tr_Iqt1gAQ')">
					<img  src="svg/youtube-color-svgrepo-com.svg" alt="yt" width="50" height="50"/>
					</div>

					<div class="img_menu" onclick="window.open('https://open.spotify.com/artist/1TjjXyBc5u4CF3geDccnuQ')">
						<img src="svg/spotify-color-svgrepo-com.svg" alt="spoti" width="50" height="50"/>
					</div>

					<div class="img_menu" onclick="window.open('https://soundcloud.com/slimmig')">
						<img src="svg/soundcloud-svgrepo-com (2).svg" alt="soundcloud" width="50" height="55"/>
					</div>

					<div class="img_menu" onclick="window.open('https://www.instagram.com/whodafuckslimm1/')">
						<img src="svg/instagram-1-svgrepo-com.svg" alt="insta" width="50" height="50"/>
					</div>

					<div class="img_menu" onclick="window.open('https://twitter.com/mynameslimm1')">
						<img  src="svg/twitter-color-svgrepo-com.svg" alt="twitter" width="50" height="50"/>
					</div>

					<div class="img_menu" id="discord_logo">
						<img src="svg/discord-icon-svgrepo-com.svg" alt="discord" width="50" height="50"/>
					</div>
				</div>
				<div id="panel_lateral">
					<p>chinasky#2078</p>
				</div>
			</div>
			<xsl:call-template name="portfolioTemplate"/>
			<script src="script/script.js"></script>
			<script src="https://manuelmsni.github.io/IMAGG/IMAGG_1.0/js/IMAGG.js"></script>
		</body>
		</html>

	</xsl:template>

	<xsl:template name="portfolioTemplate">
		<xsl:for-each select="portfolio">
			<div id="disparador">
        		<h2>MY MUSIC PORTFOLIO</h2>
    		</div>
    		<div id="artWork" class="hidden">
				<xsl:call-template name="articleTemplate"/>
			</div>
		</xsl:for-each>
	</xsl:template>

	<xsl:template name="articleTemplate">
		<xsl:for-each select="articulo">
			<div class="articles">
				<div class="leftSide">
					<img class="div_img triggerIMAGG" src="{cover}" alt="{title}"/>
				</div>
				<div class="center">
					<h3><xsl:value-of select="title"/></h3>
					<p><xsl:value-of select="description"/></p>
					<p><a href="{videoLink}" target="_blank">VIDEO YOUTUBE</a></p>
				</div>
				<div class="rightSide">
					<iframe src="{frame}"  frameborder="0" allowtransparency="true" allow="encrypted-media"></iframe>
				</div>
        	</div>
		</xsl:for-each>
	</xsl:template>

</xsl:stylesheet>