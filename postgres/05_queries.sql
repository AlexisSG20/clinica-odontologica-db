/* ==========================================================
   Archivo: postgres/05_queries.sql
   Proyecto: Clínica Odontológica (PostgreSQL)
   Autor: (Alexis)
   Nota: UPDATE/DELETE van comentados para evitar accidentes.
   ========================================================== */

SET search_path TO public;

-- 0) Validación rápida
SELECT version();

-- 1) Conteo de registros en tablas clave
SELECT 'tblPaciente' AS tabla, COUNT(*) AS total FROM "tblPaciente"
UNION ALL SELECT 'tblHistoriaClinica', COUNT(*) FROM "tblHistoriaClinica"
UNION ALL SELECT 'tblDiagnostico', COUNT(*) FROM "tblDiagnostico"
UNION ALL SELECT 'tblCita', COUNT(*) FROM "tblCita"
UNION ALL SELECT 'tblPlanyCronogramaTratamiento', COUNT(*) FROM "tblPlanyCronogramaTratamiento"
UNION ALL SELECT 'tblNotasEvolutivas', COUNT(*) FROM "tblNotasEvolutivas";

-- =========================
-- PACIENTES
-- =========================

-- 2) Listado básico de pacientes
SELECT
  p."idPaciente",
  p."NumeroHistoriaClinica",
  p."Nombre",
  p."ApellidoPaterno",
  p."ApellidoMaterno",
  p."Sexo",
  p."FechaNacimiento",
  p."NroCelular",
  p."Correo"
FROM "tblPaciente" p
ORDER BY p."idPaciente" ASC
LIMIT 50;

-- 3) Pacientes con edad (años)
SELECT
  p."idPaciente",
  (p."Nombre" || ' ' || p."ApellidoPaterno" || ' ' || p."ApellidoMaterno") AS "Paciente",
  EXTRACT(YEAR FROM AGE(CURRENT_DATE, p."FechaNacimiento"))::int AS "Edad"
FROM "tblPaciente" p
WHERE p."FechaNacimiento" IS NOT NULL
ORDER BY "Edad" DESC, p."idPaciente" ASC;

-- 4) Pacientes con datos faltantes (ej: sin correo o celular)
SELECT
  p."idPaciente",
  (p."Nombre" || ' ' || p."ApellidoPaterno") AS "Paciente",
  p."Correo",
  p."NroCelular"
FROM "tblPaciente" p
WHERE COALESCE(p."Correo",'') = '' OR COALESCE(p."NroCelular",'') = ''
ORDER BY p."idPaciente" ASC;

-- 5) Paciente + Usuario (si aplica)
SELECT
  p."idPaciente",
  (p."Nombre" || ' ' || p."ApellidoPaterno") AS "Paciente",
  u."idUsuario",
  (u."Nombres" || ' ' || u."Apellidos") AS "Usuario",
  u."Rol",
  u."Correo" AS "CorreoUsuario"
FROM "tblPaciente" p
LEFT JOIN "tblUsuario" u
  ON u."idUsuario" = p."idUsuario"
ORDER BY p."idPaciente" ASC
LIMIT 50;

-- =========================
-- HISTORIA CLÍNICA / EXÁMENES GENERALES
-- =========================

-- 6) Paciente + Historia Clínica
SELECT
  p."idPaciente",
  (p."Nombre" || ' ' || p."ApellidoPaterno") AS "Paciente",
  h."idHistoriaClinica",
  h."MotivoConsulta",
  h."EnfermedadActual",
  h."PresionArterial",
  h."FrecuenciaRespiratoria",
  h."Pulso",
  h."Temperatura"
FROM "tblPaciente" p
LEFT JOIN "tblHistoriaClinica" h
  ON h."idPaciente" = p."idPaciente"
ORDER BY p."idPaciente" ASC;

-- 7) Paciente + Examen General
SELECT
  p."idPaciente",
  (p."Nombre" || ' ' || p."ApellidoPaterno") AS "Paciente",
  eg."Peso",
  eg."Talla",
  eg."IndiceMasaCorporal",
  eg."PresionArterial",
  eg."FrecuenciaRespiratoria",
  eg."Pulso",
  eg."Temperatura"
FROM "tblPaciente" p
LEFT JOIN "tblExamenGeneral" eg
  ON eg."idPaciente" = p."idPaciente"
ORDER BY p."idPaciente" ASC;

-- =========================
-- DIAGNÓSTICOS
-- =========================

-- 8) Catálogo CIE (tblDiagnostico): búsqueda por texto
SELECT
  d."Tipo",
  d."Codigo",
  d."Resumen",
  d."Descripcion"
FROM "tblDiagnostico" d
WHERE d."Resumen" ILIKE '%caries%'
ORDER BY d."Codigo" ASC
LIMIT 50;

