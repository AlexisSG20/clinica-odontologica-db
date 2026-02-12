CREATE TABLE "tblPaciente" (
  "idPaciente" SERIAL PRIMARY KEY,
  "FechaCreacion" Date,
  "HoraCreacion" Time,
  "NumeroHistoriaClinica" VARCHAR(5),
  "Ectoscopia" VARCHAR(500),
  "Nombre" VARCHAR(50),
  "ApellidoPaterno" VARCHAR(50),
  "ApellidoMaterno" VARCHAR(50),
  "Sexo" VARCHAR(9),
  "Lugar" VARCHAR(20),
  "Domicilio" VARCHAR(100),
  "FechaNacimiento" Date,
  "EstadoCivil" VARCHAR(14),
  "NroCelular" VARCHAR(14),
  "Correo" VARCHAR(30),
  "Raza" VARCHAR(20),
  "GradoInstruccion" VARCHAR(60),
  "Ocupacion" VARCHAR(30),
  "Responsable" VARCHAR(100),
  "ParentescoconResponsable" VARCHAR(15),
  "DomicilioResponsable" VARCHAR(100),
  "CelularResponsable" VARCHAR(14),
  "Acompaniante" VARCHAR(50),
  "EnfermedadActual" VARCHAR(500),
  "MotivoConsulta" VARCHAR(250),
  "FuncionesBiologicas" VARCHAR(150),
  "Orina" VARCHAR(150),
  "Apetito" VARCHAR(150),
  "Suenio" VARCHAR(150),
  "Deposiciones" VARCHAR(150),
  "Sed" VARCHAR(150),
  "Alergias" VARCHAR(150),
  "AntecedentesAlergicos" VARCHAR(250),
  "AntecedentesPersonal" VARCHAR(250),
  "AntecedentesFamiliares" VARCHAR(250),
  "AntecedentesPatologicos" VARCHAR(250),
  "idUsuario" SERIAL
);

CREATE TABLE "tblHistoriaClinica" (
  "idHistoriaClinica" SERIAL PRIMARY KEY,
  "MotivoConsulta" VARCHAR(200),
  "EnfermedadActual" VARCHAR(500),
  "PresionArterial" VARCHAR(8),
  "FrecuenciaRespiratoria" VARCHAR(30),
  "Pulso" VARCHAR(30),
  "Temperatura" VARCHAR(10),
  "idPaciente" SERIAL
);

CREATE TABLE "tblPlanyCronogramaTratamiento" (
  "idPlanyCronogramaTratamiento" SERIAL PRIMARY KEY,
  "Fecha" Date,
  "Resumen" VARCHAR(300),
  "Especificaciones" VARCHAR(200),
  "Observaciones" VARCHAR(200),
  "FechaRegistro" Time,
  "idPaciente" SERIAL
);

CREATE TABLE "tblNotasEvolutivas" (
  "idNotasEvolutivas" SERIAL PRIMARY KEY,
  "Fecha" Date,
  "Tratamiento" VARCHAR(200),
  "Firma" VARCHAR(25),
  "FechaRegistro" Time,
  "idPaciente" SERIAL
);

CREATE TABLE "tblEpicrisis" (
  "idEpicrisis" SERIAL PRIMARY KEY,
  "Contenido" VARCHAR(200),
  "FechaRegistro" Timestamp,
  "idPaciente" SERIAL
);

CREATE TABLE "tblInterpretacion" (
  "idInterpretacion" SERIAL PRIMARY KEY,
  "RadiografiaPanoramica" VARCHAR(200),
  "HemogramaCompleto" VARCHAR(200),
  "TiempoSangrado" VARCHAR(200),
  "TiempoCoagulacion" VARCHAR(200),
  "FechaRegistro" Timestamp,
  "idPaciente" SERIAL
);

