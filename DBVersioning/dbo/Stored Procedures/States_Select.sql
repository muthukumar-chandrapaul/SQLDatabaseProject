CREATE procedure [dbo].[States_Select]
@Country_ID int = 0,
@ID int = 0
As 
Begin

IF @ID<>0
	Begin
		Select S.ID,S.Name, S.SCode,S.Country_ID,C.Name as Country_Name
		,S.Image_URL,S.Image_Alt
		 from States S
		inner join Country C on C.Id=S.Country_ID
		 where isnull(S.Active,1)=1 and S.ID=@ID
	End
ELSE
	Begin
		IF @Country_ID <> 0
			Begin
					Select S.ID,S.Name, S.SCode,S.Country_ID,C.Name as Country_Name
					,S.Image_URL,S.Image_Alt
					 from States S
					inner join Country C on C.Id=S.Country_ID				
				where isnull(S.Active,1)=1 and S.Country_ID = @Country_ID
			End
		Else
			Begin
					Select S.ID,S.Name, S.SCode,S.Country_ID,C.Name as Country_Name
					,S.Image_URL,S.Image_Alt
					 from States S
					inner join Country C on C.Id=S.Country_ID
				 where isnull(S.Active,1)=1 
			End
	End
End
 