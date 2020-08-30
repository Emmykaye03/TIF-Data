/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/

MERGE INTO Failures AS Target
USING (VALUES 
        (1, 'Broke Application', 'Caused error and broke app', '2013-09-01'), 
        (2, 'Lost Keys', 'Spent hours trying to find my keys', '2012-01-13'), 
(3, 'Lost a file', 'Lost a file on my computer', '2011-09-03')
)
AS Source (FailID, Name, Description, Date)
ON Target.FailID = Source.FailID
WHEN NOT MATCHED BY TARGET THEN
INSERT (Name, Description, Date)
VALUES ( Name, Description, Date);
GO
