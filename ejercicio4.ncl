<?xml version="1.0" encoding="ISO-8859-1"?>
<!-- 					ESCUELA POLITECNICA NACIONAL
				FACULTAD DE INGENIERIA ELECTRICA Y ELECTRONICA
	DEPARTAMENTO DE ELECTRÓNICA, TELECOMUNICACIONES Y REDES DE INFORMACIÓN
	
	**********************************************************************
						   TELEVISION DIGITAL
							CURSO GINGA NCL
	**********************************************************************
-->
<!-- Ejercicio No. 4: Conectores y enlaces (archivo copiado ejercicio 1) -->
<!-- Author: Christian Tipantuña -->

<!-- *********************************************************************-->

<!-- Generated by NCL Eclipse -->
<ncl id="ejercicio1" xmlns="http://www.ncl.org.br/NCL3.0/EDTVProfile">
	
<!--CABECERA-->
	<head>
		<!--REGIÓN-->
		<regionBase>
			<region id="rgBackground" width="100%" height="100%" zIndex="1"/>
			<region id="rg1" width="50%" height="25%" left="25%" top="5%" zIndex="2"/>
			<region id="rg2" width="12%" height="20%" right="25%" bottom="76%" zIndex="3"/>
			<region id="rg3" width="40%" height="20%" left="30%" top="5%" zIndex="2"/>
			<region id="rg4" width="40%" height="30%" left="10%" bottom="5%" zIndex="2"/>
		</regionBase>
		
		<!--DESCRIPTOR-->
		<descriptorBase>
			<descriptor id="descBackground" region="rgBackground">
			</descriptor>
			<descriptor id="desc1" region="rg1"/>
			<descriptor id="desc2" region="rg2"/>
			<descriptor id="desc3" region="rg3"/>
			<descriptor id="desc4" region="rg4"/>
		</descriptorBase>
		
		<!--CONECTORES--> 
		<connectorBase>
		<causalConnector id="OnBeginStart">
			<simpleCondition role="onBegin" />
			<simpleAction role="start" />
		</causalConnector>
		
		<causalConnector id="OnEndStop">
			<simpleCondition role="onEnd" />
			<simpleAction role="stop" />
		</causalConnector>
		</connectorBase>
		
	</head>

<!--CUERPO-->
	<body>
		<!--MULTIMEDIA-->
		<media id="video" src="media/video1.mp4" descriptor="descBackground"/>
		<media id="video2" src="media/video2.mp4" descriptor="desc4"/>
		<media id="imagen1" src="media/helloWorld.png" descriptor="desc1"/>
		<media id="imagen2" src="media/info_icon.png" descriptor="desc2"/>
		<media id="texto" src="media/texto.txt" descriptor="desc3"/>
		
		<!--PUERTA-->
		<port id="pentrada" component="video"/>
		<port id="p1" component="imagen1"/>
		<port id="p2" component="imagen2"/>
		<port id="p3" component="texto"/>
		<port id="p4" component="video2"/>
		
		<!--ENLACES-->
		<link xconnector="OnBeginStart" id="lvideo">
			<bind role="onBegin" component="video" />
			<bind role="start" component="imagen1" /> <!--Los otros elementos siguen apareciendo-->
		</link>
		
		<link xconnector="OnEndStop">
			<bind role="onEnd" component="video2" />
			<bind role="stop" component="imagen1" />
		</link>
				
	</body>
</ncl>