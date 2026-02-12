INSERT INTO public."tblDiagnostico"("Tipo", "Codigo", "Resumen", "Descripcion")
	VALUES 
--CIE10
('CIE10', 'K02.9', 'Caries dental, no especificada', 'Daño a los dientes causado por caries dental sin especificar la localización.'),
('CIE10', 'K05.1', 'Gingivitis crónica', 'Inflamación crónica de las encías.'),
('CIE10', 'K10.1', 'Dolor orofacial', 'Dolor que involucra la boca y la cara.'),
('CIE10', 'K11.7', 'Trastornos de las glándulas salivales', 'Problemas relacionados con las glándulas salivales.'),
('CIE10', 'K12.2', 'Estomatitis vesicular', 'Inflamación con formación de vesículas en la mucosa oral.'),
('CIE10', 'K20.9', 'Enfermedad por reflujo gastroesofágico sin esofagitis', 'Retorno del contenido gástrico al esófago sin inflamación.'),
('CIE10', 'K22.7', 'Disfagia orofaríngea', 'Dificultad para tragar que afecta la garganta.'),
('CIE10', 'K29.0', 'Gastritis aguda', 'Inflamación aguda del revestimiento del estómago.'),
('CIE10', 'K30', 'Dispepsia', 'Dolor o malestar en la parte superior del abdomen.'),
('CIE10', 'K03.0', 'Exodoncia de diente deciduo', 'Extracción de un diente de leche.'),
('CIE10', 'K04.0', 'Gingivitis asociada con ortodoncia', 'Inflamación de las encías causada por ortodoncia.'),
('CIE10', 'K06.0', 'Anomalías de la erupción de los dientes', 'Problemas en la erupción normal de los dientes.'),
('CIE10', 'K08.1', 'Retención y falta de erupción de los dientes', 'Problemas con la erupción o el crecimiento de los dientes.'),
('CIE10', 'K09.9', 'Otros trastornos especificados de la boca y de los dientes', 'Problemas bucales y dentales no especificados de otra manera.'),
('CIE10', 'K11.0', 'Hipertrofia de las papilas filiformes', 'Agrandamiento de las estructuras en la lengua.'),
('CIE10', 'K14.0', 'Enfermedad por reflujo gastroesofágico con esofagitis', 'Retorno del contenido gástrico al esófago con inflamación.'),
('CIE10', 'K13.1', 'Ulceración de la lengua', 'Formación de úlceras en la lengua.'),
('CIE10', 'K07.6', 'Anomalías dentofaciales', 'Problemas en el desarrollo de la cara y los dientes.'),
('CIE10', 'K01.1', 'Dientes incluidos', 'Dientes que no han erupcionado normalmente.'),
('CIE10', 'K07.6', 'Anomalías dentofaciales', 'Problemas en el desarrollo de la cara y los dientes.'),
--CIE11
('CIE11', 'QA00', 'Examen odontológico', 'Evaluación clínica de la salud bucal'),
('CIE11', 'QA01', 'Radiografía dental', 'Uso de imágenes para diagnosticar problemas dentales'),
('CIE11', 'DA00', 'Afecciones de los labios', 'Problemas que afectan a los labios');


INSERT INTO public."tblCurso"("Nombre", "Semestre", "Malla")
	VALUES 
	('Operatoria Dental I', 'V', '2018'),
	('Ortodoncia Básica', 'VII', '2018');
	
	
INSERT INTO public."tblEmpresa"("Ruc", "RazonSocial", "Representante")
	VALUES 
('20319363221', 'Universidad Continental S.A.C.', 'José Felipe Barrios Ipenza');



INSERT INTO public."tblSede"("Nombre", "Direccion", "Celular", "Correo", "TipoSede", "idEmpresa")
	VALUES 
('Campus Huancayo', 'Av. San Carlos 1980 de la Urb. San Antonio.', '(064) 481430', 'centrodeatencion@continental.edu.pe', 'Huancayo', 1),
('Campus Lima', 'Av. Alfredo Mendiola 5210, Los Olivos', '(01) 2132760', 'centrodeatencion@continental.edu.pe', 'Lima', 1),
('Campus Cusco', 'Sector Angostura km. 10, en San Jerónimo.', '(084) 480070', 'centrodeatencion@continental.edu.pe', 'Cusco', 1),
('Campus Arequipa', 'José Luis Bustamante y Rivero, en la Ciudad Blanca', '(054) 412030', 'centrodeatencion@continental.edu.pe', 'Arequipa', 1),
('Campus Lima', 'Calle Junín 355, Miraflores', '(01) 2132760', 'centrodeatencion@continental.edu.pe', 'Lima', 1);

INSERT INTO public."tblPeriodo"("Nombre", "Empieza", "Termina", "idSede")
	VALUES 
('2023-2', '2023-08-21', '2023-12-09', 1),
('2023-2', '2023-08-21', '2023-12-10', 2),
('2023-2', '2023-08-21', '2023-12-10', 3),
('2023-2', '2023-08-21', '2023-12-10', 4),
('2023-2', '2023-08-21', '2023-12-10', 5);


