-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: fapi
-- ------------------------------------------------------
-- Server version	5.5.5-10.1.30-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Temporary view structure for view `viewaluno`
--

DROP TABLE IF EXISTS `viewaluno`;
/*!50001 DROP VIEW IF EXISTS `viewaluno`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `viewaluno` AS SELECT 
 1 AS `id_aluno`,
 1 AS `nome`,
 1 AS `sobrenome`,
 1 AS `telefone`,
 1 AS `CPF`,
 1 AS `RG`,
 1 AS `id_faculdade`,
 1 AS `id_sala`,
 1 AS `id_endereco`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `viewalunosala`
--

DROP TABLE IF EXISTS `viewalunosala`;
/*!50001 DROP VIEW IF EXISTS `viewalunosala`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `viewalunosala` AS SELECT 
 1 AS `numero`,
 1 AS `nome`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `viewalunosalaprofessor`
--

DROP TABLE IF EXISTS `viewalunosalaprofessor`;
/*!50001 DROP VIEW IF EXISTS `viewalunosalaprofessor`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `viewalunosalaprofessor` AS SELECT 
 1 AS `sala`,
 1 AS `aluno`,
 1 AS `professor`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `viewaluno`
--

/*!50001 DROP VIEW IF EXISTS `viewaluno`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `viewaluno` AS select `aluno`.`id_aluno` AS `id_aluno`,`aluno`.`nome` AS `nome`,`aluno`.`sobrenome` AS `sobrenome`,`aluno`.`telefone` AS `telefone`,`aluno`.`CPF` AS `CPF`,`aluno`.`RG` AS `RG`,`aluno`.`id_faculdade` AS `id_faculdade`,`aluno`.`id_sala` AS `id_sala`,`aluno`.`id_endereco` AS `id_endereco` from `aluno` where (`aluno`.`nome` like 'A%') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `viewalunosala`
--

/*!50001 DROP VIEW IF EXISTS `viewalunosala`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `viewalunosala` AS select `sala`.`numero` AS `numero`,`aluno`.`nome` AS `nome` from (`aluno` join `sala` on((`aluno`.`id_sala` = `sala`.`id_sala`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `viewalunosalaprofessor`
--

/*!50001 DROP VIEW IF EXISTS `viewalunosalaprofessor`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `viewalunosalaprofessor` AS select `sala`.`numero` AS `sala`,`aluno`.`nome` AS `aluno`,`professor`.`nome` AS `professor` from ((`aluno` join `sala` on((`aluno`.`id_sala` = `sala`.`id_sala`))) join `professor` on((`professor`.`id_professor` = `sala`.`id_professor`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-05 22:04:04
