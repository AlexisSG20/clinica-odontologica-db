-- ESTADO CIVIL DEL PACIENTE
--'Soltero/a', 'Casado/a', 'Conviviente', 'Viudo/a', 'Divorciado/a', 'Separado/a'

-- RAZA DEL PACIENTE
--'Indígena', 'Mestizo', 'Afroperuano', 'Blanco', 'Criollo', 'Asiático', 'Migrante reciente'

-- GRADO DE INSTRUCCION
--'Analfabetos', 'Inicial incompleta', 'Inicial completa', 'Educación Especial', 
--'Educación primaria incompleta', 'Educación primaria completa', 'Educación secundaria incompleta', 
--'Educacion secundaria completa', 'Educacion terciaria (universitaria o técnica) incompleta', 
--'Educacion terciaria (universitaria o técnica) completa'

-- PARENTESCO CON RESPONSABLE 
--'Padre', 'Madre', 'Hijo', 'Hija', 'Hermano', 'Hermana', 
--'Abuelo', 'Abuela', 'Nieto', 'Nieta', 'Tío', 'Tía', 'Sobrino', 'Sobrina', 'Primo', 'Prima', 'Cónyuge', 'Cuñado', 
--'Cuñada', 'Suegro', 'Suegra', 'Vecino', 'Vecina', 'Tutor'

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
    '2023-06-16', '10:45', '2', 'Paciente femenino de 28 años con dolor en un molar superior. Refiere que el dolor comenzó hace una semana y se intensifica al consumir alimentos dulces o fríos.', 'Laura', 'García', 'Mendoza', 
	'F', 'Huancayo', 'Calle Las Flores 567, Urb. San José', '1995-08-20', 'Casado/a', '987876543',
	'laura.garcia@gmail.com', 'Blanco', 'Educación terciaria(Universitaria o técnica) incompleta',
    'Secretaria', 'Carlos Mendoza', 'Conviviente', 'Calle Las Flores 567, Urb. San José', '912345678', 'Amiga',
    'Dolor en molar superior', 'Consulta odontológica por dolor agudo', 'Normales', 'Normal', 'Conservado',
    'Conservado', 'Conservado(02 veces al día)', 'Conservado', 'Ninguna', 'No refiere', 'No refiere',
    'Padre: Hipertensión, Madre: Sin antecedentes médicos conocidos','No refiere', 2
),
(
    '2023-06-17', '14:20', '3', 'Paciente masculino de 32 años programado para extracción de cordales superiores e inferiores. Asintomático en la cavidad bucal.', 'Carlos', 'Mendoza', 'Pérez', 'M', 'Huancayo', 
	'Av. Los Olivos 789, Urb. Santa Rosa', '1991-03-12', 'Casado/a', '987654321', 'carlos.mendoza@gmail.com',
	'Mestizo', 'Educacion secundaria completa', 'Chofer', 'Laura Pérez', 'Conviviente',
	'Av. Los Olivos 789, Urb. Santa Rosa', '923456789', 'Amigo', 'Asintomático', 
	'Programación para extracción de cordales', 'Normales', 'Normal', 'Conservado', 'Conservado', 
	'Conservado(02 veces al día)', 'Conservado', 'Ninguna', 'No refiere', 'No refiere',
	'Padre: Sin antecedentes médicos conocidos, Madre: Sin antecedentes médicos conocidos', 'No refiere', 3
),
(
    '2023-06-18', '16:00', '4', 'Paciente femenino de 35 años con proceso inflamatorio en encías. Refiere sangrado al cepillarse y sensación de inflamación. Ha notado mal aliento.', 'Ana', 'Gutiérrez', 'Chávez', 'F',
	'Huancayo', 'Jirón Junín 456, Urb. Los Pinos', '1988-02-05', 'Soltero/a', '945678901', 
	'ana.gutierrez@gmail.com', 'Blanca', 'Educación terciaria(Universitaria o técnica) completa', 'Enfermera',
	'Luis Chávez', 'Hermano', 'Jirón Junín 456, Urb. Los Pinos', '989876543', 'Hermana', 
	'Proceso inflamatorio en encías', 'Consulta odontológica por sangrado y inflamación', 'Normales', 'Normal',
    'Conservado', 'Conservado', 'Conservado(02 veces al día)', 'Conservado', 'Ninguna', 'No refiere', 'No refiere',
    'Padre: Sin antecedentes médicos conocidos, Madre: Sin antecedentes médicos conocidos', 'No refiere', 4
);



