--dni, pasaporte o carnet extrangeria
INSERT INTO public."tblUsuario"("Nombres", "Apellidos", "Celular", "Correo", "NumDoc", "Contra", "Foto", "Pago", "Codigo", "Activo", "Genero", "TipoDocumento", "RestablecerContra", "Rol", "idSede")
	VALUES 
--10 estudiantes
('Luis', 'Martínez López', '945678901', '78901235@continental.edu.pe', '78901234', 'Pasrd123', 'Foto', 'Pagado', '78901235', false, 'Masculino', 'DNI', 'Activado', 'Estudiante', 1),
('Ana', 'García Pérez', '986754321', '56789013@continental.edu.pe', '56789012', 'SecePass', 'Foto', 'Pagado', '56789013', false, 'Femenino', 'Pasaporte', 'Activado', 'Estudiante', 1),
('Roberto', 'Vega Rodríguez', '923456789', '34567891@continental.edu.pe', '34567890', 'StPass13', 'Foto', 'Pagado', '34567891', false, 'Masculino', 'Carnet de extranjería', 'Activado', 'Estudiante', 1),
('Laura', 'Hernández Gómez', '912345678', '67890124@continental.edu.pe', '67890123', 'Se23cre123s', 'Foto', 'Pagado', '67890124', false, 'Femenino', 'DNI', 'Activado', 'Estudiante', 1),
('Diego', 'Ortega Martínez', '987654321', '45678902@continental.edu.pe', '45678901', 'SurSec43', 'Foto', 'Pagado', '45678902', false, 'Masculino', 'Pasaporte', 'Activado', 'Estudiante', 1),
('María', 'Torres Sánchez', '945123456', '12345679@continental.edu.pe', '12345678', 'S4Pass123', 'Foto', 'Pagado', '12345679', false, 'Femenino', 'DNI', 'Activado', 'Estudiante', 1),
('Pedro', 'Gómez Salas', '987123456', '23456790@continental.edu.pe', '23456789', 'Str4ssword', 'Foto', 'Pagado', '23456790', false, 'Masculino', 'Carnet de extranjería', 'Activado', 'Estudiante', 1),
('Carmen', 'Ramírez Vargas', '912345678', '34567891@continental.edu.pe', '34567890', 'Pas13289', 'Foto', 'Pagado', '34567891', false, 'Femenino', 'Pasaporte', 'Activado', 'Estudiante', 1),
('Andrés', 'Fernández Pérez', '986754321', '45678902@continental.edu.pe', '45678901', 'Secre12421', 'Foto', 'Pagado', '45678902', false, 'Masculino', 'DNI', 'Activado', 'Estudiante', 1),
('Isabel', 'Martínez Gutiérrez', '923456789', '56789013@continental.edu.pe', '56789012', 'Sup23cret', 'Foto', 'Pagado', '56789013', false, 'Femenino', 'Carnet de extranjería', 'Activado', 'Estudiante', 1),
('Miguel', 'López Castro', '987654321', '67890124@continental.edu.pe', '67890123', 'Ultru12rePass', 'Foto', 'Pagado', '67890124', false, 'Masculino', 'Pasaporte', 'Activado', 'Estudiante', 1),
('Fabiola', 'Sánchez Vela', '945678901', '78901235@continental.edu.pe', '78901234', 'MegaS123ecass', 'Foto', 'Pagado', '78901235', false, 'Femenino', 'DNI', 'Activado', 'Estudiante', 1),
('Gabriel', 'Herrera Mendoza', '912345678', '89012346@continental.edu.pe', '89012345', 'Top23S23', 'Foto', 'Pagado', '89012346', false, 'Masculino', 'Carnet de extranjería', 'Activado', 'Estudiante', 1),
('Sofía', 'Castañeda Torres', '986754321', '90123457@continental.edu.pe', '90123456', 'Ex123trs', 'Foto', 'Pagado', '90123457', false, 'Femenino', 'Pasaporte', 'Activado', 'Estudiante', 1),
('Javier', 'Torres Salazar', '923456789', '12345671@continental.edu.pe', '12345670', 'Hype765rPa3', 'Foto', 'Pagado', '12345671', false, 'Masculino', 'DNI', 'Activado', 'Estudiante', 1);




INSERT INTO public."tblEstudiante"("NombreCompleto", "Semestre", "Firma", "idUsuario")
SELECT 
    CONCAT("Nombres", ' ', "Apellidos") AS "NombreCompleto", 
    CASE 
        WHEN "idUsuario" = 26 THEN 'Octavo'
        WHEN "idUsuario" = 27 THEN 'Séptimo'
        WHEN "idUsuario" = 28 THEN 'Sexto'
        WHEN "idUsuario" = 29 THEN 'Séptimo'
        WHEN "idUsuario" = 30 THEN 'Noveno'
        WHEN "idUsuario" = 31 THEN 'Octavo'
        WHEN "idUsuario" = 32 THEN 'Séptimo'
        WHEN "idUsuario" = 33 THEN 'Octavo'
		WHEN "idUsuario" = 34 THEN 'Noveno'
		WHEN "idUsuario" = 35 THEN 'Octavo'
		WHEN "idUsuario" = 36 THEN 'Séptimo'
		WHEN "idUsuario" = 37 THEN 'Octavo'
		WHEN "idUsuario" = 38 THEN 'Séptimo'
		WHEN "idUsuario" = 39 THEN 'Octavo'
		WHEN "idUsuario" = 40 THEN 'Séptimo'
        ELSE NULL 
    END AS "Semestre",
    'Firma' AS "Firma", 
    "idUsuario" AS "idUsuario"                          
FROM public."tblUsuario"
WHERE "idUsuario" BETWEEN 26 AND 40;




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

-- del 12 al 40 son estudiantes

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
    '2023-07-10', '14:15', '5', 'Paciente soltero de 25 años con molestias en la cavidad bucal al masticar. Refiere dolor leve y ocasional al ingerir alimentos duros. La incomodidad se origina debido a la presencia de una muela del juicio en erupción, lo que provoca roce con la mejilla y contribuye al dolor al masticar. Se observa una leve inflamación en la zona. No hay otros hallazgos notables en la cavidad bucal.',
    'Carlos', 'Gómez', 'López', 'M', 'Huancayo', 'Av. Primavera 456, Urb. Las Acacias',
    '1998-02-12', 'Soltero/a', '987654321', 'carlos.gomez@gmail.com', 'Mestizo', 'Educación terciaria (universitaria o técnica) completa',
    'Ingeniero', 'Juan Gómez', 'Hermano', 'Av. Primavera 456, Urb. Las Acacias', '912345678', 'Ninguna',
    'Molestias al masticar debido a erupción de muela del juicio', 'Consulta odontológica por dolor leve', 'Normales', 'Normal', 'Conservado',
    'Conservado', 'Conservado(02 veces al día)', 'Conservado', 'Ninguna', 'No refiere', 'No refiere',
    'Padre: Diabetes, Madre: Hipertensión', 'No refiere', 13
),
(
    '2023-07-12', '16:30', '6', 'Paciente casado de 35 años con molestias en la cavidad bucal al masticar. Refiere dolor agudo en la zona de las muelas al morder. La incomodidad se ha intensificado en los últimos días. Al examinar, se observa una caries avanzada en una de las muelas posteriores, lo que podría estar contribuyendo al dolor al masticar.',
    'Ana', 'Rodríguez', 'Gutiérrez', 'F', 'Huancayo', 'Calle Libertad 789, Urb. Los Laureles',
    '1988-09-05', 'Casado/a', '987876543', 'ana.rodriguez@gmail.com', 'Blanca', 'Educación terciaria (universitaria o técnica) completa',
    'Contadora', 'Luis Gutiérrez', 'Esposo', 'Calle Libertad 789, Urb. Los Laureles', '912345678', 'Ninguna',
    'Molestias agudas al masticar debido a caries avanzada', 'Consulta odontológica por dolor agudo', 'Normales', 'Normal', 'Conservado',
    'Conservado', 'Conservado(02 veces al día)', 'Conservado', 'Ninguna', 'No refiere', 'No refiere',
    'Padre: Sin antecedentes médicos conocidos, Madre: Sin antecedentes médicos conocidos', 'No refiere', 14
),

(
    '2023-07-15', '09:15', '7', 'Paciente soltero de 22 años con molestias en la cavidad bucal al masticar. Refiere sensación de presión y leve dolor al morder en la zona de los incisivos superiores. Al examinar, se observa una ligera inflamación en las encías y se sospecha de una posible gingivitis.',
    'Martín', 'Gómez', 'Ramírez', 'M', 'Huancayo', 'Av. Los Robles 456, Urb. San Isidro',
    '2001-02-12', 'Soltero/a', '956789012', 'martin.gomez@gmail.com', 'Mestizo', 'Educación terciaria (universitaria o técnica) completa',
    'Estudiante', 'María Ramírez', 'Madre', 'Av. Los Robles 456, Urb. San Isidro', '977654321', 'Ninguna',
    'Molestias al masticar, posible gingivitis', 'Consulta odontológica por sensación de presión en los incisivos', 'Normales', 'Normal', 'Conservado',
    'Conservado', 'Conservado(02 veces al día)', 'Conservado', 'Ninguna', 'No refiere', 'No refiere',
    'Padre: Sin antecedentes médicos conocidos, Madre: Sin antecedentes médicos conocidos', 'No refiere', 15
),

(
    '2023-07-18', '14:45', '8', 'Paciente divorciado de 40 años con molestias en la cavidad bucal al masticar. Refiere dolor persistente en una muela inferior izquierda. Al examinar, se identifica una caries profunda en la muela afectada y se sugiere evaluación para posible endodoncia.',
    'Verónica', 'Vargas', 'Silva', 'F', 'Huancayo', 'Calle Los Alamos 789, Urb. El Porvenir',
    '1983-09-28', 'Divorciado/a', '925678901', 'veronica.vargas@gmail.com', 'Blanca', 'Educación terciaria (universitaria o técnica) completa',
    'Contadora', 'Luis Silva', 'Vecino', 'Calle Los Alamos 789, Urb. El Porvenir', '933456789', 'Ninguna',
    'Dolor persistente en muela inferior izquierda', 'Consulta odontológica por caries profunda', 'Normales', 'Normal', 'Conservado',
    'Conservado', 'Conservado(02 veces al día)', 'Conservado', 'Ninguna', 'No refiere', 'No refiere',
    'Padre: Sin antecedentes médicos conocidos, Madre: Sin antecedentes médicos conocidos', 'No refiere', 16
),

(
    '2023-07-20', '11:30', '9', 'Paciente soltero de 25 años con molestias en la cavidad bucal al masticar. Refiere sensibilidad dental en los premolares superiores. Al examinar, se observa desgaste dental y se sugiere tratamiento para reducir la sensibilidad.',
    'Camila', 'Hernández', 'Díaz', 'F', 'Huancayo', 'Jirón Los Laureles 234, Urb. El Bosque',
    '1998-12-05', 'Soltero/a', '945678345', 'camila.hernandez@gmail.com', 'Mestizo', 'Educación terciaria (universitaria o técnica) completa',
    'Ingeniera', 'Luis Díaz', 'Padre', 'Jirón Los Laureles 234, Urb. El Bosque', '988765432', 'Ninguna',
    'Sensibilidad dental en premolares superiores', 'Consulta odontológica por desgaste dental', 'Normales', 'Normal', 'Conservado',
    'Conservado', 'Conservado(02 veces al día)', 'Conservado', 'Ninguna', 'No refiere', 'No refiere',
    'Padre: Sin antecedentes médicos conocidos, Madre: Sin antecedentes médicos conocidos', 'No refiere', 17
),

(
    '2023-07-22', '16:20', '10', 'Paciente casado de 35 años con molestias en la cavidad bucal al masticar. Refiere dolor agudo en una muela superior derecha. Al examinar, se identifica una caries avanzada y se programa para realizar una endodoncia.',
    'Roberto', 'Mendoza', 'Díaz', 'M', 'Huancayo', 'Calle Los Pinos 567, Urb. El Dorado',
    '1988-08-10', 'Casado/a', '976543210', 'roberto.mendoza@gmail.com', 'Mestizo', 'Educación terciaria (universitaria o técnica) completa',
    'Abogado', 'María Díaz', 'Suegra', 'Calle Los Pinos 567, Urb. El Dorado', '967890123', 'Ninguna',
    'Dolor agudo en muela superior derecha', 'Consulta odontológica por caries avanzada', 'Normales', 'Normal', 'Conservado',
    'Conservado', 'Conservado(02 veces al día)', 'Conservado', 'Ninguna', 'No refiere', 'No refiere',
    'Padre: Sin antecedentes médicos conocidos, Madre: Sin antecedentes médicos conocidos', 'No refiere', 18
),

(
    '2023-07-25', '14:15', '11', 'Paciente divorciada de 42 años con molestias en la cavidad bucal al masticar. Refiere sensación de dientes flojos en la mandíbula inferior. Al examinar, se detecta enfermedad periodontal avanzada y se propone un plan de tratamiento periodontal.',
    'Fernanda', 'López', 'Torres', 'F', 'Huancayo', 'Av. Los Rosales 789, Urb. San Isidro',
    '1981-03-28', 'Divorciado/a', '935678901', 'fernanda.lopez@gmail.com', 'Blanca', 'Educación terciaria (universitaria o técnica) completa',
    'Arquitecta', 'Javier Torres', 'Hermano', 'Av. Los Rosales 789, Urb. San Isidro', '945678234', 'Ninguna',
    'Sensación de dientes flojos en la mandíbula inferior', 'Consulta odontológica por enfermedad periodontal avanzada', 'Normales', 'Normal', 'Conservado',
    'Conservado', 'Conservado(02 veces al día)', 'Conservado', 'Ninguna', 'No refiere', 'No refiere',
    'Padre: Sin antecedentes médicos conocidos, Madre: Diabetes', 'No refiere', 19
),

(
    '2023-07-28', '09:00', '12', 'Paciente soltero de 28 años con molestias en la cavidad bucal al masticar. Refiere dolor en la encía superior derecha al cepillarse. Al examinar, se observa inflamación gingival y se sugiere tratamiento para la gingivitis.',
    'Alejandro', 'Ramírez', 'Pérez', 'M', 'Huancayo', 'Jirón Las Acacias 456, Urb. Los Alamos',
    '1995-11-02', 'Soltero/a', '913456789', 'alejandro.ramirez@gmail.com', 'Mestizo', 'Educación terciaria (universitaria o técnica) incompleta',
    'Estudiante', 'María Pérez', 'Madre', 'Jirón Las Acacias 456, Urb. Los Alamos', '987654321', 'Ninguna',
    'Dolor en la encía superior derecha al cepillarse', 'Consulta odontológica por gingivitis', 'Normales', 'Normal', 'Conservado',
    'Conservado', 'Conservado(02 veces al día)', 'Conservado', 'Ninguna', 'No refiere', 'No refiere',
    'Padre: Sin antecedentes médicos conocidos, Madre: Sin antecedentes médicos conocidos', 'No refiere', 20
),

(
    '2023-08-05', '16:30', '13', 'Paciente casado de 35 años con molestias en la cavidad bucal al masticar. Refiere dolor en la mandíbula al abrir y cerrar la boca. Al examinar, se detecta limitación en la apertura bucal y se sugiere evaluación para trastorno temporomandibular (ATM).',
    'Ricardo', 'Vargas', 'Gómez', 'M', 'Huancayo', 'Calle Los Pinos 789, Urb. El Bosque',
    '1988-06-12', 'Casado/a', '976543210', 'ricardo.vargas@gmail.com', 'Blanco', 'Educación terciaria (universitaria o técnica) completa',
    'Ingeniero', 'Ana Gómez', 'Suegra', 'Calle Los Pinos 789, Urb. El Bosque', '945678901', 'Ninguna',
    'Dolor en la mandíbula al abrir y cerrar la boca', 'Consulta odontológica por trastorno temporomandibular (ATM)', 'Normales', 'Normal', 'Conservado',
    'Conservado', 'Conservado(02 veces al día)', 'Conservado', 'Ninguna', 'No refiere', 'No refiere',
    'Padre: Sin antecedentes médicos conocidos, Madre: Sin antecedentes médicos conocidos', 'No refiere',21
),

(
    '2023-08-10', '10:00', '14', 'Paciente soltera de 25 años con molestias en la cavidad bucal al masticar. Refiere sensibilidad en los dientes al consumir bebidas frías. Al examinar, se observa erosión dental y se recomienda tratamiento para sensibilidad dental.',
    'Camila', 'Herrera', 'Torres', 'F', 'Huancayo', 'Av. Los Laureles 456, Urb. San Borja',
    '1998-09-22', 'Soltero/a', '910987654', 'camila.herrera@gmail.com', 'Mestizo', 'Educación terciaria (universitaria o técnica) completa',
    'Contadora', 'Jorge Torres', 'Padre', 'Av. Los Laureles 456, Urb. San Borja', '932345678', 'Ninguna',
    'Sensibilidad en los dientes al consumir bebidas frías', 'Consulta odontológica por sensibilidad dental', 'Normales', 'Normal', 'Conservado',
    'Conservado', 'Conservado(02 veces al día)', 'Conservado', 'Ninguna', 'No refiere', 'No refiere',
    'Padre: Sin antecedentes médicos conocidos, Madre: Sin antecedentes médicos conocidos', 'No refiere', 22
),

(
    '2023-08-18', '11:15', '15', 'Paciente casado de 40 años presenta dolor intenso en la cavidad bucal, especialmente al masticar alimentos calientes. Refiere haber notado una pequeña llaga en la lengua. Se sugiere evaluación para posible lesión traumática o infección.',
    'Roberto', 'Castañeda', 'López', 'M', 'Huancayo', 'Calle Los Pinos 234, Urb. El Bosque',
    '1983-07-05', 'Casado/a', '977654321', 'roberto.castaneda@gmail.com', 'Blanco', 'Educación terciaria (universitaria o técnica) completa',
    'Médico', 'María López', 'Vecina', 'Calle Los Pinos 234, Urb. El Bosque', '945678901', 'Ninguna',
    'Dolor intenso en la cavidad bucal al masticar alimentos calientes', 'Consulta odontológica por dolor y llaga en la lengua', 'Normales', 'Normal', 'Conservado',
    'Conservado', 'Conservado(02 veces al día)', 'Conservado', 'Ninguna', 'No refiere', 'No refiere',
    'Padre: Sin antecedentes médicos conocidos, Madre: Sin antecedentes médicos conocidos', 'No refiere', 23
),

(
    '2023-08-25', '14:30', '16', 'Paciente soltera de 28 años con molestias en la cavidad bucal al masticar. Refiere dolor en la encía superior izquierda al tocarla. Al examinar, se observa inflamación y enrojecimiento. Se sugiere evaluación para posible infección o gingivitis.',
    'Camila', 'Torres', 'Vega', 'F', 'Huancayo', 'Av. Las Rosas 567, Urb. San Isidro',
    '1995-03-18', 'Soltero/a', '910123456', 'camila.torres@gmail.com', 'Mestizo', 'Educación terciaria (universitaria o técnica) completa',
    'Abogada', 'Juan Vega', 'Padre', 'Av. Las Rosas 567, Urb. San Isidro', '923456789', 'Ninguna',
    'Dolor en la encía superior izquierda al tocarla', 'Consulta odontológica por inflamación y enrojecimiento en la encía', 'Normales', 'Normal', 'Conservado',
    'Conservado', 'Conservado(02 veces al día)', 'Conservado', 'Ninguna', 'No refiere', 'No refiere',
    'Padre: Sin antecedentes médicos conocidos, Madre: Sin antecedentes médicos conocidos', 'No refiere', 24
),

(
    '2023-09-05', '16:45', '17', 'Paciente divorciado de 45 años con molestias en la cavidad bucal. Refiere sensación de ardor y hormigueo en la lengua después de comer alimentos picantes. Se sugiere evaluación para posibles irritaciones o alergias alimentarias.',
    'Raúl', 'Gómez', 'Vargas', 'M', 'Huancayo', 'Calle Los Jazmines 789, Urb. El Porvenir',
    '1978-10-12', 'Divorciado/a', '956789012', 'raul.gomez@gmail.com', 'Blanco', 'Educación secundaria completa',
    'Comerciante', 'Ana Vargas', 'Hermana', 'Calle Los Jazmines 789, Urb. El Porvenir', '978654321', 'Ninguna',
    'Sensación de ardor y hormigueo en la lengua después de comer alimentos picantes', 'Consulta odontológica por molestias en la lengua', 'Normales', 'Normal', 'Conservado',
    'Conservado', 'Conservado(02 veces al día)', 'Conservado', 'Ninguna', 'No refiere', 'No refiere',
    'Padre: Sin antecedentes médicos conocidos, Madre: Sin antecedentes médicos conocidos', 'No refiere', 25
),