INSERT INTO public."tblUsuario"("Nombres", "Apellidos", "Celular", "Correo", "NumDoc", "Contra", "Foto", "Pago", "Codigo", "Activo", "Genero", "TipoDocumento", "RestablecerContra", "Rol", "idSede")
	VALUES 
--3 Administradores
('Juan', 'Perez Gomez', '902145322', '75514477@continental.edu.pe', '75203642', 'P@ssw0rd1', 'Foto', 'Pagado', '75514477', false, 'Masculino', 'DNI', 'Activado', 'Administrador', 2),

('Estefano', 'Rodrigues Peres', '921456588', '12345678@continental.edu.pe', '12345678', 'A8b9Pz', 'Foto', 'Pagado', '12345678', false, 'Masculino', 'DNI', 'Activado', 'Administrador', 3),

('Maria', 'Peña Flores', '78412577', '78901234@continental.edu.pe', '78901234', 'Kx34tD', 'Foto', 'Pagado', '78901234', false, 'Femenino', 'DNI', 'Activado', 'Administrador', 4),

--8 Docentes
('Miguel', 'Torres Aliaga', '912345567','20569699@continental.edu.pe', '74569699', 'torresaliaga123', 'Foto', 'Pagado', '74569699', false, 'Masculino', 'DNI', 'Activado','Docente', 2),

('Lear', 'Fernando Bravo', '923783212', '73623123@continental.edu.pe', '73623123', 'useri@12', 'Foto', 'Pagado', '73623123', false, 'Masculino', 'DNI', 'Activado', 'Docente', 2),

('Valentina', 'Rojas Sanchez', '986115248', 'vrojas@continental.edu.pe', '78465215', 'rovan98*75', 'Foto', 'Pagado', '78465215', false, 'Femenino', 'DNI', 'Activado', 'Docente', 3),

('Esteban', 'Vargas Castro', '956215787', 'evargas@continental.edu.pe', '45148563', 'Vargas9545', 'Foto', 'Pagado', '78465215', false, 'Masculino', 'DNI', 'Activado', 'Docente', 3),

('Ana', 'Santos Martel', '923456345','75508699@continental.edu.pe', '75508699', 'santosmartel123', 'Foto', 'Pagado', '45148563', false, 'Femenino', 'DNI', 'Activado', 'Docente', 4),

('Antonio', 'Rodriguez Quispe', '914561233','20528699@continental.edu.pe', '20528699', 'santosmartel123', 'Foto', 'Pagado', '20528699', false, 'Maculino', 'DNI', 'Activado','Docente', 4),

('Laura', 'Aldave Vasquez', '901234124','30932036@continental.edu.pe', '30932036', 'lauraaldave123', 'Foto', 'Pagado', '30932036', false, 'Femenino', 'DNI', 'Activado', 'Docente', 5),

('Isabel', 'Rodriguez Herrera', '852014633', '75231546@continental.edu.pe', '75231546', 'Vrodri123', 'Foto', 'Pagado', '75231546', false, 'Femenino', 'DNI', 'Activado', 'Docente', 5),

--14 Estudiantes

('Esther', 'Gonzalez Huaman', '923426332', '75500032@continental.edu.pe', '75500032', 'Esth_123', 'Foto', 'Pagado', '75500032', false, 'Femenino', 'DNI', 'Activado', 'Estudiante', 1),

('Sebastian', 'Diaz Mendoza', '96552364', '75462365@continental.edu.pe', '75462365', 'seb75D5', 'Foto', 'Pagado', '75462365', false, 'Masculino', 'DNI', 'Activado', 'Estudiante', 1),

('Gabriela', 'Torres Ramos', '986458746', '74253216@continental.edu.pe', '74253216', 'Tomos7469*', 'Foto', 'Pagado', '74253216', false, 'Femenino', 'DNI', 'Activado', 'Estudiante', 2),

('Maria', 'Perez Lopez', '954632588', '70152365@continental.edu.pe', '70152365', 'contrasena123', 'Foto', 'Pagado', '70152365', false, 'Femenino', 'DNI', 'Activado', 'Estudiante', 2),

('Juan', 'Gonzalez Martinez', '954632588', '74562136@continental.edu.pe', '74562136', 'clave456', 'Foto', 'Pagado', '74562136', false, 'Masculino', 'DNI', 'Activado', 'Estudiante', 2),

('Ana', 'Sanchez Rodriguez', '935628766', '75185963@continental.edu.pe', '75185963', 'contrasena123', 'Foto', 'Pagado', '75185963', false, 'Femenino', 'DNI', 'Activado', 'Estudiante', 3),

('Pedro', 'Torres Lopez', '987412055', '74521563@continental.edu.pe', '74521563', 'contrasena123', 'Foto', 'Pagado', '74521563', false, 'Masculino', 'DNI', 'Activado', 'Estudiante', 3),