-- 9) Diagnósticos (presuntivo/definitivo) por paciente
SELECT
  p."idPaciente",
  (p."Nombre" || ' ' || p."ApellidoPaterno") AS "Paciente",
  dp."Diagnostico" AS "DiagnosticoPresuntivo",
  dp."FechaRegistro" AS "FechaPresuntivo",
  dd."Diagnostico" AS "DiagnosticoDefinitivo",
  dd."FechaRegistro" AS "FechaDefinitivo"
FROM "tblPaciente" p
LEFT JOIN "tblDiagnosticoPresuntivo" dp
  ON dp."idPaciente" = p."idPaciente"
LEFT JOIN "tblDiagnosticoDefinitivo" dd
  ON dd."idPaciente" = p."idPaciente"
ORDER BY p."idPaciente" ASC;

-- 10) Top tipos de diagnóstico en catálogo
SELECT
  d."Tipo",
  COUNT(*) AS total
FROM "tblDiagnostico" d
GROUP BY d."Tipo"
ORDER BY total DESC;

-- =========================
-- PLAN / NOTAS EVOLUTIVAS
-- =========================

-- 11) Plan y cronograma por paciente (últimos primero)
SELECT
  p."idPaciente",
  (p."Nombre" || ' ' || p."ApellidoPaterno") AS "Paciente",
  pc."Fecha",
  pc."Resumen",
  pc."Especificaciones",
  pc."Observaciones",
  pc."FechaRegistro"
FROM "tblPaciente" p
JOIN "tblPlanyCronogramaTratamiento" pc
  ON pc."idPaciente" = p."idPaciente"
ORDER BY pc."Fecha" DESC NULLS LAST, pc."FechaRegistro" DESC NULLS LAST;

-- 12) Notas evolutivas por paciente
SELECT
  p."idPaciente",
  (p."Nombre" || ' ' || p."ApellidoPaterno") AS "Paciente",
  ne."Fecha",
  ne."Tratamiento",
  ne."Firma",
  ne."FechaRegistro"
FROM "tblPaciente" p
JOIN "tblNotasEvolutivas" ne
  ON ne."idPaciente" = p."idPaciente"
ORDER BY ne."Fecha" DESC NULLS LAST, ne."FechaRegistro" DESC NULLS LAST;

-- =========================
-- CITAS / TRATAMIENTOS / ESTUDIANTES
-- =========================

-- 13) Citas con tratamiento y estudiante
SELECT
  c."idCita",
  p."idPaciente",
  (p."Nombre" || ' ' || p."ApellidoPaterno") AS "Paciente",
  t."Nombre" AS "Tratamiento",
  e."NombreCompleto" AS "Estudiante",
  e."Semestre"
FROM "tblCita" c
JOIN "tblPaciente" p
  ON p."idPaciente" = c."idPaciente"
LEFT JOIN "tblTratamiento" t
  ON t."idTratamiento" = c."idTratamiento"
LEFT JOIN "tblEstudiante" e
  ON e."idEstudiante" = c."idEstudiante"
ORDER BY c."idCita" DESC;

-- 14) Número de citas por tratamiento
SELECT
  t."Nombre" AS "Tratamiento",
  COUNT(*) AS "TotalCitas"
FROM "tblCita" c
LEFT JOIN "tblTratamiento" t
  ON t."idTratamiento" = c."idTratamiento"
GROUP BY t."Nombre"
ORDER BY "TotalCitas" DESC;

-- =========================
-- EXAMEN ESTOMATOLÓGICO (relaciones)
-- =========================

-- 15) Resumen de Examen Estomatológico por paciente
SELECT
  p."idPaciente",
  (p."Nombre" || ' ' || p."ApellidoPaterno") AS "Paciente",
  ee."idExamenEstomatologico",
  ee."Facie",
  ee."Cara",
  ee."Ganglios",
  i."LabiosYComisuraLabial",
  o."RelacionMolarDerecha",
  d."Temporal"
FROM "tblPaciente" p
JOIN "tblExamenEstomatologico" ee
  ON ee."idPaciente" = p."idPaciente"
LEFT JOIN "tblExamenIntrabucal" i
  ON i."idExamenEstomatologico" = ee."idExamenEstomatologico"
LEFT JOIN "tblOclusion" o
  ON o."idExamenEstomatologico" = ee."idExamenEstomatologico"
LEFT JOIN "tblDolor" d
  ON d."idExamenEstomatologico" = ee."idExamenEstomatologico"
ORDER BY ee."idExamenEstomatologico" DESC;

-- 16) Detectar exámenes sin registro intrabucal (control de integridad)
SELECT
  ee."idExamenEstomatologico",
  ee."idPaciente"
FROM "tblExamenEstomatologico" ee
LEFT JOIN "tblExamenIntrabucal" i
  ON i."idExamenEstomatologico" = ee."idExamenEstomatologico"