(
    '2023-09-12', '09:30', '18', 'Paciente soltera de 35 años con molestias en la cavidad bucal. Refiere sensibilidad en los dientes al consumir bebidas frías. Al examinar, se observa desgaste en los bordes de los dientes. Se sugiere evaluación para posibles problemas de sensibilidad dental.',
    'Carolina', 'Mendoza', 'Rojas', 'F', 'Huancayo', 'Av. Los Pinos 456, Urb. Santa Anita',
    '1988-05-28', 'Soltero/a', '934567890', 'carolina.mendoza@gmail.com', 'Mestizo', 'Educación terciaria (universitaria o técnica) completa',
    'Contadora', 'Juan Rojas', 'Padre', 'Av. Los Pinos 456, Urb. Santa Anita', '945678901', 'Ninguna',
    'Sensibilidad en los dientes al consumir bebidas frías', 'Consulta odontológica por sensibilidad dental', 'Normales', 'Normal', 'Conservado',
    'Conservado', 'Conservado(02 veces al día)', 'Conservado', 'Ninguna', 'No refiere', 'No refiere',
    'Padre: Sin antecedentes médicos conocidos, Madre: Sin antecedentes médicos conocidos', 'No refiere', 26
),

(
    '2023-09-20', '14:15', '19', 'Paciente casado de 40 años con molestias en la cavidad bucal. Refiere dolor persistente en una muela superior izquierda. Al examen se observa caries profunda. Se indica tratamiento restaurador.',
    'Roberto', 'Torres', 'Gomez', 'M', 'Huancayo', 'Calle Los Olivos 789, Urb. San Antonio',
    '1983-08-15', 'Casado/a', '978123456', 'roberto.torres@gmail.com', 'Blanco', 'Educación terciaria (universitaria o técnica) completa',
    'Ingeniero Civil', 'María Gomez', 'Cónyuge', 'Calle Los Olivos 789, Urb. San Antonio', '965432109', 'Ninguna',
    'Dolor persistente en una muela superior izquierda', 'Consulta odontológica por caries profunda', 'Normales', 'Normal', 'Conservado',
    'Conservado', 'Conservado(02 veces al día)', 'Conservado', 'Ninguna', 'No refiere', 'No refiere',
    'Padre: Diabetes, Madre: Hipertensión', 'No refiere', 27
),

(
    '2023-09-25', '11:00', '20', 'Paciente soltera de 28 años con molestias en la cavidad bucal. Refiere dolor en una muela inferior derecha al masticar. Al examen se detecta una pequeña fractura dental. Se propone tratamiento restaurador.',
    'Valeria', 'Hernández', 'López', 'F', 'Huancayo', 'Av. Las Palmeras 456, Urb. Los Alamos',
    '1995-12-03', 'Soltero/a', '945678234', 'valeria.hernandez@gmail.com', 'Mestizo', 'Educación terciaria (universitaria o técnica) completa',
    'Diseñadora Gráfica', 'José López', 'Hermano', 'Av. Las Palmeras 456, Urb. Los Alamos', '987654321', 'Ninguna',
    'Dolor en una muela inferior derecha al masticar', 'Consulta odontológica por pequeña fractura dental', 'Normales', 'Normal', 'Conservado',
    'Conservado', 'Conservado(02 veces al día)', 'Conservado', 'Ninguna', 'No refiere', 'No refiere',
    'Padre: Sin antecedentes médicos conocidos, Madre: Sin antecedentes médicos conocidos', 'No refiere', 28
),


(
    '2023-09-30', '09:30', '21', 'Paciente conviviente de 35 años con molestias en la cavidad bucal. Refiere sensibilidad dental en una muela superior izquierda. Al examen se observan signos de erosión dental. Se indica tratamiento desensibilizante.',
    'Carlos', 'Gómez', 'Vargas', 'M', 'Huancayo', 'Jirón Libertad 789, Urb. San Martín',
    '1988-07-10', 'Conviviente', '910876543', 'carlos.gomez@gmail.com', 'Blanco', 'Educación terciaria (universitaria o técnica) completa',
    'Contador', 'Ana Vargas', 'Vecino', 'Jirón Libertad 789, Urb. San Martín', '987654321', 'Ninguna',
    'Sensibilidad dental en una muela superior izquierda', 'Consulta odontológica por erosión dental', 'Normales', 'Normal', 'Conservado',
    'Conservado', 'Conservado(02 veces al día)', 'Conservado', 'Ninguna', 'No refiere', 'No refiere',
    'Padre: Sin antecedentes médicos conocidos, Madre: Sin antecedentes médicos conocidos', 'No refiere', 29
),

(
    '2023-10-05', '16:45', '22', 'Paciente viudo de 50 años con molestias en la cavidad bucal. Refiere dolor al masticar en una muela inferior derecha. Al examen se detecta una caries avanzada. Se plantea extracción y tratamiento protésico.',
    'María', 'Torres', 'Gutiérrez', 'F', 'Huancayo', 'Av. Los Pinos 456, Urb. San Isidro',
    '1973-03-28', 'Viudo/a', '998765432', 'maria.torres@gmail.com', 'Mestizo', 'Educación secundaria completa',
    'Ama de casa', 'Juan Gutiérrez', 'Cónyuge', 'Av. Los Pinos 456, Urb. San Isidro', '976543210', 'Ninguna',
    'Dolor al masticar en una muela inferior derecha', 'Consulta odontológica por caries avanzada', 'Normales', 'Normal', 'Conservado',
    'Conservado', 'Conservado(02 veces al día)', 'Conservado', 'Ninguna', 'No refiere', 'No refiere',
    'Padre: Fallecido por enfermedad cardiovascular, Madre: Fallecida por cáncer', 'No refiere', 30
),

(
    '2023-10-10', '11:15', '23', 'Paciente soltero de 22 años con molestias en la cavidad bucal. Refiere dolor agudo en una muela superior izquierda. Al examen se observa una caries profunda. Se indica tratamiento restaurador.',
    'Ana', 'Castillo', 'Jiménez', 'F', 'Huancayo', 'Calle Libertad 234, Urb. Santa Rosa',
    '2001-08-12', 'Soltero/a', '987654321', 'ana.castillo@gmail.com', 'Blanca', 'Educación terciaria (universitaria o técnica) incompleta',
    'Estudiante', 'Rosa Jiménez', 'Madre', 'Calle Libertad 234, Urb. Santa Rosa', '955678901', 'Ninguna',
    'Dolor agudo en una muela superior izquierda', 'Consulta odontológica por caries profunda', 'Normales', 'Normal', 'Conservado',
    'Conservado', 'Conservado(02 veces al día)', 'Conservado', 'Ninguna', 'No refiere', 'No refiere',
    'Padre: Ausente, Madre: Hipertensión controlada', 'No refiere', 31
),

(
    '2023-10-15', '14:30', '24', 'Paciente casado de 40 años con molestias en la cavidad bucal. Refiere dolor al masticar en una muela inferior derecha. Al examen se evidencia una restauración defectuosa. Se propone reconstrucción dental.',
    'Pedro', 'Vega', 'Herrera', 'M', 'Huancayo', 'Av. Los Olivos 567, Urb. El Porvenir',
    '1983-06-28', 'Casado/a', '965432109', 'pedro.vega@gmail.com', 'Mestizo', 'Educación terciaria (universitaria o técnica) completa',
    'Ingeniero Civil', 'María Herrera', 'Prima', 'Av. Los Olivos 567, Urb. El Porvenir', '977654321', 'Ninguna',
    'Dolor al masticar en una muela inferior derecha', 'Consulta odontológica por restauración defectuosa', 'Normales', 'Normal', 'Conservado',
    'Conservado', 'Conservado(02 veces al día)', 'Conservado', 'Ninguna', 'No refiere', 'No refiere',
    'Padre: Sin antecedentes médicos conocidos, Madre: Diabetes controlada', 'No refiere', 32
),

(
    '2023-11-01', '09:00', '25', 'Paciente soltera de 25 años con molestias en la cavidad bucal. Refiere sensibilidad en una muela superior izquierda al consumir bebidas frías. Se observa erosión dental. Se indica tratamiento para sensibilidad dental.',
    'Carolina', 'Vargas', 'Pérez', 'F', 'Huancayo', 'Calle San Martín 456, Urb. Los Olivos',
    '1998-02-18', 'Soltero/a', '910987654', 'carolina.vargas@gmail.com', 'Blanca', 'Educación terciaria (universitaria o técnica) completa',
    'Abogada', 'Ricardo Pérez', 'Padre', 'Calle San Martín 456, Urb. Los Olivos', '977654321', 'Ninguna',
    'Sensibilidad en una muela superior izquierda', 'Consulta odontológica por erosión dental', 'Normales', 'Normal', 'Conservado',
    'Conservado', 'Conservado(02 veces al día)', 'Conservado', 'Ninguna', 'No refiere', 'No refiere',
    'Padre: Hipertensión controlada, Madre: Sin antecedentes médicos conocidos', 'No refiere', 33
),

(
    '2023-11-05', '15:45', '26', 'Paciente divorciado de 45 años con molestias en la cavidad bucal. Refiere dolor persistente en una muela inferior derecha. Se observa una infección en la encía. Se indica tratamiento antibiótico y endodoncia.',
    'Luis', 'González', 'Torres', 'M', 'Huancayo', 'Jirón Bolívar 789, Urb. El Porvenir',
    '1978-07-10', 'Divorciado/a', '945678901', 'luis.gonzalez@gmail.com', 'Mestizo', 'Educación terciaria (universitaria o técnica) completa',
    'Ingeniero Civil', 'Ana Torres', 'Tía', 'Jirón Bolívar 789, Urb. El Porvenir', '912345678', 'Ninguna',
    'Dolor persistente en una muela inferior derecha', 'Consulta odontológica por infección en la encía', 'Normales', 'Normal', 'Conservado',
    'Conservado', 'Conservado(02 veces al día)', 'Conservado', 'Ninguna', 'No refiere', 'No refiere',
    'Padre: Sin antecedentes médicos conocidos, Madre: Diabetes controlada', 'No refiere', 34
),

(
    '2023-11-10', '11:30', '27', 'Paciente casado de 35 años con molestias en la cavidad bucal. Refiere sangrado ocasional al cepillarse y mal aliento. Se observa gingivitis y cálculos dentales. Se indica profilaxis dental.',
    'Jorge', 'Ramírez', 'Fernández', 'M', 'Huancayo', 'Calle La Paz 456, Urb. Miraflores',
    '1988-02-25', 'Casado/a', '987654321', 'jorge.ramirez@gmail.com', 'Blanco', 'Educación terciaria (universitaria o técnica) completa',
    'Contador', 'María Fernández', 'Sobrina', 'Calle La Paz 456, Urb. Miraflores', '945678901', 'Ninguna',
    'Sangrado ocasional al cepillarse y mal aliento', 'Consulta odontológica por gingivitis y cálculos dentales', 'Normales', 'Normal', 'Conservado',
    'Conservado', 'Conservado(02 veces al día)', 'Conservado', 'Ninguna', 'No refiere', 'No refiere',
    'Padre: Sin antecedentes médicos conocidos, Madre: Sin antecedentes médicos conocidos', 'No refiere', 35
),

(
    '2023-11-15', '14:15', '28', 'Paciente soltero de 28 años con molestias en la cavidad bucal. Refiere dolor al masticar alimentos duros y ha notado una pequeña hinchazón en la encía. Se observa enrojecimiento y leve inflamación. Se indica tratamiento para gingivitis incipiente.',
    'Gabriel', 'Lopez', 'Vega', 'M', 'Huancayo', 'Calle Las Rosas 789, Urb. San Isidro',
    '1995-09-10', 'Soltero/a', '910123456', 'gabriel.lopez@gmail.com', 'Mestizo', 'Educación terciaria (universitaria o técnica) incompleta',
    'Estudiante de Ingeniería', 'Ana Vega', 'Madre', 'Calle Las Rosas 789, Urb. San Isidro', '923456789', 'Ninguna',
    'Dolor al masticar alimentos duros y leve inflamación', 'Consulta odontológica por gingivitis incipiente', 'Normales', 'Normal', 'Conservado',
    'Conservado', 'Conservado(02 veces al día)', 'Conservado', 'Ninguna', 'No refiere', 'No refiere',
    'Padre: Sin antecedentes médicos conocidos, Madre: Sin antecedentes médicos conocidos', 'No refiere', 36
),

(
    '2023-11-20', '10:00', '29', 'Paciente divorciado de 45 años con molestias en la cavidad bucal. Refiere dolor agudo al masticar en la zona de una muela. Se observa caries avanzada en la muela afectada. Se indica extracción y evaluación odontológica completa.',
    'Ana', 'Castro', 'Lopez', 'F', 'Huancayo', 'Av. Los Pinos 234, Urb. San Antonio',
    '1978-08-12', 'Divorciado/a', '945678901', 'ana.castro@gmail.com', 'Blanca', 'Educación terciaria (universitaria o técnica) completa',
    'Profesora', 'Juan Lopez', 'Hermano', 'Av. Los Pinos 234, Urb. San Antonio', '912345678', 'Ninguna',
    'Dolor agudo al masticar en la zona de una muela', 'Consulta odontológica por caries avanzada', 'Normales', 'Normal', 'Conservado',
    'Conservado', 'Conservado(02 veces al día)', 'Conservado', 'Ninguna', 'No refiere', 'No refiere',
    'Padre: Sin antecedentes médicos conocidos, Madre: Sin antecedentes médicos conocidos', 'No refiere', 37
),

(
    '2023-11-22', '16:45', '30', 'Paciente viudo de 55 años con molestias en la cavidad bucal. Refiere sensación de movilidad en algunas piezas dentales y mal sabor en la boca. Se observa periodontitis avanzada. Se indica tratamiento periodontal y evaluación odontológica completa.',
    'Ricardo', 'Gomez', 'Suarez', 'M', 'Huancayo', 'Jirón Los Alamos 789, Urb. San Miguel',
    '1968-02-18', 'Viudo/a', '987654321', 'ricardo.gomez@gmail.com', 'Mestizo', 'Educación secundaria completa',
    'Comerciante', 'Luz Suarez', 'Hija', 'Jirón Los Alamos 789, Urb. San Miguel', '945678901', 'Ninguna',
    'Sensación de movilidad en algunas piezas dentales y mal sabor en la boca', 'Consulta odontológica por periodontitis avanzada', 'Normales', 'Normal', 'Conservado',
    'Conservado', 'Conservado(02 veces al día)', 'Conservado', 'Ninguna', 'No refiere', 'No refiere',
    'Padre: Diabetes, Madre: Hipertensión', 'No refiere', 38
);


--Craneo, Cara: Normocefalo, Braquicéfalo, Dolicocéfalo
--Normofacial, Braquifacial, Dolicofacial
INSERT INTO public."tblExamenEstomatologico"("Facie", "Craneo", "Cara", "SimetriaTresTercios", "SimetriaBilateral", "SimetriaPerfil", "ATMtrayectoriaaperturaycierre", "ATMfluidosdelaATM", "ATMpalpitacion", "ATMgradodeapertura", "Ganglios", "idPaciente")
	VALUES 
(
    'Redonda', 'Normocefalo', 'Braquifacial', 'Simetría adecuada', 'Homogeneidad en ambos lados', 'Convexo',
    'Trayectoria normal', 'No presenta crepitaciones', 'Palpación normal', '35mm', 'No inflamados', 5
),
(
    'Cuadrada', 'Braquicéfalo', 'Dolicofacial', 'No presenta simetría', 'Homogeneidad en ambos lados', 'Concavo',
    'Trayectoria anormal', 'Presenta crepitaciones en ambas aperturas', 'Palpación dolorosa en ambos lados (5 en la escala del dolor)',
    '30mm', 'Inflamados', 6
),
(
    'Ovalado', 'Normocefalo', 'Normofacial', 'Simetría adecuada', 'Homogeneidad en ambos lados', 'Plano',
    'Trayectoria normal', 'No presenta crepitaciones', 'Palpación normal', '38mm', 'No inflamados', 7
),
(
    'Alargada', 'Dolicocéfalo', 'Dolicofacial', 'Simetría adecuada', 'Homogeneidad en ambos lados', 'Convexo',
    'Trayectoria normal', 'No presenta crepitaciones', 'Palpación normal', '40mm', 'No inflamados', 8
),
(
    'Cuadrada', 'Braquicéfalo', 'Normofacial', 'No presenta simetría', 'Homogeneidad en ambos lados', 'Concavo',
    'Trayectoria anormal', 'Presenta crepitaciones en ambas aperturas', 'Palpación dolorosa en ambos lados (4 en la escala del dolor)',
    '36mm', 'Inflamados', 9
),
(
    'Ovalado', 'Normocefalo', 'Normofacial', 'Simetría adecuada', 'Homogeneidad en ambos lados', 'Plano',
    'Trayectoria normal', 'No presenta crepitaciones', 'Palpación normal', '42mm', 'No inflamados', 10
),
(
    'Redonda', 'Normocefalo', 'Normofacial', 'Simetría adecuada', 'Homogeneidad en ambos lados', 'Concavo',
    'Trayectoria normal', 'No presenta crepitaciones', 'Palpación normal', '38mm', 'No inflamados', 11
),
(
    'Cuadrada', 'Braquicéfalo', 'Dolicofacial', 'No presenta simetría', 'Homogeneidad en ambos lados', 'Plano',
    'Trayectoria normal', 'No presenta crepitaciones', 'Palpación normal', '40mm', 'No inflamados', 12
),
(
    'Ovalado', 'Dolicocéfalo', 'Normofacial', 'Simetría adecuada', 'Homogeneidad en ambos lados', 'Convexo',
    'Trayectoria normal', 'No presenta crepitaciones', 'Palpación normal', '42mm', 'No inflamados', 13
),
(
    'Ovalado', 'Dolicocéfalo', 'Normofacial', 'No presenta simetría', 'No homogeneidad en ambos lados', 'Concavo',
    'Trayectoria normal', 'No presenta crepitaciones', 'Palpación normal', '40mm', 'No inflamados', 14
),
(
    'Redonda', 'Normocefalo', 'Dolicofacial', 'Simetría adecuada', 'Homogeneidad en ambos lados', 'Plano',
    'Trayectoria normal', 'No presenta crepitaciones', 'Palpación normal', '38mm', 'No inflamados', 15
),
(
    'Cuadrada', 'Braquicéfalo', 'Normofacial', 'Simetría adecuada', 'No homogeneidad en ambos lados', 'Convexo',
    'Trayectoria normal', 'No presenta crepitaciones', 'Palpación normal', '42mm', 'No inflamados', 16
),
(
    'Ovalado', 'Dolicocéfalo', 'Normofacial', 'No presenta simetría', 'No homogeneidad en ambos lados', 'Plano',
    'Trayectoria normal', 'No presenta crepitaciones', 'Palpación normal', '39mm', 'No inflamados', 17
),
(
    'Redonda', 'Normocefalo', 'Dolicofacial', 'Simetría adecuada', 'Homogeneidad en ambos lados', 'Convexo',
    'Trayectoria normal', 'No presenta crepitaciones', 'Palpación normal', '37mm', 'No inflamados', 18
),
(
    'Cuadrada', 'Braquicéfalo', 'Normofacial', 'Simetría adecuada', 'No homogeneidad en ambos lados', 'Plano',
    'Trayectoria normal', 'No presenta crepitaciones', 'Palpación normal', '40mm', 'No inflamados', 19
),
(
    'Triangular', 'Normocefalo', 'Dolicofacial', 'No presenta simetría', 'Homogeneidad en ambos lados', 'Convexo',
    'Trayectoria normal', 'No presenta crepitaciones', 'Palpación normal', '41mm', 'No inflamados', 20
),
(
    'Ovalado', 'Normocefalo', 'Normofacial', 'Simetría adecuada', 'Homogeneidad en ambos lados', 'Convexo',
    'Trayectoria normal', 'No presenta crepitaciones', 'Palpación normal', '38mm', 'No inflamados', 21
),
(
    'Cuadrada', 'Braquicéfalo', 'Normofacial', 'No presenta simetría', 'No homogeneidad en ambos lados', 'Convexo',
    'Trayectoria normal', 'No presenta crepitaciones', 'Palpación normal', '39mm', 'No inflamados', 22
),
(
    'Redonda', 'Normocefalo', 'Dolicofacial', 'Simetría adecuada', 'Homogeneidad en ambos lados', 'Plano',
    'Trayectoria normal', 'No presenta crepitaciones', 'Palpación normal', '40mm', 'No inflamados', 23
),
(
    'Triangular', 'Dolicocéfalo', 'Dolicofacial', 'No presenta simetría', 'No homogeneidad en ambos lados', 'Convexo',
    'Trayectoria normal', 'No presenta crepitaciones', 'Palpación normal', '41mm', 'No inflamados', 24
),
(
    'Ovalado', 'Braquicéfalo', 'Dolicofacial', 'Simetría adecuada', 'Homogeneidad en ambos lados', 'Plano',
    'Trayectoria normal', 'No presenta crepitaciones', 'Palpación normal', '38mm', 'No inflamados', 25
),
(
    'Triangular', 'Normocefalo', 'Dolicofacial', 'Simetría adecuada', 'Homogeneidad en ambos lados', 'Convexo',
    'Trayectoria normal', 'No presenta crepitaciones', 'Palpación normal', '39mm', 'No inflamados', 26
),
(
    'Ovalado', 'Braquicéfalo', 'Normofacial', 'No presenta simetría', 'No homogeneidad en ambos lados', 'Plano',
    'Trayectoria normal', 'No presenta crepitaciones', 'Palpación normal', '40mm', 'No inflamados', 27
),
(
    'Cuadrada', 'Normocefalo', 'Dolicofacial', 'Simetría adecuada', 'Homogeneidad en ambos lados', 'Convexo',
    'Trayectoria normal', 'No presenta crepitaciones', 'Palpación normal', '41mm', 'No inflamados', 28
),
(
    'Triangular', 'Braquicéfalo', 'Dolicofacial', 'No presenta simetría', 'No homogeneidad en ambos lados', 'Plano',
    'Trayectoria normal', 'No presenta crepitaciones', 'Palpación normal', '38mm', 'No inflamados', 29
),
(
    'Ovalado', 'Dolicocéfalo', 'Normofacial', 'Simetría adecuada', 'Homogeneidad en ambos lados', 'Convexo',
    'Trayectoria normal', 'No presenta crepitaciones', 'Palpación normal', '39mm', 'No inflamados', 30
);

