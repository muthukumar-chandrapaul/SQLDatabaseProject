

CREATE procedure [dbo].[Country_Update]
 
@ID int,
@Name varchar(50),
@CCode2  varchar(2),
@CCode3 varchar(3),
@Active bit  = 1,
@retval varchar(2)='E'
 
As 
Begin 
update Country  set Name=@Name,CCode2=@CCode2,CCode3=@CCode3,Active=@Active where ID=@ID 
select @retval='U'
Select 'Inserted' as results
End