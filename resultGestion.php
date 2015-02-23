<head>
	<titre>Traitement</titre>
</head>
<body>
	<?php
		$idConnexion = mysql_connect("localhost","root","projetBDD") or die ("Erreur connexion");
		$connexionBase = mysql_select_db("plancton")or die ("Erreur connexion base");
		$genre = $_POST['genre'];
		$espece = $_POST['espece'];

		$famille = $_POST['famille'];
		$genre2 = $_POST['genre2'];

		$groupe = $_POST['groupe'];
		$famille2 = $_POST['famille2'];

		$groupe2 = $_POST['groupe2'];
		$type = $_POST['type'];

		$espece2 = $_POST['espece2'];
		$espece3 = $_POST['espece3'];

		$espece4 = $_POST['espece4'];

		if(isset ($genre) and isset ($espece)){
			mysql_query("insert into espece (espece,genre) values ('$espece','$genre')") or die ("Erreur addE");	
		}
		if(isset ($famille) and isset ($genre2)){
			mysql_query("insert into genre (famille,genre) values ('$famille','$genre2')") or die ("Erreur addG");	
		}
		if(isset ($groupe) and isset ($famille2)){
			mysql_query("insert into famille (groupe,famille) values ('$groupe','$famille2')") or die ("Erreur addF");	
		}
//		if(isset ($groupe2) and isset ($type)){
//		mysql_query("insert into groupe_commun (groupe,type) values ('$groupe2','$type')") or die ("Erreur addG");	
//		}

		if(isset ($espece2) and isset ($espece3)){
			mysql_query("update espece set espece='$espece3' where espece='$espece2'") or die ("Erreur modifE");	
		}
//		if(isset ($genre4)){
//			mysql_query("delete from espece  where espece='$espece4'") or die ("Erreur addE");	
//		}
		mysql_close();



	?>

</body>
