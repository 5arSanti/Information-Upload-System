-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 31-05-2024 a las 05:11:08
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `upload_information_system`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `graficas`
--

CREATE TABLE `graficas` (
  `id` int(11) NOT NULL,
  `TITULO_GRAFICA` text NOT NULL,
  `AÑO` int(4) NOT NULL,
  `MES` int(2) NOT NULL,
  `TIPO_DATOS` text NOT NULL,
  `TIPO_GRAFICA` text NOT NULL,
  `DESCRIPCION` longtext NOT NULL,
  `FECHA_CREACION` datetime NOT NULL DEFAULT current_timestamp(),
  `DATOS` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`DATOS`))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `graficas`
--

INSERT INTO `graficas` (`id`, `TITULO_GRAFICA`, `AÑO`, `MES`, `TIPO_DATOS`, `TIPO_GRAFICA`, `DESCRIPCION`, `FECHA_CREACION`, `DATOS`) VALUES
(1, 'Gráfica de cotejamiento - Abril del 2024', 2024, 4, 'ofertasRegistradas', 'line', 'Grafica de pruebas', '2024-04-04 17:51:48', NULL),
(3, 'Grafica 1', 2024, 4, 'rangoSalarial', 'polarArea', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2024-04-08 12:19:16', NULL),
(4, 'Grafica 2', 2024, 4, 'nivelEducativo', 'bar', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2024-04-08 12:19:54', NULL),
(6, 'Grafica 3', 2023, 9, 'ramaDeActividad', 'pie', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2024-04-08 12:24:46', NULL),
(7, 'Grafica 5', 2015, 4, 'nivelEducativo', 'radar', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\n\nSed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?', '2024-04-08 12:26:26', NULL),
(8, 'Grafica con id 8', 2020, 12, 'grupoOcupacional', 'radar', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2024-04-09 16:59:10', NULL),
(9, 'Grafica Nueva y bonita', 2015, 1, 'ofertasRegistradas', 'line', 'Lol', '2024-04-09 17:00:12', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `login`
--

INSERT INTO `login` (`id`, `name`, `email`, `password`) VALUES
(26, 'Johel Santiago Arias', 'santiari05@hotmail.com', '$2b$10$oR/QdhlbAF0giKcNWXu78ehNVRqNpSoc1aNSgjF8Fk9A8TsF7IOLm'),
(30, 'Karen Daniela Ruiz Madrigal', '1526dani@gmail.com', '$2b$10$59DlMZc74Bo3oo6DKENcF.CdkyucOIei4WLlEtbXmcMU7CORoV1j.'),
(33, 'Miguel Jose Ramírez Rojas', 'migueljora326@gmail.com', '$2b$10$iR/iwJIC7kIrds/gxLOtZO39QVJHOogu765.gLKbYHAmCpmkDDN2m');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `slider_data`
--

CREATE TABLE `slider_data` (
  `id` int(11) NOT NULL,
  `NOMBRE` varchar(50) NOT NULL,
  `VALOR` int(20) NOT NULL,
  `PORCENTAJE` int(5) NOT NULL,
  `ICONO` varchar(255) NOT NULL,
  `FECHA_CREACION` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `slider_data`
--

INSERT INTO `slider_data` (`id`, `NOMBRE`, `VALOR`, `PORCENTAJE`, `ICONO`, `FECHA_CREACION`) VALUES
(2, 'Actividades financieras', 9375, 19, 'Actividades financieras', '2024-05-10 17:08:11.000000'),
(3, 'Industrias manufactureras', 28693, -30, 'Industrias manufactureras', '2024-05-10 17:08:57.000000'),
(4, 'Construcción', 9435, -29, 'Construcción', '2024-05-10 17:09:20.000000'),
(5, 'Explotación de minas y canteras', 1285, -36, 'Minas y canterasación', '2024-05-10 17:09:37.000000'),
(8, 'Actividades artísticas', 18792, 1, 'Actividades artísticas', '2024-05-11 11:19:55.000000');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vacantes_vigentes_completo`
--

CREATE TABLE `vacantes_vigentes_completo` (
  `id` int(11) NOT NULL,
  `CODIGO_PRESTADOR` varchar(20) NOT NULL,
  `CODIGO_VACANTE` varchar(20) DEFAULT NULL,
  `TITULO_VACANTE` varchar(200) DEFAULT NULL,
  `DESCRIPCION_VACANTE` varchar(4000) DEFAULT NULL,
  `EXPERIENCIA` int(20) NOT NULL,
  `NIVEL_ESTUDIOS` varchar(300) NOT NULL,
  `DISCIPLINA_PROFESION` varchar(300) DEFAULT NULL,
  `SALARIO_INGRESO` varchar(20) DEFAULT NULL,
  `CANTIDAD_VACANTES` int(11) DEFAULT NULL,
  `CARGO` varchar(300) DEFAULT NULL,
  `TIPO_DOCUMENTO_EMPLEADOR` varchar(50) DEFAULT NULL,
  `NUMERO_IDENTIFICACION_EMPLEADOR` varchar(50) DEFAULT NULL,
  `NOMBRE_EMPLEADOR` varchar(300) DEFAULT NULL,
  `SOLICITUD_EXCEPCION_PUBLICACION` char(1) DEFAULT NULL,
  `FECHA_PUBLICACION` date DEFAULT NULL,
  `FECHA_VENCIMIENTO` date DEFAULT NULL,
  `MUNICIPIO` varchar(255) DEFAULT NULL,
  `SECTOR_ECONOMICO` varchar(200) DEFAULT NULL,
  `TIPO_CONTRATO` varchar(30) DEFAULT NULL,
  `TELETRABAJO` int(11) DEFAULT NULL,
  `DISCAPACIDAD` int(11) DEFAULT NULL,
  `URL_DETALLE_VACANTE` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `vacantes_vigentes_completo`
--

INSERT INTO `vacantes_vigentes_completo` (`id`, `CODIGO_PRESTADOR`, `CODIGO_VACANTE`, `TITULO_VACANTE`, `DESCRIPCION_VACANTE`, `EXPERIENCIA`, `NIVEL_ESTUDIOS`, `DISCIPLINA_PROFESION`, `SALARIO_INGRESO`, `CANTIDAD_VACANTES`, `CARGO`, `TIPO_DOCUMENTO_EMPLEADOR`, `NUMERO_IDENTIFICACION_EMPLEADOR`, `NOMBRE_EMPLEADOR`, `SOLICITUD_EXCEPCION_PUBLICACION`, `FECHA_PUBLICACION`, `FECHA_VENCIMIENTO`, `MUNICIPIO`, `SECTOR_ECONOMICO`, `TIPO_CONTRATO`, `TELETRABAJO`, `DISCAPACIDAD`, `URL_DETALLE_VACANTE`) VALUES
(990, '12280', '1885635050', 'PL-practicante universitario', '�En Scotiabank Colpatria nos encanta contar con talentos como el tuyo!Estamos buscando estudiantes de �ltimos semestres de carreras como administraci�n de empresas, finanzas, ingenier�a industrial y econom�a. Con aval para hacer su etapa practica con nosotros por medio de contrato de aprendizaje. Si te apasiona el  mundo de mercados de capitales, y tienes bases en Excel avanzado (Programaci�n en C++, Visual Basic, Python).�Post�late ahora e inicia t� practica en Febrero! Ciudad: Bogot�. ', 0, '6', 'Universitaria', '2000000-2500000', 1, 'practicante universitario', '1', '860034594-1', 'Scotiabank Colpatria', 'N', '0000-00-00', '0000-00-00', '11001', 'Financiero', '6', 0, 0, 'https://www.elempleo.com/co/sitio-empresarial/unidades-tecnologicas-santander/practicante-universitario/1885635050'),
(991, '12280', '1885601391', 'PL-Practicante de ingenier�a industrial', 'Reconocida compa�ia de servicios de certificaciones, auditorias, ensayos requiere para el equipo de laboratorio practicante de ingenieria industrial para apoyar temas de calidad.Salario: $ 1.060.000Tipo de contrato: aprendizajeHorario: lunes a viernes 7.30 am a 5:00 pm presencial en Fontibon.', 0, '6', 'Universitaria', '1000000-1500000', 1, 'Practicante de ingenier�a industrial', '1', '860049921-0', 'SGS', 'N', '0000-00-00', '0000-00-00', '11001', 'Servicios', '6', 0, 0, 'https://www.elempleo.com/co/sitio-empresarial/unidades-tecnologicas-santander/Practicante-de-ingenier�a-industrial/1885601391'),
(992, '12280', '1885595586', 'PL-Practicante ingeniero industrial y/o mec�nico -Fontibon HB', 'Importante empresa de manufacturas ubicada en fontib�n HB, solicita practicante de Ingenieria industrial o mec�nica, estudiantes de �ltimos semestres con disponibilidad para vincularse de manera inmediata, para desempe�arse en el �rea industrial, con excelente actitud y disposici�n para aprender,  horario lunes a viernes de 7:00 am a 5:00 pm, practica remunerada con el SMMLV + eps+ arl,  importante contar con carta de aval pr�cticas y no haber tenido contrato de aprendizaje antes.Formaci�n acad�mica: Ingeniera industrial y/o mec�nicaSalario: SMMLV+eps+arlPago: QuincenalTipo de contrato: Contrato de aprendizaje', 0, '6', 'NA', '1000000-1500000', 1, 'Practicante ingeniero industrial y/o mec�nico -Fontibon HB', '1', '800218958-1', 'FLEXO SPRING', 'N', '0000-00-00', '0000-00-00', '11001', 'Manufactura', '6', 0, 0, 'https://www.elempleo.com/co/sitio-empresarial/unidades-tecnologicas-santander/Practicante-ingeniero-industrial-yo-mec�nico-Fontibon-HB/1885595586'),
(993, '12280', '1885636493', 'PL-Practicante para el �rea financiera', 'Para el equipo Fresenius Care Colombia contar con el mejor talento es indispensable; actualmente nos encontramos en b�squeda de Practicante para el �rea financiera, que se encargar� de: �Recibir la correspondencia del �rea de impuestos, radicarla y clasificarla, tanto interna como externa.�Clasificar adecuadamente de acuerdo a los documentos soportes de declaraciones y mantener al d�a el archivo�Conciliaci�n de Cuentas de Retenci�n de ICA Mensualmente�Elaboraci�n de Reporte de informaci�n Ex�gena distrital Bogot�Elaboraci�n de reporte de informaci�n ex�gena Municipal�Atender de manera �gil, amable y eficaz las llamadas telef�nicas de las diferentes unidades renales y clientes internos y externos�Participar en la identificaci�n de los riesgos de su �rea de trabajo y en la generaci�n de acciones�Colaboraci�n continua en otras labores que se requieran en el �reaRequisitos:�Nivel acad�mico: Estudiante de �ltimo semestre de Contadur�a Publica (No graduados)�Qu� ofrecemos?�Contrato de Aprendizaje SENA, Apoyo de sostenimiento de $ 1.160.000 + afiliaci�n a EPS y ARL, �Horario: tiempo completo. Lugar: Bogot�-Virtual ', 0, '6', 'Universitaria', '1000000-1500000', 1, 'Practicante para el �rea financiera', '1', '830007355-2', 'FRESENIUS MEDICAL CARE', 'N', '0000-00-00', '0000-00-00', '11001', 'Salud', '6', 0, 0, 'https://www.elempleo.com/co/sitio-empresarial/unidades-tecnologicas-santander/Practicante-para-el-�rea-financiera/1885636493'),
(994, '12280', '1885636448', 'PL-Practicante para el �rea de Tesoreria - Bogot�', 'Para el equipo Fresenius Care Colombia contar con el mejor talento es indispensable; actualmente nos encontramos en b�squeda de Practicante para el �rea de Tesoreria, que se encargar� de: �Conciliaci�n bancaria, 90% servicios p�blicos�Atenci�n telef�nica a proveedores y unidades renales�Consulta de obligaciones con proveedores desde SAP�Gesti�n de archivo ambas sedes�Soporte general actividades documentales en comercio exterior y otras tareas relacionadas con la tesorer�a.Requisitos:�Nivel acad�mico: Estudiante de �ltimo semestre de Administraci�n de Empresas. (No graduados)�Qu� ofrecemos?�Contrato de Aprendizaje SENA, Apoyo de sostenimiento de $ 1.160.000 + afiliaci�n a EPS y ARL, �Horario: tiempo completo. �Lugar: Bogot�- Hibrido ��� Te invitamos a unirte a nuestro equipo!!!Requerimientos�Educaci�n m�nima: Universidad / Carrera Profesional�Disponibilidad de viajar: No�Disponibilidad de cambio de residencia: No', 0, '6', 'Universitaria', '1000000-1500000', 1, 'Practicante para el �rea de Tesoreria - Bogot�', '1', '830007355-2', 'FRESENIUS MEDICAL CARE', 'N', '0000-00-00', '0000-00-00', '11001', 'Salud', '6', 0, 0, 'https://www.elempleo.com/co/sitio-empresarial/unidades-tecnologicas-santander/Practicante-para-el-�rea-de-Tesoreria--Bogot�/1885636448'),
(995, '12280', '1885601274', 'PL-Practicante ingeniero industrial y/o mec�nico -Fontibon HB', 'Importante empresa de manufacturas ubicada en fontib�n HB, solicita practicante de Ingenieria industrial o mec�nica, estudiantes de �ltimos semestres con disponibilidad para vincularse de manera inmediata, para desempe�arse en el �rea industrial, con excelente actitud y disposici�n para aprender,  horario lunes a viernes de 7:00 am a 5:00 pm, practica remunerada con el SMMLV + eps+ arl,  importante contar con carta de aval pr�cticas y no haber tenido contrato de aprendizaje antes.Formaci�n acad�mica: Ingeniera industrial y/o mec�nicaSalario: SMMLV+eps+arlPago: QuincenalTipo de contrato: Contrato de aprendizaje', 0, '6', 'NA', '1000000-1500000', 1, 'Practicante ingeniero industrial y/o mec�nico -Fontibon HB', '1', '800218958-1', 'FLEXO SPRING', 'N', '0000-00-00', '0000-00-00', '11001', 'Manufactura', '6', 0, 0, 'https://www.elempleo.com/co/sitio-empresarial/unidades-tecnologicas-santander/Practicante-ingeniero-industrial-yo-mec�nico-Fontibon-HB/1885601274'),
(996, '12280', '1885636466', 'PL-Practicante para el �rea Comercial', 'Para el equipo Fresenius Care Colombia contar con el mejor talento es indispensable; actualmente nos encontramos en b�squeda de Practicante para el �rea de BU Producto, que se encargar� de: �Realizar seguimiento a informes como: Recaudo, Cupos de cr�dito, clientes con saldos mayores a 90 d�as, Conciliaciones, Productividad de m�quinas�Elaboraci�n de propuestas comerciales cuando les sean solicitadas�Verificaci�n permanente de la informaci�n registrada en matriz de contratos y alertar vencimientos de contratos, onboard�Proporcionar soporte a las invitaciones a cotizar o licitaciones.�Brindar soporte al equipo de ventas con formatos o documentaci�n solicitada por los clientes�Apoyo en la Generaci�n de conciliaciones de cartera�Seguimiento al recaudo diario y generaci�n de liquidaciones de cartera.�Soporte administrativo al equipo de ventas.�Los dem�s que le sean asignados por el jefe inmediatoRequisitos:�Nivel acad�mico: Estudiante de �ltimo semestre de Administraci�n de Empresas, Ingenieria Industrial, Ingenieria Comercial, Marketing. (No graduados)�Qu� ofrecemos?�Contrato de Aprendizaje SENA, Apoyo de sostenimiento de $ 1.160.000 + afiliaci�n a EPS y ARL, �Horario: tiempo completo. Lugar: Bogot�- 100% presencial', 0, '6', 'Universitaria', '1000000-1500000', 1, 'Practicante para el �rea Comercial', '1', '830007355-2', 'FRESENIUS MEDICAL CARE', 'N', '0000-00-00', '0000-00-00', '11001', 'Salud', '6', 0, 0, 'https://www.elempleo.com/co/sitio-empresarial/unidades-tecnologicas-santander/Practicante-para-el-�rea-Comercial/1885636466'),
(997, '12280', '1885597414', 'PL-Practicante t�cnico o tecn�logo en carreras contables / financieras', 'T�cnico o tecn�logo en �reas administrativas, contables o financieras. ', 0, '6', 'NA', 'A convenir', 1, 'Practicante t�cnico o tecn�logo en carreras contables / financieras', '1', '860005050-1', 'Orbia ', 'N', '0000-00-00', '0000-00-00', '11001', 'Construcci�n', '6', 0, 0, 'https://www.elempleo.com/co/sitio-empresarial/unidades-tecnologicas-santander/Practicante-t�cnico-o-tecn�logo-en-carreras-contables--financieras/1885597414');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `graficas`
--
ALTER TABLE `graficas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `slider_data`
--
ALTER TABLE `slider_data`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `vacantes_vigentes_completo`
--
ALTER TABLE `vacantes_vigentes_completo`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `graficas`
--
ALTER TABLE `graficas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT de la tabla `slider_data`
--
ALTER TABLE `slider_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `vacantes_vigentes_completo`
--
ALTER TABLE `vacantes_vigentes_completo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=998;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
