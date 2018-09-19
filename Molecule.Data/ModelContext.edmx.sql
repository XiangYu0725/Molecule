
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 09/19/2018 15:43:42
-- Generated from EDMX file: B:\Xeon\Molecule\Molecule.Data\ModelContext.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [Molecule];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_StudentParent]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PersonSet_Parent] DROP CONSTRAINT [FK_StudentParent];
GO
IF OBJECT_ID(N'[dbo].[FK_ClassStudent]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PersonSet_Student] DROP CONSTRAINT [FK_ClassStudent];
GO
IF OBJECT_ID(N'[dbo].[FK_Headmaster]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ClassSet] DROP CONSTRAINT [FK_Headmaster];
GO
IF OBJECT_ID(N'[dbo].[FK_ClassTeacher_Class]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ClassTeacher] DROP CONSTRAINT [FK_ClassTeacher_Class];
GO
IF OBJECT_ID(N'[dbo].[FK_ClassTeacher_Teacher]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ClassTeacher] DROP CONSTRAINT [FK_ClassTeacher_Teacher];
GO
IF OBJECT_ID(N'[dbo].[FK_DepartmentTeacher]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PersonSet_Teacher] DROP CONSTRAINT [FK_DepartmentTeacher];
GO
IF OBJECT_ID(N'[dbo].[FK_DeanOfDepartment]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[DepartmentSet] DROP CONSTRAINT [FK_DeanOfDepartment];
GO
IF OBJECT_ID(N'[dbo].[FK_ClassExam]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ExamSet] DROP CONSTRAINT [FK_ClassExam];
GO
IF OBJECT_ID(N'[dbo].[FK_ExamTeacher]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ExamSet] DROP CONSTRAINT [FK_ExamTeacher];
GO
IF OBJECT_ID(N'[dbo].[FK_ExamResultStudent]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ExamResultSet] DROP CONSTRAINT [FK_ExamResultStudent];
GO
IF OBJECT_ID(N'[dbo].[FK_ExamExamResult]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ExamResultSet] DROP CONSTRAINT [FK_ExamExamResult];
GO
IF OBJECT_ID(N'[dbo].[FK_Student_inherits_Person]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PersonSet_Student] DROP CONSTRAINT [FK_Student_inherits_Person];
GO
IF OBJECT_ID(N'[dbo].[FK_Parent_inherits_Person]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PersonSet_Parent] DROP CONSTRAINT [FK_Parent_inherits_Person];
GO
IF OBJECT_ID(N'[dbo].[FK_Teacher_inherits_Person]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PersonSet_Teacher] DROP CONSTRAINT [FK_Teacher_inherits_Person];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[PersonSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[PersonSet];
GO
IF OBJECT_ID(N'[dbo].[ClassSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ClassSet];
GO
IF OBJECT_ID(N'[dbo].[ExamSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ExamSet];
GO
IF OBJECT_ID(N'[dbo].[DepartmentSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[DepartmentSet];
GO
IF OBJECT_ID(N'[dbo].[ExamResultSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ExamResultSet];
GO
IF OBJECT_ID(N'[dbo].[PersonSet_Student]', 'U') IS NOT NULL
    DROP TABLE [dbo].[PersonSet_Student];
GO
IF OBJECT_ID(N'[dbo].[PersonSet_Parent]', 'U') IS NOT NULL
    DROP TABLE [dbo].[PersonSet_Parent];
GO
IF OBJECT_ID(N'[dbo].[PersonSet_Teacher]', 'U') IS NOT NULL
    DROP TABLE [dbo].[PersonSet_Teacher];
GO
IF OBJECT_ID(N'[dbo].[ClassTeacher]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ClassTeacher];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'PersonSet'
CREATE TABLE [dbo].[PersonSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Gender] int  NOT NULL
);
GO

-- Creating table 'ClassSet'
CREATE TABLE [dbo].[ClassSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Level] int  NOT NULL,
    [Number] int  NOT NULL,
    [Headmaster_Id] int  NOT NULL
);
GO

-- Creating table 'ExamSet'
CREATE TABLE [dbo].[ExamSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Type] nvarchar(max)  NOT NULL,
    [Subject] int  NOT NULL,
    [Introduction] nvarchar(max)  NOT NULL,
    [Topic] nvarchar(max)  NOT NULL,
    [Identifier] nvarchar(max)  NOT NULL,
    [ClassId] int  NOT NULL,
    [Importance] int  NOT NULL,
    [Teacher_Id] int  NOT NULL
);
GO

-- Creating table 'DepartmentSet'
CREATE TABLE [dbo].[DepartmentSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Dean_Id] int  NOT NULL
);
GO

-- Creating table 'ExamResultSet'
CREATE TABLE [dbo].[ExamResultSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Mark] int  NOT NULL,
    [ExamId] int  NOT NULL
);
GO

-- Creating table 'PersonSet_Student'
CREATE TABLE [dbo].[PersonSet_Student] (
    [ClassId] int  NOT NULL,
    [Role] int  NOT NULL,
    [Picture] varbinary(max)  NOT NULL,
    [Birthday] datetime  NOT NULL,
    [Id] int  NOT NULL
);
GO

-- Creating table 'PersonSet_Parent'
CREATE TABLE [dbo].[PersonSet_Parent] (
    [StudentId] int  NOT NULL,
    [Phone] nvarchar(max)  NOT NULL,
    [Email] nvarchar(max)  NOT NULL,
    [WeChat] nvarchar(max)  NOT NULL,
    [Contact] int  NOT NULL,
    [Id] int  NOT NULL
);
GO

-- Creating table 'PersonSet_Teacher'
CREATE TABLE [dbo].[PersonSet_Teacher] (
    [Subject] nvarchar(max)  NOT NULL,
    [SecondarySubject] nvarchar(max)  NOT NULL,
    [Age] int  NOT NULL,
    [Role] int  NOT NULL,
    [WorkNumber] nvarchar(max)  NOT NULL,
    [Picture] varbinary(max)  NOT NULL,
    [DepartmentId] int  NOT NULL,
    [Id] int  NOT NULL
);
GO

-- Creating table 'ClassTeacher'
CREATE TABLE [dbo].[ClassTeacher] (
    [Classes_Id] int  NOT NULL,
    [Teachers_Id] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'PersonSet'
ALTER TABLE [dbo].[PersonSet]
ADD CONSTRAINT [PK_PersonSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'ClassSet'
ALTER TABLE [dbo].[ClassSet]
ADD CONSTRAINT [PK_ClassSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'ExamSet'
ALTER TABLE [dbo].[ExamSet]
ADD CONSTRAINT [PK_ExamSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'DepartmentSet'
ALTER TABLE [dbo].[DepartmentSet]
ADD CONSTRAINT [PK_DepartmentSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'ExamResultSet'
ALTER TABLE [dbo].[ExamResultSet]
ADD CONSTRAINT [PK_ExamResultSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'PersonSet_Student'
ALTER TABLE [dbo].[PersonSet_Student]
ADD CONSTRAINT [PK_PersonSet_Student]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'PersonSet_Parent'
ALTER TABLE [dbo].[PersonSet_Parent]
ADD CONSTRAINT [PK_PersonSet_Parent]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'PersonSet_Teacher'
ALTER TABLE [dbo].[PersonSet_Teacher]
ADD CONSTRAINT [PK_PersonSet_Teacher]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Classes_Id], [Teachers_Id] in table 'ClassTeacher'
ALTER TABLE [dbo].[ClassTeacher]
ADD CONSTRAINT [PK_ClassTeacher]
    PRIMARY KEY CLUSTERED ([Classes_Id], [Teachers_Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [StudentId] in table 'PersonSet_Parent'
ALTER TABLE [dbo].[PersonSet_Parent]
ADD CONSTRAINT [FK_StudentParent]
    FOREIGN KEY ([StudentId])
    REFERENCES [dbo].[PersonSet_Student]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_StudentParent'
CREATE INDEX [IX_FK_StudentParent]
ON [dbo].[PersonSet_Parent]
    ([StudentId]);
GO

-- Creating foreign key on [ClassId] in table 'PersonSet_Student'
ALTER TABLE [dbo].[PersonSet_Student]
ADD CONSTRAINT [FK_ClassStudent]
    FOREIGN KEY ([ClassId])
    REFERENCES [dbo].[ClassSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ClassStudent'
CREATE INDEX [IX_FK_ClassStudent]
ON [dbo].[PersonSet_Student]
    ([ClassId]);
GO

-- Creating foreign key on [Headmaster_Id] in table 'ClassSet'
ALTER TABLE [dbo].[ClassSet]
ADD CONSTRAINT [FK_Headmaster]
    FOREIGN KEY ([Headmaster_Id])
    REFERENCES [dbo].[PersonSet_Teacher]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Headmaster'
CREATE INDEX [IX_FK_Headmaster]
ON [dbo].[ClassSet]
    ([Headmaster_Id]);
GO

-- Creating foreign key on [Classes_Id] in table 'ClassTeacher'
ALTER TABLE [dbo].[ClassTeacher]
ADD CONSTRAINT [FK_ClassTeacher_Class]
    FOREIGN KEY ([Classes_Id])
    REFERENCES [dbo].[ClassSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Teachers_Id] in table 'ClassTeacher'
ALTER TABLE [dbo].[ClassTeacher]
ADD CONSTRAINT [FK_ClassTeacher_Teacher]
    FOREIGN KEY ([Teachers_Id])
    REFERENCES [dbo].[PersonSet_Teacher]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ClassTeacher_Teacher'
CREATE INDEX [IX_FK_ClassTeacher_Teacher]
ON [dbo].[ClassTeacher]
    ([Teachers_Id]);
GO

-- Creating foreign key on [DepartmentId] in table 'PersonSet_Teacher'
ALTER TABLE [dbo].[PersonSet_Teacher]
ADD CONSTRAINT [FK_DepartmentTeacher]
    FOREIGN KEY ([DepartmentId])
    REFERENCES [dbo].[DepartmentSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_DepartmentTeacher'
CREATE INDEX [IX_FK_DepartmentTeacher]
ON [dbo].[PersonSet_Teacher]
    ([DepartmentId]);
GO

-- Creating foreign key on [Dean_Id] in table 'DepartmentSet'
ALTER TABLE [dbo].[DepartmentSet]
ADD CONSTRAINT [FK_DeanOfDepartment]
    FOREIGN KEY ([Dean_Id])
    REFERENCES [dbo].[PersonSet_Teacher]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_DeanOfDepartment'
CREATE INDEX [IX_FK_DeanOfDepartment]
ON [dbo].[DepartmentSet]
    ([Dean_Id]);
GO

-- Creating foreign key on [ClassId] in table 'ExamSet'
ALTER TABLE [dbo].[ExamSet]
ADD CONSTRAINT [FK_ClassExam]
    FOREIGN KEY ([ClassId])
    REFERENCES [dbo].[ClassSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ClassExam'
CREATE INDEX [IX_FK_ClassExam]
ON [dbo].[ExamSet]
    ([ClassId]);
GO

-- Creating foreign key on [Teacher_Id] in table 'ExamSet'
ALTER TABLE [dbo].[ExamSet]
ADD CONSTRAINT [FK_ExamTeacher]
    FOREIGN KEY ([Teacher_Id])
    REFERENCES [dbo].[PersonSet_Teacher]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ExamTeacher'
CREATE INDEX [IX_FK_ExamTeacher]
ON [dbo].[ExamSet]
    ([Teacher_Id]);
GO

-- Creating foreign key on [ExamId] in table 'ExamResultSet'
ALTER TABLE [dbo].[ExamResultSet]
ADD CONSTRAINT [FK_ExamExamResult]
    FOREIGN KEY ([ExamId])
    REFERENCES [dbo].[ExamSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ExamExamResult'
CREATE INDEX [IX_FK_ExamExamResult]
ON [dbo].[ExamResultSet]
    ([ExamId]);
GO

-- Creating foreign key on [Id] in table 'PersonSet_Student'
ALTER TABLE [dbo].[PersonSet_Student]
ADD CONSTRAINT [FK_Student_inherits_Person]
    FOREIGN KEY ([Id])
    REFERENCES [dbo].[PersonSet]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Id] in table 'PersonSet_Parent'
ALTER TABLE [dbo].[PersonSet_Parent]
ADD CONSTRAINT [FK_Parent_inherits_Person]
    FOREIGN KEY ([Id])
    REFERENCES [dbo].[PersonSet]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Id] in table 'PersonSet_Teacher'
ALTER TABLE [dbo].[PersonSet_Teacher]
ADD CONSTRAINT [FK_Teacher_inherits_Person]
    FOREIGN KEY ([Id])
    REFERENCES [dbo].[PersonSet]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------