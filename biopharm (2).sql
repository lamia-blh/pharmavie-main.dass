-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : sam. 15 mars 2025 à 13:44
-- Version du serveur : 10.4.28-MariaDB
-- Version de PHP : 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `biopharm`
--

-- --------------------------------------------------------

--
-- Structure de la table `cart`
--

CREATE TABLE `cart` (
  `id_cart` int(11) NOT NULL,
  `quantity` int(255) NOT NULL,
  `id_pro` int(30) NOT NULL,
  `price_cart` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `category`
--

CREATE TABLE `category` (
  `id_cat` int(30) NOT NULL,
  `name_cat` varchar(255) NOT NULL,
  `description_cat` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `category`
--

INSERT INTO `category` (`id_cat`, `name_cat`, `description_cat`) VALUES
(10, 'Cardiovasculaire et Métabolisme', 'Traitements ciblant les maladies du cœur, des vaisseaux et du métabolisme, incluant anticorps monoclonaux et thérapies géniques.'),
(18, 'Dermatologie', ' Biopharmaceutiques pour les maladies inflammatoires de la peau, comme le psoriasis et l’eczéma sévère.'),
(19, 'Diabétologie', ' Insulines recombinantes et inhibiteurs du GLP-1 pour la gestion du diabète.'),
(20, 'Gastrologie', ' Anticorps monoclonaux et facteurs de croissance pour les maladies inflammatoires intestinales.'),
(21, 'Pneumo-Allergologie', 'Thérapies ciblées contre l’asthme sévère, la BPCO et les allergies chroniques.'),
(22, 'Psychiatrie', 'Thérapies innovantes en développement pour les troubles psychiatriques résistants.'),
(23, 'Rhumatologie', 'Anticorps monoclonaux et thérapies ciblées pour les maladies inflammatoires articulaires.');

-- --------------------------------------------------------

--
-- Structure de la table `delivery`
--

CREATE TABLE `delivery` (
  `id_delv` int(50) NOT NULL,
  `date` date NOT NULL,
  `adress` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `id_ord` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `invoice`
--

CREATE TABLE `invoice` (
  `id_inv` int(30) NOT NULL,
  `date` date NOT NULL,
  `amount` int(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `id_delv` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `message`
--

CREATE TABLE `message` (
  `id_msg` int(30) NOT NULL,
  `title` varchar(255) NOT NULL,
  `text` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `id_us` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `order`
--

CREATE TABLE `order` (
  `id_ord` int(30) NOT NULL,
  `date` date NOT NULL,
  `status` varchar(255) NOT NULL,
  `id_us` int(30) NOT NULL,
  `id_cart` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `product`
--

CREATE TABLE `product` (
  `id_pro` int(30) NOT NULL,
  `name_pro` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `DCI` varchar(255) NOT NULL,
  `dosage` varchar(255) NOT NULL,
  `forme` varchar(255) NOT NULL,
  `price` int(50) NOT NULL,
  `stock` int(50) NOT NULL,
  `image` varchar(255) NOT NULL,
  `id_cat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `product`
--

INSERT INTO `product` (`id_pro`, `name_pro`, `description`, `DCI`, `dosage`, `forme`, `price`, `stock`, `image`, `id_cat`) VALUES
(35, 'IRBEVEL 150 mg', 'Antihypertenseur', 'Irbesartan', '150 mg', 'Boite de 30 comprimés pelliculés', 1300, 8000, 'i1.png', 10),
(36, 'Moxotens 0.2 mg', 'Antihypertenseur', 'Moxonidine', '0.2 mg', 'Boite de 30 comprimés pelliculés', 900, 1000, 'i2.png', 10),
(37, 'Aspirine® Cardio100 mg', 'Antiplaquettaire', 'ACIDE ACETYL SALICYLIQUE', '100 MG', 'Boite de 90 gélules', 2500, 100000, 'i3.png', 10),
(38, 'Biopexa® 2.5 mg', 'Anticoagulant', 'Apixaban', '2.5 mg', 'Boite de 60 comprimés', 2000, 7000, 'i4.png', 10),
(39, 'Loresta LP® 200 mg', 'Anxiolytique', 'Métoprolol', '200 mg', 'Boite de 30 comprimés pelliculés sécable à libération prolongée', 3200, 55000, 'i5.png', 10),
(40, 'Clotasol Créme', 'Anti-inflammatoire', 'Clobétasol Propionate', '0.05%', 'Tube de 45 g en créme', 6000, 15000, '5j.png', 18),
(41, 'Biomla 0.05/30 g', 'Anesthésique', ' Lidocaine Prilocaine', '5%', 'Tube de 30 g en créme', 1000, 7000, '2j.jpg', 18),
(42, 'Terbinan CP', 'Antifongique', 'Terbinafine ', '250 mg', 'Boite de 14 comprimés', 5000, 12000, '3j.jpg', 18),
(43, 'Apaisa Cica', ' Réparateur', 'Beta-Sitostérol', '0.25%', 'Tube de 15 g en pommade', 1600, 9500, '4j.jpg', 18),
(44, 'Clotasol Pommade', ' Corticoïde', 'Clobétasol Propionate', '0.05%', 'Tube de 45 g en pommade', 2400, 75000, '1j.png', 18),
(46, 'Corect', 'Antidiabétiques.', 'Acarbose', '50 mg', 'Boite de 30 comprimés pelliculés ', 500, 45000, '1b.jpg', 19),
(47, 'Bionorm 2 mg', 'Antidiabétiques', 'Repaglinide', '2 mg', 'Boite de 30 comprimés pelliculés', 1900, 8000, '2b.jpg', 19),
(48, 'Glatix® 60mg', 'Antidiabétiques', 'Gliclazide', '60 mg', 'Boite de 30 comprimés ', 8000, 15600, '3b.jpg', 19),
(49, 'Melaza suppo 500 mg', 'Médicaments', 'Mesalazine', '500 mg', 'Boite de 15 suppositoires', 400, 58000, '1.jpg', 20),
(50, 'Esomac 40 mg B/14', 'Médicaments', 'Esomeprazole', '40 mg', ' Boite de 14 gélules', 4900, 9500, '2.jpg', 20),
(51, ' Nobac® adulte Menthe 200ml', 'Médicaments', 'Alginate de sodium', '50mg/26.7mg', 'Flacon de 20 ml', 250, 90000, '3.jpg', 20),
(52, 'Nobac® Stick gout fraise', 'Médicaments', 'Alginate de sodium', '500 mg / 267 mg / 160 mg', 'Boite de 24 sachet-dose 10 ml en suspension buvable', 400, 25000, '5.jpg', 20),
(53, 'Lomac', 'Médicaments', 'Omeprazole', '20 mg', 'Boite de 10 suppositoires', 1500, 50000, '4.jpg', 20),
(54, 'Mexam® 4 mg', ' Montelukast', 'Montelukast Sodique', '4 mg', 'Boite de 30 shachets en granulés', 500, 45000, '5c.jpg', 21),
(55, 'Tyrizal® 0.5 mg/ml', 'Lévocétirizine', 'Levocetirizine', '0.5 mg/ml', 'Flacon de 200 ml', 550, 4500, '4c.jpg', 21),
(56, 'Rynza® en sachet', 'Paracétamol', 'Phenylephrine', 'Paracétamol 750 mg, Caféine 30 mg, Maléate de phéniramine 20 mg, Chlorhydrate de phenylephrine 10 mg', 'Boite de 5 sachets de 5 g en poudre pour solution buvable', 3000, 50000, '3c.jpg', 21),
(57, 'Rynza® Nasal', 'Spray nasal', 'Huiles essentielles de thym et d’eucalyptus', 'Sans précision de dosage', 'Flacon de 20 ml , spray nasal', 600, 15000, '2c.jpg', 21),
(58, 'Zecuf®', 'Sirop à base de plantes', 'Solanum Indicum Glycerrhiza Glabra Curcuma Longa Zingiber Officinal Adhatoda Vasica', '100mg / 60mg / 50mg / 10mg / 60mg / 20mg / 20mg / 10mg / 20mg / 50mg / 06mg par 10ml', 'Flacon de 120 ml en Solution buvable', 750, 10000, '1c.jpg', 21),
(59, 'Nozinan', 'Levomepromazine', 'Levomepromazine', '4%', 'Flacon 30 ml en solution buvable en gouttes', 1000, 50000, '1k.jpg', 22),
(60, 'Rispal 1mg', 'Psychiatrie', 'Psychiatrie', '1 mg', 'Boite de 30 comprimés', 400, 9500, '2k.jpg', 22),
(61, 'Venfax® 37.5mg', 'Psychiatrie', 'Psychiatrie', '37.5mg', 'Boite de 30 gélules', 6000, 90000, '3.jpg', 22),
(62, 'Dozax 20mg', 'Psychiatrie', 'Paroxetine', '20 mg', 'Boite de 30 comprmés Pelliculés Sécables', 500, 14000, '4.jpg', 22),
(63, 'Vilbar 2 mg/ml', 'Psychiatrie', 'Haloperidol', '2 mg/ml', 'Flacon 30 ml en solution buvable en gouttes', 900, 17000, '5.jpg', 22),
(64, 'Biofenac® 100 mg', 'Diclofenac Sodique', 'Diclofenac Sodique', '100 mg', 'Boite de 10 suppositoires', 700, 45000, '1.jpg', 23),
(65, 'Biofenac® gel 1%', 'Diclofenac Sodique', 'Diclofenac Sodique', '50 g', 'Tube de 50 g', 300, 50000, '2.jpg', 23),
(66, 'Celetasone® 0,05%', 'Bétaméthasone', 'Bétaméthasone', '0,05%', 'Flacon de 30 ml en solution buvable en gouttes à 0.05%', 600, 8000, '3.jpg', 23),
(67, 'Xamadol®', 'Paracétamol', 'Tramadol', '37,5 / 325 mg', 'Boite de 20 comprimés', 800, 17000, '4.jpg', 23),
(68, 'Dromax®', 'Acide Alendronique', 'Acide Alendronique', '70 mg', 'Boite de 4 comprimés', 1500, 96000, '5.jpg', 23);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id_us` int(30) NOT NULL,
  `firstname_us` varchar(255) NOT NULL,
  `lastname_us` varchar(255) NOT NULL,
  `email_us` varchar(255) NOT NULL,
  `password_us` varchar(255) NOT NULL,
  `adress_us` varchar(255) NOT NULL,
  `numberph_us` int(30) NOT NULL,
  `role` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id_cart`),
  ADD KEY `fv` (`id_pro`);

--
-- Index pour la table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id_cat`);

--
-- Index pour la table `delivery`
--
ALTER TABLE `delivery`
  ADD PRIMARY KEY (`id_delv`),
  ADD KEY `fm` (`id_ord`);

--
-- Index pour la table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`id_inv`),
  ADD KEY `fg` (`id_delv`);

--
-- Index pour la table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id_ord`),
  ADD KEY `fh` (`id_us`),
  ADD KEY `fl` (`id_cart`);

--
-- Index pour la table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id_pro`),
  ADD KEY `fork` (`id_cat`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_us`),
  ADD UNIQUE KEY `email_us` (`email_us`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `cart`
--
ALTER TABLE `cart`
  MODIFY `id_cart` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `category`
--
ALTER TABLE `category`
  MODIFY `id_cat` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT pour la table `delivery`
--
ALTER TABLE `delivery`
  MODIFY `id_delv` int(50) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `id_inv` int(30) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `order`
--
ALTER TABLE `order`
  MODIFY `id_ord` int(30) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `product`
--
ALTER TABLE `product`
  MODIFY `id_pro` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id_us` int(30) NOT NULL AUTO_INCREMENT;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `fv` FOREIGN KEY (`id_pro`) REFERENCES `product` (`id_pro`);

--
-- Contraintes pour la table `delivery`
--
ALTER TABLE `delivery`
  ADD CONSTRAINT `fm` FOREIGN KEY (`id_ord`) REFERENCES `order` (`id_ord`);

--
-- Contraintes pour la table `invoice`
--
ALTER TABLE `invoice`
  ADD CONSTRAINT `fg` FOREIGN KEY (`id_delv`) REFERENCES `delivery` (`id_delv`);

--
-- Contraintes pour la table `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `fh` FOREIGN KEY (`id_us`) REFERENCES `user` (`id_us`),
  ADD CONSTRAINT `fl` FOREIGN KEY (`id_cart`) REFERENCES `cart` (`id_cart`);

--
-- Contraintes pour la table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `fork` FOREIGN KEY (`id_cat`) REFERENCES `category` (`id_cat`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