('Luisa', 'Flores Martinez', '903651855', '75208754@continental.edu.pe', '75208754', 'password567', 'Foto', 'Pagado', '75208754', false, 'Femenino', 'DNI', 'Activado', 'Estudiante', 3),

('Diana', 'Flores Diaz', '912563452', '76508601@continental.edu.pe', '76508601', 'Flores123', 'Foto', 'Pagado', '76508601', false, 'Femenino', 'DNI', 'Activado', 'Estudiante', 4),

('Pedro', 'Arroyo Flores', '923234364', '71112223@continental.edu.pe', '71112223', '7pedro17', 'Foto', 'Pagado', '71112223', false, 'Masculino', 'DNI', 'Activado', 'Estudiante', 4),

('Jean', 'Torres Ricse', '915666232', '75906805@continental.edu.pe', '75906805', 'jeantorres123', 'Foto', 'Pagado', '75906805', false, 'Masculino', 'DNI', 'Activado', 'Estudiante', 4),

('Juan Matias', 'Mendoza Lapa', '934392332', '71001200@continental.edu.pe', '71001200', '7pedro17', 'Foto', 'Pagado', '71001200', false, 'Masculino', 'DNI', 'Activado', 'Estudiante', 5),

('Romero', 'Quispe Valdir', '925825033', '75201420@continental.edu.pe', 'ABC1234D', '7551ANC1', 'Foto', 'Pagado', '75201420', false, 'Masculino', 'Pasaporte', 'Activado', 'Estudiante', 5),

('Alex', 'Torres Huaman', '963258655', '75360075@continental.edu.pe', 'AB1234567', 'TorresHua1492', 'Foto', 'Pagado', '75360075', false, 'Masculino', 'Pasaporte', 'Activado', 'Estudiante', 5);


INSERT INTO public."tblAdministrador"("NombreCompleto", "CodigoAcceso", "idUsuario")
SELECT CONCAT("Nombres", ' ', "Apellidos"), "Codigo", "idUsuario" FROM public."tblUsuario"
WHERE "idUsuario" IN (1, 2, 3);


INSERT INTO public."tblDocente"("NombreCompleto", "Colegiatura", "FirmaDigital", "idUsuario")
SELECT 
    CONCAT("Nombres", ' ', "Apellidos") AS "NombreCompleto", 
    CASE 
        WHEN "idUsuario" = 4 THEN '423232'
        WHEN "idUsuario" = 5 THEN '232321'
        WHEN "idUsuario" = 6 THEN '5532321'
        WHEN "idUsuario" = 7 THEN '5232321'
        WHEN "idUsuario" = 8 THEN '6232321'
        WHEN "idUsuario" = 9 THEN '34232321'
        WHEN "idUsuario" = 10 THEN '4232321'
        WHEN "idUsuario" = 11 THEN '5232421'
        ELSE NULL 
    END AS "Colegiatura",
    'FirmaDigital' AS "FirmaDigital", 
    "idUsuario" AS "idUsuario"                          
FROM public."tblUsuario"
WHERE "idUsuario" BETWEEN 4 AND 11;

INSERT INTO public."tblEstudiante"("NombreCompleto", "Semestre", "Firma", "idUsuario")
SELECT 
    CONCAT("Nombres", ' ', "Apellidos") AS "NombreCompleto", 
    CASE 
        WHEN "idUsuario" = 12 THEN 'Séptimo'
        WHEN "idUsuario" = 13 THEN 'Octavo'
        WHEN "idUsuario" = 14 THEN 'Sexto'
        WHEN "idUsuario" = 15 THEN 'Octavo'
        WHEN "idUsuario" = 16 THEN 'Sexto'
        WHEN "idUsuario" = 17 THEN 'Noveno'
        WHEN "idUsuario" = 18 THEN 'Séptimo'
        WHEN "idUsuario" = 19 THEN 'Noveno'
		WHEN "idUsuario" = 20 THEN 'Décimo'
		WHEN "idUsuario" = 21 THEN 'Séptimo'
		WHEN "idUsuario" = 22 THEN 'Séptimo'
		WHEN "idUsuario" = 23 THEN 'Octavo'
		WHEN "idUsuario" = 24 THEN 'Noveno'
		WHEN "idUsuario" = 25 THEN 'Noveno'
        ELSE NULL 
    END AS "Semestre",
    'Firma' AS "Firma", 
    "idUsuario" AS "idUsuario"                          
FROM public."tblUsuario"
WHERE "idUsuario" BETWEEN 12 AND 25;


--id del docente del 1 al 8
INSERT INTO public."tblClase"("Nombre", "Salon", "Horario", "idDocente", "idPeriodo", "idCurso")
	VALUES 
('Ortodoncia Básica', 'H101', '2023-01-01 07:30:00', 4, 1, 1),
('Ortodoncia Básica', 'H101', '2023-01-01 11:30:00', 3, 1, 2),
('Operatoria Dental I', 'H102', '2023-01-01 17:50:00', 2, 1, 2),
('Operatoria Dental I', 'H102', '2023-01-01 15:30:00', 7, 1, 1);