CREATE TABLE "tblExamenGeneral" (
  "idExamenGeneral" SERIAL PRIMARY KEY,
  "Peso" VARCHAR(15),
  "Talla" VARCHAR(15),
  "IndiceMasaCorporal" VARCHAR(40),
  "Piel" VARCHAR(100),
  "AnexosCabello" VARCHAR(150),
  "AnexosUnias" VARCHAR(150),
  "PresionArterial" VARCHAR(20),
  "FrecuenciaRespiratoria" VARCHAR(50),
  "Pulso" VARCHAR(10),
  "Temperatura" VARCHAR(10),
  "idPaciente" SERIAL
);

CREATE TABLE "tblDiagnosticoPresuntivo" (
  "idDiagnosticoPresuntivo" SERIAL PRIMARY KEY,
  "Diagnostico" VARCHAR(300),
  "FechaRegistro" Timestamp,
  "idPaciente" SERIAL
);

CREATE TABLE "tblDiagnosticoDefinitivo" (
  "idDiagnosticoDefinitivo" SERIAL PRIMARY KEY,
  "Diagnostico" VARCHAR(300),
  "FechaRegistro" Timestamp,
  "idPaciente" SERIAL
);

CREATE TABLE "tblExamenesAuxiliares" (
  "idExamenesAuxiliares" SERIAL PRIMARY KEY,
  "Contenido" VARCHAR(400),
  "FechaRegistro" Timestamp,
  "idPaciente" SERIAL
);

CREATE TABLE "tblAnamnesis" (
  "idAnamesis" SERIAL PRIMARY KEY,
  "Contenido" VARCHAR(500),
  "FechaRegistro" Timestamp,
  "idPaciente" SERIAL
);

CREATE TABLE "tblExamenEstomatologico" (
  "idExamenEstomatologico" SERIAL PRIMARY KEY,
  "Facie" VARCHAR(100),
  "Craneo" VARCHAR(40),
  "Cara" VARCHAR(40),
  "SimetriaTresTercios" VARCHAR(100),
  "SimetriaBilateral" VARCHAR(100),
  "SimetriaPerfil" VARCHAR(100),
  "ATMtrayectoriaaperturaycierre" VARCHAR(100),
  "ATMfluidosdelaATM" VARCHAR(250),
  "ATMpalpitacion" VARCHAR(150),
  "ATMgradodeapertura" VARCHAR(10),
  "Ganglios" VARCHAR(50),
  "idPaciente" SERIAL
);

CREATE TABLE "tblNivelPieza" (
  "idNivelPieza" SERIAL PRIMARY KEY,
  "EnciaNormal" VARCHAR(40),
  "EnciaFaltaoAusencia" VARCHAR(40),
  "EnciaIncosistencia" VARCHAR(40),
  "ColorNormal" VARCHAR(40),
  "ColorEntematosa" VARCHAR(40),
  "ColorPalido" VARCHAR(40),
  "TexturaNormal" VARCHAR(40),
  "TexturaLisa" VARCHAR(40),
  "TexturaRugosa" VARCHAR(40),
  "ConsistenciaNormal" VARCHAR(40),
  "ConsistenciaEdematosa" VARCHAR(40),
  "ConsistenciaFibrosa" VARCHAR(40),
  "EnciaPapilarNormal" VARCHAR(40),
  "EnciaPapilarAplanada" VARCHAR(40),
  "EnciaPapilarCrateriforme" VARCHAR(40),
  "Encia" VARCHAR(600),
  "idExamenEstomatologico" SERIAL
);

CREATE TABLE "tblTejidosDuros" (
  "idTejidosDuro" SERIAL PRIMARY KEY,
  "MaximilarSuperior" VARCHAR(50),
  "MaximilarInferior" VARCHAR(50),
  "Numero" VARCHAR(4),
  "Color" VARCHAR(20),
  "Forma" VARCHAR(20),
  "Tamanio" VARCHAR(40),
  "Diastemas" VARCHAR(80),
  "ZonasEdentulasyRebordeAlveolar" VARCHAR(80),
  "AlteraciondePosiciones" VARCHAR(80),
  "FacetadeDesgaste" VARCHAR(100),
  "LineaMedia" VARCHAR(100),
  "Otro" VARCHAR(200),
  "idExamenEstomatologico" SERIAL
);

