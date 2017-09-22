
CREATE procedure [dbo].[States_Insert]
 
@Name varchar(50),
@SCode  varchar(15),
@Country_ID int,
@Active bit  = 1,
@retval varchar(2)='E'
 
As 
Begin 
Insert into States (Name,SCode,Country_ID,Active) values (@Name,@SCode,@Country_ID,@Active)
set @retval='I'
Select 'Inserted' as results
End
