
CREATE procedure [dbo].[States_Update]
 
@ID int,
@Name varchar(50),
@SCode  varchar(15),
@Country_ID int,
@Active bit  = 1, 
@retval varchar(2)='E'
 
As 
Begin 
update States  set Name=@Name,SCode=@SCode,Country_ID=@Country_ID,Active=@Active where ID=@ID 
set @retval='I'
Select 'Updated' as results
End