CREATE TABLE "tblExamenIntrabucal" (
  "idExamenIntrabucal_TejidosBlandos" SERIAL PRIMARY KEY,
  "LabiosYComisuraLabial" VARCHAR(100),
  "PaladarDuroyBlando" VARCHAR(100),
  "Carrillos" VARCHAR(100),
  "PisodeBoca" VARCHAR(100),
  "Lengua" VARCHAR(100),
  "Orofaringe" VARCHAR(100),
  "Frenillos" VARCHAR(100),
  "Saliva" VARCHAR(100),
  "idExamenEstomatologico" SERIAL
);

CREATE TABLE "tblDolor" (
  "idDolor" SERIAL PRIMARY KEY,
  "Temporal" VARCHAR(100),
  "Masetero" VARCHAR(100),
  "PteriogoideoInterno" VARCHAR(100),
  "PteriogoideoExterno" VARCHAR(100),
  "Digastrico" VARCHAR(100),
  "Esternocleidomastoideo" VARCHAR(40),
  "idExamenEstomatologico" SERIAL
);

CREATE TABLE "tblOclusion" (
  "idOclusion" SERIAL PRIMARY KEY,
  "RelacionMolarDerecha" VARCHAR(100),
  "RelacionMolarIzquierda" VARCHAR(100),
  "RelacionCaninaDerecha" VARCHAR(100),
  "RelacionCaninaIzquierda" VARCHAR(100),
  "GradodeApertura" VARCHAR(100),
  "OverBite" VARCHAR(100),
  "OverJet" VARCHAR(100),
  "idExamenEstomatologico" SERIAL
);

CREATE TABLE "tblOdontograma" (
  "idOdontograma" SERIAL PRIMARY KEY,
  "Nombre" VARCHAR(40),
  "Estado" VARCHAR(20),
  "Numero" VARCHAR(4),
  "idPaciente" SERIAL
);

CREATE TABLE "tblMapeo" (
  "idMapeo" SERIAL PRIMARY KEY,
  "Nombre" VARCHAR(50),
  "idOdontograma" SERIAL,
  "idCasoDiente" SERIAL
);

CREATE TABLE "tblMapeoCarasDentales" (
  "idMapeoCarasDentales" SERIAL PRIMARY KEY,
  "Mesial" VARCHAR(100),
  "Distal" VARCHAR(100),
  "Vestibular" VARCHAR(100),
  "Lingual" VARCHAR(100),
  "Palatina" VARCHAR(100),
  "idMapeo" SERIAL
);

CREATE TABLE "tblCasoDiente" (
  "idCasoDiente" SERIAL PRIMARY KEY,
  "Nombre" VARCHAR(150),
  "Foto" VARCHAR(150),
  "idSubCasoClinico" SERIAL,
  "idDiente" SERIAL
);

CREATE TABLE "tblSubCasoClinico" (
  "idSubCasoClinico" SERIAL PRIMARY KEY,
  "Nombre" VARCHAR(150),
  "idCasosClinicos" SERIAL
);

CREATE TABLE "tblCasosClinicos" (
  "idCasosClinicos" SERIAL PRIMARY KEY,
  "Nombre" VARCHAR(100)
);

CREATE TABLE "tblDiente" (
  "idDiente" SERIAL PRIMARY KEY,
  "Nombre" VARCHAR(150),
  "Ubicacion" VARCHAR(150),
  "Tipo" VARCHAR(150),
  "Lado" VARCHAR(150),
  "Posicion" VARCHAR(150),
  "Raiz" VARCHAR(150),
  "Estado" VARCHAR(150)
);

CREATE TABLE "tblOperatoria" (
  "idOperatoria" SERIAL PRIMARY KEY,
  "Docente" VARCHAR(200),
  "MotivoConsulta" VARCHAR(200),
  "DiagnosticoDefinitivo" VARCHAR(200),
  "idPaciente" SERIAL
);

CREATE TABLE "tblPruebaOperatoria" (
  "idPruebaOperatoria" SERIAL PRIMARY KEY,
  "Nombre" VARCHAR(200),
  "idPrueba" SERIAL,
  "idOperatoria" SERIAL
);

