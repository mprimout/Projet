<head>
	<titre>Traitement</titre>
</head>
<body>
	<?php
		$idConnexion = mysql_connect("localhost","root","projetBDD") or die ("Erreur connexion");
		$connexionBase = mysql_select_db("plancton")or die ("Erreur connexion base");

	//page formulaire
		//if (isset($_POST['type']))
		//{
		// L'élément "list" existe bien
		//    echo 'Option choisi : '.$_POST['type'].'<br />'; // Sera a ou b ou c
		//}
		//$type=$_POST['type'];
		//echo $type;
		//if (!$_POST['pwd']==""){
			
		
	//page admin
		$pwd=$_POST['pwd'];
		$result = mysql_query("SELECT MotDePasse from Admin") or die ("Erreur admin");
		while ($row = mysql_fetch_assoc($result)) {
   			$r=$row["MotDePasse"];
		}
		if ( $r == $pwd ) {
			header("Location: gestion.php");
		}
		else{ header("Location: admin.php");
		}

	

		mysql_close();


	?>
</body>