WHERE i."idExamenIntrabucal_TejidosBlandos" IS NULL
ORDER BY ee."idExamenEstomatologico" DESC;

-- =========================
-- ODONTOGRAMA (mapa → caso → diente)
-- =========================

-- 17) Odontograma por paciente (con diente y caso)
SELECT
  p."idPaciente",
  (p."Nombre" || ' ' || p."ApellidoPaterno") AS "Paciente",
  o."idOdontograma",
  o."Nombre" AS "Odontograma",
  m."idMapeo",
  m."Nombre" AS "Mapeo",
  cd."Nombre" AS "CasoDiente",
  d."Nombre" AS "Diente",
  d."Ubicacion",
  d."Tipo"
FROM "tblPaciente" p
JOIN "tblOdontograma" o
  ON o."idPaciente" = p."idPaciente"
LEFT JOIN "tblMapeo" m
  ON m."idOdontograma" = o."idOdontograma"
LEFT JOIN "tblCasoDiente" cd
  ON cd."idCasoDiente" = m."idCasoDiente"
LEFT JOIN "tblDiente" d
  ON d."idDiente" = cd."idDiente"
ORDER BY p."idPaciente", o."idOdontograma", m."idMapeo";

-- =========================
-- ENDODONCIA
-- =========================

-- 18) Endodoncia con manifestaciones (agregadas) y cantidad de radiografías
SELECT
  p."idPaciente",
  (p."Nombre" || ' ' || p."ApellidoPaterno") AS "Paciente",
  en."idEndodoncia",
  en."Fecha",
  en."Docente",
  en."Operador",
  en."MotivoConsulta",
  en."PiezaDental",
  COALESCE(string_agg(DISTINCT md."Nombre", ', '), '') AS "ManifestacionesDolor",
  COUNT(DISTINCT re."idRadiografiaEndodoncia") AS "Radiografias"
FROM "tblPaciente" p
JOIN "tblEndodoncia" en
  ON en."idPaciente" = p."idPaciente"
LEFT JOIN "tblManifestacionEndodoncia" me
  ON me."idEndodoncia" = en."idEndodoncia"
LEFT JOIN "tblManifestacionDolor" md
  ON md."idManifestacionDolor" = me."idManifestacionDolor"
LEFT JOIN "tblRadiografiaEndodoncia" re
  ON re."idEndodoncia" = en."idEndodoncia"
GROUP BY
  p."idPaciente", "Paciente",
  en."idEndodoncia", en."Fecha", en."Docente", en."Operador", en."MotivoConsulta", en."PiezaDental"
ORDER BY en."idEndodoncia" DESC;

-- =========================
-- CIRUGÍA / OPERATORIA
-- =========================

-- 19) Cirugía con cantidad de radiografías asociadas
SELECT
  p."idPaciente",
  (p."Nombre" || ' ' || p."ApellidoPaterno") AS "Paciente",
  c."idCirugia",
  c."MotivoConsulta",
  c."DiagnosticoCIE11",
  c."FechaRegistro",
  COUNT(rc."idRadiografiaCirujia") AS "Radiografias"
FROM "tblPaciente" p
JOIN "tblCirugia" c
  ON c."idPaciente" = p."idPaciente"
LEFT JOIN "tblRadiografiaCirugia" rc
  ON rc."idCirugia" = c."idCirugia"
GROUP BY p."idPaciente", "Paciente", c."idCirugia", c."MotivoConsulta", c."DiagnosticoCIE11", c."FechaRegistro"
ORDER BY c."idCirugia" DESC;

-- 20) Operatoria con pruebas realizadas
SELECT
  p."idPaciente",
  (p."Nombre" || ' ' || p."ApellidoPaterno") AS "Paciente",
  op."idOperatoria",
  op."Docente",
  op."MotivoConsulta",
  op."DiagnosticoDefinitivo",
  COUNT(po."idPruebaOperatoria") AS "TotalPruebas"
FROM "tblPaciente" p
JOIN "tblOperatoria" op
  ON op."idPaciente" = p."idPaciente"
LEFT JOIN "tblPruebaOperatoria" po
  ON po."idOperatoria" = op."idOperatoria"
GROUP BY p."idPaciente", "Paciente", op."idOperatoria", op."Docente", op."MotivoConsulta", op."DiagnosticoDefinitivo"
ORDER BY op."idOperatoria" DESC;

-- =========================
-- EJEMPLOS CRUD (comentados)
-- =========================

-- INSERT (ejemplo genérico, ajusta columnas si quieres)
-- INSERT INTO "tblTratamiento" ("Nombre") VALUES ('Profilaxis');

-- UPDATE (ejemplo)
-- UPDATE "tblPaciente"
-- SET "NroCelular" = '999999999'
-- WHERE "idPaciente" = 1;

-- DELETE (ejemplo)
-- DELETE FROM "tblTratamiento"
-- WHERE "Nombre" = 'Profilaxis';
