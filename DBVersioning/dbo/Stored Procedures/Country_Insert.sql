

CREATE procedure [dbo].[Country_Insert]
 
@Name varchar(50),
@CCode2  varchar(2),
@CCode3 varchar(3),
@Active bit  = 1,
@returnvalue varchar(2)='E' 
 
As 
Begin 
Insert into Country (Name,CCode2,CCode3,Active) values
						(@Name,@CCode2,@CCode3,@Active)
set @returnvalue ='I'
Select 'Inserted' as results
End