INSERT INTO public."tblIntegrantes"("Nombre", "idClase", "idEstudiante")
	VALUES
('40233-2', 1, 1),
('41343-2', 4, 2),
('32232-3', 2, 2),
('40210-4', 1, 1),
('43002-5', 2, 4),
('40201-6', 1, 5),
('41123-7', 3, 5),
('332122-8', 2, 1),
('30213-9', 2, 2),
('4025-10', 3, 3);


INSERT INTO public."tblPaciente"(
    "FechaCreacion", "HoraCreacion", "NumeroHistoriaClinica", "Ectoscopia",
    "Nombre", "ApellidoPaterno", "ApellidoMaterno", "Sexo", "Lugar", "Domicilio",
    "FechaNacimiento", "EstadoCivil", "NroCelular", "Correo", "Raza", "GradoInstruccion",
    "Ocupacion", "Responsable", "ParentescoconResponsable", "DomicilioResponsable",
    "CelularResponsable", "Acompaniante", "EnfermedadActual", "MotivoConsulta",
    "FuncionesBiologicas", "Orina", "Apetito", "Suenio", "Deposiciones", "Sed",
    "Alergias", "AntecedentesAlergicos", "AntecedentesPersonal", "AntecedentesFamiliares",
    "AntecedentesPatologicos", "idUsuario"
)
VALUES 
(
    '2023-06-15', '15:30', '1', 'Paciente masculino de 30 años refiere que hace aproximadamente 2 años empezó a sentir incomodidad en la parte posterior de la cavidad bucal al masticar algunos alimentos duros y cuando los alimentos no estan bien triturados siente dolor de estomago, el dolor inicio de forma brusca al morder alimentos duros y ha sido progresiva por que va en aumento. El dolor es provocado al momento de masticar. El dolor empieza en un lugar específico y luego se va exponiendo por toda la cavidad',
    'Esteban', 'Flores', 'Paredes', 'M', 'Huancayo', 'Av. Los Andes 123, Urb. San Martin', '1990-05-15', 'Soltero/a',
    '987123456', 'esteban.flores@gmail.com', 'Mestizo', 'Educación terciaria(Universitaria o técnica) completa',
    'Ingeniero', 'Cristina Flores', 'Prima', 'Av. Los Andes 123, Urb. San Martin', '923172022', 'Ninguna',
    'Dolor de muela', 'Me duele muy fuerte en mi diente al comer', 'Normal', 'Conservado',
    'Conservado(03 veces al dia)', 'Conservado', 'Conservado(02 veces al dia)', 'Conservado(05 vasos al dia)',
    'Ninguna', 'No refiere', 'No refiere', 'Padre: Diabetes, Madre: Hipertensión, Asma','No refiere', 1
);


INSERT INTO public."tblExamenGeneral"("Peso", "Talla", "IndiceMasaCorporal", "Piel", "AnexosCabello", 
									  "AnexosUnias", "PresionArterial", "FrecuenciaRespiratoria", "Pulso", 
									  "Temperatura", "idPaciente")
	VALUES 
('70.5 kg', '175 cm', '23.02(peso normal)', 'Piel seca con falta de elasticidad', 
 'Cabello opaco y con puntas abiertas', 'Tamaño promedio, sin lesiones, con buena higiene', 
 '120/80 mmHg', '16-20 RPM', '75 PPM', '36.5°', 1);



INSERT INTO public."tblAnamnesis"("Contenido", "FechaRegistro", "idPaciente")
	VALUES 
('El paciente ha experimentado sensibilidad al comer alimentos. No hay problemas de respiración ni otras molestias relacionadas.', '2023-06-15', 1);



INSERT INTO public."tblDiagnosticoDefinitivo"("Diagnostico", "FechaRegistro", "idPaciente")
	VALUES
('Caries dental en la muela superior derecha', '2023-06-15', 1);


INSERT INTO public."tblDiagnosticoPresuntivo"("Diagnostico", "FechaRegistro", "idPaciente")
	VALUES 
('Hay una posible infección en la encía inferior izquierda', '2023-06-15', 1);


INSERT INTO public."tblExamenesAuxiliares"("Contenido", "FechaRegistro", "idPaciente")
	VALUES
('Radiografía panorámica dental muestra signos de caries en varias muelas', '2023-06-15', 1);


INSERT INTO public."tblEpicrisis"("Contenido", "FechaRegistro", "idPaciente")
	VALUES
('Se completó el tratamiento para las caries dentales', '2023-06-15', 1);


INSERT INTO public."tblPlanyCronogramaTratamiento"("Fecha", "Resumen", "Especificaciones", "Observaciones", 
												   "FechaRegistro", "idPaciente")
	VALUES
('2023-06-15', 'Plan de tratamiento para restauración dental', 
 'Programar limpieza dental y realizar empastes en molar superior e inferior', 'Ninguna', '2023-06-15 15:20', 1);


