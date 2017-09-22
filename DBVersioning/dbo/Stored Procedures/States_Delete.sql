

create procedure [dbo].[States_Delete]
 
@ID int, 
@retval varchar(2)='E'
 
As 
Begin 
Delete from States where ID=@ID 
select @retval='D'
Select 'Deleted' as results
End