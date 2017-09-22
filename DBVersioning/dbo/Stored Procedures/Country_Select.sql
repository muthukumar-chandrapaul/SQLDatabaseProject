
CREATE procedure [dbo].[Country_Select](@ID int =0 )
As 
Begin
IF @ID=0
	Select ID,Name,CCode2,CCode3,Image_URL,Image_Alt
	 from Country where isnull(Active,1)=1 
Else
	Select ID,Name,CCode2,CCode3,Image_URL,Image_Alt from Country where isnull(Active,1)=1 and ID=@ID

End