INSERT INTO public."tblNivelPieza"("EnciaNormal", "EnciaFaltaoAusencia", "EnciaIncosistencia", 
								   "ColorNormal", "ColorEntematosa", "ColorPalido", "TexturaNormal", 
								   "TexturaLisa", "TexturaRugosa", "ConsistenciaNormal", 
								   "ConsistenciaEdematosa", "ConsistenciaFibrosa", "EnciaPapilarNormal", 
								   "EnciaPapilarAplanada", "EnciaPapilarCrateriforme", "Encia", 
								   "idExamenEstomatologico")
	VALUES 
(
    '11-12-21-22-31-32-41-42', '---', '12-11-21-22', '32-34-35-37', 
    '11-12-16-22-41', '24', '24-32-33-34-35-37-41-44', '11-12-16-22-41', 
    '--', '24-32-33-34-35-37-41-44', '11-12-21-22-41', '---', '---', '---', 
    'A nivel de todas las piezas',
    'Presenta variaciones en las piezas: 11-12-21-22-41, Encía eritematosa a nivel de las piezas: 11-12-21-22-41, Encía edematosa a nivel de las piezas: 11-12-21-22-41, Encía crateriforme a nivel de todas las piezas', 5
	
),
(
    '21-22-31-32-41-42-44', '---', '22-21-31-32', '32-35-37-39', 
    '21-22-26-32-41', '36', '36-41-42-43-45-46', '21-22-26-32-41', 
    '--', '36-41-42-43-45-46', '21-22-31-32-41', '---', '---', '---', 
    'A nivel de todas las piezas',
    'Presenta variaciones en las piezas: 21-22-31-32-41, Encía eritematosa a nivel de las piezas: 21-22-31-32-41, Encía edematosa a nivel de las piezas: 21-22-31-32-41, Encía crateriforme a nivel de todas las piezas', 6
	
),
(
    '31-32-41-42-43-45-46', '---', '32-31-41-42', '41-43-45-47', 
    '31-32-37-42-46', '45', '45-46-41-42-43-44', '31-32-37-42-46', 
    '--', '45-46-41-42-43-44', '31-32-41-42-46', '---', '---', '---', 
    'A nivel de todas las piezas',
    'Presenta variaciones en las piezas: 31-32-41-42-46, Encía eritematosa a nivel de las piezas: 31-32-41-42-46, Encía edematosa a nivel de las piezas: 31-32-41-42-46, Encía crateriforme a nivel de todas las piezas', 7
),
(
    '41-42-51-52-61-62-63', '---', '42-41-51-52', '51-53-55-57', 
    '41-42-47-52-63', '54', '54-51-52-53-55-56', '41-42-47-52-63', 
    '--', '54-51-52-53-55-56', '41-42-51-52-56', '---', '---', '---', 
    'A nivel de todas las piezas',
    'Presenta variaciones en las piezas: 41-42-51-52-56, Encía eritematosa a nivel de las piezas: 41-42-51-52-56, Encía edematosa a nivel de las piezas: 41-42-51-52-56, Encía crateriforme a nivel de todas las piezas', 8
),
(
    '15-14-13-12-11-21-22-31', '---', '14-15-13-12', '12-14-16-18', 
    '15-14-19-12-16', '17', '17-14-15-16-18-19', '15-14-19-12-16', 
    '--', '17-14-15-16-18-19', '15-14-13-12-18', '---', '---', '---', 
    'A nivel de todas las piezas',
    'Presenta variaciones en las piezas: 15-14-13-12-18, Encía eritematosa a nivel de las piezas: 15-14-13-12-18, Encía edematosa a nivel de las piezas: 15-14-13-12-18, Encía crateriforme a nivel de todas las piezas', 9
),
(
    '36-37-38-42-44-45-46-47', '---', '38-37-36-46', '46-44-42-40', 
    '36-37-46-42-38', '43', '43-40-41-42-44-45', '36-37-46-42-38', 
    '--', '43-40-41-42-44-45', '36-37-38-42-44', '---', '---', '---', 
    'A nivel de todas las piezas',
    'Presenta variaciones en las piezas: 36-37-38-42-44, Encía eritematosa a nivel de las piezas: 36-37-38-42-44, Encía edematosa a nivel de las piezas: 36-37-38-42-44, Encía crateriforme a nivel de todas las piezas', 10
),
(
    '47-48-51-52-53-54-58-57', '---', '48-47-51-52', '52-50-48-46', 
    '47-48-53-52-58', '55', '55-52-53-54-56-57', '47-48-53-52-58', 
    '--', '55-52-53-54-56-57', '47-48-51-52-58', '---', '---', '---', 
    'A nivel de todas las piezas',
    'Presenta variaciones en las piezas: 47-48-51-52-58, Encía eritematosa a nivel de las piezas: 47-48-51-52-58, Encía edematosa a nivel de las piezas: 47-48-51-52-58, Encía crateriforme a nivel de todas las piezas', 11
),
(
    '26-27-28-32-34-35-36-37', '---', '27-28-26-36', '36-34-32-30', 
    '26-27-32-36-28', '35', '35-30-31-32-34-36', '26-27-32-36-28', 
    '--', '35-30-31-32-34-36', '26-27-28-32-36', '---', '---', '---', 
    'A nivel de todas las piezas',
    'Presenta variaciones en las piezas: 26-27-28-32-36, Encía eritematosa a nivel de las piezas: 26-27-28-32-36, Encía edematosa a nivel de las piezas: 26-27-28-32-36, Encía crateriforme a nivel de todas las piezas', 12
),
(
    '41-42-43-44-45-46-47-48', '---', '42-43-41-47', '47-45-43-41', 
    '41-42-47-43-48', '46', '46-41-42-43-45-47', '41-42-47-43-48', 
    '--', '46-41-42-43-45-47', '41-42-43-44-47', '---', '---', '---', 
    'A nivel de todas las piezas',
    'Presenta variaciones en las piezas: 41-42-43-44-47, Encía eritematosa a nivel de las piezas: 41-42-43-44-47, Encía edematosa a nivel de las piezas: 41-42-43-44-47, Encía crateriforme a nivel de todas las piezas', 13
),
(
    '51-52-53-54-55-56-57-58', '---', '52-53-51-57', '57-55-53-51', 
    '51-52-57-53-58', '56', '56-51-52-53-55-57', '51-52-57-53-58', 
    '--', '56-51-52-53-55-57', '51-52-53-54-57', '---', '---', '---', 
    'A nivel de todas las piezas',
    'Presenta variaciones en las piezas: 51-52-53-54-57, Encía eritematosa a nivel de las piezas: 51-52-53-54-57, Encía edematosa a nivel de las piezas: 51-52-53-54-57, Encía crateriforme a nivel de todas las piezas', 14
),
(
    '9-10-11-12-13-14-15-16', '---', '10-11-9-15', '15-13-11-9', 
    '9-10-15-11-16', '14', '14-9-10-11-13-15', '9-10-15-11-16', 
    '--', '14-9-10-11-13-15', '9-10-11-12-15', '---', '---', '---', 
    'A nivel de Caninos superiores',
    'Presenta variaciones en las piezas: 9-10-11-12-15, Encía eritematosa a nivel de las piezas: 9-10-11-12-15, Encía edematosa a nivel de las piezas: 9-10-11-12-15, Encía crateriforme a nivel de Caninos superiores. Observaciones adicionales: Pequeña retracción en la encía entre los dientes 12 y 13.', 15
),
(
    '25-26-27-28-29-30-31-32', '---', '26-27-25-31', '31-29-27-25', 
    '25-26-31-27-32', '30', '30-25-26-27-29-31', '25-26-31-27-32', 
    '--', '30-25-26-27-29-31', '25-26-27-28-31', '---', '---', '---', 
    'A nivel de Molares superiores',
    'Presenta variaciones en las piezas: 25-26-27-28-31, Encía eritematosa a nivel de las piezas: 25-26-27-28-31, Encía edematosa a nivel de las piezas: 25-26-27-28-31, Encía crateriforme a nivel de Molares superiores. Observaciones adicionales: Ligero sangrado al cepillarse en la zona del diente 28.', 16
),
(
    '17-18-19-20-21-22-23-24', '---', '18-19-17-23', '23-21-19-17', 
    '17-18-23-19-24', '22', '22-17-18-19-21-23', '17-18-23-19-24', 
    '--', '22-17-18-19-21-23', '17-18-19-20-23', '---', '---', '---', 
    'A nivel de Premolares superiores',
    'Presenta variaciones en las piezas: 17-18-19-20-23, Encía eritematosa a nivel de las piezas: 17-18-19-20-23, Encía edematosa a nivel de las piezas: 17-18-19-20-23, Encía crateriforme a nivel de Premolares superiores. Observaciones adicionales: Ligera inflamación en la encía alrededor del diente 20.', 17
),
(
    '33-34-39-40-37-36-35-38', '---', '34-39-33-35', '35-37-39-34', 
    '33-40-35-38-36', '38', '38-33-34-35-37-39', '33-34-39-35-40', 
    '--', '38-33-34-35-37-39', '33-34-35-36-39', '---', '---', '---', 
    'A nivel de Incisivos inferiores',
    'Presenta variaciones en las piezas: 33-34-35-36-39, Encía eritematosa a nivel de las piezas: 33-34-35-36-39, Encía edematosa a nivel de las piezas: 33-34-35-36-39, Encía crateriforme a nivel de Incisivos inferiores. Observaciones adicionales: Leve inflamación en la encía entre los dientes 36 y 37.', 18
),
(
    '41-42-47-48-43-44-45-46', '---', '42-47-41-45', '45-43-47-42', 
    '41-48-45-46-43', '46', '46-41-42-43-45-47', '41-42-47-43-48', 
    '--', '46-41-42-43-45-47', '41-42-43-44-47', '---', '---', '---', 
    'A nivel de Caninos inferiores',
    'Presenta variaciones en las piezas: 41-42-43-44-47, Encía eritematosa a nivel de las piezas: 41-42-43-44-47, Encía edematosa a nivel de las piezas: 41-42-43-44-47, Encía crateriforme a nivel de Caninos inferiores. Observaciones adicionales: Sensibilidad en la encía alrededor del diente 43.', 19
),
(
    '49-50-55-56-53-52-51-54', '---', '50-55-49-51', '51-53-55-50', 
    '49-56-51-54-52', '54', '54-49-50-51-53-55', '49-50-55-51-56', 
    '--', '54-49-50-51-53-55', '49-50-51-52-55', '---', '---', '---', 
    'A nivel de Premolares inferiores',
    'Presenta variaciones en las piezas: 49-50-51-52-55, Encía eritematosa a nivel de las piezas: 49-50-51-52-55, Encía edematosa a nivel de las piezas: 49-50-51-52-55, Encía crateriforme a nivel de Premolares inferiores. Observaciones adicionales: Ligera inflamación en la encía alrededor del diente 52.', 20
),
(
    '57-58-63-64-61-60-59-62', '---', '58-63-57-59', '59-61-63-58', 
    '57-64-59-62-60', '62', '62-57-58-59-61-63', '57-58-63-59-64', 
    '--', '62-57-58-59-61-63', '57-58-59-60-63', '---', '---', '---', 
    'A nivel de Molares inferiores',
    'Presenta variaciones en las piezas: 57-58-59-60-63, Encía eritematosa a nivel de las piezas: 57-58-59-60-63, Encía edematosa a nivel de las piezas: 57-58-59-60-63, Encía crateriforme a nivel de Molares inferiores. Observaciones adicionales: Pequeña bolsa de pus en la encía entre los dientes 60 y 61.', 21
),
(
    '17-18-23-24-21-20-19-22', '---', '18-23-17-19', '19-21-23-18', 
    '17-24-19-22-20', '22', '22-17-18-19-21-23', '17-18-23-19-24', 
    '--', '22-17-18-19-21-23', '17-18-19-20-23', '---', '---', '---', 
    'A nivel de Caninos superiores',
    'Presenta variaciones en las piezas: 17-18-19-20-23, Encía eritematosa a nivel de las piezas: 17-18-19-20-23, Encía edematosa a nivel de las piezas: 17-18-19-20-23, Encía crateriforme a nivel de Caninos superiores. Observaciones adicionales: Ligera retracción en la encía entre los dientes 20 y 21.', 22
),
(
    '25-26-31-32-29-28-27-30', '---', '26-31-25-27', '27-29-31-26', 
    '25-32-27-30-28', '30', '30-25-26-27-29-31', '25-26-31-27-32', 
    '--', '30-25-26-27-29-31', '25-26-27-28-31', '---', '---', '---', 
    'A nivel de Premolares superiores',
    'Presenta variaciones en las piezas: 25-26-27-28-31, Encía eritematosa a nivel de las piezas: 25-26-27-28-31, Encía edematosa a nivel de las piezas: 25-26-27-28-31, Encía crateriforme a nivel de Premolares superiores. Observaciones adicionales: Pequeño absceso en la encía entre los dientes 28 y 29.', 23
),
(
    '29-30-35-36-33-32-31-34', '---', '30-35-29-31', '31-33-35-30', 
    '29-36-31-34-32', '34', '34-29-30-31-33-35', '29-30-35-31-36', 
    '--', '34-29-30-31-33-35', '29-30-31-32-35', '---', '---', '---', 
    'A nivel de Molares superiores',
    'Presenta variaciones en las piezas: 29-30-31-32-35, Encía eritematosa a nivel de las piezas: 29-30-31-32-35, Encía edematosa a nivel de las piezas: 29-30-31-32-35, Encía crateriforme a nivel de Molares superiores. Observaciones adicionales: Pequeña inflamación en la encía alrededor del diente 32.', 24
),
(
    '33-34-39-40-37-36-35-38', '---', '34-39-33-35', '35-37-39-34', 
    '33-40-35-38-36', '38', '38-33-34-35-37-39', '33-34-39-35-40', 
    '--', '38-33-34-35-37-39', '33-34-35-36-39', '---', '---', '---', 
    'A nivel de Incisivos inferiores',
    'Presenta variaciones en las piezas: 33-34-35-36-39, Encía eritematosa a nivel de las piezas: 33-34-35-36-39, Encía edematosa a nivel de las piezas: 33-34-35-36-39, Encía crateriforme a nivel de Incisivos inferiores. Observaciones adicionales: Leve inflamación en la encía entre los dientes 36 y 37.', 25
),
(
    '41-42-47-48-43-44-45-46', '---', '42-47-41-45', '45-43-47-42', 
    '41-48-45-46-43', '46', '46-41-42-43-45-47', '41-42-47-43-48', 
    '--', '46-41-42-43-45-47', '41-42-43-44-47', '---', '---', '---', 
    'A nivel de Caninos inferiores',
    'Presenta variaciones en las piezas: 41-42-43-44-47, Encía eritematosa a nivel de las piezas: 41-42-43-44-47, Encía edematosa a nivel de las piezas: 41-42-43-44-47, Encía crateriforme a nivel de Caninos inferiores. Observaciones adicionales: Sensibilidad en la encía alrededor del diente 43.', 26
),
(
    '49-50-55-56-53-52-51-54', '---', '50-55-49-51', '51-53-55-50', 
    '49-56-51-54-52', '54', '54-49-50-51-53-55', '49-50-55-51-56', 
    '--', '54-49-50-51-53-55', '49-50-51-52-55', '---', '---', '---', 
    'A nivel de Premolares inferiores',
    'Presenta variaciones en las piezas: 49-50-51-52-55, Encía eritematosa a nivel de las piezas: 49-50-51-52-55, Encía edematosa a nivel de las piezas: 49-50-51-52-55, Encía crateriforme a nivel de Premolares inferiores. Observaciones adicionales: Ligera inflamación en la encía alrededor del diente 52.', 27
),
(
    '57-58-63-64-61-60-59-62', '---', '58-63-57-59', '59-61-63-58', 
    '57-64-59-62-60', '62', '62-57-58-59-61-63', '57-58-63-59-64', 
    '--', '62-57-58-59-61-63', '57-58-59-60-63', '---', '---', '---', 
    'A nivel de Molares inferiores',
    'Presenta variaciones en las piezas: 57-58-59-60-63, Encía eritematosa a nivel de las piezas: 57-58-59-60-63, Encía edematosa a nivel de las piezas: 57-58-59-60-63, Encía crateriforme a nivel de Molares inferiores. Observaciones adicionales: Pequeña bolsa de pus en la encía entre los dientes 60 y 61.', 28
),
(
    '1-2-7-8-5-4-3-6', '---', '2-7-1-3', '3-5-7-2', 
    '1-8-3-6-4', '6', '6-1-2-3-5-7', '1-2-7-3-8', 
    '--', '6-1-2-3-5-7', '1-2-3-4-7', '---', '---', '---', 
    'A nivel de Incisivos superiores',
    'Presenta variaciones en las piezas: 1-2-3-4-7, Encía eritematosa a nivel de las piezas: 1-2-3-4-7, Encía edematosa a nivel de las piezas: 1-2-3-4-7, Encía crateriforme a nivel de Incisivos superiores. Observaciones adicionales: Pequeño sangrado en la encía alrededor del diente 4.', 29
),
(
    '17-18-23-24-21-20-19-22', '---', '18-23-17-19', '19-21-23-18', 
    '17-24-19-22-20', '22', '22-17-18-19-21-23', '17-18-23-19-24', 
    '--', '22-17-18-19-21-23', '17-18-19-20-23', '---', '---', '---', 
    'A nivel de Premolares superiores',
    'Presenta variaciones en las piezas: 17-18-19-20-23, Encía eritematosa a nivel de las piezas: 17-18-19-20-23, Encía edematosa a nivel de las piezas: 17-18-19-20-23, Encía crateriforme a nivel de Premolares superiores. Observaciones adicionales: Pequeño absceso en la encía entre los dientes 20 y 21.', 30
);

INSERT INTO public."tblTejidosDuros"("MaximilarSuperior", "MaximilarInferior", "Numero", "Color", "Forma", 
									 "Tamanio", "Diastemas", "ZonasEdentulasyRebordeAlveolar", 
									 "AlteraciondePosiciones", "FacetadeDesgaste", "LineaMedia", 
									 "Otro", "idExamenEstomatologico")