INSERT INTO public."tblExamenGeneral"("Peso", "Talla", "IndiceMasaCorporal", "Piel", "AnexosCabello", 
									  "AnexosUnias", "PresionArterial", "FrecuenciaRespiratoria", "Pulso", 
									  "Temperatura", "idPaciente")
	VALUES 
('65.2 kg', '170 cm', '22.49 (peso normal)', 'Piel sin alteraciones aparentes', 'Cabello limpio y bien cuidado',
 'Uñas en buen estado', '120/80 mmHg', '16 RPM', '70 PPM', '36.7°C', 2),
 
 ('75.5 kg', '178 cm', '23.79 (sobrepeso)', 'Piel seca en algunas áreas', 'Cabello opaco y puntas abiertas',
 'Uñas con pequeñas lesiones', '130/85 mmHg', '18 RPM', '80 PPM', '37.2°C', 3),
 
 ('62.0 kg', '165 cm', '22.75 (normal)', 'Piel con algunas manchas', 'Cabello con caspa',
 'Uñas en buen estado', '115/75 mmHg', '14 RPM', '65 PPM', '36.5°C', 4);
 
 
 
 
 INSERT INTO public."tblAnamnesis"("Contenido", "FechaRegistro", "idPaciente")
	VALUES 
('La paciente presenta dolor en un molar superior. Refiere que el dolor comenzó hace una semana y se intensifica al consumir alimentos dulces o fríos.',
 '2023-06-16', 2),
('El paciente masculino está programado para extracción de cordales superiores e inferiores. Asintomático en la cavidad bucal.',
 '2023-06-17', 3),
('La paciente presenta un proceso inflamatorio en encías, con sangrado al cepillarse y sensación de inflamación. También ha notado mal aliento.',
 '2023-06-18', 4);
 
 
 
 
INSERT INTO public."tblDiagnosticoDefinitivo"("Diagnostico", "FechaRegistro", "idPaciente")
	VALUES
('Periodontitis crónica en el molar superior izquierdo', '2023-06-16', 2),
('Extracción de cordales superiores e inferiores programada', '2023-06-17', 3),
('Gingivitis crónica generalizada', '2023-06-18', 4);


INSERT INTO public."tblDiagnosticoPresuntivo"("Diagnostico", "FechaRegistro", "idPaciente")
	VALUES 
('Probable periodontitis en el molar superior izquierdo', '2023-06-16', 2),
('Necesidad de extracción de cordales superiores e inferiores', '2023-06-17', 3),
('Sospecha de gingivitis generalizada', '2023-06-18', 4);


INSERT INTO public."tblExamenesAuxiliares"("Contenido", "FechaRegistro", "idPaciente")
	VALUES
('Radiografía periapical realizada para evaluar la periodontitis en el molar superior izquierdo', '2023-06-16', 2),
('Tomografía computarizada para planificar la extracción de cordales superiores e inferiores', '2023-06-17', 3),
('Exámenes microbiológicos solicitados para evaluar la gingivitis crónica generalizada', '2023-06-18', 4);



INSERT INTO public."tblEpicrisis"("Contenido", "FechaRegistro", "idPaciente")
	VALUES
