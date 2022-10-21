-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 21 Okt 2022 pada 14.16
-- Versi server: 10.4.21-MariaDB
-- Versi PHP: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `signupforms`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `registration`
--

CREATE TABLE `registration` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `nisn` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `registration`
--

INSERT INTO `registration` (`id`, `username`, `password`, `nisn`, `email`) VALUES
(9, 'opo', '$2y$10$i4aLrCXmFxLAx6pZSu0W1udcaC8Do2Taqsb2rLFX7D1PIm14y0Qfm', '', ''),
(10, 'popi', '$2y$10$25E2bSr7gNs6iJM0SDvqduGQri6iEG5n3OnrKhCIUJCmgcq0nyW4a', '', ''),
(12, 'dase', '$2y$10$6CRw8EuIKJs2XDGPxpPz9Ox8xZ.LdIm/44lTb1hB6/f740m4.bPTW', '', ''),
(13, 'lori', '$2y$10$E/wgaq3khU40NRYLVJnAVeCqV0G12D3LaZGB.C8zA4gGIKkaaJB1m', '25d55ad283aa400af464c76d713c07ad', ''),
(14, 'rara', '$2y$10$8e./BbFMnbSpkz3oHXwaMeAZ77.2z/o5hDtgFq0AhL0YeRKOAvGaC', '', ''),
(15, 'wawa', '$2y$10$wL6dzWOodkPQS4jCWMonMuSLvrLQzD0K0dO27/tdaE.tROTCutKH6', '', 'fakhrishafara@gmail.com'),
(16, 'toto', '$2y$10$MTH4x2U7ZyAIBcTlisPp.enV1G2SG6cHbftkU/8pmEJoIIH5dsOie', '33d91ca8f00d0e0a06624c8b5ad6d95b', 'toto@gmail.com'),
(17, 'wewe', '$2y$10$qUcw3Tiy/V78277LR3aSuu3plqaBYOldEXJiuVriDMsGvlWclRRnO', '1b463445960289ff1ed0aee2bb833911', 'wewe@gmail.com'),
(18, 'ws', '$2y$10$HdCoVBzgyGjDfOv81GX.c.D0xmUpKn741i7sYUiF.ZcUXcAqRTgzW', '', 'ws@gmail.com'),
(19, 'wara', '$2y$10$FvbL15eCwzqQIUhhcP.wkOnbBBpG2gYqU5mvzG7.2wvECUZdmY4tC', '', 'wara@gmail.com'),
(20, 'gala', '$2y$10$2NhGoOZNJzqh2XoP0xG0PubEg5iMAufycDgyYjxH/hPCpC6vr.vnu', '', 'sky@gmail.com'),
(21, 'oom', '$2y$10$/7V2sT.yaHrcFDQ6.U2xOOAVwzVRNT5IYAMFaixIrPXO.Paxd8Jga', '', 'oom@gmail.com'),
(22, 'tara', '$2y$10$3HXWjPAuda6LVru4qdYRueGCNbmmL/Qp7MVosvkCa6QOINfGo80Ca', '', 'tara@gmail.com'),
(23, 'rama', '$2y$10$ffj14JR29AZL5jiKAavEfela28lLjUxsqC8qjRpOgyVfBs/.MiZAS', '', 'rama@gmail.com'),
(24, 'woro', '$2y$10$Yec3bjJm.As1WZNq08LcjOFoy/CYeDDLRv7T4SeFKXn7HeU5s9vWW', '2a324c8da8330e22f2b42a0696bc4919', 'woro@gmail.com'),
(25, 'rada', '$2y$10$nYvwhnoJd0O1JjgQf2ohnOzQPhoWybugnu36IFna54nOeRI8ghrV6', 'a08fae62d338e143537ceb251d87a73e', 'rada@gmail.com'),
(26, 'dara', '$2y$10$xN0OItsOA2VZ9GOSeUKgredtvXhqrJ.80kBd1PhbHiNgBCa51S62O', '082a6dff26490512f9f9727b44a1939c', 'dara@gmail.com'),
(27, 'lord', '$2y$10$AKjFkW84g8Rbkhx4xAjY4.9Te1pBluj5DxzdR0HuYnzkPt2VE7wkO', 'd6879baae05d8b544a568654a2b1776f', 'lord@gmail.com'),
(28, 'lada', '$2y$10$NMthoeKC3go6q9jYRi7lLuUNs2g6BK0kh4EX.vN9f/hmH3EnKFxhC', 'e157bee6deaec95f430b3b76bae4baf5', 'w@gmail.com'),
(29, 'gara', '$2y$10$U9t7jsPKV8Oq3wo7Y6Vc9.EY9xtr35IZ7BgR0h28qdhlcmenrfaM.', '5a6116f213489d7f660959c7046ab018', 'a@gmail.com'),
(30, 'bada', '$2y$10$5ToGzTH72cVuAMBaJGXX4ub7MAM/Ii4MYqtWCJpyfpu2zWjGtCq0m', '9ba7263331513d2a617e5d66330f2f16', 'b@gmail.com'),
(31, 'laka', '$2y$10$tGCf5txyBHE9h1heBoL45./Jq41FrVIsVlusihSNoW66djQZM0.ny', '6eb63f244ad9220e914fd7b9d879f0a7', 'laka@gmail.com'),
(32, 'Combat', '$2y$10$mZcdNlSqSLOOCFP6rEd6DeWrRXKgnOI82k/dQuHYhsQLPfdpvb0We', '93bef01be2b9110c99f80b901799d3cc', 'com@yahoo.com'),
(33, 'rangga', '$2y$10$Tol42HUFKovDL/dwd83.OeMW.PRN1u4.f1RSDZG45fmu3DjIVK2iG', 'ba8b350deb402c42d0cd4707de21ff8c', 'rangga@yahoo.com'),
(34, 'gata', '$2y$10$b.U8BT.HP0.jY1I3FedkGumL2wrMti2yYbHkHfBDcRjIvjc4NPQOG', '2e3b7c0e707a70dd2897e7c5fbd775f1', 'gata@aa.com'),
(35, 'fakhriAzra', '$2y$10$LKRnnBoJ3WYQv0N682evxesd6Mmd1W2oPn31zXiZOPufHNW8TrOAe', 'cae8101fc06cad907ed92c7fbbe3d4c0', 'f.a.kh.rishafara@gmail.com'),
(36, 'taga', '$2y$10$L.lc8J2zQh0qohdyvZ/biOlstYpqQw2kADTak2N1zcd8vs/Vm3yEy', 'e002afec49e9a852e521c823e8cebdec', 'ta@gmail.com'),
(37, 'yata', '$2y$10$bMCCKRDaZEatSN2mhJMIMe97r6p2C14YY58i1q6pjsWl6UN8iNQGW', 'cae8101fc06cad907ed92c7fbbe3d4c0', 'f.a.kh.rishafara@gmail.com'),
(38, 'tasi', '$2y$10$O0Pbng3XRwDd2lSGM4vfJOs1yXmKkGVVVlthl3X.UvjpNbVNsTPVu', '02182743dbdfd08a26753c9f94d6c78f', 'tasi@gmail.com'),
(39, 'yatim', '$2y$10$lJGxEKv8vb7IO1W4l6s9nu68MhaWwxl8UcjaEwH0cLm.V0DW3b8Ai', 'f55d271070aedf0402340dbfbe38ec46', 'gdbapak@gmail.com'),
(40, 'gama', '$2y$10$3cb29r.cRPJz/qh6yEwIZuOnswu1crW78f/VEU2UPuhW2gMhREM66', '754467c1466191b94d4e45cb9e66f1d8', 'gama@gmail.com'),
(41, 'kambing', '$2y$10$C9FPkx8nFH9nzmIwVIRtiuWVEx3rusBtQEgwgw9nD9npqpWocUUXG', 'b7bbcc599cb653f23e8642f152e73e33', 'kambing@gmail.com'),
(42, 'latah', '$2y$10$vmDhw7rbOA8.AMcBEfClOORYDQ3K0q0lyZVswsj9yb4slGY6fQlDG', '24373ae9734d1dfc1ffebf34f502eee3', 'latah@gmail.com'),
(43, 'lora', '$2y$10$r7pYWaOTirGdvrA.AfHFUOkT0yORoINfpFahpAWd/Ofl1KgyVj7H6', 'b096130fbb059a0789efcece046fdbb2', 'lora@gmail.com'),
(44, 'subin', '$2y$10$qx.rty4yuEZFOH/kkVHFD.xtnhmspuwu4pxIe3sGXQnAJ6hKazohm', '1939257965307d7dae283c37d953480b', 'subin@gmail.com'),
(45, 'yanto', '$2y$10$P5lr0ss61dGVZjI.l5bCqu0WAf9DCY0Ux/s6eY89ryq3N5cJCw0Di', 'c91343e7780b09ffd1f5bba42e1ddbc1', 'yanto@gmail.com'),
(46, 'febi', '$2y$10$SIBc8OWNRYo/C57WkgyQIubx74mth7H8I8GSd8YESokpv6DHRv5I.', 'f0d52fa02a9560fff8d58c2874667071', 'febi@gmail.com'),
(47, 'azra', '$2y$10$EVmfz5pOZA1aMwLcgr1BWunNNneyN7XONA.k9FYW2sLe4QHzQtFpq', 'dad4f791c2446e11340a9b607bca979f', 'azrafakhrishafara@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `registration`
--
ALTER TABLE `registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
