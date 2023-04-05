USE Northwind;

CREATE LOGIN USER_Sales WITH PASSWORD = N'123456', DEFAULT_DATABASE = Northwind, CHECK_EXPIRATION = OFF, CHECK_POLICY = OFF
CREATE LOGIN USER_HR WITH PASSWORD = N'123456', DEFAULT_DATABASE = Northwind, CHECK_EXPIRATION = OFF, CHECK_POLICY = OFF
CREATE LOGIN USER_CEO WITH PASSWORD = N'123456', DEFAULT_DATABASE = Northwind, CHECK_EXPIRATION = OFF, CHECK_POLICY = OFF

CREATE USER USER_Sales FOR LOGIN USER_Sales;
CREATE USER USER_HR FOR LOGIN USER_HR;
CREATE USER USER_CEO FOR LOGIN USER_CEO;

CREATE ROLE SalesRole;
CREATE ROLE	HRRole;
CREATE ROLE	CEORole;

ALTER ROLE SalesRole ADD MEMBER USER_Sales;
ALTER ROLE HRRole ADD MEMBER USER_HR;
ALTER ROLE CEORole ADD MEMBER USER_CEO;

DENY SELECT ON Customers TO HRRole;
DENY SELECT ON Orders TO HRRole;
DENY SELECT ON Employees TO SalesRole;