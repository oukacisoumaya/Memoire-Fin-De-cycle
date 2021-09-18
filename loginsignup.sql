-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : ven. 17 sep. 2021 à 19:30
-- Version du serveur :  10.4.17-MariaDB
-- Version de PHP : 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `loginsignup`
--

-- --------------------------------------------------------

--
-- Structure de la table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `image` text NOT NULL,
  `Description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(300) NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`) VALUES
(1, 'email', 'username', '$2y$10$hQb0.m2SmpefxdYpF6LEDuwyPFIQK94mciN7PlacDqOwoQubYkNDa'),
(5, 'username', 'email', '$2y$10$XtlBjYeSOkO0zleindueF.Q.mtlgEGVyJwZaUsctjox/HEDpOr0F6'),
(13, 'txtusername', 'txtemail', '$2y$10$q.Hu8DyLso5BjKfOU2lH/exKun.WP6mlMkuG.TCHQfk0s//ZHnr9a'),
(16, 'utilisateur', 'utilisateur@gmail.com', '$2y$10$4yoLiiyV3vDhUtQTHTKbL.9t9yuUL.7BHtapbo8gWZXLkmSfdN8bC'),
(18, 'user', 'user01@gmail.vom', '$2y$10$ofdUI7U6GHGyqVVcrtj8oukmfnp1POS79tq6qANih151LPFrTn5x6'),
(19, 'Rainay', 'ran001@gmail.com', '$2y$10$.rcepM4hRgV9M.7iwahNYewx3lmmL6keLpfMNT6baDwJ.vS7wL2i6'),
(22, 'rania_md', 'raniarania0507@gmail.com', '$2y$10$eF1S5aIDZ5/rjAxuoe5I.eIHB75eolF8Eqv56sne/DVOJ6kTSPNhi'),
(23, 'lucy', 'luc26@gmail.com', '$2y$10$HgBVXqcgok7RLmUlBoFuLuopG8EtDppM8TJHGQojlHglsCaTGqGia');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `password` (`password`) USING HASH;

--
-- Index pour la table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
