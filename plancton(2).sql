-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Client: localhost
-- Généré le: Lun 23 Février 2015 à 10:02
-- Version du serveur: 5.5.41-0ubuntu0.14.04.1
-- Version de PHP: 5.5.9-1ubuntu4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `plancton`
--

-- --------------------------------------------------------

--
-- Structure de la table `Admin`
--

CREATE TABLE IF NOT EXISTS `Admin` (
  `Nomid` varchar(20) NOT NULL DEFAULT '',
  `MotDePasse` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`Nomid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `Admin`
--

INSERT INTO `Admin` (`Nomid`, `MotDePasse`) VALUES
('root', 'projetBDD');

-- --------------------------------------------------------

--
-- Structure de la table `donnees_genomiques`
--

CREATE TABLE IF NOT EXISTS `donnees_genomiques` (
  `id` varchar(20) NOT NULL DEFAULT '',
  `ref` varchar(100) DEFAULT NULL,
  `lienURL` varchar(50) DEFAULT NULL,
  `tailleG` int(11) DEFAULT NULL,
  `GC` int(11) DEFAULT NULL,
  `nbrgene` int(11) DEFAULT NULL,
  `Espece` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cletrangeredonnees` (`Espece`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `donnees_genomiques`
--

INSERT INTO `donnees_genomiques` (`id`, `ref`, `lienURL`, `tailleG`, `GC`, `nbrgene`, `Espece`) VALUES
('ASM17541v3', 'Draft genome sequence of Arthrospira platensis C1 (PCC9438). Cheevadhanarak S, et al. Stand Genomic ', 'http://www.ncbi.nlm.nih.gov/assembly/GCF_000175415', 65000000, NULL, NULL, 'Arthrospira platensis'),
('ASM17583v1', 'The smallest known genomes of multicellular and toxic cyanobacteria: comparison, minimal gene set', 'http://www.ncbi.nlm.nih.gov/assembly/GCF_000175835', 3879030, NULL, 211000, 'Cylindrospermopsis raciborskii');

-- --------------------------------------------------------

--
-- Structure de la table `espece`
--

CREATE TABLE IF NOT EXISTS `espece` (
  `espece` varchar(40) NOT NULL DEFAULT '',
  `appelC` varchar(20) DEFAULT NULL,
  `taille` int(11) DEFAULT NULL,
  `tailleP` varchar(30) DEFAULT NULL,
  `salinite` int(11) DEFAULT NULL,
  `habitat` varchar(50) DEFAULT NULL,
  `posCotMax` int(11) DEFAULT NULL,
  `posCotMin` int(11) DEFAULT NULL,
  `ColonneDeauMax` int(11) DEFAULT NULL,
  `ColonneDeauMin` int(11) DEFAULT NULL,
  `tempMax` int(11) DEFAULT NULL,
  `tempMin` int(11) DEFAULT NULL,
  `modeNut` varchar(40) DEFAULT NULL,
  `toxicite` tinyint(1) DEFAULT NULL,
  `toxine` varchar(30) DEFAULT NULL,
  `cosmetique` tinyint(1) DEFAULT NULL,
  `pharmacologie` tinyint(1) DEFAULT NULL,
  `comestible` tinyint(1) DEFAULT NULL,
  `industrie` tinyint(1) DEFAULT NULL,
  `genre` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`espece`),
  KEY `cletrangereespece` (`genre`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `espece`
--

INSERT INTO `espece` (`espece`, `appelC`, `taille`, `tailleP`, `salinite`, `habitat`, `posCotMax`, `posCotMin`, `ColonneDeauMax`, `ColonneDeauMin`, `tempMax`, `tempMin`, `modeNut`, `toxicite`, `toxine`, `cosmetique`, `pharmacologie`, `comestible`, `industrie`, `genre`) VALUES
('actinocyclus subtilis gregory ', NULL, 53, 'microplancton', 35, 'Atlantic Adriatic', 2688, 0, NULL, NULL, 30, 15, 'autotrophe', 0, NULL, 0, 0, 0, 0, 'actinocyclus ehrenberg'),
('actinoptychus senarius ehrenberg', NULL, 48, 'microplancton', 37, 'Adriatic Baltic', 2688, 0, NULL, NULL, 30, 10, 'autotrophe', 0, NULL, 0, 0, 0, 0, 'actinoptychus ehrenberg'),
('actinoptychus splendens shadbolt', NULL, 63, 'microplancton', 35, 'Adriatic Baltic', 1000, 0, NULL, NULL, 20, 10, 'autotrophe', 0, NULL, 0, 0, 0, 0, 'actinoptychus ehrenberg'),
('Alexandrium minutum', NULL, 24, 'microplancton', 35, 'Atlantic Celtic', NULL, NULL, NULL, NULL, 30, 10, 'hétérotrophe', 1, 'Paralytic', NULL, NULL, NULL, NULL, 'Alexandrium'),
('Arthrospira platensis', 'spiruline', 10, 'nanoplancton', 4, NULL, 0, 0, 2, 0, 38, 20, 'auxotrophe', NULL, NULL, NULL, 1, 1, NULL, 'Arthrospira'),
('aulacoseira italica ralfs', NULL, 13, NULL, 0, NULL, 2, 0, 10, 0, 26, -10, 'autotrophe', 0, NULL, 0, 0, 0, 0, 'aulacoseira thwaites'),
('auliscus sculptus smith', NULL, 55, 'microplancton', 10, 'Atlantic Indian', 2, 0, 10, 0, 26, 0, 'autotrophe', 0, NULL, 0, 0, 0, 0, 'auliscus ehrenberg'),
('Aurelia aurita', 'méduse lune', 30000, 'mégaplancton', 35, 'Global ocean', 2500, 0, 4, 0, 30, 10, 'hétérotrophe', NULL, NULL, NULL, NULL, 1, NULL, 'Aurelia'),
('biddulphia alternans bailey ', NULL, 45, 'microplancton', 35, 'Global ocean', 100, 0, NULL, NULL, 30, 10, 'autotrophe', 0, NULL, 0, 0, 0, 0, 'biddulphia gray'),
('chlorella vulgaris', NULL, 3, 'nanoplancton', 8, NULL, 0, 0, NULL, NULL, NULL, NULL, 'auxotrophe', 0, NULL, 0, 1, 1, 0, 'Chlorella'),
('Chrysaora achlyos', NULL, 1000000, 'microplancton', 30, 'Pacific', NULL, NULL, NULL, NULL, NULL, NULL, 'hétérotrophe', NULL, NULL, NULL, NULL, NULL, NULL, 'Chrysaora'),
('coscinodiscus asteromphalus ehrenberg ', NULL, 194, NULL, 35, NULL, 2688, 0, NULL, NULL, 30, 10, 'autotrophe', 0, NULL, 0, 0, 0, 0, 'coscinodiscus ehrenberg'),
('coscinodiscus radius ehrenberg ', NULL, 63, 'microplancton', 35, 'Atlantic Pacific', 2688, 0, NULL, NULL, 30, -20, 'autotrophe', 0, NULL, 0, 0, 0, 0, 'coscinodiscus ehrenberg'),
('Cotylorhiza tuberculata', 'méduse poumon', 350000, 'mégaplancton', 34, 'Atlantic Mediterranean', NULL, NULL, 20, NULL, 30, 7, 'hétérotrophe', NULL, NULL, NULL, NULL, NULL, NULL, 'Cotylorhiza'),
('cyclotella meneghiniana kutzing', NULL, 16, 'nanoplancton', 5, NULL, 2, 0, 10, 0, 26, 0, 'autotrophe', 0, NULL, 0, 0, 0, 0, 'cyclotella kutzing'),
('Cylindrospermopsis raciborskii', NULL, 50, 'microplancton', 35, 'Global ocean', NULL, NULL, NULL, NULL, 30, 10, 'auxotrophe', 1, NULL, NULL, NULL, NULL, NULL, 'Cylindrospermopsis'),
('Daphnia magna', 'puce d''eau', 5000, 'macroplancton', 3, NULL, 0, 0, NULL, NULL, 30, 10, 'hétérotrophe', NULL, NULL, NULL, NULL, NULL, NULL, 'Daphnia'),
('Dinobryon spirale', NULL, 20, 'microplancton', 3, NULL, 0, 0, NULL, NULL, NULL, NULL, 'auxotrophe', NULL, NULL, NULL, NULL, NULL, NULL, 'Dinobryon'),
('Dunaliella salina', NULL, 10, 'nanoplancton', 25, NULL, 100, 0, NULL, NULL, NULL, NULL, 'auxotrophe', 0, NULL, 0, 1, 1, 1, 'Dunaliella'),
('Emiliania huxleyi', NULL, 5, 'nanoplancton', 35, 'Global ocean', 2500, 0, NULL, NULL, 20, -10, 'auxotrophe', NULL, NULL, NULL, NULL, NULL, NULL, ' 	Emiliania'),
('Euphausia superba', NULL, 40000, 'mégaplancton', 35, 'Antarctic', NULL, NULL, 2000, 50, 10, -10, 'hétérotrophe', NULL, NULL, NULL, NULL, 1, NULL, 'Euphausia'),
('Fabrea salina', '25', 0, 'microplancton', 39, NULL, 0, 0, NULL, NULL, NULL, NULL, 'hétérotrophe', NULL, NULL, NULL, NULL, NULL, NULL, 'Fabrea'),
('fragilaria pulchella kutzing ', NULL, 60, 'microplancton', 8, NULL, 100, 0, NULL, NULL, 20, 0, 'autotrophe', 0, NULL, 0, 0, 0, 0, 'synedra ehrenberg'),
('guinardia striata stolterfoth ', NULL, 30, 'microplancton', 35, 'Global ocean', 2688, 0, NULL, NULL, 30, 5, 'autotrophe', 0, NULL, 0, 0, 0, 0, 'guinardia peragallo'),
('isthmia enervis ehrenberg ', NULL, 34, 'microplancton', 35, NULL, 40, 0, NULL, NULL, 30, 0, 'autotrophe', 0, NULL, 0, 0, 0, 0, 'isthmia agardh'),
('Meganyctiphanes norvegica', NULL, 2000, 'mégaplancton', 30, 'Atlantic Arctic', NULL, NULL, 1000, 200, 10, -10, 'hétérotrophe', NULL, NULL, NULL, NULL, 1, NULL, 'Meganyctiphanes'),
('melosira moniliformis agardh', NULL, 43, 'microplancton', 20, 'Adriatic Baltic', 20, 0, 10, 0, 20, 0, 'autotrophe', 0, NULL, 0, 0, 0, 0, 'melosira agardh'),
('melosira nummuloides dilwyn', NULL, 15, 'nanoplancton', 25, 'Adriatic Baltic', 100, 0, 20, 0, 20, 0, 'autotrophe', 0, NULL, 0, 0, 0, 0, 'melosira agardh'),
('melosira varians agardh', NULL, 14, 'nanoplancton', 0, NULL, 0, 0, 10, 0, 26, -10, 'autotrophe', 0, NULL, 0, 0, 0, 0, 'melosira agardh'),
('Noctiluca scintillans', NULL, 500, 'mésoplancton', NULL, NULL, 150, 0, NULL, NULL, NULL, NULL, 'hétérotrophe', NULL, NULL, NULL, NULL, NULL, NULL, 'Noctiluca'),
('Nostoc pruniforme', 'crachat de lune', 60000, 'mégaplancton', 0, 'Pacific', 0, 0, NULL, NULL, 15, 0, 'auxotrophe', NULL, NULL, NULL, 1, NULL, NULL, 'Nostoc'),
('paralia sulcata ehrenberg', NULL, 12, 'nanoplancton', 35, 'Global ocean', 2500, 0, NULL, NULL, 40, 0, 'autotrophe', 0, NULL, 0, 0, 0, 0, 'paralia ehrenberg'),
('Phaeocystis pouchetii', NULL, 5, 'nanoplancton', 35, 'Global ocean', 2500, 0, NULL, NULL, 30, -10, 'auxotrophe', 1, NULL, NULL, NULL, NULL, NULL, ' 	Phaeocystis'),
('Planktothrix agardhii', NULL, 3, 'nanoplancton', 35, 'Atlantic Pacific', 2500, 0, NULL, NULL, NULL, NULL, 'auxotrophe', 1, 'Protein phosphatase blockers', NULL, NULL, NULL, NULL, 'Planktothrix'),
('pleurosira laevis ehrenberg ', NULL, 59, 'microplancton', 26, 'Atlantic Pacific', 100, 0, NULL, NULL, 30, 10, 'autotrophe', 0, NULL, 0, 0, 0, 0, 'pleurosira meneghini'),
('podosira stelligera bailey', NULL, 44, 'microplancton', 35, 'Atlantic ', 1000, 0, NULL, NULL, 30, 10, 'autotrophe', 0, NULL, 0, 0, 0, 0, 'podosira ehrenberg'),
('stephanopyxis palmeriana greville', NULL, 50, 'microplancton', 35, 'Atlantic Mediterrannée', 2500, 0, NULL, NULL, 30, 10, 'autotrophe', 0, NULL, 0, 0, 0, NULL, 'stephanopyxis ehrenberg'),
('Stomolophus meleagris', 'Cannonball jellyfish', 250000, 'mégaplancton', 33, 'Atlantic Pacific', NULL, NULL, NULL, NULL, 30, 15, 'hétérotrophe', 1, 'jellyfish', NULL, NULL, 1, NULL, 'Stomolophus'),
('test', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Dinobryon'),
('thalassiosira sp ', NULL, 28, 'microplancton', 35, 'Atlantic Pacific', 2688, 0, NULL, NULL, 30, 10, 'autotrophe', 0, NULL, 0, 0, 0, 1, 'thalassiosira cleve'),
('triceratium antediluvianum ehrenberg ', NULL, 75, 'microplancton', 35, NULL, 2688, 0, NULL, NULL, 30, 0, 'autotrophe', 0, NULL, 0, 0, 0, 0, 'triceratium ehrenberg');

-- --------------------------------------------------------

--
-- Structure de la table `famille`
--

CREATE TABLE IF NOT EXISTS `famille` (
  `famille` varchar(20) NOT NULL DEFAULT '',
  `groupe` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`famille`),
  KEY `cletrangerefamille` (`groupe`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `famille`
--

INSERT INTO `famille` (`famille`, `groupe`) VALUES
('Chlorellaceae', 'chlorophycée'),
('Dunaliellaceae', 'chlorophycée'),
('retest', 'chlorophycée'),
(' 	Dinobryaceae', 'chysophycée'),
(' 	Noelaerhabdaceae', 'coccolithe'),
('Phaeocystaceae', 'coccolithe'),
(' 	Nostocaceae', 'cyanobactérie'),
('Phormidiaceae', 'cyanobactérie'),
('biddulphiaceae', 'diatomée'),
('coscinodiscaceae', 'diatomée'),
('eupodiscaceae', 'diatomée'),
('fragilariaceae', 'diatomée'),
('heliopeltaceae', 'diatomée'),
('hemidiscaceae', 'diatomée'),
('melosiraceae', 'diatomée'),
('rhizosoleniaceae', 'diatomée'),
('thalassiosiraceae', 'diatomée'),
('Goniodomataceae', 'dinoflagelle'),
('Noctilucaceae', 'dinoflagelle'),
('Euphausiidae', 'krill'),
('Cepheidae', 'meduse'),
('Pelagiidae', 'meduse'),
('Rhizostomatidae', 'meduse'),
('Ulmaridae', 'meduse'),
('Climacostomidae ', 'protozoaire'),
('Daphniidae', 'rotifère');

-- --------------------------------------------------------

--
-- Structure de la table `genre`
--

CREATE TABLE IF NOT EXISTS `genre` (
  `genre` varchar(40) NOT NULL DEFAULT '',
  `famille` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`genre`),
  KEY `cletrangeregenre` (`famille`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `genre`
--

INSERT INTO `genre` (`genre`, `famille`) VALUES
('Dinobryon', ' 	Dinobryaceae'),
(' 	Emiliania', ' 	Noelaerhabdaceae'),
(' 	Anabaena', ' 	Nostocaceae'),
('Cylindrospermopsis', ' 	Nostocaceae'),
('Nostoc', ' 	Nostocaceae'),
('biddulphia gray', 'biddulphiaceae'),
('isthmia agardh', 'biddulphiaceae'),
('Cotylorhiza', 'Cepheidae'),
('Chlorella', 'Chlorellaceae'),
('test', 'Chlorellaceae'),
('Fabrea', 'Climacostomidae '),
('coscinodiscus ehrenberg', 'coscinodiscaceae'),
('Daphnia', 'Daphniidae'),
('Dunaliella', 'Dunaliellaceae'),
('Euphausia', 'Euphausiidae'),
('Meganyctiphanes', 'Euphausiidae'),
('auliscus ehrenberg', 'eupodiscaceae'),
('pleurosira meneghini', 'eupodiscaceae'),
('triceratium ehrenberg', 'eupodiscaceae'),
('synedra ehrenberg', 'fragilariaceae'),
('Alexandrium', 'Goniodomataceae'),
('actinoptychus ehrenberg', 'heliopeltaceae'),
('actinocyclus ehrenberg', 'hemidiscaceae'),
('melosira agardh', 'melosiraceae'),
('paralia ehrenberg', 'melosiraceae'),
('podosira ehrenberg', 'melosiraceae'),
('stephanopyxis ehrenberg', 'melosiraceae'),
('Noctiluca', 'Noctilucaceae'),
('Chrysaora', 'Pelagiidae'),
(' 	Phaeocystis', 'Phaeocystaceae'),
('Arthrospira', 'Phormidiaceae'),
('Planktothrix', 'Phormidiaceae'),
('guinardia peragallo', 'rhizosoleniaceae'),
('Stomolophus', 'Rhizostomatidae'),
('aulacoseira thwaites', 'thalassiosiraceae'),
('cyclotella kutzing', 'thalassiosiraceae'),
('thalassiosira cleve', 'thalassiosiraceae'),
('Aurelia', 'Ulmaridae');

-- --------------------------------------------------------

--
-- Structure de la table `groupe_commun`
--

CREATE TABLE IF NOT EXISTS `groupe_commun` (
  `groupe` varchar(30) NOT NULL DEFAULT '',
  `temporaire` tinyint(1) DEFAULT NULL,
  `type` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`groupe`),
  KEY `cleE1` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `groupe_commun`
--

INSERT INTO `groupe_commun` (`groupe`, `temporaire`, `type`) VALUES
('artemia-salina', 0, 'zooplancton'),
('chlorophycée', 0, 'phytoplancton'),
('chysophycée', 0, 'phytoplancton'),
('coccolithe', 0, 'phytoplancton'),
('copépode', 0, 'zooplancton'),
('cyanobactérie', 0, 'phytoplancton'),
('diatomée', 0, 'phytoplancton'),
('dinoflagelle', 0, 'phytoplancton'),
('krill', 0, 'zooplancton'),
('larveCrustacé', 1, 'zooplancton'),
('larveMollusque', 1, 'zooplancton'),
('larvePoisson', 1, 'zooplancton'),
('meduse', 0, 'zooplancton'),
('protozoaire', 0, 'zooplancton'),
('rotifère', 0, 'zooplancton');

-- --------------------------------------------------------

--
-- Structure de la table `type`
--

CREATE TABLE IF NOT EXISTS `type` (
  `type` varchar(14) NOT NULL DEFAULT '',
  PRIMARY KEY (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `type`
--

INSERT INTO `type` (`type`) VALUES
('phytoplancton'),
('zooplancton');

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `donnees_genomiques`
--
ALTER TABLE `donnees_genomiques`
  ADD CONSTRAINT `cletrangeredonnees` FOREIGN KEY (`Espece`) REFERENCES `espece` (`espece`);

--
-- Contraintes pour la table `espece`
--
ALTER TABLE `espece`
  ADD CONSTRAINT `cletrangereespece` FOREIGN KEY (`genre`) REFERENCES `genre` (`genre`);

--
-- Contraintes pour la table `famille`
--
ALTER TABLE `famille`
  ADD CONSTRAINT `cletrangerefamille` FOREIGN KEY (`groupe`) REFERENCES `groupe_commun` (`groupe`);

--
-- Contraintes pour la table `genre`
--
ALTER TABLE `genre`
  ADD CONSTRAINT `cletrangeregenre` FOREIGN KEY (`famille`) REFERENCES `famille` (`famille`);

--
-- Contraintes pour la table `groupe_commun`
--
ALTER TABLE `groupe_commun`
  ADD CONSTRAINT `cleE1` FOREIGN KEY (`type`) REFERENCES `type` (`type`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