('Paciente respondió favorablemente al tratamiento, sin complicaciones.', '2023-06-16', 2),
('Extracción de cordales realizada con éxito. Paciente en fase de recuperación.', '2023-06-17', 3),
('Tratamiento para la gingivitis iniciado. Se espera mejoría en las próximas consultas.', '2023-06-18', 4);


INSERT INTO public."tblPlanyCronogramaTratamiento"("Fecha", "Resumen", "Especificaciones", "Observaciones", 
												   "FechaRegistro", "idPaciente")
	VALUES
('2023-06-16', 'Extracción de cordales', 'Extracción de cordales superiores e inferiores', 'Paciente en fase de recuperación.', '12:45', 2),
('2023-06-17', 'Tratamiento para gingivitis', 'Inicio de tratamiento para gingivitis', 'Se espera mejoría en las próximas consultas.', '14:40', 3),
('2023-06-18', 'Observación post-tratamiento', 'Seguimiento post-tratamiento para inflamación en encías', 'Paciente en observación.', '16:15', 4);


INSERT INTO public."tblNotasEvolutivas"("Fecha", "Tratamiento", "Firma", "FechaRegistro", "idPaciente")
	VALUES
('2023-06-16', 'Paciente respondió favorablemente al tratamiento, sin complicaciones.', 'Firma1', '12:50', 2),
('2023-06-17', 'Extracción de cordales realizada con éxito. Paciente en fase de recuperación.', 'Firma2', '14:48', 3),
('2023-06-18', 'Tratamiento para la gingivitis iniciado. Se espera mejoría en las próximas consultas.', 'Firma3', '16:23', 4);


INSERT INTO public."tblInterpretacion"("RadiografiaPanoramica", "HemogramaCompleto", "TiempoSangrado", "TiempoCoagulacion", "FechaRegistro", "idPaciente")
	VALUES
('Hallazgos normales', 'Valores dentro de los límites normales', 'Normal', 'Normal', '2023-06-16', 2),
('Radiografía pendiente', 'Leve elevación de glóbulos blancos', 'Prolongado', 'Normal', '2023-06-17', 3),
('No se realizó', 'Valores normales', 'Normal', 'Normal', '2023-06-18', 4);




--Craneo, Cara: Normocefalo, Braquicéfalo, Dolicocéfalo
--Normofacial, Braquifacial, Dolicofacial
INSERT INTO public."tblExamenEstomatologico"("Facie", "Craneo", "Cara", "SimetriaTresTercios", "SimetriaBilateral", "SimetriaPerfil", "ATMtrayectoriaaperturaycierre", "ATMfluidosdelaATM", "ATMpalpitacion", "ATMgradodeapertura", "Ganglios", "idPaciente")
	VALUES 
('Ovalado', 'Dolicocéfalo', 'Dolicofacial', 'Simetría adecuada', 'Homogeneidad en ambos lados', 'Plano',
    'Trayectoria normal', 'No presenta crepitaciones', 'Palpación normal', '40mm', 'No inflamados', 2),
('Normal', 'Normocefalo', 'Normocefacial', 'No presenta simetria', 'No presenta homogeneidad', 'Convexo',
    'Deflexión', 'Presenta crepitaciones de lado izquierdo en la apertura', 'Palpación dolor al lado izquierdo (3 en la escala del dolor)',
    '38mm', 'No inflamados', 3),
('Normal', 'Normocefalo', 'Normocefacial', 'No presenta simetria', 'No presenta homogeneidad', 'Convexo',
    'Deflexión', 'Presenta crepitaciones de lado izquierdo en la apertura', 'Palpación dolor al lado izquierdo (3 en la escala del dolor)',
    '38mm', 'No inflamados', 4);



