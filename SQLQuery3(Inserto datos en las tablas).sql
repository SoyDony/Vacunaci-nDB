INSERT INTO Vacuna (Nombre, Origen, Proveedor)
VALUES 
('Pfizer', 'Estados Unidos', 'Pfizer Inc.'),
('Moderna', 'Estados Unidos', 'Moderna Inc.'),
('Sputnik V', 'Rusia', 'Instituto Gamaleya');


INSERT INTO Lote (NumeroLote, Cantidad, IdVacuna)
VALUES 
('PFZ123', 1000, 1),  
('MOD456', 500, 2),  
('SPK789', 750, 3);   


INSERT INTO Paciente (Nombre, Documento)
VALUES 
('Juan Pérez', '12345678'),
('Ana Gómez', '23456789'),
('Luis Ramírez', '34567890');

INSERT INTO Enfermero (Nombre, Matricula)
VALUES 
('Enfermera Marta', 'ENF001'),
('Enfermero Carlos', 'ENF002');

INSERT INTO AplicacionVacuna (IdPaciente, IdEnfermero, IdLote, DosisNumero, FechaAplicacion)
VALUES 
(1, 1, 1, 1, '2025-06-01'),  
(2, 2, 2, 1, '2025-06-05'), 
(3, 1, 3, 1, '2025-06-07');  