VALUES 
(
    'Circular con epiñomiento','Circular sin opiñomiento','34','Blanco','Circular','Normal',
    '34 a 35 / 43 a 44', '35 a 37 / 44 a 46', 'Rotación en 34', 
    'Desgaste en incisal: 34-44', 'Normal', 'Sin observaciones', '5'
),
(
    'Cuadrada con epiñomiento','Cuadrada sin opiñomiento','27','Amarillo','Cuadrada','Agrandada',
    '27 a 28 / 37 a 38 / 47 a 48', '18 a 20 / 28 a 30 / 38 a 40', 'Sin alteracion', 
    'Desgaste en incisal: 27-37-48', 'Normal', 'Sin observaciones', '6'
),
(
    'Triangular con epiñomiento','Triangular sin opiñomiento','45','Blanca','Triangular','Reducción',
    '45 a 46', '35 a 37 / 45 a 47', 'Inclinación en 45', 
    'Desgaste en incisal: 45-46', 'Desviada 2mm a la izquierda', 'Sin observaciones', '7'
),
(
    'Ovoide sin epiñomiento','Ovoide sin opiñomiento','15','Amarillento','Ovalada','Normal',
    '15 a 16 / 25 a 26 / 35 a 36 / 45 a 46', '13 a 15 / 23 a 25 / 33 a 35 / 43 a 45', 'Rotación en 15', 
    'Desgaste en incisal: 15-25-35-46', 'Normal', 'Sin observaciones', '8'
),
(
    'Triangular con epiñomiento','Triangular sin opiñomiento','31','Blanca','Triangular','Normal',
    '31 a 32 / 41 a 42 / 43 a 44', '33 a 35 / 43 a 45', 'Sin alteracion', 
    'Desgaste en incisal: 31-42-43', 'Normal', 'Desviada 1mm a la derecha', '9'
),
(
    'Cuadrada sin epiñomiento','Cuadrada sin opiñomiento','23','Amarillo','Cuadrada','Normal',
    '23 a 24 / 33 a 34 / 43 a 44', '18 a 20 / 28 a 30 / 38 a 40', 'Sin alteracion', 
    'Desgaste en incisal: 23-34-43', 'Normal', 'Sin observaciones', '10'
),
(
    'Ovalada con epiñomiento','Ovalada sin opiñomiento','13','Blanca','Ovalada','Normal',
    '13 a 14 / 23 a 24 / 33 a 34 / 43 a 44', '13 a 15 / 23 a 25 / 33 a 35 / 43 a 45', 'Sin alteracion', 
    'Desgaste en incisal: 13-24-34-44', 'Normal', 'Sin observaciones', '11'
),
(
    'Triangular con epiñomiento','Triangular sin opiñomiento','33','Blanca','Triangular','Normal',
    '33 a 34 / 43 a 44', '33 a 35 / 43 a 45', 'Inclinación en 33', 
    'Desgaste en incisal: 33-44', 'Desviada 1mm a la derecha', 'Sin observaciones', '12'
),
(
    'Cuadrada sin epiñomiento','Cuadrada sin opiñomiento','37','Blanca','Cuadrada','Normal',
    '37 a 38 / 47 a 48', '18 a 20 / 28 a 30 / 38 a 40', 'Sin alteracion', 
    'Desgaste en incisal: 37-48', 'Normal', 'Sin observaciones', '13'
),
(
    'Ovalada con epiñomiento','Ovalada sin opiñomiento','14','Amarillo','Ovalada','Normal',
    '14 a 15 / 24 a 25 / 34 a 35 / 44 a 45', '13 a 15 / 23 a 25 / 33 a 35 / 43 a 45', 'Sin alteracion', 
    'Desgaste en incisal: 14-25-35-45', 'Normal', 'Sin observaciones', '14'
),
(
    'Triangular sin epiñomiento','Triangular sin opiñomiento','35','Blanca','Triangular','Normal',
    '35 a 36 / 45 a 46', '33 a 35 / 43 a 45', 'Sin alteracion', 
    'Desgaste en incisal: 35-46', 'Desviada 1mm a la derecha', 'Sin observaciones', '15'
),
(
    'Cuadrada sin epiñomiento','Cuadrada sin opiñomiento','48','Blanca','Cuadrada','Normal',
    '48', '18 a 20 / 28 a 30 / 38 a 40', 'Sin alteracion', 
    'Desgaste en incisal: 48', 'Normal', 'Sin observaciones', '16'
),
(
    'Ovoide con epiñomiento','Ovoide sin opiñomiento','16','Blanca','Ovalada','Normal',
    '16 a 17 / 26 a 27 / 36 a 37 / 46 a 47', '13 a 15 / 23 a 25 / 33 a 35 / 43 a 45', 'Sin alteracion', 
    'Desgaste en incisal: 16-27-37-47', 'Normal', 'Sin observaciones', '17'
),
(
    'Triangular con epiñomiento','Triangular sin opiñomiento','42','Blanca','Triangular','Normal',
    '42 a 43 / 44 a 45', '33 a 35 / 43 a 45', 'Sin alteracion', 
    'Desgaste en incisal: 42-45', 'Desviada 1mm a la derecha', 'Sin observaciones', '18'
),
(
    'Cuadrada sin epiñomiento','Cuadrada sin opiñomiento','31','Blanca','Cuadrada','Normal',
    '31 a 32 / 41 a 42 / 43 a 44', '18 a 20 / 28 a 30 / 38 a 40', 'Sin alteracion', 
    'Desgaste en incisal: 31-42-43', 'Normal', 'Desviada 2mm a la izquierda', '19'
),
(
    'Ovalada con epiñomiento','Ovalada sin opiñomiento','23','Amarillo','Ovalada','Normal',
    '23 a 24 / 33 a 34 / 43 a 44', '13 a 15 / 23 a 25 / 33 a 35 / 43 a 45', 'Rotación en 23', 
    'Desgaste en incisal: 23-34-44', 'Normal', 'Sin observaciones', '20'
),
(
    'Triangular sin epiñomiento','Triangular sin opiñomiento','38','Blanca','Triangular','Normal',
    '38 a 39 / 48 a 49', '33 a 35 / 43 a 45', 'Sin alteracion', 
    'Desgaste en incisal: 38-49', 'Desviada 1mm a la derecha', 'Sin observaciones', '21'
),
(
    'Cuadrada con epiñomiento','Cuadrada sin opiñomiento','29','Blanca','Cuadrada','Normal',
    '29 a 30 / 39 a 40 / 49 a 50', '18 a 20 / 28 a 30 / 38 a 40', 'Sin alteracion', 
    'Desgaste en incisal: 29-40-50', 'Normal', 'Sin observaciones', '22'
),
(
    'Ovoide con epiñomiento','Ovoide sin opiñomiento','18','Amarillo','Ovalada','Normal',
    '18 a 19 / 28 a 29 / 38 a 39 / 48 a 49', '13 a 15 / 23 a 25 / 33 a 35 / 43 a 45', 'Sin alteracion', 
    'Desgaste en incisal: 18-29-39-49', 'Normal', 'Sin observaciones', '23'
),
(
    'Triangular sin epiñomiento','Triangular sin opiñomiento','46','Blanca','Triangular','Normal',
    '46 a 47 / 48 a 49', '33 a 35 / 43 a 45', 'Sin alteracion', 
    'Desgaste en incisal: 46-49', 'Desviada 1mm a la derecha', 'Sin observaciones', '24'
),
(
    'Cuadrada con epiñomiento','Cuadrada sin opiñomiento','32','Blanca','Cuadrada','Normal',
    '32 a 33 / 41 a 42 / 43 a 44', '18 a 20 / 28 a 30 / 38 a 40', 'Sin alteracion', 
    'Desgaste en incisal: 32-43-44', 'Normal', 'Desviada 2mm a la izquierda', '25'
),
(
    'Ovalada sin epiñomiento','Ovalada sin opiñomiento','25','Amarillo','Ovalada','Normal',
    '25 a 26 / 35 a 36 / 45 a 46', '13 a 15 / 23 a 25 / 33 a 35 / 43 a 45', 'Sin alteracion', 
    'Desgaste en incisal: 25-36-46', 'Normal', 'Sin observaciones', '26'
),
(
    'Triangular con epiñomiento','Triangular sin opiñomiento','52','Blanca','Triangular','Normal',
    '52 a 53 / 54 a 55', '33 a 35 / 43 a 45', 'Sin alteracion', 
    'Desgaste en incisal: 52-55', 'Desviada 1mm a la derecha', 'Sin observaciones', '27'
),
(
    'Cuadrada sin epiñomiento','Cuadrada sin opiñomiento','37','Blanca','Cuadrada','Normal',
    '37 a 38 / 47 a 48', '18 a 20 / 28 a 30 / 38 a 40', 'Sin alteracion', 
    'Desgaste en incisal: 37-48', 'Normal', 'Desviada 2mm a la izquierda', '28'
),
(
    'Ovoide con epiñomiento','Ovoide sin opiñomiento','22','Amarillo','Ovalada','Normal',
    '22 a 23 / 32 a 33 / 42 a 43 / 52 a 53', '13 a 15 / 23 a 25 / 33 a 35 / 43 a 45', 'Sin alteracion', 
    'Desgaste en incisal: 22-33-43-53', 'Normal', 'Sin observaciones', '29'
),
(
    'Triangular sin epiñomiento','Triangular sin opiñomiento','50','Blanca','Triangular','Normal',
    '50 a 51 / 52 a 53', '33 a 35 / 43 a 45', 'Sin alteracion', 
    'Desgaste en incisal: 50-53', 'Desviada 1mm a la derecha', 'Sin observaciones', '30'
);


INSERT INTO public."tblExamenIntrabucal"("LabiosYComisuraLabial", "PaladarDuroyBlando", "Carrillos", 
										 "PisodeBoca", "Lengua", "Orofaringe", "Frenillos", "Saliva", 
										 "idExamenEstomatologico")
VALUES 
(
    'Labios normales', 'Paladar duro normal, paladar blando normal', 'Carrillos normales', 
    'Piso de boca normal', 'Lengua sin alteraciones', 'Orofaringe normal', 'Frenillos normales', 'Normal', 5
),
(
    'Labios secos', 'Paladar duro normal, paladar blando normal', 'Carrillos normales', 
    'Piso de boca normal', 'Lengua sin alteraciones', 'Orofaringe normal', 'Frenillos normales', 'Normal', 6
),
(
    'Labios normales', 'Paladar duro normal, paladar blando normal', 'Carrillos normales', 
    'Piso de boca normal', 'Lengua sin alteraciones', 'Orofaringe normal', 'Frenillos normales', 'Normal', 7
),
(
    'Labios secos y agrietados', 'Paladar duro normal, paladar blando normal', 'Carrillos normales', 
    'Piso de boca normal', 'Lengua con saburra', 'Orofaringe normal', 'Frenillos normales', 'Reducción de saliva', 8
),
(
    'Labios normales', 'Paladar duro normal, paladar blando normal', 'Carrillos normales', 
    'Piso de boca normal', 'Lengua sin alteraciones', 'Orofaringe normal', 'Frenillos normales', 'Normal', 9
),
(
    'Labios resecos', 'Paladar duro normal, paladar blando normal', 'Carrillos normales', 
    'Piso de boca normal', 'Lengua con saburra', 'Orofaringe normal', 'Frenillos normales', 'Normal', 10
),
(
    'Labios normales', 'Paladar duro normal, paladar blando normal', 'Carrillos normales', 
    'Piso de boca normal', 'Lengua sin alteraciones', 'Orofaringe normal', 'Frenillos normales', 'Normal', 11
),
(
    'Labios secos', 'Paladar duro normal, paladar blando normal', 'Carrillos normales', 
    'Piso de boca normal', 'Lengua sin alteraciones', 'Orofaringe normal', 'Frenillos normales', 'Normal', 12
),
(
    'Labios normales', 'Paladar duro normal, paladar blando normal', 'Carrillos normales', 
    'Piso de boca normal', 'Lengua sin alteraciones', 'Orofaringe normal', 'Frenillos normales', 'Normal', 13
),
(
    'Labios normales', 'Paladar duro normal, paladar blando normal', 'Carrillos normales', 
    'Piso de boca normal', 'Lengua sin alteraciones', 'Orofaringe normal', 'Frenillos normales', 'Normal', 14
),
(
    'Labios secos', 'Paladar duro normal, paladar blando normal', 'Carrillos normales', 
    'Piso de boca normal', 'Lengua sin alteraciones', 'Orofaringe normal', 'Frenillos normales', 'Reducción de saliva', 15
),
(
    'Labios normales', 'Paladar duro normal, paladar blando normal', 'Carrillos normales', 
    'Piso de boca normal', 'Lengua sin alteraciones', 'Orofaringe normal', 'Frenillos normales', 'Normal', 16
),
(
    'Labios normales', 'Paladar duro normal, paladar blando normal', 'Carrillos normales', 
    'Piso de boca normal', 'Lengua sin alteraciones', 'Orofaringe normal', 'Frenillos normales', 'Normal', 17
),
(
    'Labios secos', 'Paladar duro normal, paladar blando normal', 'Carrillos normales', 
    'Piso de boca normal', 'Lengua sin alteraciones', 'Orofaringe normal', 'Frenillos normales', 'Reducción de saliva', 18
),
(
    'Labios normales', 'Paladar duro normal, paladar blando normal', 'Carrillos normales', 
    'Piso de boca normal', 'Lengua sin alteraciones', 'Orofaringe normal', 'Frenillos normales', 'Normal', 19
),
(
    'Labios secos y agrietados', 'Paladar duro normal, paladar blando normal', 'Carrillos normales', 
    'Piso de boca normal', 'Lengua con saburra', 'Orofaringe normal', 'Frenillos normales', 'Reducción de saliva', 20
),
(
    'Labios normales', 'Paladar duro normal, paladar blando normal', 'Carrillos normales', 
    'Piso de boca normal', 'Lengua sin alteraciones', 'Orofaringe normal', 'Frenillos normales', 'Normal', 21
),
(
    'Labios secos', 'Paladar duro normal, paladar blando normal', 'Carrillos normales', 
    'Piso de boca normal', 'Lengua sin alteraciones', 'Orofaringe normal', 'Frenillos normales', 'Normal', 22
),
(
    'Labios normales', 'Paladar duro normal, paladar blando normal', 'Carrillos normales', 
    'Piso de boca normal', 'Lengua sin alteraciones', 'Orofaringe normal', 'Frenillos normales', 'Normal', 23
),
(
    'Labios secos', 'Paladar duro normal, paladar blando normal', 'Carrillos normales', 
    'Piso de boca normal', 'Lengua sin alteraciones', 'Orofaringe normal', 'Frenillos normales', 'Normal', 24
),
(
    'Labios normales', 'Paladar duro normal, paladar blando normal', 'Carrillos normales', 
    'Piso de boca normal', 'Lengua sin alteraciones', 'Orofaringe normal', 'Frenillos normales', 'Normal', 25
),
(
    'Labios secos', 'Paladar duro normal, paladar blando normal', 'Carrillos normales', 
    'Piso de boca normal', 'Lengua sin alteraciones', 'Orofaringe normal', 'Frenillos normales', 'Reducción de saliva', 26
),
(
    'Labios normales', 'Paladar duro normal, paladar blando normal', 'Carrillos normales', 
    'Piso de boca normal', 'Lengua sin alteraciones', 'Orofaringe normal', 'Frenillos normales', 'Normal', 27
),
(
    'Labios secos', 'Paladar duro normal, paladar blando normal', 'Carrillos normales', 
    'Piso de boca normal', 'Lengua sin alteraciones', 'Orofaringe normal', 'Frenillos normales', 'Normal', 28
),
(
    'Labios normales', 'Paladar duro normal, paladar blando normal', 'Carrillos normales', 
    'Piso de boca normal', 'Lengua sin alteraciones', 'Orofaringe normal', 'Frenillos normales', 'Normal', 29
),
(
    'Labios secos', 'Paladar duro normal, paladar blando normal', 'Carrillos normales', 
    'Piso de boca normal', 'Lengua sin alteraciones', 'Orofaringe normal', 'Frenillos normales', 'Reducción de saliva', 30
);
	
	
	
INSERT INTO public."tblDolor"("Temporal", "Masetero", "PteriogoideoInterno", "PteriogoideoExterno", 
							  "Digastrico", "Esternocleidomastoideo", "idExamenEstomatologico")
	VALUES
	(
    'Si en la parte derecha', 'No', 'No', 'Si en la parte izquierda', 'No', 
    'Si en la parte izquierda', 5
	),
	(
    'No', 'Si en la parte derecha', 'No', 'No', 'No', 
    'Si en la parte izquierda', 6
	),
	(
    'Si en la parte derecha', 'No', 'Si en la parte izquierda', 'No', 'Si en la parte derecha', 
    'No', 7
	),
	(
    'No', 'No', 'Si en la parte izquierda', 'No', 'Si en la parte derecha', 
    'Si en la parte izquierda', 8
	),
	(
    'Si en la parte derecha', 'No', 'No', 'Si en la parte izquierda', 'Si en la parte derecha', 
    'Si en la parte izquierda', 9
	),
	(
    'No', 'Si en la parte derecha', 'Si en la parte izquierda', 'No', 'No', 
    'Si en la parte derecha', 10
	),
	(
    'Si en la parte derecha', 'Si en la parte izquierda', 'No', 'No', 'Si en la parte derecha', 
    'No', 11
	),
	(
    'No', 'No', 'Si en la parte izquierda', 'No', 'Si en la parte derecha', 
    'Si en la parte izquierda', 12
	),
	(
    'Si en la parte derecha', 'No', 'No', 'Si en la parte izquierda', 'Si en la parte derecha', 
    'No', 13
	),
	(
    'No', 'Si en la parte izquierda', 'Si en la parte derecha', 'No', 'Si en la parte derecha', 
    'Si en la parte izquierda', 14
	),
	(
    'Si en la parte derecha', 'No', 'No', 'Si en la parte izquierda', 'No', 
    'Si en la parte derecha', 15
	),
	(
    'No', 'Si en la parte izquierda', 'Si en la parte derecha', 'Si en la parte izquierda', 'No', 
    'Si en la parte derecha', 16
	),
	(
    'Si en la parte izquierda', 'No', 'Si en la parte izquierda', 'No', 'Si en la parte derecha', 
    'No', 17
	),
	(
    'No', 'Si en la parte derecha', 'Si en la parte izquierda', 'No', 'No', 
    'Si en la parte derecha', 18
	),
	(
    'Si en la parte izquierda', 'No', 'No', 'Si en la parte derecha', 'Si en la parte izquierda', 
    'No', 19
	),
	(
    'No', 'Si en la parte izquierda', 'No', 'Si en la parte derecha', 'Si en la parte izquierda', 
    'No', 20
	),
	(
    'Si en la parte derecha', 'Si en la parte izquierda', 'No', 'No', 'Si en la parte derecha', 
    'No', 21
	),
	(
    'No', 'Si en la parte derecha', 'Si en la parte izquierda', 'Si en la parte izquierda', 'Si en la parte derecha', 
    'Si en la parte izquierda', 22
	),
	(
    'Si en la parte derecha', 'No', 'Si en la parte izquierda', 'No', 'Si en la parte derecha', 
    'Si en la parte izquierda', 23
	),
	(
    'No', 'Si en la parte izquierda', 'Si en la parte derecha', 'No', 'Si en la parte derecha', 
    'Si en la parte izquierda', 24
	),
	(
    'Si en la parte derecha', 'Si en la parte izquierda', 'No', 'No', 'Si en la parte derecha', 
    'No', 25
	),
	(
    'No', 'No', 'Si en la parte izquierda', 'Si en la parte derecha', 'No', 
    'Si en la parte izquierda', 26
	),
	(
    'Si en la parte derecha', 'Si en la parte izquierda', 'Si en la parte izquierda', 'No', 'No', 
    'Si en la parte derecha', 27
	),
	(
    'No', 'No', 'Si en la parte derecha', 'No', 'Si en la parte derecha', 
    'No', 28
	),
	(
    'Si en la parte derecha', 'No', 'Si en la parte izquierda', 'No', 'No', 
    'Si en la parte izquierda', 29
	),
	(
    'No', 'Si en la parte derecha', 'Si en la parte izquierda', 'No', 'Si en la parte derecha', 
    'Si en la parte izquierda', 30
	);
			
	