INSERT INTO public."tblNivelPieza"("EnciaNormal", "EnciaFaltaoAusencia", "EnciaIncosistencia", 
								   "ColorNormal", "ColorEntematosa", "ColorPalido", "TexturaNormal", 
								   "TexturaLisa", "TexturaRugosa", "ConsistenciaNormal", 
								   "ConsistenciaEdematosa", "ConsistenciaFibrosa", "EnciaPapilarNormal", 
								   "EnciaPapilarAplanada", "EnciaPapilarCrateriforme", "Encia", 
								   "idExamenEstomatologico")
	VALUES (
    '25-26-31-32-29-28-27-30', '---', '26-31-25-27', '27-29-31-26', 
    '25-32-27-30-28', '30', '30-25-26-27-29-31', '25-26-31-27-32', 
    '--', '30-25-26-27-29-31', '25-26-27-28-31', '---', '---', '---', 
    'A nivel de Molares superiores',
    'Presenta variaciones en las piezas: 25-26-27-28-31, Encía eritematosa a nivel de las piezas: 25-26-27-28-31, Encía edematosa a nivel de las piezas: 25-26-27-28-31, Encía crateriforme a nivel de Molares superiores. Observaciones adicionales: Leve hinchazón en la encía entre los dientes 28 y 29.', 2),
			(
    '33-34-39-40-37-36-35-38', '---', '34-39-33-35', '35-37-39-34', 
    '33-40-35-38-36', '38', '38-33-34-35-37-39', '33-34-39-35-40', 
    '--', '38-33-34-35-37-39', '33-34-35-36-39', '---', '---', '---', 
    'A nivel de Incisivos inferiores',
    'Presenta variaciones en las piezas: 33-34-35-36-39, Encía eritematosa a nivel de las piezas: 33-34-35-36-39, Encía edematosa a nivel de las piezas: 33-34-35-36-39, Encía crateriforme a nivel de Incisivos inferiores. Observaciones adicionales: Leve sangrado en la encía alrededor del diente 36.', 3),
			
			(
	'16-17-43-44', '---', '12--41', '32-33-34-41', 
	'12-11-16-42-43-44', '24', '24-32-33-34-35-37-41-44', '12-11-16-17', 
	'--', '24-32-35-37-41-44', '12-22-31-42-43', '---', '---', '---', 
	'A nivel de todas las piezas',
	'Presenta inconsistencias a nivel de piezas: 12-11-21-22-41, Encia eritematosa a nivel de las piezas: 12-11-21, Encia edematosa a nivel de las piezas: 12-11-21-22-41, Encia Catriforme a nivel de todas las piezas', 4);		


INSERT INTO public."tblTejidosDuros"("MaximilarSuperior", "MaximilarInferior", "Numero", "Color", "Forma", 
									 "Tamanio", "Diastemas", "ZonasEdentulasyRebordeAlveolar", 
									 "AlteraciondePosiciones", "FacetadeDesgaste", "LineaMedia", 
									 "Otro", "idExamenEstomatologico")
VALUES 
(
    'Cuadrada con epiñomiento','Cuadrada sin opiñomiento','25','Blanquecino','Cuadrada','Agrandada',
    '25 a 26 /34 a 35', '18 a 20 /28 a 30 /38 a 40', 'Rotación en 25', 
    'Desgaste en incisal: 25-35', 'Normal', 'Sin observaciones', '2'
),
 
(
    'Triangular con epiñomiento','Triangular sin opiñomiento','41','Rosa','Triangular','Reducción',
    '41 a 42 / 43 a 44', '33 a 35 / 43 a 45', 'Inclinación en 41', 
    'Desgaste en incisal: 41-44', 'Normal', 'Sin observaciones', '3'
),
 
(
    'Ovalada con epiñomiento','Ovalada sin opiñomiento','11','Blanca','Ovalada','Normal',
    '11 a 12 / 21 a 22', '13 a 15 / 23 a 25', 'Sin alteracion', 
    'Desgaste en incisal: 11-21-12-22', 'Normal', 'Sin observaciones', '4'
);
 