INSERT INTO public."tblNotasEvolutivas"("Fecha", "Tratamiento", "Firma", "FechaRegistro", "idPaciente")
	VALUES
('2023-06-15', 'Continuación del tratamiento para caries dentales', 'wasa', '15:40', 1);
	

INSERT INTO public."tblInterpretacion"("RadiografiaPanoramica", "HemogramaCompleto", "TiempoSangrado", "TiempoCoagulacion", "FechaRegistro", "idPaciente")
	VALUES
('Los resultados son normales, no se observa ninguna anomalía', 
 'El hemograma está dentro de los rangos normales', '5 minutos, dentro del rango normal', 
 '8 minutos, dentro del rango normal', '2023-06-15', 1);




--Craneo, Cara: Normocefalo, Braquicéfalo, Dolicocéfalo
--Normofacial, Braquifacial, Dolicofacial
INSERT INTO public."tblExamenEstomatologico"("Facie", "Craneo", "Cara", "SimetriaTresTercios", "SimetriaBilateral", "SimetriaPerfil", "ATMtrayectoriaaperturaycierre", "ATMfluidosdelaATM", "ATMpalpitacion", "ATMgradodeapertura", "Ganglios", "idPaciente")
	VALUES 
('Normal', 'Normocefalo', 'Normocefacial', 'No presenta simetria', 'No presenta homogeneidad', 'Convexo',
    'Deflexión', 'Presenta crepitaciones de lado izquierdo en la apertura', 'Palpación dolor al lado izquierdo (3 en la escala del dolor)',
    '38mm', 'No inflamados', 1);



INSERT INTO public."tblNivelPieza"("EnciaNormal", "EnciaFaltaoAusencia", "EnciaIncosistencia", 
								   "ColorNormal", "ColorEntematosa", "ColorPalido", "TexturaNormal", 
								   "TexturaLisa", "TexturaRugosa", "ConsistenciaNormal", 
								   "ConsistenciaEdematosa", "ConsistenciaFibrosa", "EnciaPapilarNormal", 
								   "EnciaPapilarAplanada", "EnciaPapilarCrateriforme", "Encia", 
								   "idExamenEstomatologico")
	VALUES ('16-17-24-31-32-33-34-35-37-42-43-44', '---', '12-11-21-22-41', '32-33-34-35-37-41', 
			'12-11-16-17-21-22-31-42-43-44', '24', '24-32-33-34-35-37-41-44', '12-11-16-17-21-22-31-42-43', 
			'--', '24-32-33-34-35-37-41-44', '12-11-16-17-21-22-31-42-43', '---', '---', '---', 
			'A nivel de todas las piezas','Presenta inconsistencias a nivel de piezas: 12-11-21-22-41, Encia eritematosa a nivel de las piezas: 12-11-21-22-41, Encia edematosa a nivel de las piezas: 12-11-21-22-41, Encia Catriforme a nivel de todas las piezas', 1);



INSERT INTO public."tblTejidosDuros"("MaximilarSuperior", "MaximilarInferior", "Numero", "Color", "Forma", 
									 "Tamanio", "Diastemas", "ZonasEdentulasyRebordeAlveolar", 
									 "AlteraciondePosiciones", "FacetadeDesgaste", "LineaMedia", 
									 "Otro", "idExamenEstomatologico")
VALUES 
('Ovoide sin epiñomiento','Ovoide sin opiñomiento','17','Amarillento','Ovalada','Normal',
 '12 a 11 /21 a 22 /31 a 32 /31 a 41 /42 a 43', '13 a 15 /23/ 25 a 27 /36/ 45 a 47', 'Sin alteracion', 
 'Desgaste en incisal: 11-21-32-42-31-32', 'Alterada 2mm a la izquierda', 'Ninguna', '1');

 

INSERT INTO public."tblExamenIntrabucal"("LabiosYComisuraLabial", "PaladarDuroyBlando", "Carrillos", 
										 "PisodeBoca", "Lengua", "Orofaringe", "Frenillos", "Saliva", 
										 "idExamenEstomatologico")
VALUES 
('Normales', 'Normal', 'Normales', 'Normal', 'Normal', 'Normal', 'Sin alteraciones', 'Normal',1);
	
	
	
	
INSERT INTO public."tblDolor"("Temporal", "Masetero", "PteriogoideoInterno", "PteriogoideoExterno", 
							  "Digastrico", "Esternocleidomastoideo", "idExamenEstomatologico")
	VALUES ('Si en la parte derecha/izquierda', 'No', 'Si en la parte izquierda', 'No', 'No', 
			'Si en la parte izquierda', 1);
			
			
	
INSERT INTO public."tblOclusion"("RelacionMolarDerecha", "RelacionMolarIzquierda", "RelacionCaninaDerecha", 
								 "RelacionCaninaIzquierda", "GradodeApertura", "OverBite", "OverJet", 
								 "idExamenEstomatologico")
	VALUES ('No registrable', 'No registrable', 'No registrable', 'No registrable', 'Libre', 'Normal (1mm)',
			'Normal (1mm)',1);
	
	
	
	
	


