<!DOCTYPE> 
<HTML>
	<HEAD>
		<link rel="stylesheet" href="style.css" />
		<!--<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">-->
		<TITLE>BDD PLANCTON-Recherche Avancée</TITLE>
	</HEAD>
	<body>
		<header>
			<H1><center>Advanced search</center></H1>
		</header>
		<br><br><br><br><br><br>
		<center><table>
		<tr><td>
		<text><font color=white>Search by plankton group: &nbsp; &nbsp; &nbsp;</font></text></td>
		<td><text><font color=white>Type &nbsp;</font></text></td>
		<form method='POST' action='resultatrecherche.php'>
		<td><select name='type'>
	<?php 
   		$idConnexion = mysql_connect("localhost","root","projetBDD") or die ("Erreur connexion");
		$connexionBase = mysql_select_db("plancton")or die ("Erreur connexion base");
		$reponse=mysql_query("SELECT * FROM type") or die ("Erreur type");
       		while ($data=mysql_fetch_array($reponse)){ 
         		echo "<option value=$data[0]>$data[0]</option>";
		}
	?> 
     		</select></td>
		<!--<td><input Type="submit" Value="ENVOYER" name="VALIDATION"></td>-->
		</form>
		<td><text><font color=white>&nbsp;&nbsp;Group &nbsp;</font></text></td>	
		<td><select name='groupe'>


		</select></td>
		
		</center>

			<!--if( isset($_POST['type'])){         
				$requete=mysql_query("SELECT groupe from groupe_commun where type='phytoplancton'")or die ("Erreur groupe");}
			//else{	$requete=mysql_query("SELECT groupe from groupe_commun where type='zooplancton'")or die ("Erreur groupe");
			//}
       			while ($data=mysql_fetch_array($requete)){ 
         			echo "<option value=$data[0]>$data[0]</option>";
			}--> 


	<?mysql_close();?>			
	</body>
</html>