INSERT INTO public."tblExamenIntrabucal"("LabiosYComisuraLabial", "PaladarDuroyBlando", "Carrillos", 
										 "PisodeBoca", "Lengua", "Orofaringe", "Frenillos", "Saliva", 
										 "idExamenEstomatologico")
VALUES 
(
    'Labios secos y agrietados', 'Paladar duro normal, paladar blando normal', 'Carrillos normales', 
    'Piso de boca normal', 'Lengua con leve saburra', 'Orofaringe normal', 'Frenillos normales', 'Reducción de saliva', 2
),
(
    'Labios normales', 'Paladar duro normal, paladar blando normal', 'Carrillos normales', 
    'Piso de boca normal', 'Lengua sin alteraciones', 'Orofaringe normal', 'Frenillos normales', 'Normal', 3
),
(
    'Labios resecos', 'Paladar duro normal, paladar blando normal', 'Hiperqueratosis en carrillos', 
    'Piso de boca normal', 'Lengua con saburra', 'Orofaringe normal', 'Frenillo superior corto, inferior normal', 'Normal', 4
);
	
	
	
	
INSERT INTO public."tblDolor"("Temporal", "Masetero", "PteriogoideoInterno", "PteriogoideoExterno", 
							  "Digastrico", "Esternocleidomastoideo", "idExamenEstomatologico")
	VALUES 
	(
    'No', 'Si en la parte derecha', 'No', 'Si en la parte izquierda', 'No', 
    'No', 2
	),
	(
    'Si en la parte derecha', 'Si en la parte izquierda', 'No', 'No', 'Si en la parte derecha', 
    'No', 3
	),
	(
    'No', 'No', 'No', 'Si en la parte izquierda', 'Si en la parte derecha', 
    'Si en la parte izquierda', 4
	);
			
	
INSERT INTO public."tblOclusion"("RelacionMolarDerecha", "RelacionMolarIzquierda", "RelacionCaninaDerecha", 
								 "RelacionCaninaIzquierda", "GradodeApertura", "OverBite", "OverJet", 
								 "idExamenEstomatologico")
	VALUES 
	('Clase I', 'Clase I', 'Normal', 'Normal', 'Libre', 
    'Normal (1mm)', 'Normal (1mm)', 2
	),
	(
    'Clase II', 'Clase II', 'Distal', 'Distal', 'Libre', 
    'Aumentado (3mm)', 'Aumentado (3mm)', 3
	),
	(
    'Clase III', 'Clase III', 'Mesial', 'Mesial', 'Libre', 
    'Disminuido (2mm)', 'Disminuido (2mm)', 4
	);



INSERT INTO public."tblCasoDiente"("Nombre", "Foto", "idSubCasoClinico", "idDiente")
VALUES 
  ('Tratamiento de caries en diente definitivo', 'la foto del diente', 1, 5),
  ('Extracción de diente definitivo', 'la foto del diente', 2, 8),
  ('Tratamiento de conductos en diente definitivo', 'la foto del diente', 3, 3),
  ('Fractura coronal del diente definitivo', 'la foto del diente', 4, 12),
  ('Reabsorción radicular externa en diente definitivo', 'la foto del diente', 5, 7),
  ('Sellado de fosas y fisuras en diente definitivo', 'la foto del diente', 6, 1);


INSERT INTO public."tblOdontograma"("Nombre", "Estado", "Numero", "idPaciente")
	VALUES
('Odontograma de Laura García', 'Activo', '2', 2),
('Odontograma de Carlos Mendoza', 'Activo', '3', 3),
('Odontograma de Ana Gutiérrez', 'Activo', '4', 4);


INSERT INTO public."tblMapeoCarasDentales"("Mesial", "Distal", "Vestibular", "Lingual", "Palatina", "idMapeo")
	VALUES
('Sano', 'Sano', 'Sano', 'Sano', 'Sano', 2),
('Caries profunda', 'Sano', 'Caries superficial', 'Sano', 'Sano', 3),
('Caries superficial', 'Caries superficial', 'Caries profunda', 'Sano', 'Sano', 4);