INSERT INTO public."tblOclusion"("RelacionMolarDerecha", "RelacionMolarIzquierda", "RelacionCaninaDerecha", 
								 "RelacionCaninaIzquierda", "GradodeApertura", "OverBite", "OverJet", 
								 "idExamenEstomatologico")
	VALUES 
	(
    'Clase I', 'Clase I', 'Normal', 'Normal', 'Libre', 
    'Normal (1mm)', 'Normal (1mm)', 5
	),
	(
    'Clase II', 'Clase II', 'Distal', 'Distal', 'Libre', 
    'Aumentado (3mm)', 'Aumentado (3mm)', 6
	),
	(
    'Clase III', 'Clase III', 'Mesial', 'Mesial', 'Libre', 
    'Disminuido (2mm)', 'Disminuido (2mm)', 7
	),
	(
    'Clase I', 'Clase I', 'Normal', 'Normal', 'Libre', 
    'Normal (1mm)', 'Normal (1mm)', 8
	),
	(
    'Clase II', 'Clase II', 'Distal', 'Distal', 'Libre', 
    'Aumentado (3mm)', 'Aumentado (3mm)', 9
	),
	(
    'Clase III', 'Clase III', 'Mesial', 'Mesial', 'Libre', 
    'Disminuido (2mm)', 'Disminuido (2mm)', 10
	),
	(
    'Clase I', 'Clase I', 'Normal', 'Normal', 'Libre', 
    'Normal (1mm)', 'Normal (1mm)', 11
	),
	(
    'Clase II', 'Clase II', 'Distal', 'Distal', 'Libre', 
    'Aumentado (3mm)', 'Aumentado (3mm)', 12
	),
	(
    'Clase III', 'Clase III', 'Mesial', 'Mesial', 'Libre', 
    'Disminuido (2mm)', 'Disminuido (2mm)', 13
	),
	(
    'Clase II', 'Clase II', 'Distal', 'Distal', 'Libre', 
    'Aumentado (3mm)', 'Aumentado (3mm)', 14
	),
	(
    'Clase III', 'Clase III', 'Mesial', 'Mesial', 'Libre', 
    'Disminuido (2mm)', 'Disminuido (2mm)', 15
	),
	(
    'Clase I', 'Clase I', 'Normal', 'Normal', 'Libre', 
    'Normal (1mm)', 'Normal (1mm)', 16
	),
	(
    'Clase II', 'Clase II', 'Distal', 'Distal', 'Libre', 
    'Aumentado (3mm)', 'Aumentado (3mm)', 17
	),
	(
    'Clase III', 'Clase III', 'Mesial', 'Mesial', 'Libre', 
    'Disminuido (2mm)', 'Disminuido (2mm)', 18
	),
	(
    'Clase I', 'Clase I', 'Normal', 'Normal', 'Libre', 
    'Normal (1mm)', 'Normal (1mm)', 19
	),
	(
    'Clase II', 'Clase II', 'Distal', 'Distal', 'Libre', 
    'Aumentado (3mm)', 'Aumentado (3mm)', 20
	),
	(
    'Clase III', 'Clase III', 'Mesial', 'Mesial', 'Libre', 
    'Disminuido (2mm)', 'Disminuido (2mm)', 21
	),
	(
    'Clase II', 'Clase II', 'Distal', 'Distal', 'Libre', 
    'Aumentado (3mm)', 'Aumentado (3mm)', 22
	),
	(
    'Clase III', 'Clase III', 'Mesial', 'Mesial', 'Libre', 
    'Disminuido (2mm)', 'Disminuido (2mm)', 23
	),
	(
    'Clase I', 'Clase I', 'Normal', 'Normal', 'Libre', 
    'Normal (1mm)', 'Normal (1mm)', 24
	),
	(
    'Clase II', 'Clase II', 'Distal', 'Distal', 'Libre', 
    'Aumentado (3mm)', 'Aumentado (3mm)', 25
	),
	(
    'Clase III', 'Clase III', 'Mesial', 'Mesial', 'Libre', 
    'Disminuido (2mm)', 'Disminuido (2mm)', 26
	),
	(
    'Clase I', 'Clase I', 'Normal', 'Normal', 'Libre', 
    'Normal (1mm)', 'Normal (1mm)', 27
	),
	(
    'Clase II', 'Clase II', 'Distal', 'Distal', 'Libre', 
    'Aumentado (3mm)', 'Aumentado (3mm)', 28
	),
	(
    'Clase III', 'Clase III', 'Mesial', 'Mesial', 'Libre', 
    'Disminuido (2mm)', 'Disminuido (2mm)', 29
	),
	(
    'Clase I', 'Clase I', 'Normal', 'Normal', 'Libre', 
    'Normal (1mm)', 'Normal (1mm)', 30
	);
	
INSERT INTO public."tblCasoDiente"("Nombre", "Foto", "idSubCasoClinico", "idDiente")
VALUES	
  ('Extracción de muela del juicio', 'Foto', 2, 28),
  ('Reemplazo de diente perdido con implante', 'Foto', 3, 9),
  ('Blanqueamiento dental', 'Foto', 4, 15),
  ('Tratamiento de conducto en incisivo', 'Foto', 5, 8),
  ('Ortodoncia para corregir maloclusión', 'Foto', 6, 16),
  ('Corona dental para restauración estética', 'Foto', 1, 3),
  ('Tratamiento de gingivitis en premolar', 'Foto', 3, 21),
  ('Extracción de muela del juicio impactada', 'Foto', 4, 32),
  ('Tratamiento de malposición en canino', 'Foto', 1, 11),
  ('Restauración con incrustación en molar', 'Foto', 1, 24),
  ('Extracción de diente deciduo', 'Foto', 5, 6),
  ('Implante dental en espacio edéntulo', 'Foto', 6, 5),
  ('Tratamiento de fractura en incisivo', 'Foto', 6, 8),
  ('Tratamiento de caries en premolar', 'Foto', 2, 19),
  ('Reconstrucción con resina en incisivo', 'Foto', 3, 7),
  ('Ortodoncia para corregir apiñamiento', 'Foto', 1, 28),
  ('Tratamiento de recesión gingival en canino', 'Foto', 2, 13),
  ('Endodoncia en molar con infección', 'Foto', 3, 30);
	
	
INSERT INTO public."tblOdontograma"("Nombre", "Estado", "Numero", "idPaciente")
	VALUES
('Odontograma de Carlos Gómez', 'Activo', '5', 5),
('Odontograma de Ana Rodríguez', 'Activo', '6', 6),
('Odontograma de Martín Gómez', 'Activo', '7', 7),
('Odontograma de Verónica Vargas', 'Activo', '8', 8),
('Odontograma de Camila Hernándezs', 'Activo', '9', 9),
('Odontograma de Roberto Mendoza', 'Activo', '10', 10),
('Odontograma de Fernanda López', 'Activo', '11', 11),
('Odontograma de Alejandro Ramírez', 'Activo', '12', 12),
('Odontograma de Ricardo Vargas', 'Activo', '13', 13),
('Odontograma de Camila Herrera', 'Activo', '14', 14),
('Odontograma de Roberto Castañeda', 'Activo', '15', 15),
('Odontograma de Camila Torres', 'Activo', '16', 16),
('Odontograma de Raúl Gómez', 'Activo', '17', 17),
('Odontograma de Carolina Mendoza', 'Activo', '18', 18),
('Odontograma de Roberto Torres', 'Activo', '19', 19),
('Odontograma de Valeria Hernández', 'Activo', '20', 20),
('Odontograma de Carlos Gómez', 'Activo', '21', 21),
('Odontograma de María Torres', 'Activo', '22', 22),
('Odontograma de Ana Castillo', 'Activo', '23', 23),
('Odontograma de Pedro Vega', 'Activo', '24', 24),
('Odontograma de Carolina Vargas', 'Activo', '25', 25),
('Odontograma de Luis González', 'Activo', '26', 26),
('Odontograma de Jorge Ramírez', 'Activo', '27', 27),
('Odontograma de Gabriel Lopez', 'Activo', '28', 28),
('Odontograma de Ana Castro', 'Activo', '29', 29),
('Odontograma de Ricardo Gomez', 'Activo', '30', 30);
	
	
INSERT INTO public."tblMapeoCarasDentales"("Mesial", "Distal", "Vestibular", "Lingual", "Palatina", "idMapeo")
	VALUES
('Sano', 'Sano', 'Sano', 'Sano', 'Sano', 5),
('Caries profunda', 'Sano', 'Caries superficial', 'Sano', 'Sano', 10),
('Caries superficial', 'Caries superficial', 'Caries profunda', 'Sano', 'Sano', 15),
('Sano', 'Caries superficial', 'Caries profunda', 'Sano', 'Sano', 20),
('Caries superficial', 'Caries profunda', 'Sano', 'Sano', 'Sano', 25),
('Sano', 'Caries superficial', 'Caries profunda', 'Sano', 'Sano', 6),
('Caries profunda', 'Sano', 'Caries superficial', 'Sano', 'Caries superficial', 11),
('Caries superficial', 'Sano', 'Sano', 'Caries profunda', 'Sano', 16),
('Sano', 'Sano', 'Caries profunda', 'Sano', 'Caries superficial', 21),
('Caries superficial', 'Caries profunda', 'Sano', 'Sano', 'Sano', 26),
('Sano', 'Caries superficial', 'Sano', 'Caries profunda', 'Caries superficial', 31),
('Caries superficial', 'Caries profunda', 'Sano', 'Caries superficial', 'Sano', 7),
('Sano', 'Sano', 'Caries profunda', 'Sano', 'Caries superficial', 12),
('Caries profunda', 'Caries superficial', 'Sano', 'Caries profunda', 'Sano', 17),
('Sano', 'Caries superficial', 'Sano', 'Caries profunda', 'Caries superficial', 22),
('Caries superficial', 'Sano', 'Sano', 'Caries profunda', 'Sano', 27),
('Caries profunda', 'Sano', 'Caries superficial', 'Sano', 'Caries superficial', 8),
('Sano', 'Sano', 'Caries profunda', 'Sano', 'Caries superficial', 13),
('Caries superficial', 'Caries superficial', 'Sano', 'Caries profunda', 'Sano', 18),
('Sano', 'Caries superficial', 'Caries profunda', 'Sano', 'Sano', 23),
('Caries superficial', 'Caries profunda', 'Sano', 'Sano', 'Caries superficial', 28);
	
	
INSERT INTO public."tblOperatoria"("Docente", "MotivoConsulta", "DiagnosticoDefinitivo", "idPaciente")
	VALUES
('Dra. Ramírez', 'Tratamiento de caries en premolar', 'Éxito en la restauración de caries en premolar.', 5),
('Dr. Rodríguez', 'Reparación de corona dental fracturada', 'Corona dental fracturada reparada con éxito.', 6),
('Dra. Pérez', 'Consulta por dolor en molar', 'Tratamiento exitoso para el dolor en molar.', 7),
('Dr. García', 'Colocación de obturación en incisivo', 'Obturación colocada con éxito en incisivo.', 8),
('Dra. Fernández', 'Consulta de rutina para limpieza dental', 'Limpieza dental de rutina realizada con éxito.', 9),
('Dr. López', 'Consulta por dolor en diente frontal', 'Tratamiento exitoso para el dolor en diente frontal.', 10),
('Dra. Torres', 'Extracción de molar debido a caries avanzada', 'Extracción realizada con éxito debido a caries avanzada en molar.', 11),
('Dr. Vargas', 'Reparación de corona dental desgastada', 'Corona dental desgastada reparada con éxito.', 12),
('Dra. Morales', 'Consulta de emergencia por trauma dental', 'Lesión dental tratada con éxito después de trauma.', 13),
('Dr. Soto', 'Colocación de sellantes en molares', 'Sellantes colocados con éxito para prevenir caries en molares.', 14),
('Dra. Gómez', 'Revisión de restauración previa en premolar', 'Restauración en premolar revisada y ajustada con éxito.', 15),
('Dra. Martínez', 'Consulta por sensibilidad dental', 'Tratamiento exitoso para la sensibilidad dental.', 16),
('Dr. Sánchez', 'Reparación de amalgama en molar', 'Amalgama en molar reparada con éxito.', 17),
('Dra. González', 'Tratamiento de conducto en incisivo', 'Éxito en el tratamiento de conducto en incisivo.', 18),
('Dr. Ramírez', 'Consulta por dolor en muela del juicio', 'Extracción realizada con éxito para aliviar dolor en muela del juicio.', 19),
('Dra. Rodríguez', 'Reemplazo de obturación en premolar', 'Obturación en premolar reemplazada con éxito.', 20),
('Dr. Fernández', 'Consulta de rutina para revisión dental', 'Dientes en buen estado, sin problemas identificados.', 21),
('Dra. Pérez', 'Reparación de corona dental desprendida', 'Corona dental desprendida reparada con éxito.', 22),
('Dr. García', 'Tratamiento de caries en molar', 'Caries en molar tratada con éxito.', 23),
('Dra. Torres', 'Consulta por cambio en la coloración dental', 'Coloración dental corregida con éxito.', 24),
('Dr. Vargas', 'Revisión de ortodoncia', 'Tratamiento ortodóncico en buen progreso.', 25),
('Dra. Gómez', 'Extracción de diente fracturado', 'Éxito en la extracción de diente fracturado.', 26),
('Dr. Soto', 'Reparación de corona dental rota', 'Corona dental rota reparada con éxito.', 27),
('Dra. Morales', 'Consulta por gingivitis', 'Gingivitis tratada con éxito.', 28),
('Dr. Martínez', 'Revisión postoperatoria', 'Recuperación satisfactoria después de procedimiento previo.', 29),
('Dra. Sánchez', 'Tratamiento de absceso dental', 'Absceso dental tratado con éxito.', 30);
	
	
INSERT INTO public."tblPruebaOperatoria"("Nombre", "idPrueba", "idOperatoria")
	VALUES
('Radiografía Panorámica postoperatoria', 1, 5),
('Prueba Específica 2 postoperatoria', 5, 5),

('Examen Táctil preoperatorio', 2, 6),
('Radiografía Panorámica postoperatoria', 1, 6),

('Tomografía Computarizada preoperatoria', 3, 7),
('Examen Táctil postoperatorio', 7, 7),

('Radiografía Periapical preoperatoria', 1, 8),
('Examen Táctil postoperatorio', 7, 8),

('Tomografía Computarizada preoperatoria', 3, 9),
('Prueba Específica 1 postoperatoria', 6, 9),

('Radiografía Panorámica postoperatoria', 1, 10),
('Prueba Específica 2 preoperatoria', 6, 10),

('Radiografía Periapical postoperatoria', 1, 11),
('Prueba Específica 3 preoperatoria', 5, 11),

('Tomografía Computarizada postoperatoria', 3, 12),
('Radiografía Panorámica preoperatoria', 1, 12),

('Examen Táctil postoperatorio', 7, 13),
('Prueba Específica 2 postoperatoria', 5, 13),

('Radiografía Periapical preoperatoria', 1, 14),
('Prueba Específica 1 postoperatoria', 6, 14),

('Tomografía Computarizada postoperatoria', 3, 15),
('Radiografía Panorámica preoperatoria', 1, 15),

('Examen Táctil postoperatorio', 7, 16),
('Prueba Específica 2 preoperatoria', 6, 16),

('Radiografía Periapical postoperatoria', 1, 17),
('Prueba Específica 3 preoperatoria', 6, 17),

('Tomografía Computarizada preoperatoria', 3, 18),
('Radiografía Panorámica postoperatoria', 1, 18),

('Examen Táctil preoperatorio', 7, 19),
('Prueba Específica 1 postoperatoria', 6, 19),

('Radiografía Periapical preoperatoria', 1, 20),
('Prueba Específica 2 postoperatoria', 5, 20),

('Tomografía Computarizada postoperatoria', 3, 21),
('Radiografía Panorámica preoperatoria', 1, 21),

('Examen Táctil postoperatorio', 7, 22),
('Prueba Específica 3 preoperatoria', 6, 22),

('Radiografía Periapical postoperatoria', 1, 23),
('Prueba Específica 1 preoperatoria', 5, 23),

('Tomografía Computarizada preoperatoria', 3, 24),
('Radiografía Panorámica postoperatoria', 1, 24),

('Examen Táctil preoperatorio', 7, 25),
('Prueba Específica 2 postoperatoria', 5, 25),

('Radiografía Periapical preoperatoria', 1, 26),
('Prueba Específica 3 postoperatoria', 6, 26),

('Tomografía Computarizada postoperatoria', 3, 27),
('Radiografía Panorámica preoperatoria', 1, 27),

('Examen Táctil postoperatorio', 7, 28),
('Prueba Específica 1 preoperatoria', 5, 28),

('Radiografía Periapical postoperatoria', 1, 29),
('Prueba Específica 2 preoperatoria', 6, 29),

('Tomografía Computarizada preoperatoria', 3, 30),
('Radiografía Panorámica postoperatoria', 1, 30);
	
	
INSERT INTO public."tblTecnicaRadiografica"("NumeroPieza", "Detalle", "Tipo", "idOperatoria")
	VALUES 

('3', 'Radiografía peripical del premolar inferior izquierdo - Postoperatoria', 'Peripical', 5),
('2', 'Radiografía oclusal del incisivo superior derecho - Preoperatoria', 'Oclusal', 5),

('5', 'Radiografía panorámica - Postoperatoria', 'Panorámica', 6),
('5', 'Radiografía peripical del molar superior izquierdo - Preoperatoria', 'Peripical', 6),

('4', 'Radiografía panorámica - Preoperatoria', 'Panorámica', 7),
('1', 'Radiografía oclusal del incisivo inferior izquierdo - Postoperatoria', 'Oclusal', 7),

('3', 'Radiografía peripical del molar inferior derecho - Postoperatoria', 'Peripical', 8),
('1', 'Radiografía oclusal del incisivo inferior derecho - Preoperatoria', 'Oclusal', 8),

('2', 'Radiografía panorámica - Postoperatoria', 'Panorámica', 9),
('3', 'Radiografía peripical del molar inferior izquierdo - Preoperatoria', 'Peripical', 9),

('4', 'Radiografía panorámica - Preoperatoria', 'Panorámica', 10),
('5', 'Radiografía oclusal del incisivo superior izquierdo - Postoperatoria', 'Oclusal', 10),

('5', 'Radiografía peripical del molar superior izquierdo - Postoperatoria', 'Peripical', 11),
('1', 'Radiografía oclusal del incisivo superior derecho - Preoperatoria', 'Oclusal', 11),

('2', 'Radiografía panorámica - Postoperatoria', 'Panorámica', 12),
('4', 'Radiografía peripical del molar inferior derecho - Preoperatoria', 'Peripical', 12),

('3', 'Radiografía panorámica - Preoperatoria', 'Panorámica', 13),
('2', 'Radiografía oclusal del incisivo inferior derecho - Postoperatoria', 'Oclusal', 13),

('1', 'Radiografía peripical del molar inferior izquierdo - Postoperatoria', 'Peripical', 14),
('5', 'Radiografía oclusal del incisivo inferior izquierdo - Preoperatoria', 'Oclusal', 14),

('4', 'Radiografía panorámica - Postoperatoria', 'Panorámica', 15),
('2', 'Radiografía peripical del molar superior derecho - Preoperatoria', 'Peripical', 15),

('2', 'Radiografía panorámica - Preoperatoria', 'Panorámica', 16),
('3', 'Radiografía oclusal del incisivo superior izquierdo - Postoperatoria', 'Oclusal', 16),

('3', 'Radiografía peripical del molar superior derecho - Postoperatoria', 'Peripical', 17),
('1', 'Radiografía oclusal del incisivo superior derecho - Preoperatoria', 'Oclusal', 17),

('5', 'Radiografía panorámica - Postoperatoria', 'Panorámica', 18),
('6', 'Radiografía peripical del molar inferior derecho - Preoperatoria', 'Peripical', 18),

('5', 'Radiografía panorámica - Preoperatoria', 'Panorámica', 19),
('4', 'Radiografía oclusal del incisivo inferior derecho - Postoperatoria', 'Oclusal', 19),

('3', 'Radiografía peripical del molar inferior izquierdo - Postoperatoria', 'Peripical', 20),
('2', 'Radiografía oclusal del incisivo inferior izquierdo - Preoperatoria', 'Oclusal', 20),

('1', 'Radiografía panorámica - Postoperatoria', 'Panorámica', 21),
('1', 'Radiografía peripical del molar superior derecho - Preoperatoria', 'Peripical', 21),

('2', 'Radiografía panorámica - Preoperatoria', 'Panorámica', 22),
('3', 'Radiografía oclusal del incisivo superior izquierdo - Postoperatoria', 'Oclusal', 22),

('4', 'Radiografía peripical del molar superior izquierdo - Postoperatoria', 'Peripical', 23),
('4', 'Radiografía oclusal del incisivo superior derecho - Preoperatoria', 'Oclusal', 23),

('6', 'Radiografía panorámica - Postoperatoria', 'Panorámica', 24),
('4', 'Radiografía peripical del molar inferior derecho - Preoperatoria', 'Peripical', 24),

('2', 'Radiografía panorámica - Preoperatoria', 'Panorámica', 25),
('1', 'Radiografía oclusal del incisivo inferior derecho - Postoperatoria', 'Oclusal', 25),

('1', 'Radiografía peripical del molar inferior izquierdo - Postoperatoria', 'Peripical', 26),
('1', 'Radiografía oclusal del incisivo inferior izquierdo - Preoperatoria', 'Oclusal', 26),

('4', 'Radiografía panorámica - Postoperatoria', 'Panorámica', 27),
('5', 'Radiografía peripical del molar superior derecho - Preoperatoria', 'Peripical', 27),

('6', 'Radiografía panorámica - Preoperatoria', 'Panorámica', 28),
('2', 'Radiografía oclusal del incisivo superior izquierdo - Postoperatoria', 'Oclusal', 28),

('2', 'Radiografía peripical del molar superior izquierdo - Postoperatoria', 'Peripical', 29),
('1', 'Radiografía oclusal del incisivo superior derecho - Preoperatoria', 'Oclusal', 29),

