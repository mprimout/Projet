<!DOCTYPE> 
<HTML>
	<HEAD>
		<link rel="stylesheet" href="style.css" />
		<!--<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">-->
		<TITLE>BDD PLANCTON-Connexion Admin</TITLE>
	</HEAD>
	<body>
		<header>
			<H1><center>Database management</center></H1>
		</header>
		<br><br><br>
		<center>
		<text><font color='white' size='5'>That you want to do ?</font><text>
		<br><br><br>
		<table>
<!--ajout espece-->
		<tr><td><text><font color='white' size='3'>Add a species:&nbsp;</font></text></td>
		<td><text><font color=white>Genus&nbsp;&nbsp;</font></text></td>
		<form method='POST' action='resultGestion.php' name='ajoutE'>
			<td><select name='genre'>
		<?php 
   			$idConnexion = mysql_connect("localhost","root","projetBDD") or die ("Erreur connexion");
			$connexionBase = mysql_select_db("plancton")or die ("Erreur connexion base");
			$reponse=mysql_query("SELECT genre FROM genre") or die ("Erreur type");
       			while ($data=mysql_fetch_array($reponse)){ 
        	 		echo "<option value=$data[0]>$data[0]</option>";
			}
		?> 
			</select></td>
			<td><text><font color=white>&nbsp;&nbsp; Espece &nbsp;</font></text></td>	
			<td><input type="text" name="espece"/></td>
			<td><input type="submit" Value="Send"/></td></tr>
		</form>
<!--ajout genre-->
		<tr></tr>
		<tr><td><text><font color='white' size='3'>Add a genus:&nbsp;</font></text></td>
		<td><text><font color=white>Family&nbsp;&nbsp;</font></text></td>
		<form method='POST' action='resultGestion.php' name='ajoutG'>
			<td><select name='famille'>
		<?php 
			$reponse=mysql_query("SELECT famille FROM famille") or die ("Erreur type");
       			while ($data=mysql_fetch_array($reponse)){ 
        	 		echo "<option value=$data[0]>$data[0]</option>";
			}
		?> 
			</select></td>
			<td><text><font color=white>&nbsp;&nbsp;Genus&nbsp;</font></text></td>	
			<td><input type="text" name="genre2"/></td>
			<td><input type="submit" Value="Send"/></td></tr>
		</form>
<!--ajout famille-->
		<tr></tr>
		<tr><td><text><font color='white' size='3'>Add a familly:&nbsp;</font></text></td>
		<td><text><font color=white>Group&nbsp;&nbsp;</font></text></td>
		<form method='POST' action='resultGestion.php' name='ajoutF'>
			<td><select name='groupe'>
		<?php 
			$reponse=mysql_query("SELECT groupe FROM groupe_commun") or die ("Erreur type");
       			while ($data=mysql_fetch_array($reponse)){ 
        	 		echo "<option value=$data[0]>$data[0]</option>";
			}
		?> 
			</select></td>
			<td><text><font color=white>&nbsp;&nbsp;Familly&nbsp;</font></text></td>	
			<td><input type="text" name="famille2"/></td>
			<td><input type="submit" Value="Send"/></td></tr>
		</form>
<!--ajout groupe-->
		<tr></tr>
		<tr><td><text><font color='white' size='3'>Add a group:&nbsp;</font></text></td>
		<td><text><font color=white>Type&nbsp;&nbsp;</font></text></td>
		<form method='POST' action='resultGestion.php' name='ajoutG'>
			<td><select name='type'>
		<?php 
			$reponse=mysql_query("SELECT type FROM type") or die ("Erreur type");
       			while ($data=mysql_fetch_array($reponse)){ 
        	 		echo "<option value=$data[0]>$data[0]</option>";
			}
		?> 
			</select></td>
			<td><text><font color=white>&nbsp;&nbsp;Group&nbsp;</font></text></td>	
			<td><input type="text" name="groupe2"/></td>
			<td><input type="submit" Value="Send"/></td></tr>
		</form>
		</table>	
		<br><br><br>
<!--modifier espece-->
		<table>
		<tr></tr>
		<tr><td><text><font color='white' size='3'>Modify a species:</font></text></td>
		<form method='POST' action='resultGestion.php' name='remE'>
			<td><select name='espece2'>
		<?php 
			$reponse=mysql_query("SELECT espece FROM espece") or die ("Erreur type");
       			while ($data=mysql_fetch_array($reponse)){ 
        	 		echo "<option value=$data[0]>$data[0]</option>";
			}
		?> 
			</select></td>
			<td><text><font color=white>by</font></text></td>	
			<td><input type="text" name="espece3"/></td>
			<td><input type="submit" Value="Send"/></td></tr>
		</form>	
		</table>
<!--supprimer espece-->
		<br><br><br>
		<table>
		<tr></tr>
		<tr><td><text><font color='white' size='3'>Remove a species:</font></text></td>
		<form method='POST' action='resultGestion.php' name='supE'>
			<td><select name='espece4'>
		<?php 
			$reponse=mysql_query("SELECT espece FROM espece") or die ("Erreur type");
       			while ($data=mysql_fetch_array($reponse)){ 
        	 		echo "<option value=$data[0]>$data[0]</option>";
			}
		?> 
			</select></td>
			<td><input type="submit" Value="Send"/></td></tr>
		</form>	
		</table>
	
		<?mysql_close();?>	
	</body>
</html>