INSERT INTO public."tblOperatoria"("Docente", "MotivoConsulta", "DiagnosticoDefinitivo", "idPaciente")
	VALUES
('Dr. Martínez', 'Extracción de cordales', 'Éxito en la extracción de cordales superiores e inferiores.', 2),
('Dra. Sánchez', 'Programación para extracción de cordales', 'Extracción de cordales programada con éxito.', 3),
('Dr. González', 'Consulta odontológica por sangrado y inflamación', 'Proceso inflamatorio en encías tratado con éxito.', 4);



INSERT INTO public."tblPruebaOperatoria"("Nombre", "idPrueba", "idOperatoria")
	VALUES
('Radiografía Panorámica preoperatoria', 1, 2),
('Examen Táctil preoperatorio', 2, 2),

('Examen Táctil preoperatorio', 2, 3),
('Tomografía Computarizada postoperatoria', 3, 3),

('Radiografía Panorámica preoperatoria', 1, 4),
('Prueba Específica 1 preoperatoria', 6, 4);


INSERT INTO public."tblTecnicaRadiografica"("NumeroPieza", "Detalle", "Tipo", "idOperatoria")
	VALUES 

('2', 'Radiografía peripical del molar superior derecho - Preoperatoria', 'Peripical', 2),
('3', 'Radiografía oclusal del molar inferior izquierdo - Preoperatoria', 'Oclusal', 2),


('4', 'Radiografía panorámica - Postoperatoria', 'Panorámica', 3),
('5', 'Radiografía peripical del premolar inferior derecho - Preoperatoria', 'Peripical', 3),

('6', 'Radiografía panorámica - Preoperatoria', 'Panorámica', 4),
('7', 'Radiografía oclusal del incisivo superior izquierdo - Postoperatoria', 'Oclusal', 4);



INSERT INTO public."tblPlandeTrabajo"("Cantidad", "Tratamiento", "PiezaNumero", "TipoMaterialRestaurador", 
									  "FechaRegistro", "idOperatoria")
	VALUES
('1', 'Restauración con composite', '1', 'Composite', '2023-06-16', 2), 
('1', 'Extracción de cordales', '3', 'Material de extracción', '2023-06-17', 3),
('1', 'Tratamiento para la gingivitis', '4', 'Medicación gingival', '2023-06-18', 4); 



INSERT INTO public."tblCirugia"("MotivoConsulta", "DiagnosticoCIE11", "Pronostico", "PlandeTrabajo", "Cirujano", 
								"Asistente", "Circulante", "HoraInicioCx", "HoraTerminoCx", "FechaAlta", 
								"Observaciones", "EvolucionDiaria", "EstudianteCargo", "FacultativoCargo", 
								"FechaRegistro", "idPaciente")
	VALUES
(
    'Extracción de molar superior', 'K01.1', 'Bueno', 'Extracción dental', 'Dr. Rosales',
    'Dra. Paredes', 'Enfermera Rosinel', '10:00', '11:30', '2023-06-21',
    'Sin complicaciones durante la cirugía', 'Buena evolución postoperatoria', 'Estudiante Lopez', 'Dr. Rosales',
    '2023-06-21', 2 
),
(
    'Cirugía de cordales', 'K01.0', 'Excelente', 'Extracción de cordales superiores e inferiores', 'Dr. Tovar',
    'Dra. Magnel', 'Enfermero Tomas', '14:30', '16:00', '2023-06-22',
    'Proceso quirúrgico exitoso', 'Buena recuperación del paciente', 'Estudiante Flores', 'Dr. Rosales',
    '2023-06-22', 3
),
(
    'Proceso inflamatorio en encías', 'K05.1', 'Regular', 'Tratamiento para la gingivitis', 'Dr. Perez',
    'Dra. Magnel', 'Enfermero Circulante3', '16:30', '18:00', '2023-06-23',
    'Complicaciones mínimas durante la cirugía', 'Evolución satisfactoria del paciente', 'Estudiante Sanchez', 'Dr. Mirandes',
    '2023-06-23', 4 
);