('1', 'Radiografía panorámica - Postoperatoria', 'Panorámica', 30),
('5', 'Radiografía peripical del molar inferior derecho - Preoperatoria', 'Peripical', 30);
	
	
INSERT INTO public."tblPlandeTrabajo"("Cantidad", "Tratamiento", "PiezaNumero", "TipoMaterialRestaurador", 
									  "FechaRegistro", "idOperatoria")
	VALUES
('1', 'Endodoncia en molar superior derecho', '2', 'Material de obturación', '2023-06-19', 5),
('1', 'Revisión y limpieza dental', '5', 'Material de limpieza dental', '2023-06-20', 6),
('1', 'Restauración con amalgama', '6', 'Amalgama', '2023-06-21', 7),
('1', 'Restauración con composite', '7', 'Composite', '2023-06-22', 8),
('1', 'Extracción de muela del juicio', '8', 'Material de extracción', '2023-06-23', 9),
('1', 'Tratamiento para la periodontitis', '9', 'Medicación periodontal', '2023-06-24', 10),
('1', 'Restauración con porcelana', '10', 'Porcelana', '2023-06-25', 11),
('1', 'Endodoncia en premolar inferior izquierdo', '11', 'Material de obturación', '2023-06-26', 12),
('1', 'Revisión y limpieza dental', '12', 'Material de limpieza dental', '2023-06-27', 13),
('1', 'Tratamiento para la gingivitis', '13', 'Medicación gingival', '2023-06-28', 14),
('1', 'Restauración con composite', '14', 'Composite', '2023-06-29', 15),
('1', 'Extracción de cordales', '15', 'Material de extracción', '2023-06-30', 16),
('1', 'Revisión y limpieza dental', '16', 'Material de limpieza dental', '2023-07-01', 17),
('1', 'Tratamiento para la periodontitis', '17', 'Medicación periodontal', '2023-07-02', 18),
('1', 'Restauración con amalgama', '18', 'Amalgama', '2023-07-03', 19),
('1', 'Endodoncia en molar superior izquierdo', '19', 'Material de obturación', '2023-07-04', 20),
('1', 'Extracción de muela del juicio', '20', 'Material de extracción', '2023-07-05', 21),
('1', 'Restauración con composite', '21', 'Composite', '2023-07-06', 22),
('1', 'Extracción de cordales', '22', 'Material de extracción', '2023-07-07', 23),
('1', 'Tratamiento para la gingivitis', '23', 'Medicación gingival', '2023-07-08', 24),
('1', 'Restauración con porcelana', '24', 'Porcelana', '2023-07-09', 25),
('1', 'Endodoncia en premolar inferior derecho', '25', 'Material de obturación', '2023-07-10', 26),
('1', 'Revisión y limpieza dental', '26', 'Material de limpieza dental', '2023-07-11', 27),
('1', 'Tratamiento para la periodontitis', '27', 'Medicación periodontal', '2023-07-12', 28),
('1', 'Restauración con amalgama', '28', 'Amalgama', '2023-07-13', 29),
('1', 'Endodoncia en molar inferior izquierdo', '29', 'Material de obturación', '2023-07-14', 30);
	
INSERT INTO public."tblCirugia"("MotivoConsulta", "DiagnosticoCIE11", "Pronostico", "PlandeTrabajo", "Cirujano", 
								"Asistente", "Circulante", "HoraInicioCx", "HoraTerminoCx", "FechaAlta", 
								"Observaciones", "EvolucionDiaria", "EstudianteCargo", "FacultativoCargo", 
								"FechaRegistro", "idPaciente")
	VALUES
(
    'Implante dental en premolar', 'K01.5', 'Bueno', 'Colocación de implante en premolar superior', 'Dr. Roberto Gómez',
    'Dra. Laura Sánchez', 'Enfermero Carlos García', '09:30', '11:00', '2023-07-05',
    'Éxito en la colocación del implante en el premolar superior', 'Recuperación sin complicaciones', 'Estudiante María Rodríguez', 'Dr. Ricardo Hernández',
    '2023-07-05', 5 
),
(
    'Extracción de molar fracturado', 'K01.2', 'Regular', 'Extracción dental con sutura', 'Dr. Claudia Ramírez',
    'Dra. Juan Pérez', 'Enfermera Ana Díaz', '14:00', '15:30', '2023-07-06',
    'Complicaciones mínimas durante la extracción del molar fracturado', 'Recuperación en curso', 'Estudiante Juan García', 'Dr. Claudia Ramírez',
    '2023-07-06', 6 
),
(
    'Cirugía de corrección de mandíbula', 'K07.1', 'Excelente', 'Corrección de maloclusión mandibular', 'Dr. Ricardo Hernández',
    'Dra. Sofía Martínez', 'Enfermera Carmen Vargas', '16:00', '18:00', '2023-07-07',
    'Proceso quirúrgico exitoso en la corrección de maloclusión mandibular', 'Recuperación rápida del paciente', 'Estudiante Laura Torres', 'Dr. Ricardo Hernández',
    '2023-07-07', 7
),
(
    'Endodoncia en molar superior', 'K04.1', 'Bueno', 'Tratamiento de conductos radiculares', 'Dr. Javier Méndez',
    'Dra. Carolina Gómez', 'Enfermero Andrés Vargas', '10:30', '12:00', '2023-07-12',
    'Éxito en la endodoncia del molar superior', 'Recuperación sin complicaciones', 'Estudiante Karla Torres', 'Dr. Javier Méndez',
    '2023-07-12', 8 
),
(
    'Cirugía de injerto óseo', 'K10.1', 'Regular', 'Injerto óseo para aumento de cresta', 'Dr. Leonardo Soto',
    'Dra. Patricia Mora', 'Enfermero Roberto Herrera', '14:00', '16:30', '2023-07-15',
    'Complicaciones menores durante el injerto óseo', 'Recuperación en curso', 'Estudiante Raúl Gutiérrez', 'Dr. Leonardo Soto',
    '2023-07-15', 9 
),
(
    'Cirugía de reducción de encía', 'K06.2', 'Excelente', 'Reducción de tejido gingival', 'Dr. Alejandro Ramírez',
    'Dra. María Fernández', 'Enfermera Carla Díaz', '16:30', '18:30', '2023-07-18',
    'Procedimiento de reducción de encía exitoso', 'Rápida recuperación del paciente', 'Estudiante Andrea Mendoza', 'Dr. Alejandro Ramírez',
    '2023-07-18', 10
),
(
    'Extracción de muelas del juicio', 'K01.2', 'Bueno', 'Extracción de cordales superiores e inferiores', 'Dr. Rodrigo Torres',
    'Dra. Camila Salazar', 'Enfermero Diego Vargas', '09:00', '11:00', '2023-07-22',
    'Extracción de muelas del juicio sin complicaciones', 'Recuperación satisfactoria', 'Estudiante Andrea López', 'Dr. Rodrigo Torres',
    '2023-07-22', 11
),
(
    'Cirugía de reconstrucción maxilar', 'K10.9', 'Excelente', 'Reconstrucción de maxilar superior', 'Dr. Martín Gutiérrez',
    'Dra. Valentina Medina', 'Enfermero Pedro Rojas', '15:00', '17:00', '2023-07-25',
    'Éxito en la reconstrucción del maxilar', 'Recuperación rápida del paciente', 'Estudiante Eduardo Jiménez', 'Dr. Martín Gutiérrez',
    '2023-07-25', 12
),
(
    'Cirugía periodontal de reducción', 'K06.1', 'Bueno', 'Reducción de bolsas periodontales', 'Dr. Jaime Sánchez',
    'Dra. Paula Jiménez', 'Enfermero Luis Mendoza', '11:00', '13:00', '2023-08-05',
    'Éxito en la cirugía de reducción periodontal', 'Recuperación sin complicaciones', 'Estudiante Carla Díaz', 'Dr. Jaime Sánchez',
    '2023-08-05', 13 
),
(
    'Implante dental en molar inferior', 'K08.1', 'Excelente', 'Colocación de implante dental', 'Dr. Francisco López',
    'Dra. Andrea Rodríguez', 'Enfermero Carlos Fernández', '14:30', '16:30', '2023-08-10',
    'Colocación de implante dental exitosa', 'Recuperación rápida del paciente', 'Estudiante Luis González', 'Dr. Francisco López',
    '2023-08-10', 14
),
(
    'Cirugía de reconstrucción mandibular', 'K10.8', 'Regular', 'Reconstrucción de mandíbula', 'Dr. Sebastián Ramírez',
    'Dra. Laura Muñoz', 'Enfermero Pablo Torres', '09:30', '11:30', '2023-08-15',
    'Complicaciones menores durante la cirugía', 'Recuperación en curso', 'Estudiante Carolina Herrera', 'Dr. Sebastián Ramírez',
    '2023-08-15', 15
),
(
    'Extracción de dientes supernumerarios', 'K00.3', 'Bueno', 'Extracción de dientes supernumerarios', 'Dr. Juan Díaz',
    'Dra. Valeria Soto', 'Enfermero Miguel Castro', '16:00', '17:30', '2023-08-20',
    'Extracción sin complicaciones', 'Recuperación satisfactoria', 'Estudiante Gabriel Torres', 'Dr. Juan Díaz',
    '2023-08-20', 16
),
(
    'Cirugía de frenectomía lingual', 'K06.0', 'Excelente', 'Frenectomía para corrección', 'Dr. Fernando Sánchez',
    'Dra. Carolina González', 'Enfermero Alejandro Vargas', '10:00', '11:30', '2023-08-25',
    'Frenectomía realizada con éxito', 'Recuperación rápida del paciente', 'Estudiante Natalia Ramírez', 'Dr. Fernando Sánchez',
    '2023-08-25', 17
),
(
    'Extracción de diente impactado', 'K01.2', 'Bueno', 'Extracción de molar inferior impactado', 'Dr. Martín Gómez',
    'Dra. Laura Rodríguez', 'Enfermero Marco Soto', '14:00', '15:30', '2023-09-01',
    'Extracción exitosa, paciente sin molestias', 'Recuperación en curso', 'Estudiante Carolina Guzmán', 'Dr. Martín Gómez',
    '2023-09-01', 18 
),
(
    'Cirugía de injerto óseo', 'M27.0', 'Excelente', 'Injerto óseo en mandíbula', 'Dr. Andrés Pérez',
    'Dra. Valentina López', 'Enfermero Daniel Mora', '09:30', '11:00', '2023-09-05',
    'Injerto óseo completado con éxito', 'Recuperación positiva del paciente', 'Estudiante Sebastián Torres', 'Dr. Andrés Pérez',
    '2023-09-05', 19
),
(
    'Cirugía ortognática', 'M26.4', 'Regular', 'Corrección de maloclusión', 'Dr. Santiago Gutiérrez',
    'Dra. Valeria Moreno', 'Enfermero Nicolás Rojas', '15:00', '17:00', '2023-09-10',
    'Proceso quirúrgico complejo, paciente en recuperación', 'Recuperación en curso', 'Estudiante Camila Torres', 'Dr. Santiago Gutiérrez',
    '2023-09-10', 20
),
(
    'Cirugía de resección de quiste', 'M27.1', 'Bueno', 'Resección de quiste en maxilar', 'Dr. Enrique Ramírez',
    'Dra. Alejandra Soto', 'Enfermero Andrés Mendoza', '11:30', '13:30', '2023-09-15',
    'Quiste resecado sin complicaciones', 'Recuperación sin molestias', 'Estudiante Javier Muñoz', 'Dr. Enrique Ramírez',
    '2023-09-15', 21
),
(
    'Cirugía de apicectomía', 'K04.0', 'Excelente', 'Apicectomía en incisivo superior', 'Dr. Juan Pablo Herrera',
    'Dra. Carla Guzmán', 'Enfermero Patricia López', '13:00', '14:30', '2023-09-20',
    'Apicectomía exitosa, paciente en recuperación', 'Recuperación positiva del paciente', 'Estudiante Natalia Ruiz', 'Dr. Juan Pablo Herrera',
    '2023-09-20', 22
),
(
    'Cirugía ortognática', 'M26.4', 'Regular', 'Corrección de maloclusión', 'Dr. Roberto Vargas',
    'Dra. Carolina Molina', 'Enfermero Daniel González', '15:00', '17:00', '2023-09-10',
    'Proceso quirúrgico complejo, paciente en recuperación', 'Recuperación en curso', 'Estudiante Laura Soto', 'Odontólogo Roberto Vargas',
    '2023-09-10', 23
),
(
    'Cirugía de resección de quiste', 'M27.1', 'Bueno', 'Resección de quiste en maxilar', 'Dr. Alejandro Pérez',
    'Dra. María Fernández', 'Enfermero Carlos Rojas', '11:30', '13:30', '2023-09-15',
    'Quiste resecado sin complicaciones', 'Recuperación sin molestias', 'Estudiante Camila Torres', 'Odontólogo Alejandro Pérez',
    '2023-09-15', 24
),
(
    'Cirugía de apicectomía', 'K04.0', 'Excelente', 'Apicectomía en incisivo superior', 'Dr. Jorge Morales',
    'Dra. Paula Gutiérrez', 'Enfermero Sandra Díaz', '13:00', '14:30', '2023-09-20',
    'Apicectomía exitosa, paciente en recuperación', 'Recuperación positiva del paciente', 'Estudiante Juan Pérez', 'Odontólogo Jorge Morales',
    '2023-09-20', 25
),
(
    'Extracción de tercer molar impactado', 'K01.2', 'Bueno', 'Extracción de tercer molar superior', 'Dr. Juan Rodríguez',
    'Dra. Ana López', 'Enfermero Luis Soto', '14:30', '16:00', '2023-09-25',
    'Extracción exitosa, paciente sin molestias', 'Recuperación en curso', 'Estudiante Ana Martínez', 'Odontólogo Juan Rodríguez',
    '2023-09-25', 26 
),
(
    'Cirugía de implante dental', 'M24.5', 'Excelente', 'Implante dental en molar inferior', 'Dr. Martín Sánchez',
    'Dra. Laura Gómez', 'Enfermero Carlos Vargas', '10:00', '11:30', '2023-09-30',
    'Implante dental realizado con éxito', 'Recuperación positiva del paciente', 'Estudiante Laura Pérez', 'Odontólogo Martín Sánchez',
    '2023-09-30', 27 
),
(
    'Cirugía de frenectomía', 'M26.0', 'Regular', 'Frenectomía labial superior', 'Dr. Andrés González',
    'Dra. Carolina Molina', 'Enfermero Daniel Pérez', '15:00', '17:00', '2023-10-05',
    'Frenectomía completada sin complicaciones', 'Recuperación en curso', 'Estudiante Carlos Torres', 'Odontólogo Andrés González',
    '2023-10-05', 28 
),
(
    'Cirugía de apicectomía', 'K04.0', 'Bueno', 'Apicectomía en premolar inferior', 'Dr. Jorge González',
    'Dra. Carolina Molina', 'Enfermero Daniel Pérez', '11:30', '13:30', '2023-10-10',
    'Apicectomía exitosa, paciente en recuperación', 'Recuperación positiva del paciente', 'Estudiante Laura Pérez', 'Odontólogo Jorge González',
    '2023-10-10', 29 
),
(
    'Extracción de canino retenido', 'K01.0', 'Bueno', 'Extracción de canino superior', 'Dr. Rafael Martínez',
    'Dra. Ana Gómez', 'Enfermero Carlos Vargas', '14:00', '15:30', '2023-10-20',
    'Extracción exitosa, paciente sin molestias', 'Recuperación en curso', 'Estudiante Carlos Torres', 'Odontólogo Rafael Martínez',
    '2023-10-20', 30 
);

INSERT INTO public."tblRadiografiaCirugia"("Fecha", "Nombre", "Foto", "Interpretacion", 
											"FechaRegistros", "idCirugia")
VALUES
('2023-07-01', 'Radiografía preoperatoria', 'FOTO', 'Molar superior con caries', '2023-07-02 09:30', 5),
('2023-07-05', 'Radiografía postoperatoria', 'FOTO', 'Extracción de cordal inferior', '2023-07-06 14:00', 6),
('2023-07-10', 'Radiografía preoperatoria', 'FOTO', 'Fractura en diente a extraer', '2023-07-11 11:00', 7),
('2023-07-15', 'Radiografía postoperatoria', 'FOTO', 'Éxito en la cirugía de implante', '2023-07-16 16:30', 8),
('2023-07-20', 'Radiografía preoperatoria', 'FOTO', 'Cordales impactados', '2023-07-21 10:00', 9),
('2023-07-25', 'Radiografía postoperatoria', 'FOTO', 'Éxito en la extracción de diente fracturado', '2023-07-26 15:30', 10),
('2023-07-30', 'Radiografía preoperatoria', 'FOTO', 'Cordales impactados en mandíbula', '2023-07-31 09:00', 11),
('2023-08-05', 'Radiografía postoperatoria', 'FOTO', 'Proceso inflamatorio resuelto', '2023-08-06 14:30', 12),
('2023-08-10', 'Radiografía preoperatoria', 'FOTO', 'Cirugía de reconstrucción maxilar', '2023-08-11 10:30', 13),
('2023-08-15', 'Radiografía postoperatoria', 'FOTO', 'Éxito en la reducción de bolsas periodontales', '2023-08-16 16:00', 14),
('2023-08-20', 'Radiografía preoperatoria', 'FOTO', 'Injerto óseo para aumento de cresta', '2023-08-21 11:30', 15),
('2023-08-25', 'Radiografía postoperatoria', 'FOTO', 'Éxito en la colocación de implante dental', '2023-08-26 12:00', 16),
('2023-09-01', 'Radiografía preoperatoria', 'FOTO', 'Complicaciones mínimas en cirugía de reconstrucción mandibular', '2023-09-02 14:30', 17),
('2023-09-05', 'Radiografía postoperatoria', 'FOTO', 'Éxito en la extracción de diente impactado', '2023-09-06 11:00', 18),
('2023-09-10', 'Radiografía preoperatoria', 'FOTO', 'Cirugía de injerto óseo finalizada con éxito', '2023-09-11 09:30', 19),
('2023-09-15', 'Radiografía postoperatoria', 'FOTO', 'Éxito en la cirugía ortognática', '2023-09-16 16:30', 20),
('2023-09-20', 'Radiografía postoperatoria', 'FOTO', 'Éxito en la cirugía de apicectomía', '2023-09-21 13:30', 21),
('2023-09-25', 'Radiografía preoperatoria', 'FOTO', 'Complicaciones menores en cirugía de cirugía ortognática', '2023-09-26 15:00', 22),
('2023-09-30', 'Radiografía postoperatoria', 'FOTO', 'Éxito en la cirugía de resección de quiste', '2023-10-01 10:00', 23),
('2023-10-05', 'Radiografía preoperatoria', 'FOTO', 'Éxito en la cirugía de apicectomía', '2023-10-06 11:30', 24),
('2023-10-10', 'Radiografía postoperatoria', 'FOTO', 'Éxito en la extracción de tercer molar impactado', '2023-10-11 16:00', 25),
('2023-10-20', 'Radiografía preoperatoria', 'FOTO', 'Éxito en la cirugía de implante dental', '2023-10-21 14:30', 26),
('2023-10-25', 'Radiografía postoperatoria', 'FOTO', 'Éxito en la cirugía de frenectomía', '2023-10-26 10:00', 27),
('2023-11-01', 'Radiografía preoperatoria', 'FOTO', 'Complicaciones menores en la cirugía de apicectomía', '2023-11-02 13:30', 28),
('2023-11-05', 'Radiografía postoperatoria', 'FOTO', 'Éxito en la extracción de canino retenido', '2023-11-06 14:00', 29),
('2023-11-10', 'Radiografía preoperatoria', 'FOTO', 'Éxito en la cirugía de injerto óseo', '2023-11-11 11:30', 30);	
	
INSERT INTO public."tblInformeQuirurgico"("Nombre", "Detalle", "idCirugia")
	VALUES