INSERT INTO public."tblDiente"("Nombre", "Ubicacion", "Tipo", "Lado", "Posicion", "Raiz", "Estado")
	VALUES
-- Incisivo
('Incisivo Central Superior Derecho', '11', 'Incisivo', 'Derecho', 'Arriba', '1', 'Permanente'),
('Incisivo Lateral Superior Derecho', '12 ', 'Incisivo', 'Derecho', 'Arriba', '1', 'Permanente'),
('Incisivo Central Inferior Derecho', '41', 'Incisivo', 'Derecho',   'Abajo', '1', 'Permanente'),
('Incisivo Lateral Inferior Derecho', '42', 'Incisivo', 'Derecho',  'Abajo', '1', 'Permanente'),
('Incisivo Central Superior Izquierdo', '21', 'Incisivo', 'Izquierdo', 'Arriba', '1', 'Permanente'),
('Incisivo Lateral Superior Izquierdo', '22', 'Incisivo', 'Izquierdo', 'Arriba', '1', 'Permanente'),
('Incisivo Central Inferior Izquierdo', '31', 'Incisivo', 'Izquierdo', 'Abajo', '1', 'Permanente'),
('Incisivo Lateral Inferior Izquierdo', '32', 'Incisivo', 'Izquierdo', 'Abajo', '1', 'Permanente'),

-- Canino
('Canino Superior Derecho', '13' , 'Canino', 'Derecho', 'Arriba', '1', 'Permanente'),
('Canino Inferior Derecho', '43', 'Canino', 'Derecho', 'Abajo', '1', 'Permanente'),
('Canino Superior Izquierdo', '23', 'Canino', 'Izquierdo', 'Arriba', '1', 'Permanente'),
('Canino Inferior Izquierdo', '33', 'Canino', 'Izquierdo', 'Abajo', '1', 'Permanente'),

-- Premolares
('Primer Premolar Superior Derecho', '14', 'Premolar', 'Derecho', 'Arriba', '2', 'Permanente'),
('Segundo Premolar Superior Derecho', '15', 'Premolar', 'Arriba', 'Arriba', '2', 'Permanente'),
('Primer Premolar Inferior Derecho', '44', 'Premolar', 'Derecho', 'Abajo', '2', 'Permanente'),
('Segundo Premolar Inferior Derecho', '45', 'Premolar', 'Derecho', 'Abajo', '2', 'Permanente'),
('Primer Premolar Superior Izquierdo', '24', 'Premolar', 'Izquierdo', 'Arriba', '2', 'Permanente'),
('Segundo Premolar Superior Izquierdo', '25', 'Premolar', 'Izquierdo', 'Arriba', '2', 'Permanente'),
('Primer Premolar Inferior Izquierdo', '34', 'Premolar', 'Izquierdo', 'Abajo', '2', 'Permanente'),
('Segundo Premolar Inferior Izquierdo', '35', 'Premolar', 'Izquierdo', 'Abajo', '2', 'Permanente'),

-- Molares
('Primer Molar Superior Derecho', '16', 'Molar', 'Derecho', 'Arriba', '3', 'Permanente'),
('Segundo Molar Superior Derecho', '17', 'Molar', 'Derecho', 'Arriba', '3', 'Permanente'),
('Tercer Molar Superior Derecho (Muela del Juicio)', '18', 'Molar', 'Derecho', 'Arriba', '3', 'Permanente'),
('Primer Molar Inferior Derecho', '46', 'Molar', 'Derecho', 'Abajo', '2', 'Permanente'),
('Segundo Molar Inferior Derecho', '47', 'Molar', 'Derecho', 'Abajo', '2', 'Permanente'),
('Tercer Molar Inferior Derecho (Muela del Juicio)', '48', 'Molar', 'Derecho', 'Abajo', '2', 'Permanente'),
('Primer Molar Superior Izquierdo', '26', 'Molar', 'Izquierdo', 'Arriba', '3', 'Permanente'),
('Segundo Molar Superior Izquierdo', '27', 'Molar', 'Izquierdo', 'Arriba', '3', 'Permanente'),
('Tercer Molar Superior Izquierdo (Muela del Juicio)', '28', 'Molar', 'Izquierdo', 'Arriba', '3', 'Permanente'),
('Primer Molar Inferior Izquierdo', '36', 'Molar', 'Izquierdo', 'Abajo', '2', 'Permanente'),
('Segundo Molar Inferior Izquierdo', '37', 'Molar', 'Izquierdo', 'Abajo', '2', 'Permanente'),
('Tercer Molar Inferior Izquierdo (Muela del Juicio)', '38', 'Molar', 'Izquierdo', 'Abajo', '2', 'Permanente');


INSERT INTO public."tblCasosClinicos"("Nombre")
	VALUES 
('Tratamiento de caries'),
('Extracción dental'),
('Endodoncia'),
('Fractura Dental'),
('Reabsorción Radicular'),
('Sellados de fosas y fisuras');


