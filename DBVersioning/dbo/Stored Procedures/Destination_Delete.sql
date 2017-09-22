

CREATE procedure [dbo].[Destination_Delete]
 
@ID int, 
@retval varchar(2)='E'
 
As 
Begin 
Delete from Destination where ID=@ID 
select @retval='D'
Select 'Deleted' as results
End