CREATE TABLE "tblPrueba" (
  "idPrueba" SERIAL PRIMARY KEY,
  "Nombre" VARCHAR(200)
);

CREATE TABLE "tblTecnicaRadiografica" (
  "idTecnicaRadiografica" SERIAL PRIMARY KEY,
  "NumeroPieza" VARCHAR(5),
  "Detalle" VARCHAR(200),
  "Tipo" VARCHAR(50),
  "idOperatoria" SERIAL
);

CREATE TABLE "tblPlandeTrabajo" (
  "idPlandeTrabajo" SERIAL PRIMARY KEY,
  "Cantidad" VARCHAR(3),
  "Tratamiento" VARCHAR(200),
  "PiezaNumero" VARCHAR(5),
  "TipoMaterialRestaurador" VARCHAR(50),
  "FechaRegistro" Date,
  "idOperatoria" SERIAL
);

CREATE TABLE "tblCirugia" (
  "idCirugia" SERIAL PRIMARY KEY,
  "MotivoConsulta" VARCHAR(200),
  "DiagnosticoCIE11" VARCHAR(100),
  "Pronostico" VARCHAR(100),
  "PlandeTrabajo" VARCHAR(100),
  "Cirujano" VARCHAR(100),
  "Asistente" VARCHAR(100),
  "Circulante" VARCHAR(100),
  "HoraInicioCx" Time,
  "HoraTerminoCx" Time,
  "FechaAlta" Date,
  "Observaciones" VARCHAR(200),
  "EvolucionDiaria" VARCHAR(100),
  "EstudianteCargo" VARCHAR(100),
  "FacultativoCargo" VARCHAR(100),
  "FechaRegistro" Date,
  "idPaciente" SERIAL
);

CREATE TABLE "tblRadiografiaCirugia" (
  "idRadiografiaCirujia" SERIAL PRIMARY KEY,
  "Fecha" Date,
  "Nombre" VARCHAR(150),
  "Foto" VARCHAR(50),
  "Interpretacion" VARCHAR(2000),
  "FechaRegistros" Date,
  "idCirugia" SERIAL
);

CREATE TABLE "tblPlanTratamiento" (
  "idPlanTratamiento" SERIAL PRIMARY KEY,
  "Nombre" VARCHAR(150),
  "Detalle" VARCHAR(200),
  "Foto" VARCHAR(50),
  "idCirugia" SERIAL
);

CREATE TABLE "tblInformeQuirurgico" (
  "idInformeQuirurgico" SERIAL PRIMARY KEY,
  "Nombre" VARCHAR(150),
  "Detalle" VARCHAR(200),
  "idCirugia" SERIAL
);

CREATE TABLE "tblEstadoPosquirurgico" (
  "idEstadoPosquirurgico" SERIAL PRIMARY KEY,
  "Fecha" Date,
  "Nombre" VARCHAR(150),
  "Detalle" VARCHAR(500),
  "idCirugia" SERIAL
);

CREATE TABLE "tblEndodoncia" (
  "idEndodoncia" SERIAL PRIMARY KEY,
  "Fecha" Date,
  "Docente" VARCHAR(200),
  "Observaciones" VARCHAR(300),
  "Operador" VARCHAR(200),
  "MotivoConsulta" VARCHAR(150),
  "PiezaDental" VARCHAR(50),
  "ECPercucion" VARCHAR(50),
  "ECCavidad" VARCHAR(50),
  "ECCambioColor" VARCHAR(50),
  "ECTejidosBlandos" VARCHAR(50),
  "ECTermoreaccion" VARCHAR(50),
  "ECElectroReaccion" VARCHAR(50),
  "ERCavidad" VARCHAR(50),
  "ERTratamientoPrevio" VARCHAR(50),
  "ERPeriodonto" VARCHAR(50),
  "ERLesionesPeriauriculares" VARCHAR(50),
  "ERNumerodeConductos" VARCHAR(50),
  "ERPrecipitacionesCalcicas" VARCHAR(50),
  "STAnestesia" VARCHAR(50),
  "STAAislamientoAbsoluto" VARCHAR(50),
  "FechaRegistro" Time,
  "idPaciente" SERIAL
);