INSERT INTO public."tblSubCasoClinico"("Nombre", "idCasosClinicos")
	VALUES
('Tratamiento de caries en diente definitivo ', 1),
('Extracción de diente definitivo ', 2),
('Tratamiento de conductos en diente definitivo ', 3),
('Fractura coronal del diente definitivo ', 4),
('Reabsorción radicular externa en diente definitivo ', 5),
('Sellado de fosas y fisuras en diente definitivo ', 6);


INSERT INTO public."tblCasoDiente"("Nombre", "Foto", "idSubCasoClinico", "idDiente")
	VALUES
('Caries en Incisivo Central Superior Derecho', 'la foto del diente', 1, 1),
('Extracción del Primer Molar Superior Izquierdo', 'la foto del diente', 2, 27),
('Tratamiento de conductos en el Segundo Molar Superior Derecho', 'la foto del diente', 3, 22),
('Fractura coronal del Segundo Premolar Superior Izquierdo', 'la foto del diente', 4, 18),
('Reabsorción radicular externa del Primer Molar Superior Derecho', 'la foto del diente', 5, 21),
('Sellado de fosas y fisuras en el Tercer Molar Superior Izquierdo', 'la foto del diente', 6, 29);

INSERT INTO public."tblOdontograma"("Nombre", "Estado", "Numero", "idPaciente")
	VALUES
('Odontograma de paciente  Esteban Flores', 'Activo', '1', 1);




INSERT INTO public."tblMapeo"("Nombre", "idOdontograma", "idCasoDiente")
	VALUES
--Incisivo
('Incisivo Central Superior Derecho', 1, 1),
('Incisivo Lateral Superior Derecho', 1, 1),
('Incisivo Central Inferior Derecho', 1, 1),
('Incisivo Lateral Inferior Derecho', 1, 1),
('Incisivo Central Superior Izquierdo', 1, 1),
('Incisivo Lateral Superior Izquierdo', 1, 1),
('Incisivo Central Inferior Izquierdo', 1, 1),
('Incisivo Lateral Inferior Izquierdo', 1, 1),

--Canino
('Canino Superior Derecho', 1, 1),
('Canino Inferior Derecho', 1, 1),
('Canino Superior Izquierdo', 1, 1),
('Canino Inferior Izquierdo', 1, 1),

--Premolar
('Primer Premolar Superior Derecho', 1, 1),
('Segundo Premolar Superior Derecho', 1, 1),
('Primer Premolar Inferior Derecho', 1, 1),
('Segundo Premolar Inferior Derecho', 1, 1),
('Primer Premolar Superior Izquierdo', 1, 1),
('Segundo Premolar Superior Izquierdo', 1, 1),
('Primer Premolar Inferior Izquierdo', 1, 1),
('Segundo Premolar Inferior Izquierdo', 1, 2),

--Molar
('Primer Molar Superior Derecho', 1, 1),
('Segundo Molar Superior Derecho', 1, 1),
('Tercer Molar Superior Derecho (Muela del Juicio)', 1, 1),
('Primer Molar Inferior Derecho', 1, 1),
('Segundo Molar Inferior Derecho', 1, 1),
('Tercer Molar Inferior Derecho (Muela del Juicio)', 1, 1),
('Primer Molar Superior Izquierdo', 1, 1),
('Segundo Molar Superior Izquierdo', 1, 1),
('Tercer Molar Superior Izquierdo (Muela del Juicio)', 1, 1),
('Primer Molar Inferior Izquierdo', 1, 1),
('Segundo Molar Inferior Izquierdo', 1, 1),
('Tercer Molar Inferior Izquierdo (Muela del Juicio)', 1, 1);


INSERT INTO public."tblMapeoCarasDentales"("Mesial", "Distal", "Vestibular", "Lingual", "Palatina", "idMapeo")
	VALUES
('Caries profunda', 'Sano', 'Caries superficial', 'Sano', 'Sano', 1);


INSERT INTO public."tblOperatoria"("Docente", "MotivoConsulta", "DiagnosticoDefinitivo", "idPaciente")
	VALUES
('Dr. Rosales', 'Caries en molar superior derecho', 'Obturación dental', 1);


INSERT INTO public."tblPrueba"("Nombre")
	VALUES
('Radiografía Panorámica'),
('Examen Táctil'),
('Tomografía Computarizada'),
('Radiografía Intraoral'),
('Examen Visual'),
('Examen Visual'),
('Examen Táctil');


INSERT INTO public."tblPruebaOperatoria"("Nombre", "idPrueba", "idOperatoria")
	VALUES
('Radiografia Panoramica', '1', 1);


INSERT INTO public."tblTecnicaRadiografica"("NumeroPieza", "Detalle", "Tipo", "idOperatoria")
	VALUES 
('1', 'Radiografía peripical del molar superior derecho', 'Peripical', 1);


INSERT INTO public."tblPlandeTrabajo"("Cantidad", "Tratamiento", "PiezaNumero", "TipoMaterialRestaurador", 
									  "FechaRegistro", "idOperatoria")
	VALUES
