CREATE DEFINER=`root`@`localhost` TRIGGER `pruebas_AFTER_INSERT` AFTER INSERT ON `pruebas` FOR EACH ROW BEGIN
	set @mensaje = "Dato Insertado Con Éxito";
END