CREATE TABLE "tblManifestacionEndodoncia" (
  "idManifestacionEndodoncia" SERIAL PRIMARY KEY,
  "Nombre" VARCHAR(100),
  "idEndodoncia" SERIAL,
  "idManifestacionDolor" SERIAL
);

CREATE TABLE "tblManifestacionDolor" (
  "idManifestacionDolor" SERIAL PRIMARY KEY,
  "Nombre" VARCHAR(150)
);

CREATE TABLE "tblRadiografiaEndodoncia" (
  "idRadiografiaEndodoncia" SERIAL PRIMARY KEY,
  "Fecha" Date,
  "Foto" VARCHAR(50),
  "Interpretacion" VARCHAR(200),
  "FechaRegistro" Date,
  "idEndodoncia" SERIAL
);

CREATE TABLE "tblConductometria" (
  "idConductometria" SERIAL PRIMARY KEY,
  "Conducto" VARCHAR(150),
  "LongRx" VARCHAR(150),
  "LongTrabajo" VARCHAR(150),
  "IInicial" VARCHAR(150),
  "Referencia" VARCHAR(150),
  "FechaRegistro" Date,
  "idEndodoncia" SERIAL
);

CREATE TABLE "tblObturaciondeConductos" (
  "idObturaciondeConductos" SERIAL PRIMARY KEY,
  "Conducto" VARCHAR(150),
  "Tecnica" VARCHAR(150),
  "UltimaLongituddeTrabajo" VARCHAR(150),
  "conoMaestro" VARCHAR(150),
  "Referencia" VARCHAR(150),
  "FechaRegistro" Date,
  "idEndodoncia" SERIAL
);

CREATE TABLE "tblPreparacionQuimica" (
  "idPreparacionQuimica" SERIAL PRIMARY KEY,
  "Conducto" VARCHAR(150),
  "Tecnica" VARCHAR(150),
  "IFinal" VARCHAR(150),
  "UltimaLongituddeTrabajo" VARCHAR(150),
  "Referencia" VARCHAR(150),
  "FechaRegistro" Date,
  "idEndodoncia" SERIAL
);

CREATE TABLE "tblSeguimiento" (
  "idSeguimiento" SERIAL PRIMARY KEY,
  "Nombre" VARCHAR(150),
  "idCita" SERIAL
);

CREATE TABLE "tblCita" (
  "idCita" SERIAL PRIMARY KEY,
  "idTratamiento" SERIAL,
  "idPaciente" SERIAL,
  "idEstudiante" SERIAL
);

CREATE TABLE "tblTratamiento" (
  "idTratamiento" SERIAL PRIMARY KEY,
  "Nombre" VARCHAR(200)
);

CREATE TABLE "tblEmpresa" (
  "idEmpresa" SERIAL PRIMARY KEY,
  "Ruc" VARCHAR(15),
  "RazonSocial" VARCHAR(50),
  "Representante" VARCHAR(50)
);

CREATE TABLE "tblSede" (
  "idSede" SERIAL PRIMARY KEY,
  "Nombre" VARCHAR(20),
  "Direccion" VARCHAR(100),
  "Celular" VARCHAR(14),
  "Correo" VARCHAR(100),
  "TipoSede" VARCHAR(25),
  "idEmpresa" SERIAL
);

CREATE TABLE "tblPeriodo" (
  "idPeriodo" SERIAL PRIMARY KEY,
  "Nombre" VARCHAR(10),
  "Empieza" Date,
  "Termina" Date,
  "idSede" SERIAL
);

CREATE TABLE "tblUsuario" (
  "idUsuario" SERIAL PRIMARY KEY,
  "Nombres" VARCHAR(150),
  "Apellidos" VARCHAR(150),
  "Celular" VARCHAR(14),
  "Correo" VARCHAR(100),
  "NumDoc" VARCHAR(15),
  "Contra" VARCHAR(50),
  "Foto" VARCHAR(50),
  "Pago" VARCHAR(25),
  "Codigo" VARCHAR(25),
  "Activo" VARCHAR(25),
  "Genero" VARCHAR(10),
  "TipoDocumento" VARCHAR(100),
  "RestablecerContra" VARCHAR(25),
  "Rol" VARCHAR(25),
  "idSede" SERIAL
);