INSERT INTO public."tblRadiografiaCirugia"("Fecha", "Nombre", "Foto", "Interpretacion", 
											"FechaRegistros", "idCirugia")
VALUES
('2023-06-21', 'Radiografía postoperatoria', 'FOTO', 'Caries en la pieza extraída', '2023-06-22 10:00', 2),
('2023-06-22', 'Radiografía preoperatoria', 'FOTO', 'Cordales impactados', '2023-06-23 14:30', 3),
('2023-06-23', 'Radiografía postoperatoria', 'FOTO', 'Gingivitis moderada', '2023-06-24 16:30', 4);


INSERT INTO public."tblInformeQuirurgico"("Nombre", "Detalle", "idCirugia")
	VALUES
('Informe postoperatorio', 'El paciente respondió favorablemente a la cirugía. No se presentaron complicaciones durante el procedimiento. Se recomienda seguir las indicaciones postoperatorias para una adecuada recuperación.',2),
('Extracción de cordale', 'La cirugía de extracción de cordales se realizó con éxito. El paciente se encuentra en fase de recuperación. Se le proporcionaron instrucciones para el cuidado postoperatorio.',3),
('Tratamiento del proceso inflamatorio', 'La cirugía para el tratamiento del proceso inflamatorio en encías se llevó a cabo satisfactoriamente. El paciente está en observación para evaluar la evolución del tratamiento.',4);


INSERT INTO public."tblEstadoPosquirurgico"("Fecha","Nombre", "Detalle", "idCirugia")
	VALUES
('2023-06-21', 'Postoperatorio Inmediato', 'El paciente se encuentra estable en el postoperatorio inmediato. Signos vitales dentro de parámetros normales. Sin evidencia de complicaciones. Se proporcionaron instrucciones postoperatorias al paciente.',2),
('2023-06-22', 'Postoperatorio Inmediato', 'El paciente presenta una buena recuperación postoperatoria tras la extracción de cordales. Se observa una adecuada respuesta a las indicaciones médicas. Signos vitales estables.',3),
('2023-06-23', 'Postoperatorio Inmediato', 'El paciente muestra una evolución favorable en el postoperatorio inmediato después de la cirugía para el tratamiento del proceso inflamatorio en encías. Se monitorea la respuesta al tratamiento.',4);




INSERT INTO public."tblEndodoncia"("Fecha", "Docente", "Observaciones", "Operador", "MotivoConsulta", 
								   "PiezaDental", "ECPercucion", "ECCavidad", "ECCambioColor", 
								   "ECTejidosBlandos", "ECTermoreaccion", "ECElectroReaccion", 
								   "ERCavidad", "ERTratamientoPrevio", "ERPeriodonto", 
								   "ERLesionesPeriauriculares", "ERNumerodeConductos", 
								   "ERPrecipitacionesCalcicas", "STAnestesia", "STAAislamientoAbsoluto", 
								   "FechaRegistro", "idPaciente")
VALUES
(
    '2023-06-25', 'Dra. Rodríguez', 'Endodoncia programada para el molar inferior derecho. Paciente asintomático, pero se indica tratamiento preventivo.', 'Dr. Pérez', 'Programación de endodoncia', '3', 'Negativo', 
    'Caries profunda', 'No presenta', 'Normales', 'No presenta', 'No presenta', 'Cavidad pulpar abierta', 
    'Sin tratamiento previo', 'Normal', 'No presenta', '1', 'No presenta', 'Sin anestesia', 
	'Con aislamiento absoluto', '14:15', 
    2
),

