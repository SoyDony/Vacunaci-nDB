CREATE DATABASE Vacunacion;
GO

USE Vacunacion;
GO

CREATE TABLE Vacuna (
    IdVacuna INT PRIMARY KEY IDENTITY(1,1),
    Nombre NVARCHAR(100),
    Origen NVARCHAR(100),
    Proveedor NVARCHAR(100)
);


CREATE TABLE Lote (
    IdLote INT PRIMARY KEY IDENTITY(1,1),
    NumeroLote NVARCHAR(50),
    Cantidad INT,
    IdVacuna INT,
    FOREIGN KEY (IdVacuna) REFERENCES Vacuna(IdVacuna)
);


CREATE TABLE Paciente (
    IdPaciente INT PRIMARY KEY IDENTITY(1,1),
    Nombre NVARCHAR(100),
    Documento NVARCHAR(20)
);


CREATE TABLE Enfermero (
    IdEnfermero INT PRIMARY KEY IDENTITY(1,1),
    Nombre NVARCHAR(100),
    Matricula NVARCHAR(50)
);


CREATE TABLE AplicacionVacuna (
    IdAplicacion INT PRIMARY KEY IDENTITY(1,1),
    IdPaciente INT,
    IdEnfermero INT,
    IdLote INT,
    DosisNumero INT,
    FechaAplicacion DATE,
    FOREIGN KEY (IdPaciente) REFERENCES Paciente(IdPaciente),
    FOREIGN KEY (IdEnfermero) REFERENCES Enfermero(IdEnfermero),
    FOREIGN KEY (IdLote) REFERENCES Lote(IdLote)
);
