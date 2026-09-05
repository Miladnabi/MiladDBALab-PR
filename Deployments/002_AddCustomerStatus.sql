USE CICD_PR_Dev;
GO

IF COL_LENGTH('Sales.Customers', 'CustomerStatus') IS NULL
BEGIN
    ALTER TABLE Sales.Customers
    ADD CustomerStatus VARCHAR(20) NULL;

    PRINT 'CustomerStatus added.';
END
ELSE
BEGIN
    PRINT 'CustomerStatus already exists.';
END;
GO