CREATE TABLE "tblAdministrador" (
  "idAdministrador" SERIAL PRIMARY KEY,
  "NombreCompleto" VARCHAR(150),
  "CodigoAcceso" VARCHAR(25),
  "idUsuario" SERIAL
);

CREATE TABLE "tblAuditoria" (
  "idAuditoria" SERIAL PRIMARY KEY,
  "Nombre" VARCHAR(150),
  "Fecha" Date,
  "Tabla" VARCHAR(50),
  "Accion" VARCHAR(50),
  "Resumen" VARCHAR(150),
  "Descripcion" VARCHAR(200),
  "idUsuario" SERIAL
);

CREATE TABLE "tblEstudiante" (
  "idEstudiante" SERIAL PRIMARY KEY,
  "NombreCompleto" VARCHAR(150),
  "Semestre" VARCHAR(30),
  "Firma" VARCHAR(30),
  "idUsuario" SERIAL
);

CREATE TABLE "tblDocente" (
  "idDocente" SERIAL PRIMARY KEY,
  "NombreCompleto" VARCHAR(150),
  "Colegiatura" VARCHAR(15),
  "FirmaDigital" VARCHAR(25),
  "idUsuario" SERIAL
);

CREATE TABLE "tblClase" (
  "idClase" SERIAL PRIMARY KEY,
  "Nombre" VARCHAR(150),
  "Salon" VARCHAR(150),
  "Horario" Time,
  "idDocente" SERIAL,
  "idPeriodo" SERIAL,
  "idCurso" SERIAL
);

CREATE TABLE "tblCurso" (
  "idCurso" SERIAL PRIMARY KEY,
  "Nombre" VARCHAR(50),
  "Semestre" VARCHAR(7),
  "Malla" VARCHAR(7)
);

CREATE TABLE "tblRecord" (
  "idRecord" SERIAL PRIMARY KEY,
  "Nombre" VARCHAR(150),
  "CantidadMin" VARCHAR(25),
  "CantidadRequerida" VARCHAR(25),
  "FechaLimite" Date,
  "idClase" SERIAL
);

CREATE TABLE "tblIntegrantes" (
  "idIntegrantes" SERIAL PRIMARY KEY,
  "Nombre" VARCHAR(20),
  "idClase" SERIAL,
  "idEstudiante" SERIAL
);

CREATE TABLE "tblDiagnostico" (
  "idDiagnostico" SERIAL PRIMARY KEY,
  "Tipo" VARCHAR(10),
  "Codigo" VARCHAR(10),
  "Resumen" VARCHAR(100),
  "Descripcion" VARCHAR(200)
);

ALTER TABLE "tblHistoriaClinica" ADD FOREIGN KEY ("idPaciente") REFERENCES "tblPaciente" ("idPaciente");

ALTER TABLE "tblPlanyCronogramaTratamiento" ADD FOREIGN KEY ("idPaciente") REFERENCES "tblPaciente" ("idPaciente");

ALTER TABLE "tblNotasEvolutivas" ADD FOREIGN KEY ("idPaciente") REFERENCES "tblPaciente" ("idPaciente");

ALTER TABLE "tblEpicrisis" ADD FOREIGN KEY ("idPaciente") REFERENCES "tblPaciente" ("idPaciente");

ALTER TABLE "tblInterpretacion" ADD FOREIGN KEY ("idPaciente") REFERENCES "tblPaciente" ("idPaciente");

ALTER TABLE "tblExamenEstomatologico" ADD FOREIGN KEY ("idPaciente") REFERENCES "tblPaciente" ("idPaciente");

ALTER TABLE "tblNivelPieza" ADD FOREIGN KEY ("idExamenEstomatologico") REFERENCES "tblExamenEstomatologico" ("idExamenEstomatologico");

