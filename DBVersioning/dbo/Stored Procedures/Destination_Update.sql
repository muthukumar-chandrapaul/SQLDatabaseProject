
CREATE procedure  [dbo].[Destination_Update]
 
@ID int,
@Name varchar(50),
@DCode  varchar(15),
@States_ID int,
@Active bit  = 1, 
@retval varchar(2)='E' 
 
As 
Begin 
update Destination  set Name=@Name,DCode=@DCode,States_ID=@States_ID,Active=@Active where ID=@ID 
select @retval='U'
Select 'Inserted' as results
End
