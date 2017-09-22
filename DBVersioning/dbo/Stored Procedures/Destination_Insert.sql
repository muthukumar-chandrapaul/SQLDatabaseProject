
CREATE procedure  [dbo].[Destination_Insert]
 
@Name varchar(50),
@DCode  varchar(15),
@States_ID int,
@Active bit  = 1, 
@retval varchar(2)='E'
 
As 
Begin 
Insert into Destination (Name,DCode,States_ID,Active) values
						(@Name,@DCode,@States_ID,@Active)
select @retval='I'
Select 'Inserted' as results
End