ALTER TABLE "tblTejidosDuros" ADD FOREIGN KEY ("idExamenEstomatologico") REFERENCES "tblExamenEstomatologico" ("idExamenEstomatologico");

ALTER TABLE "tblExamenIntrabucal" ADD FOREIGN KEY ("idExamenEstomatologico") REFERENCES "tblExamenEstomatologico" ("idExamenEstomatologico");

ALTER TABLE "tblDolor" ADD FOREIGN KEY ("idExamenEstomatologico") REFERENCES "tblExamenEstomatologico" ("idExamenEstomatologico");

ALTER TABLE "tblOclusion" ADD FOREIGN KEY ("idExamenEstomatologico") REFERENCES "tblExamenEstomatologico" ("idExamenEstomatologico");

ALTER TABLE "tblOdontograma" ADD FOREIGN KEY ("idPaciente") REFERENCES "tblPaciente" ("idPaciente");

ALTER TABLE "tblMapeo" ADD FOREIGN KEY ("idOdontograma") REFERENCES "tblOdontograma" ("idOdontograma");

ALTER TABLE "tblMapeo" ADD FOREIGN KEY ("idCasoDiente") REFERENCES "tblCasoDiente" ("idCasoDiente");

ALTER TABLE "tblMapeoCarasDentales" ADD FOREIGN KEY ("idMapeo") REFERENCES "tblMapeo" ("idMapeo");

ALTER TABLE "tblCasoDiente" ADD FOREIGN KEY ("idDiente") REFERENCES "tblDiente" ("idDiente");

ALTER TABLE "tblSubCasoClinico" ADD FOREIGN KEY ("idCasosClinicos") REFERENCES "tblCasosClinicos" ("idCasosClinicos");

ALTER TABLE "tblCasoDiente" ADD FOREIGN KEY ("idSubCasoClinico") REFERENCES "tblSubCasoClinico" ("idSubCasoClinico");

ALTER TABLE "tblOperatoria" ADD FOREIGN KEY ("idPaciente") REFERENCES "tblPaciente" ("idPaciente");

ALTER TABLE "tblPruebaOperatoria" ADD FOREIGN KEY ("idPrueba") REFERENCES "tblPrueba" ("idPrueba");

ALTER TABLE "tblPruebaOperatoria" ADD FOREIGN KEY ("idOperatoria") REFERENCES "tblOperatoria" ("idOperatoria");

ALTER TABLE "tblTecnicaRadiografica" ADD FOREIGN KEY ("idOperatoria") REFERENCES "tblOperatoria" ("idOperatoria");

ALTER TABLE "tblPlandeTrabajo" ADD FOREIGN KEY ("idOperatoria") REFERENCES "tblOperatoria" ("idOperatoria");

ALTER TABLE "tblCirugia" ADD FOREIGN KEY ("idPaciente") REFERENCES "tblPaciente" ("idPaciente");

ALTER TABLE "tblRadiografiaCirugia" ADD FOREIGN KEY ("idCirugia") REFERENCES "tblCirugia" ("idCirugia");

ALTER TABLE "tblPlanTratamiento" ADD FOREIGN KEY ("idCirugia") REFERENCES "tblCirugia" ("idCirugia");

ALTER TABLE "tblInformeQuirurgico" ADD FOREIGN KEY ("idCirugia") REFERENCES "tblCirugia" ("idCirugia");

ALTER TABLE "tblEstadoPosquirurgico" ADD FOREIGN KEY ("idCirugia") REFERENCES "tblCirugia" ("idCirugia");

ALTER TABLE "tblEndodoncia" ADD FOREIGN KEY ("idPaciente") REFERENCES "tblPaciente" ("idPaciente");

ALTER TABLE "tblManifestacionEndodoncia" ADD FOREIGN KEY ("idEndodoncia") REFERENCES "tblEndodoncia" ("idEndodoncia");

ALTER TABLE "tblManifestacionEndodoncia" ADD FOREIGN KEY ("idManifestacionDolor") REFERENCES "tblManifestacionDolor" ("idManifestacionDolor");

