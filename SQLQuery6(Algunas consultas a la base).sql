

-- Ver las aplicaciones de vacunas con paciente, vacuna, enfermero y fecha


SELECT 
  A.IdAplicacion,
  P.Nombre AS NombrePaciente,
  V.Nombre AS NombreVacuna,
  E.Nombre AS NombreEnfermero,
  A.DosisNumero,
  A.FechaAplicacion
FROM AplicacionVacuna A
JOIN Paciente P ON A.IdPaciente = P.IdPaciente
JOIN Lote L ON A.IdLote = L.IdLote
JOIN Vacuna V ON L.IdVacuna = V.IdVacuna
JOIN Enfermero E ON A.IdEnfermero = E.IdEnfermero;

--Consultar pacientes que recibieron más de una dosis

SELECT P.Nombre, COUNT(*) AS TotalDosis
FROM AplicacionVacuna A
JOIN Paciente P ON A.IdPaciente = P.IdPaciente
GROUP BY P.Nombre
HAVING COUNT(*) > 1;


--Vacunas aplicadas en una fecha específica

SELECT P.Nombre AS Paciente, V.Nombre AS Vacuna, A.FechaAplicacion
FROM AplicacionVacuna A
JOIN Paciente P ON A.IdPaciente = P.IdPaciente
JOIN Lote L ON A.IdLote = L.IdLote
JOIN Vacuna V ON L.IdVacuna = V.IdVacuna
WHERE A.FechaAplicacion = '2025-06-01';