('Cirugía de implante dental', 'La colocación del implante dental se realizó con éxito. El paciente se encuentra en proceso de integración del implante.', 5),
('Extracción de diente fracturado', 'La extracción del diente fracturado se llevó a cabo sin complicaciones. El paciente sigue las indicaciones para una adecuada recuperación.', 6),
('Cirugía de corrección de mandíbula', 'La cirugía de corrección de maloclusión mandibular se completó con éxito. El paciente está en fase de recuperación y seguimiento.', 7),
('Cirugía de injerto óseo', 'El injerto óseo para aumento de cresta se realizó según lo planificado. Se monitoriza la evolución del paciente para evaluar el éxito del procedimiento.', 8),
('Cirugía de reducción de encía', 'La reducción de tejido gingival se llevó a cabo satisfactoriamente. El paciente sigue las indicaciones postoperatorias para una adecuada recuperación.', 9),
('Cirugía periodontal de reducción', 'La cirugía de reducción periodontal se realizó con éxito. Se monitorea la respuesta del paciente al tratamiento.', 10),
('Implante dental en molar inferior', 'La colocación del implante dental en el molar inferior se realizó con éxito. El paciente sigue las indicaciones postoperatorias para una óptima recuperación.', 11),
('Cirugía de reconstrucción maxilar', 'La reconstrucción del maxilar superior se completó según lo planificado. Se observa una respuesta positiva del paciente durante la recuperación.', 12),
('Cirugía periodontal de reducción', 'La cirugía de reducción periodontal se realizó con éxito. El paciente presenta una evolución favorable en la fase postoperatoria.', 13),
('Cirugía ortognática', 'La cirugía ortognática para la corrección de maloclusión se llevó a cabo con éxito. El paciente sigue el plan de recuperación recomendado.', 14),
('Cirugía de resección de quiste', 'La resección del quiste en el maxilar se realizó satisfactoriamente. El paciente se encuentra en fase de recuperación sin complicaciones.', 15),
('Cirugía de apicectomía', 'La apicectomía en el incisivo superior se completó con éxito. El paciente sigue las indicaciones para garantizar una recuperación óptima.', 16),
('Cirugía de extracción de muelas del juicio', 'La extracción de muelas del juicio se realizó sin complicaciones. Se observa una recuperación satisfactoria del paciente en la fase postoperatoria.', 17),
('Cirugía de reconstrucción mandibular', 'La cirugía de reconstrucción mandibular se llevó a cabo según lo planificado. El paciente muestra una recuperación favorable.', 18),
('Cirugía de injerto óseo en mandíbula', 'El injerto óseo en la mandíbula se realizó con éxito. Se sigue de cerca la evolución del paciente para asegurar una adecuada cicatrización.', 19),
('Cirugía ortognática', 'La cirugía ortognática para la corrección de maloclusión se completó sin complicaciones. El paciente está en fase de recuperación y seguimiento.', 20),
('Cirugía de implante dental', 'La colocación del implante dental fue exitosa. El paciente sigue las instrucciones postoperatorias para una óptima recuperación.', 21),
('Cirugía de frenectomía', 'La frenectomía labial superior se realizó con éxito. El paciente se encuentra en proceso de recuperación y sigue las indicaciones médicas.', 22),
('Cirugía de apicectomía', 'La apicectomía en premolar inferior se completó sin complicaciones. El paciente está en fase de recuperación y se monitoriza su evolución.', 23),
('Extracción de canino retenido', 'La extracción de canino superior retenido se realizó satisfactoriamente. Se proporcionaron instrucciones postoperatorias para una recuperación adecuada.', 24),
('Cirugía ortognática', 'La cirugía ortognática para la corrección de maloclusión se llevó a cabo sin inconvenientes. El paciente sigue el plan de recuperación recomendado.', 25),
('Cirugía de resección de quiste', 'La resección de quiste en el maxilar se realizó con éxito. El paciente presenta una evolución positiva en la fase postoperatoria.', 26),
('Cirugía de apicectomía', 'La apicectomía en el incisivo superior se completó sin complicaciones. Se sigue de cerca la recuperación del paciente.', 27),
('Extracción de tercer molar impactado', 'La extracción del tercer molar superior impactado se realizó sin complicaciones. El paciente se recupera satisfactoriamente.', 28),
('Cirugía de implante dental', 'La colocación del implante dental en molar inferior fue exitosa. Se monitorea la cicatrización y recuperación del paciente.', 29),
('Cirugía de frenectomía', 'La frenectomía lingual se llevó a cabo con éxito. El paciente sigue las indicaciones postoperatorias para una recuperación óptima.', 30);


INSERT INTO public."tblEstadoPosquirurgico"("Fecha","Nombre", "Detalle", "idCirugia")
	VALUES
('2023-06-24', 'Postoperatorio Tardío', 'El paciente continúa con una recuperación positiva en el postoperatorio tardío. Se revisaron los puntos de sutura y se observa una buena cicatrización.', 5),
('2023-06-25', 'Postoperatorio Tardío', 'El postoperatorio tardío de la cirugía de reconstrucción maxilar muestra una evolución satisfactoria. El paciente sigue las indicaciones para el cuidado de la herida.', 6),
('2023-06-26', 'Postoperatorio Tardío', 'El postoperatorio tardío del injerto óseo evidencia una disminución en la inflamación. El paciente reporta mejora en la comodidad bucal.', 7),
('2023-06-27', 'Postoperatorio Final', 'Se considera completado el postoperatorio del procedimiento de cirugía periodontal. El paciente presenta una recuperación exitosa y se da de alta con recomendaciones para el cuidado bucal.', 8),
('2023-06-28', 'Postoperatorio Final', 'Finaliza el postoperatorio de la cirugía de corrección de mandíbula. El paciente no presenta complicaciones significativas y se le proporcionan pautas para el cuidado a largo plazo.', 9),
('2023-06-29', 'Postoperatorio Inmediato', 'El paciente muestra estabilidad en el postoperatorio inmediato después de la cirugía de implante dental. Los signos vitales están en rangos normales.', 10),
('2023-06-30', 'Postoperatorio Inmediato', 'La recuperación postoperatoria inmediata de la extracción de muelas del juicio es positiva. No se observan complicaciones y el paciente sigue las indicaciones postoperatorias.', 11),
('2023-07-01', 'Postoperatorio Inmediato', 'Tras la cirugía de reconstrucción mandibular, el paciente presenta estabilidad en el postoperatorio inmediato. Se monitorea la respuesta a los medicamentos prescritos.', 12),
('2023-07-02', 'Postoperatorio Inmediato', 'El paciente se encuentra en buen estado en el postoperatorio inmediato después de la cirugía de apicectomía. No hay señales de infección y se observa una adecuada cicatrización.', 13),
('2023-07-03', 'Postoperatorio Inmediato', 'La cirugía de frenectomía lingual concluye con éxito. El paciente responde positivamente y se le proporcionan indicaciones para el cuidado bucal postoperatorio.', 14),
('2023-07-04', 'Postoperatorio Tardío', 'En el postoperatorio tardío de la cirugía de reducción de encía, se observa una disminución en la inflamación. El paciente informa mejora en la sensibilidad y confort.', 15),
('2023-07-05', 'Postoperatorio Tardío', 'El postoperatorio tardío de la cirugía ortognática muestra progresos positivos en la corrección de la maloclusión. Se programan revisiones regulares para evaluar la estabilidad del resultado.', 16),
('2023-07-06', 'Postoperatorio Tardío', 'Tras la extracción de dientes supernumerarios, el postoperatorio tardío indica una adecuada cicatrización. El paciente se encuentra libre de molestias significativas.', 17),
('2023-07-07', 'Postoperatorio Final', 'Se considera concluido el postoperatorio de la cirugía de implante dental en molar inferior. El paciente presenta una integración exitosa del implante y se da de alta con recomendaciones.', 18),
('2023-07-08', 'Postoperatorio Final', 'Finaliza el postoperatorio de la cirugía de reconstrucción maxilar. El paciente muestra una buena adaptación de las estructuras reconstruidas y se le proporcionan directrices para el cuidado a largo plazo.', 19),
('2023-07-09', 'Postoperatorio Final', 'El postoperatorio de la cirugía de resección de quiste en maxilar concluye satisfactoriamente. El paciente experimenta alivio de síntomas y se planifican revisiones periódicas.', 20),
('2023-07-10', 'Postoperatorio Final', 'Se da por finalizado el postoperatorio de la cirugía de apicectomía en incisivo superior. El paciente se recupera sin complicaciones y se proporcionan pautas para el mantenimiento a largo plazo.', 21),
('2023-07-11', 'Postoperatorio Final', 'Finaliza el postoperatorio de la cirugía ortognática para la corrección de maloclusión. El paciente presenta una oclusión mejorada y se le aconseja seguimiento odontológico regular.', 22),
('2023-07-12', 'Postoperatorio Final', 'El paciente completa el postoperatorio de la cirugía de resección de quiste en maxilar. No hay señales de recurrencia y se le orienta sobre el cuidado oral continuo.', 23),
('2023-07-13', 'Postoperatorio Final', 'Concluye el postoperatorio de la cirugía de apicectomía en incisivo superior. La radiografía confirma el éxito del procedimiento y el paciente se da de alta con recomendaciones para el cuidado bucal.', 24),
('2023-07-14', 'Postoperatorio Final', 'La fase final del postoperatorio de la cirugía de frenectomía lingual muestra una adecuada cicatrización. El paciente se encuentra satisfecho con los resultados y se programan evaluaciones de seguimiento.', 25),
('2023-07-15', 'Postoperatorio Final', 'Finaliza el postoperatorio de la cirugía de extracción de tercer molar impactado. El paciente experimenta una recuperación exitosa y se le aconseja mantener una higiene bucal rigurosa.', 26),
('2023-07-16', 'Postoperatorio Final', 'El postoperatorio de la cirugía de implante dental en molar inferior concluye de manera positiva. La integración del implante es satisfactoria y el paciente recibe pautas para el cuidado a largo plazo.', 27),
('2023-07-17', 'Postoperatorio Final', 'Finaliza el postoperatorio de la cirugía de frenectomía labial superior. El paciente muestra una adecuada adaptación y se le proporciona orientación sobre prácticas de cuidado oral continuas.', 28),
('2023-07-18', 'Postoperatorio Final', 'Concluye la fase final del postoperatorio de la cirugía de apicectomía en premolar inferior. El paciente presenta una recuperación exitosa y se le aconseja seguir las pautas para mantener la salud oral.', 29),
('2023-07-19', 'Postoperatorio Final', 'El paciente concluye la fase final del postoperatorio de la cirugía de extracción de canino retenido. Se observa una buena cicatrización y se proporcionan recomendaciones para el cuidado oral continuo.', 30);

INSERT INTO public."tblEndodoncia"("Fecha", "Docente", "Observaciones", "Operador", "MotivoConsulta", 
								   "PiezaDental", "ECPercucion", "ECCavidad", "ECCambioColor", 
								   "ECTejidosBlandos", "ECTermoreaccion", "ECElectroReaccion", 
								   "ERCavidad", "ERTratamientoPrevio", "ERPeriodonto", 
								   "ERLesionesPeriauriculares", "ERNumerodeConductos", 
								   "ERPrecipitacionesCalcicas", "STAnestesia", "STAAislamientoAbsoluto", 
								   "FechaRegistro", "idPaciente")
VALUES
(
    '2023-06-28', 'Dra. González', 'Endodoncia en premolar inferior izquierdo. Paciente con dolor persistente y evidencia radiográfica de afectación pulpar.', 'Dr. Torres', 'Dolor persistente en premolar', 
    '5', 'Positivo', 'Caries profunda', 'Presenta', 'Leve inflamación', 'Presenta', 'No presenta', 
    'Cavidad pulpar abierta', 'Con tratamiento previo', 'Normal', 'No presenta', '1', 'Presenta', 
    'Con anestesia', 'Con aislamiento absoluto', '09:00', 
    5
),

(
    '2023-06-30', 'Dr. Ramírez', 'Endodoncia para el incisivo central superior. Paciente con fractura dental y sintomatología asociada.', 'Dra. Castro', 'Fractura dental en incisivo', 
    '1', 'Negativo', 'Fractura con exposición pulpar', 'Presenta', 'Normales', 'No presenta', 'No presenta', 
    'Cavidad pulpar abierta', 'Sin tratamiento previo', 'Normal', 'No presenta', '1', 'No presenta', 
    'Con anestesia', 'Con aislamiento absoluto', '13:45', 
    6
),

(
    '2023-07-02', 'Dra. Morales', 'Endodoncia en molar inferior derecho. Paciente con historia de dolor intenso y radiografía que muestra afectación pulpar.', 'Dr. Mendoza', 'Dolor intenso en molar', 
    '6', 'Positivo', 'Caries profunda', 'Presenta', 'Leve inflamación', 'Presenta', 'No presenta', 
    'Cavidad pulpar abierta', 'Sin tratamiento previo', 'Normal', 'No presenta', '1', 'Presenta', 
    'Con anestesia', 'Con aislamiento absoluto', '17:30', 
    7
),

(
    '2023-07-05', 'Dra. Fernández', 'Endodoncia en premolar superior derecho. Paciente con dolor agudo y radiografía indicativa de afectación pulpar.', 'Dr. Vargas', 'Dolor agudo en premolar', 
    '7', 'Positivo', 'Caries profunda', 'Presenta', 'Moderada inflamación', 'Presenta', 'No presenta', 
    'Cavidad pulpar abierta', 'Sin tratamiento previo', 'Normal', 'No presenta', '1', 'Presenta', 
    'Con anestesia', 'Con aislamiento absoluto', '10:15', 
    8
),

(
    '2023-07-08', 'Dr. Rivera', 'Endodoncia para el molar inferior izquierdo. Paciente con historia de absceso dental y evidencia de compromiso pulpar en radiografías.', 'Dra. Jiménez', 'Absceso dental en molar', 
    '8', 'Positivo', 'Caries profunda', 'Presenta', 'Marcada inflamación', 'Presenta', 'No presenta', 
    'Cavidad pulpar abierta', 'Sin tratamiento previo', 'Normal', 'No presenta', '1', 'Presenta', 
    'Con anestesia', 'Con aislamiento absoluto', '14:30', 
    9
),

(
    '2023-07-12', 'Dra. Silva', 'Endodoncia en incisivo lateral inferior. Paciente con fractura dental y exposición pulpar evidente.', 'Dr. Torres', 'Fractura dental en incisivo lateral', 
    '2', 'Negativo', 'Fractura con exposición pulpar', 'Presenta', 'Normales', 'No presenta', 'No presenta', 
    'Cavidad pulpar abierta', 'Sin tratamiento previo', 'Normal', 'No presenta', '1', 'No presenta', 
    'Con anestesia', 'Con aislamiento absoluto', '16:45', 
    10
),

(
    '2023-07-15', 'Dr. Hernández', 'Endodoncia en molar superior derecho. Paciente con dolor persistente y radiografía que indica afectación pulpar.', 'Dra. Mendoza', 'Dolor persistente en molar', 
    '4', 'Positivo', 'Caries profunda', 'Presenta', 'Moderada inflamación', 'Presenta', 'No presenta', 
    'Cavidad pulpar abierta', 'Sin tratamiento previo', 'Normal', 'No presenta', '1', 'Presenta', 
    'Con anestesia', 'Con aislamiento absoluto', '11:00', 
    11
),

(
    '2023-07-18', 'Dra. Ramírez', 'Endodoncia en premolar inferior izquierdo. Paciente con sensibilidad al frío persistente y radiografía indicativa de compromiso pulpar.', 'Dr. Soto', 'Sensibilidad al frío en premolar', 
    '5', 'Negativo', 'Caries profunda', 'Presenta', 'Normales', 'No presenta', 'No presenta', 
    'Cavidad pulpar abierta', 'Sin tratamiento previo', 'Normal', 'No presenta', '1', 'No presenta', 
    'Con anestesia', 'Con aislamiento absoluto', '14:30', 
    12
),

(
    '2023-07-22', 'Dr. Castillo', 'Endodoncia en incisivo central superior. Paciente con fractura dental y exposición pulpar evidente.', 'Dra. Morales', 'Fractura dental en incisivo central', 
    '1', 'Negativo', 'Fractura con exposición pulpar', 'Presenta', 'Normales', 'No presenta', 'No presenta', 
    'Cavidad pulpar abierta', 'Sin tratamiento previo', 'Normal', 'No presenta', '1', 'No presenta', 
    'Con anestesia', 'Con aislamiento absoluto', '16:00', 
    13
),

(
    '2023-08-05', 'Dra. Torres', 'Endodoncia en molar inferior izquierdo. Paciente con dolor agudo y evidencia radiográfica de afectación pulpar.', 'Dr. Gutiérrez', 'Dolor agudo en molar', 
    '6', 'Positivo', 'Caries profunda', 'Presenta', 'Leve inflamación', 'Presenta', 'No presenta', 
    'Cavidad pulpar abierta', 'Sin tratamiento previo', 'Normal', 'No presenta', '1', 'No presenta', 
    'Con anestesia', 'Con aislamiento absoluto', '10:30', 
    14
),

(
    '2023-08-10', 'Dr. Ortega', 'Endodoncia en premolar superior derecho. Paciente con historial de dolor recurrente y radiografía indicativa de afectación pulpar.', 'Dra. Vargas', 'Dolor recurrente en premolar', 
    '7', 'Positivo', 'Caries profunda', 'Presenta', 'Normales', 'No presenta', 'No presenta', 
    'Cavidad pulpar abierta', 'Sin tratamiento previo', 'Normal', 'No presenta', '1', 'No presenta', 
    'Con anestesia', 'Con aislamiento absoluto', '14:15', 
    15
),

(
    '2023-08-15', 'Dra. Núñez', 'Endodoncia en incisivo lateral superior. Paciente con trauma dental y exposición pulpar evidente.', 'Dr. Cruz', 'Trauma dental en incisivo lateral', 
    '2', 'Negativo', 'Fractura con exposición pulpar', 'Presenta', 'Normales', 'No presenta', 'No presenta', 
    'Cavidad pulpar abierta', 'Sin tratamiento previo', 'Normal', 'No presenta', '1', 'No presenta', 
    'Con anestesia', 'Con aislamiento absoluto', '16:45', 
    16
),

(
    '2023-08-20', 'Dr. Soto', 'Endodoncia en molar superior derecho. Paciente con dolor persistente y evidencia de lesión pulpar.', 'Dra. Ramírez', 'Dolor persistente en molar', 
    '3', 'Positivo', 'Caries profunda', 'Presenta', 'Leve inflamación', 'Presenta', 'No presenta', 
    'Cavidad pulpar abierta', 'Sin tratamiento previo', 'Normal', 'No presenta', '1', 'No presenta', 
    'Con anestesia', 'Con aislamiento absoluto', '09:30', 
    17
),

(
    '2023-08-25', 'Dra. Méndez', 'Endodoncia en premolar inferior izquierdo. Paciente con sensibilidad al calor y radiografía indicativa de afectación pulpar.', 'Dr. Castillo', 'Sensibilidad al calor en premolar', 
    '5', 'Negativo', 'Caries profunda', 'Presenta', 'Normales', 'No presenta', 'No presenta', 
    'Cavidad pulpar abierta', 'Sin tratamiento previo', 'Normal', 'No presenta', '1', 'No presenta', 
    'Con anestesia', 'Con aislamiento absoluto', '11:00', 
    18
),

(
    '2023-08-30', 'Dr. Fernández', 'Endodoncia en incisivo central inferior. Paciente con dolor agudo y radiografía indicativa de afectación pulpar.', 'Dra. Gómez', 'Dolor agudo en incisivo central', 
    '1', 'Positivo', 'Caries profunda', 'Presenta', 'Normales', 'No presenta', 'No presenta', 
    'Cavidad pulpar abierta', 'Sin tratamiento previo', 'Normal', 'No presenta', '1', 'No presenta', 
    'Con anestesia', 'Con aislamiento absoluto', '14:30', 
    19
),

(
    '2023-09-05', 'Dra. Hernández', 'Endodoncia en molar inferior izquierdo. Paciente con dolor intenso y radiografía que sugiere afectación pulpar.', 'Dr. Gutiérrez', 'Dolor intenso en molar', 
    '7', 'Positivo', 'Caries profunda', 'Presenta', 'Moderada inflamación', 'Presenta', 'No presenta', 
    'Cavidad pulpar abierta', 'Sin tratamiento previo', 'Normal', 'No presenta', '1', 'No presenta', 
    'Con anestesia', 'Con aislamiento absoluto', '10:15', 
    20
),

(
    '2023-09-10', 'Dr. Jiménez', 'Endodoncia en premolar superior derecho. Paciente con sensibilidad persistente y radiografía que muestra afectación pulpar.', 'Dra. Mendoza', 'Sensibilidad persistente en premolar', 
    '5', 'Negativo', 'Caries profunda', 'Presenta', 'Normales', 'No presenta', 'No presenta', 
    'Cavidad pulpar abierta', 'Sin tratamiento previo', 'Normal', 'No presenta', '1', 'No presenta', 
    'Con anestesia', 'Con aislamiento absoluto', '14:45', 
    21
),

(
    '2023-09-15', 'Dra. Morales', 'Endodoncia en incisivo lateral inferior. Paciente con fractura dental y radiografía que indica afectación pulpar.', 'Dr. Rodríguez', 'Fractura dental en incisivo', 
    '2', 'Positivo', 'Caries profunda', 'Presenta', 'Normales', 'No presenta', 'No presenta', 
    'Cavidad pulpar abierta', 'Sin tratamiento previo', 'Normal', 'No presenta', '1', 'No presenta', 
    'Con anestesia', 'Con aislamiento absoluto', '09:30', 
    22
),