ALTER TABLE "tblRadiografiaEndodoncia" ADD FOREIGN KEY ("idEndodoncia") REFERENCES "tblEndodoncia" ("idEndodoncia");

ALTER TABLE "tblConductometria" ADD FOREIGN KEY ("idEndodoncia") REFERENCES "tblEndodoncia" ("idEndodoncia");

ALTER TABLE "tblObturaciondeConductos" ADD FOREIGN KEY ("idEndodoncia") REFERENCES "tblEndodoncia" ("idEndodoncia");

ALTER TABLE "tblPreparacionQuimica" ADD FOREIGN KEY ("idEndodoncia") REFERENCES "tblEndodoncia" ("idEndodoncia");

ALTER TABLE "tblCita" ADD FOREIGN KEY ("idTratamiento") REFERENCES "tblTratamiento" ("idTratamiento");

ALTER TABLE "tblSeguimiento" ADD FOREIGN KEY ("idCita") REFERENCES "tblCita" ("idCita");

ALTER TABLE "tblCita" ADD FOREIGN KEY ("idPaciente") REFERENCES "tblPaciente" ("idPaciente");

ALTER TABLE "tblSede" ADD FOREIGN KEY ("idEmpresa") REFERENCES "tblEmpresa" ("idEmpresa");

ALTER TABLE "tblPeriodo" ADD FOREIGN KEY ("idSede") REFERENCES "tblSede" ("idSede");

ALTER TABLE "tblUsuario" ADD FOREIGN KEY ("idSede") REFERENCES "tblSede" ("idSede");

ALTER TABLE "tblAdministrador" ADD FOREIGN KEY ("idUsuario") REFERENCES "tblUsuario" ("idUsuario");

ALTER TABLE "tblAuditoria" ADD FOREIGN KEY ("idUsuario") REFERENCES "tblUsuario" ("idUsuario");

ALTER TABLE "tblEstudiante" ADD FOREIGN KEY ("idUsuario") REFERENCES "tblUsuario" ("idUsuario");

ALTER TABLE "tblDocente" ADD FOREIGN KEY ("idUsuario") REFERENCES "tblUsuario" ("idUsuario");

ALTER TABLE "tblCita" ADD FOREIGN KEY ("idEstudiante") REFERENCES "tblEstudiante" ("idEstudiante");

ALTER TABLE "tblClase" ADD FOREIGN KEY ("idDocente") REFERENCES "tblDocente" ("idDocente");

ALTER TABLE "tblClase" ADD FOREIGN KEY ("idPeriodo") REFERENCES "tblPeriodo" ("idPeriodo");

ALTER TABLE "tblClase" ADD FOREIGN KEY ("idCurso") REFERENCES "tblCurso" ("idCurso");

ALTER TABLE "tblRecord" ADD FOREIGN KEY ("idClase") REFERENCES "tblClase" ("idClase");

ALTER TABLE "tblIntegrantes" ADD FOREIGN KEY ("idClase") REFERENCES "tblClase" ("idClase");

ALTER TABLE "tblIntegrantes" ADD FOREIGN KEY ("idEstudiante") REFERENCES "tblEstudiante" ("idEstudiante");

ALTER TABLE "tblExamenGeneral" ADD FOREIGN KEY ("idPaciente") REFERENCES "tblPaciente" ("idPaciente");

ALTER TABLE "tblDiagnosticoPresuntivo" ADD FOREIGN KEY ("idPaciente") REFERENCES "tblPaciente" ("idPaciente");

ALTER TABLE "tblDiagnosticoDefinitivo" ADD FOREIGN KEY ("idPaciente") REFERENCES "tblPaciente" ("idPaciente");

ALTER TABLE "tblExamenesAuxiliares" ADD FOREIGN KEY ("idPaciente") REFERENCES "tblPaciente" ("idPaciente");

ALTER TABLE "tblAnamnesis" ADD FOREIGN KEY ("idPaciente") REFERENCES "tblPaciente" ("idPaciente");

ALTER TABLE "tblPaciente" ADD FOREIGN KEY ("idUsuario") REFERENCES "tblUsuario" ("idUsuario");

