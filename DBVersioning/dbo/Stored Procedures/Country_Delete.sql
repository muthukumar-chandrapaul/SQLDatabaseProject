

create procedure [dbo].[Country_Delete]
 
@ID int, 
@retval varchar(2)='E'
 
As 
Begin 
Delete from Country where ID=@ID 
select @retval='D'
Select 'Deleted' as results
End