(
    '2023-09-20', 'Dra. Soto', 'Endodoncia en molar superior derecho. Paciente con dolor recurrente y radiografía que muestra afectación pulpar.', 'Dr. Ramírez', 'Dolor recurrente en molar', 
    '4', 'Positivo', 'Caries profunda', 'Presenta', 'Leve inflamación', 'No presenta', 'No presenta', 
    'Cavidad pulpar abierta', 'Con tratamiento previo', 'Normal', 'No presenta', '1', 'No presenta', 
    'Con anestesia', 'Con aislamiento absoluto', '11:00', 
    23
),

(
    '2023-09-25', 'Dr. Medina', 'Endodoncia en premolar inferior izquierdo. Paciente con sensibilidad persistente y radiografía que sugiere afectación pulpar.', 'Dra. Torres', 'Sensibilidad persistente en premolar', 
    '5', 'Negativo', 'Caries profunda', 'Presenta', 'Normales', 'No presenta', 'No presenta', 
    'Cavidad pulpar abierta', 'Sin tratamiento previo', 'Normal', 'No presenta', '1', 'No presenta', 
    'Con anestesia', 'Con aislamiento absoluto', '15:30', 
    24
),

(
    '2023-10-01', 'Dra. Vargas', 'Endodoncia en incisivo central superior. Paciente con fractura dental y radiografía que indica afectación pulpar.', 'Dr. Núñez', 'Fractura dental en incisivo', 
    '1', 'Positivo', 'Caries profunda', 'Presenta', 'Normales', 'No presenta', 'No presenta', 
    'Cavidad pulpar abierta', 'Sin tratamiento previo', 'Normal', 'No presenta', '1', 'No presenta', 
    'Con anestesia', 'Con aislamiento absoluto', '09:00', 
    25
),

(
    '2023-10-10', 'Dr. Sánchez', 'Endodoncia en molar inferior izquierdo. Paciente con dolor agudo y radiografía que indica afectación pulpar.', 'Dra. Gómez', 'Dolor agudo en molar', 
    '6', 'Positivo', 'Caries profunda', 'Presenta', 'Leve inflamación', 'No presenta', 'No presenta', 
    'Cavidad pulpar abierta', 'Sin tratamiento previo', 'Normal', 'No presenta', '1', 'No presenta', 
    'Con anestesia', 'Con aislamiento absoluto', '14:30', 
    26
),

(
    '2023-10-15', 'Dra. Martínez', 'Endodoncia en premolar superior derecho. Paciente con sensibilidad al calor y radiografía que sugiere afectación pulpar.', 'Dr. López', 'Sensibilidad al calor en premolar', 
    '4', 'Negativo', 'Caries profunda', 'Presenta', 'Normales', 'No presenta', 'No presenta', 
    'Cavidad pulpar abierta', 'Sin tratamiento previo', 'Normal', 'No presenta', '1', 'No presenta', 
    'Con anestesia', 'Con aislamiento absoluto', '10:30', 
    27
),

(
    '2023-10-20', 'Dr. Rodríguez', 'Endodoncia en molar superior izquierdo. Paciente con dolor recurrente y radiografía que muestra afectación pulpar.', 'Dra. Soto', 'Dolor recurrente en molar', 
    '3', 'Positivo', 'Caries profunda', 'Presenta', 'Leve inflamación', 'No presenta', 'No presenta', 
    'Cavidad pulpar abierta', 'Sin tratamiento previo', 'Normal', 'No presenta', '1', 'No presenta', 
    'Con anestesia', 'Con aislamiento absoluto', '16:00', 
    28
),

(
    '2023-10-25', 'Dra. Gómez', 'Endodoncia en premolar inferior izquierdo. Paciente con dolor agudo y radiografía que indica afectación pulpar.', 'Dr. Sánchez', 'Dolor agudo en premolar', 
    '5', 'Positivo', 'Caries profunda', 'Presenta', 'Leve inflamación', 'No presenta', 'No presenta', 
    'Cavidad pulpar abierta', 'Sin tratamiento previo', 'Normal', 'No presenta', '1', 'No presenta', 
    'Con anestesia', 'Con aislamiento absoluto', '14:45', 
    29
),

(
    '2023-11-01', 'Dr. Pérez', 'Endodoncia en molar inferior derecho. Paciente con dolor recurrente y radiografía que muestra afectación pulpar.', 'Dra. Rodríguez', 'Dolor recurrente en molar', 
    '6', 'Positivo', 'Caries profunda', 'Presenta', 'Leve inflamación', 'No presenta', 'No presenta', 
    'Cavidad pulpar abierta', 'Sin tratamiento previo', 'Normal', 'No presenta', '1', 'No presenta', 
    'Con anestesia', 'Con aislamiento absoluto', '11:15', 
    30
);

INSERT INTO public."tblManifestacionEndodoncia"("Nombre", "idEndodoncia", "idManifestacionDolor")
	VALUES
('Dolor Pulsátil durante la noche', 5, 1),
('Dolor Agudo al consumir alimentos fríos', 6, 2),
('Dolor Pulsátil después del tratamiento', 7, 1),
('Dolor Pulsátil persistente', 8, 1),
('Dolor Pulsátil intermitente', 9, 1),
('Dolor Agudo durante la noche', 10, 2),
('Dolor Pulsátil al masticar', 11, 1),
('Sensibilidad al calor persistente', 12, 4),
('Dolor Agudo al hablar', 13, 2),
('Dolor Pulsátil al beber líquidos fríos', 14, 1),
('Sensación de inflamación constante', 15, 3),
('Dolor Pulsátil al tocar la pieza dental', 16, 1),
('Dolor Agudo al abrir la boca', 17, 2),
('Dolor Pulsátil al presionar la encía', 18, 1),
('Sensibilidad persistente al frío', 19, 4),
('Dolor Agudo al morder', 20, 2),
('Dolor Pulsátil al ingerir alimentos dulces', 21, 1),
('Sensación de hinchazón intermitente', 22, 3),
('Dolor Agudo al cepillarse', 23, 2),
('Dolor Pulsátil al hablar fuerte', 24, 1),
('Sensación de molestia al cerrar la boca', 25, 3),
('Dolor Agudo al sonreír', 26, 2),
('Dolor Pulsátil al abrir la boca ampliamente', 27, 1),
('Dolor Pulsátil persistente', 28, 1),
('Sensación de ardor en la zona afectada', 29, 3),
('Dolor Agudo al ingerir líquidos calientes', 30, 2);


INSERT INTO public."tblConductometria"("Conducto", "LongRx", "LongTrabajo", "IInicial", "Referencia", 
									   "FechaRegistro", "idEndodoncia")
	VALUES
('Conducto Palatino', '18 mm', '19 mm', '6 mA', 'Ápice del conducto', '2023-06-23', 5),
('Conducto Vestibular', '25 mm', '26 mm', '10 mA', 'Punto crítico apical', '2023-06-24', 6),
('Conducto Accesorio', '19 mm', '20 mm', '7.5 mA', 'Ápice del conducto accesorio', '2023-06-25', 7),
('Conducto Lingual', '22 mm', '23 mm', '8.5 mA', 'Terminación apical', '2023-06-26', 8),
('Conducto Central', '24 mm', '25 mm', '9 mA', 'Apex del conducto', '2023-06-27', 9),
('Conducto Lateral', '19 mm', '20 mm', '7 mA', 'Punto crítico apical', '2023-06-28', 10),
('Conducto Medial', '21 mm', '22 mm', '8 mA', 'Ápice del conducto', '2023-06-29', 11),
('Conducto Distovestibular', '23 mm', '24 mm', '8.5 mA', 'Punto medio apical', '2023-06-30', 12),
('Conducto Palatino', '25 mm', '26 mm', '10 mA', 'Ápice del conducto', '2023-07-01', 13),
('Conducto Vestibular', '20 mm', '21 mm', '7.5 mA', 'Terminación apical', '2023-07-02', 14),
('Conducto Accesorio', '18 mm', '19 mm', '6 mA', 'Punto crítico apical', '2023-07-03', 15),
('Conducto Mesial', '22 mm', '23 mm', '8 mA', 'Ápice del conducto', '2023-07-04', 16),
('Conducto Distal', '24 mm', '25 mm', '9.5 mA', 'Punto medio apical', '2023-07-05', 17),
('Conducto Lateral', '19 mm', '20 mm', '7 mA', 'Terminación apical', '2023-07-06', 18),
('Conducto Medial', '21 mm', '22 mm', '8.5 mA', 'Ápice del conducto', '2023-07-07', 19),
('Conducto Central', '23 mm', '24 mm', '9 mA', 'Punto crítico apical', '2023-07-08', 20),
('Conducto Palatino', '26 mm', '27 mm', '10.5 mA', 'Ápice del conducto', '2023-07-10', 21),
('Conducto Vestibular', '21 mm', '22 mm', '8 mA', 'Terminación apical', '2023-07-11', 22),
('Conducto Accesorio', '19 mm', '20 mm', '7.5 mA', 'Punto crítico apical', '2023-07-12', 23),
('Conducto Mesial', '23 mm', '24 mm', '9 mA', 'Ápice del conducto', '2023-07-13', 24),
('Conducto Distal', '25 mm', '26 mm', '10 mA', 'Punto medio apical', '2023-07-14', 25),
('Conducto Lateral', '20 mm', '21 mm', '7.5 mA', 'Terminación apical', '2023-07-15', 26),
('Conducto Medial', '22 mm', '23 mm', '8.5 mA', 'Ápice del conducto', '2023-07-16', 27),
('Conducto Central', '24 mm', '25 mm', '9.5 mA', 'Punto crítico apical', '2023-07-17', 28),
('Conducto Palatino', '27 mm', '28 mm', '11 mA', 'Ápice del conducto', '2023-07-18', 29),
('Conducto Vestibular', '22 mm', '23 mm', '8.5 mA', 'Terminación apical', '2023-07-19', 30);


INSERT INTO public."tblPreparacionQuimica"("Conducto", "Tecnica", "IFinal", "UltimaLongituddeTrabajo", 
										   "Referencia", "FechaRegistro", "idEndodoncia")
	VALUES
('Conducto Vestibular', 'Técnica de Balanced Force', '7.5 mA', '22 mm', 'Terminación apical', '2023-07-25', 5),
('Conducto Palatino', 'Técnica de Step-Back', '8.5 mA', '24 mm', 'Ápice del conducto', '2023-07-26', 6),
('Conducto Accesorio', 'Técnica de Crown-Down', '6.5 mA', '20 mm', 'Punto crítico apical', '2023-07-27', 7),
('Conducto Mesial', 'Técnica de Circumferential Filing', '9 mA', '23 mm', 'Terminación apical', '2023-07-28', 8),
('Conducto Distal', 'Técnica de Balanced Force', '10 mA', '25 mm', 'Punto medio apical', '2023-07-29', 9),
('Conducto Lateral', 'Técnica de Step-Back', '7.5 mA', '21 mm', 'Ápice del conducto', '2023-07-30', 10),
('Conducto Medial', 'Técnica de Circumferential Filing', '8.5 mA', '23 mm', 'Terminación apical', '2023-07-31', 11),
('Conducto Central', 'Técnica de Crown-Down', '9.5 mA', '25 mm', 'Punto crítico apical', '2023-08-01', 12),
('Conducto Palatino', 'Técnica de Step-Back', '11 mA', '27 mm', 'Ápice del conducto', '2023-08-02', 13),
('Conducto Vestibular', 'Técnica de Balanced Force', '8.5 mA', '22 mm', 'Terminación apical', '2023-08-03', 14),
('Conducto Distal', 'Técnica de Step-Back', '7 mA', '21 mm', 'Ápice del conducto', '2023-08-10', 15),
('Conducto Lateral', 'Técnica de Circumferential Filing', '8 mA', '23 mm', 'Terminación apical', '2023-08-15', 16),
('Conducto Medial', 'Técnica de Balanced Force', '9 mA', '25 mm', 'Punto crítico apical', '2023-08-20', 17),
('Conducto Central', 'Técnica de Step-Back', '10 mA', '27 mm', 'Ápice del conducto', '2023-08-25', 18),
('Conducto Vestibular', 'Técnica de Crown-Down', '7.5 mA', '22 mm', 'Terminación apical', '2023-09-01', 19),
('Conducto Palatino', 'Técnica de Circumferential Filing', '8.5 mA', '24 mm', 'Punto crítico apical', '2023-09-05', 20),
('Conducto Accesorio', 'Técnica de Step-Back', '6.5 mA', '20 mm', 'Ápice del conducto', '2023-09-10', 21),
('Conducto Mesial', 'Técnica de Balanced Force', '9.5 mA', '23 mm', 'Terminación apical', '2023-09-15', 22),
('Conducto Distal', 'Técnica de Circumferential Filing', '10.5 mA', '26 mm', 'Punto crítico apical', '2023-09-20', 23),
('Conducto Lateral', 'Técnica de Crown-Down', '8.5 mA', '21 mm', 'Ápice del conducto', '2023-09-25', 24),
('Conducto Medial', 'Técnica de Balanced Force', '11 mA', '28 mm', 'Punto crítico apical', '2023-09-30', 25),
('Conducto Central', 'Técnica de Circumferential Filing', '9 mA', '24 mm', 'Ápice del conducto', '2023-10-05', 26),
('Conducto Vestibular', 'Técnica de Step-Back', '10 mA', '26 mm', 'Terminación apical', '2023-10-10', 27),
('Conducto Palatino', 'Técnica de Crown-Down', '8 mA', '22 mm', 'Ápice del conducto', '2023-10-20', 28),
('Conducto Accesorio', 'Técnica de Balanced Force', '12 mA', '29 mm', 'Punto crítico apical', '2023-10-25', 29),
('Conducto Mesial', 'Técnica de Circumferential Filing', '10.5 mA', '25 mm', 'Terminación apical', '2023-11-01', 30);


INSERT INTO public."tblObturaciondeConductos"("Conducto", "Tecnica", "UltimaLongituddeTrabajo", 
											  "conoMaestro", "Referencia", "FechaRegistro", "idEndodoncia")
	VALUES
('Conducto Medial', 'Técnica Lateral', '28 mm', 'Cone Fit', 'Obturación apical', '2023-09-30', 5),
('Conducto Central', 'Técnica Vertical', '24 mm', 'Cone Fit', 'Obturación apical', '2023-10-05', 6),
('Conducto Vestibular', 'Técnica de Obturación Continua', '26 mm', 'Cone Fit', 'Obturación apical', '2023-10-10', 7),
('Conducto Palatino', 'Técnica Lateral', '22 mm', 'Cone Fit', 'Obturación apical', '2023-10-20', 8),
('Conducto Accesorio', 'Técnica Vertical', '29 mm', 'Cone Fit', 'Obturación apical', '2023-10-25', 9),
('Conducto Mesiobucal', 'Técnica Lateral', '30 mm', 'Cone Fit', 'Obturación apical', '2023-11-01', 10),
('Conducto Distolingual', 'Técnica Vertical', '25 mm', 'Cone Fit', 'Obturación apical', '2023-11-05', 11),
('Conducto Vestibulopalatino', 'Técnica de Obturación Continua', '27 mm', 'Cone Fit', 'Obturación apical', '2023-11-10', 12),
('Conducto Palatinolingual', 'Técnica Lateral', '23 mm', 'Cone Fit', 'Obturación apical', '2023-11-15', 13),
('Conducto Accesorio 1', 'Técnica Vertical', '32 mm', 'Cone Fit', 'Obturación apical', '2023-11-20', 14),
('Conducto Accesorio 2', 'Técnica de Obturación Continua', '28 mm', 'Cone Fit', 'Obturación apical', '2023-11-25', 15),
('Conducto Mesiopalatino', 'Técnica Lateral', '33 mm', 'Cone Fit', 'Obturación apical', '2023-11-30', 16),
('Conducto Distovestibular', 'Técnica Vertical', '26 mm', 'Cone Fit', 'Obturación apical', '2023-12-05', 17),
('Conducto Vestibulomesial', 'Técnica de Obturación Continua', '29 mm', 'Cone Fit', 'Obturación apical', '2023-12-10', 18),
('Conducto Palatomesial', 'Técnica Lateral', '34 mm', 'Cone Fit', 'Obturación apical', '2023-12-15', 19),
('Conducto Accesorio 3', 'Técnica Vertical', '27 mm', 'Cone Fit', 'Obturación apical', '2023-12-20', 20),
('Conducto Distolingual', 'Técnica Vertical', '25 mm', 'Cone Fit', 'Obturación apical', '2024-01-01', 21),
('Conducto Vestibulopalatino', 'Técnica de Obturación Continua', '27 mm', 'Cone Fit', 'Obturación apical', '2024-01-05', 22),
('Conducto Palatinolingual', 'Técnica Lateral', '23 mm', 'Cone Fit', 'Obturación apical', '2024-01-10', 23),
('Conducto Accesorio 1', 'Técnica Vertical', '32 mm', 'Cone Fit', 'Obturación apical', '2024-01-15', 24),
('Conducto Accesorio 2', 'Técnica de Obturación Continua', '28 mm', 'Cone Fit', 'Obturación apical', '2024-01-20', 25),
('Conducto Mesiopalatino', 'Técnica Lateral', '33 mm', 'Cone Fit', 'Obturación apical', '2024-01-25', 26),
('Conducto Distovestibular', 'Técnica Vertical', '26 mm', 'Cone Fit', 'Obturación apical', '2024-02-01', 27),
('Conducto Vestibulomesial', 'Técnica de Obturación Continua', '29 mm', 'Cone Fit', 'Obturación apical', '2024-02-05', 28),
('Conducto Palatomesial', 'Técnica Lateral', '34 mm', 'Cone Fit', 'Obturación apical', '2024-02-10', 29),
('Conducto Distovestibular', 'Técnica Vertical', '28 mm', 'Cone Fit', 'Obturación apical', '2024-02-15', 30);


INSERT INTO public."tblRadiografiaEndodoncia"("Fecha", "Foto", "Interpretacion", "FechaRegistro", "idEndodoncia")
	VALUES
('2023-06-19', 'Foto', 'Lesión periapical en el molar inferior izquierdo', '2023-06-19', 5),
('2023-06-20', 'Foto', 'Caries extensa en la raíz del incisivo central superior', '2023-06-20', 6),
('2023-06-21', 'Foto', 'Fractura radicular visible en la radiografía', '2023-06-21', 7),
('2023-06-22', 'Foto', 'Restauración dental defectuosa en el molar superior derecho', '2023-06-22', 8),
('2023-06-23', 'Foto', 'Cordales impactados visibles en la radiografía', '2023-06-23', 9),
('2023-06-24', 'Foto', 'Lesión periapical en el incisivo lateral inferior', '2023-06-24', 10),
('2023-06-25', 'Foto', 'Fractura radicular en el molar inferior derecho', '2023-06-25', 11),
('2023-06-26', 'Foto', 'Caries extensa en el molar superior izquierdo', '2023-06-26', 12),
('2023-06-27', 'Foto', 'Restauración dental en el premolar inferior izquierdo', '2023-06-27', 13),
('2023-06-28', 'Foto', 'Cordales superiores e inferiores sanos', '2023-06-28', 14),
('2023-06-29', 'Foto', 'Lesión periapical en el canino superior derecho', '2023-06-29', 15),
('2023-06-30', 'Foto', 'Cordales impactados en desarrollo', '2023-06-30', 16),
('2023-07-01', 'Foto', 'Caries en la raíz del incisivo central inferior', '2023-07-01', 17),
('2023-07-02', 'Foto', 'Restauración dental en el molar inferior izquierdo', '2023-07-02', 18),
('2023-07-03', 'Foto', 'Proceso inflamatorio en encías en el incisivo lateral superior', '2023-07-03', 19),
('2023-07-04', 'Foto', 'Cordales impactados en desarrollo', '2023-07-04', 20),
('2023-07-05', 'Foto', 'Caries en el molar superior derecho', '2023-07-05', 21),
('2023-07-06', 'Foto', 'Restauración dental en el canino inferior izquierdo', '2023-07-06', 22),
('2023-07-07', 'Foto', 'Lesión periapical en el molar inferior derecho', '2023-07-07', 23),
('2023-07-08', 'Foto', 'Caries en el incisivo central superior', '2023-07-08', 24),
('2023-07-09', 'Foto', 'Cordales superiores e inferiores sanos', '2023-07-09', 25),
('2023-07-10', 'Foto', 'Proceso inflamatorio en encías en el premolar inferior derecho', '2023-07-10', 26),
('2023-07-11', 'Foto', 'Fractura radicular en el molar superior izquierdo', '2023-07-11', 27),
('2023-07-12', 'Foto', 'Caries en el premolar superior izquierdo', '2023-07-12', 28),
('2023-07-13', 'Foto', 'Cordales impactados en desarrollo', '2023-07-13', 29),
('2023-07-14', 'Foto', 'Proceso inflamatorio en encías en el incisivo lateral inferior', '2023-07-14', 30);