('1', 'Restauración con material adhesivo', '1', 'Composite', '2023-06-15', 1);



INSERT INTO public."tblCirugia"("MotivoConsulta", "DiagnosticoCIE11", "Pronostico", "PlandeTrabajo", "Cirujano", 
								"Asistente", "Circulante", "HoraInicioCx", "HoraTerminoCx", "FechaAlta", 
								"Observaciones", "EvolucionDiaria", "EstudianteCargo", "FacultativoCargo", 
								"FechaRegistro", "idPaciente")
	VALUES
('Extracción de molar superior derecho', 'K02.2 - Caries dental en la dentina', 'Bueno', 
 'Restauración con material adhesivo', 'Dr. Rosales', 'Lic. Rodríguez', 'Enfermera Lopez', '15:55', '16:20', 
 '2023-06-16', 'Sin complicaciones', 'Buena recuperación','Perez','Dr. Rosales', '2023-06-15', 1);
 
 
 
INSERT INTO public."tblRadiografiaCirugia"("Fecha", "Nombre", "Foto", "Interpretacion", 
											"FechaRegistros", "idCirugia")
	VALUES
('2023-06-15', 'Radiografía Preoperatoria','foto de la radiografía', 'Sin hallazgos significativos', 
 '2023-06-15', 1);
 
 
 
INSERT INTO public."tblInformeQuirurgico"("Nombre", "Detalle", "idCirugia")
	VALUES
('Extracción de muela', 'Se extrajo la muela superior derecho debido al daño de la caries', 1);
 
 
 
INSERT INTO public."tblEstadoPosquirurgico"("Fecha","Nombre", "Detalle", "idCirugia")
	VALUES
('2023-06-20','Estado postquirúrgico inicial', 'el paciente se encuentra estable', 1);



INSERT INTO public."tblEndodoncia"("Fecha", "Docente", "Observaciones", "Operador", "MotivoConsulta", 
								   "PiezaDental", "ECPercucion", "ECCavidad", "ECCambioColor", 
								   "ECTejidosBlandos", "ECTermoreaccion", "ECElectroReaccion", 
								   "ERCavidad", "ERTratamientoPrevio", "ERPeriodonto", 
								   "ERLesionesPeriauriculares", "ERNumerodeConductos", 
								   "ERPrecipitacionesCalcicas", "STAnestesia", "STAAislamientoAbsoluto", 
								   "FechaRegistro", "idPaciente")
	VALUES
('2023-06-15', 'Dr. Rosales', 'Se observa sensibilidad en la pieza dental', 'Dr. Rosales', 
 'Dolor en la pieza dental', '2', 'Normal', 'Presenta caries en la cavidad pulpar', 'Sin cambio', 
 'Tejidos blandos normales', 'Normal', 'Sin aparente reacciones', 'Cavidad pulpar visible', 
 'Sin tratamiento previo', 'Periodonto en buen estado', 'Sin lesiones', '1', 'Sin precipitaciones', 
 'Anestesia local aplicada', 'Aislamiento absoluto con dique de goma', '15:50', 1);



INSERT INTO public."tblManifestacionDolor"("Nombre")
	VALUES
('Dolor Pulsátil'),
('Dolor Agudo'),
('Dolor Pulsátil'),
('Dolor Pulsátil'),
('Dolor Pulsátil');



INSERT INTO public."tblManifestacionEndodoncia"("Nombre", "idEndodoncia", "idManifestacionDolor")
	VALUES
('Dolor pulsátil durante la noche', 1, 1);



INSERT INTO public."tblConductometria"("Conducto", "LongRx", "LongTrabajo", "IInicial", "Referencia", 
									   "FechaRegistro", "idEndodoncia")
	VALUES
('Conducto Principal', '21 mm', '22 mm', '8 mA', 'Apex del conducto', '2023-06-15', 1);



INSERT INTO public."tblPreparacionQuimica"("Conducto", "Tecnica", "IFinal", "UltimaLongituddeTrabajo", 
										   "Referencia", "FechaRegistro", "idEndodoncia")
	VALUES
('Conducto principal', 'Técnica de Crown-Down', '7 mA', '21 mm', 'Apex del conducto', '2023-06-15', 1);




INSERT INTO public."tblObturaciondeConductos"("Conducto", "Tecnica", "UltimaLongituddeTrabajo", 
											  "conoMaestro", "Referencia", "FechaRegistro", "idEndodoncia")
	VALUES
('Conducto principal', 'Obturación Lateral', '21 mm', 'Cono de Gutapercha #30', 
 'Apex del conducto', '2023-06-15', 1);



INSERT INTO public."tblRadiografiaEndodoncia"("Fecha", "Foto", "Interpretacion", "FechaRegistro", "idEndodoncia")
	VALUES
('2023-06-15', 'foto de la radiografia', 'Obturación satisfactoria del conducto principal', '2023-06-15', 1);



