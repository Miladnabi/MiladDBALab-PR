USE CICD_PR_Dev;
GO

IF COL_LENGTH('Sales.Customers', 'EmailAddress') IS NULL
BEGIN
    ALTER TABLE Sales.Customers
    ADD EmailAddress VARCHAR(200) NULL;
END;
GO

IF COL_LENGTH('Sales.Customers', 'PhoneNumber') IS NULL
BEGIN
    ALTER TABLE Sales.Customers
    ADD PhoneNumber VARCHAR(25) NULL;
END;
GO