(
    '2023-06-24', 'Dr. López', 'Endodoncia realizada para el tratamiento del dolor en el molar superior derecho. Paciente con historial de dolor agudo y sensibilidad al frío.', 'Dra. Martínez', 'Dolor en molar superior', 
    '2', 'Negativo', 'Caries profunda', 'No presenta', 'Normales', 'No presenta', 'No presenta', 
    'Cavidad pulpar abierta', 'Sin tratamiento previo', 'Normal',  'No presenta', '1', 'No presenta', 
    'Sin anestesia', 'Con aislamiento absoluto', '11:30', 
    3
),

(
    '2023-06-26', 'Dr. Gómez', 'Endodoncia para el molar superior izquierdo. Paciente con proceso inflamatorio en encías y sensibilidad. Se realiza tratamiento específico.','Dra. Sánchez', 'Proceso inflamatorio en encías', 
    '4', 'Positivo', 'Caries profunda', 'No presenta', 'Leve inflamación', 'Presenta', 'No presenta', 
    'Cavidad pulpar abierta', 'Sin tratamiento previo',  'Normal', 'No presenta', '1', 'No presenta', 
    'Con anestesia', 'Con aislamiento absoluto', '16:45', 
    4
);



INSERT INTO public."tblManifestacionEndodoncia"("Nombre", "idEndodoncia", "idManifestacionDolor")
	VALUES
('Dolor pulsátil durante la noche', 2, 1),
('Dolor agudo al consumir alimentos fríos', 3, 2),
('Sensación de inflamación y mal aliento', 4, 3);




INSERT INTO public."tblConductometria"("Conducto", "LongRx", "LongTrabajo", "IInicial", "Referencia", 
									   "FechaRegistro", "idEndodoncia")
	VALUES
('Conducto Principal', '21 mm', '22 mm', '8 mA', 'Apex del conducto', '2023-06-20', 2),
('Conducto Mesial', '23 mm', '24 mm', '9 mA', 'Terminación apical', '2023-06-21', 3),
('Conducto Distal', '20 mm', '21 mm', '7 mA', 'Punto medio apical', '2023-06-22', 4);



INSERT INTO public."tblPreparacionQuimica"("Conducto", "Tecnica", "IFinal", "UltimaLongituddeTrabajo", 
										   "Referencia", "FechaRegistro", "idEndodoncia")
	VALUES
('Conducto Principal', 'Técnica de Crown-Down', '7 mA', '21 mm', 'Apex del conducto', '2023-06-16', 2),
('Conducto Mesial', 'Técnica de Step-Back', '8 mA', '23 mm', 'Terminación apical', '2023-06-17', 3),
('Conducto Distal', 'Técnica de Circumferential Filing', '6 mA', '20 mm', 'Punto medio apical', '2023-06-18', 4);



INSERT INTO public."tblObturaciondeConductos"("Conducto", "Tecnica", "UltimaLongituddeTrabajo", 
											  "conoMaestro", "Referencia", "FechaRegistro", "idEndodoncia")
	VALUES
('Conducto Principal', 'Técnica Lateral', '21 mm', 'Cone Fit', 'Obturación apical', '2023-06-16', 2),
('Conducto Mesial', 'Técnica Vertical', '22 mm', 'Cone Fit', 'Obturación apical', '2023-06-17', 3),
('Conducto Distal', 'Técnica de Obturación Continua', '20 mm', 'Cone Fit', 'Obturación apical', '2023-06-18', 4);


INSERT INTO public."tblRadiografiaEndodoncia"("Fecha", "Foto", "Interpretacion", "FechaRegistro", "idEndodoncia")
	VALUES
('2023-06-16', 'Foto', 'Caries en la raíz del molar superior derecho', '2023-06-16', 2),
('2023-06-17', 'Foto', 'Cordales superiores e inferiores sanos', '2023-06-17', 3),
('2023-06-18', 'Foto', 'Proceso inflamatorio en encías visible en la radiografía', '2023-06-18', 4);

