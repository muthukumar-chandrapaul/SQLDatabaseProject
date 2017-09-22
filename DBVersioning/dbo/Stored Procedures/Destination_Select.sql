
CREATE Procedure [dbo].[Destination_Select]
@States_ID int =0,
@ID int=0
As 
Begin

IF @ID<>0
	Begin
		Select D.ID,D.Name,D.DCode,D.States_ID, S.Name as States_Name,S.Country_ID, C.Name as Country_Name 
		,D.Image_URL,D.Image_Alt
		from Destination D
		inner join States S on S.ID=D.States_ID
		inner join Country C on C.ID=S.Country_ID
		where isnull(D.Active,1)=1 and D.ID=@ID
	End
ELSE
	Begin
		IF @States_ID <> 0
			Begin
			Select D.ID,D.Name,D.DCode,D.States_ID, S.Name as States_Name,S.Country_ID, C.Name as Country_Name 
			,D.Image_URL,D.Image_Alt
			from Destination D
			inner join States S on S.ID=D.States_ID
			inner join Country C on C.ID=S.Country_ID
			where isnull(D.Active,1)=1 and D.States_ID = @States_ID
			End
		Else
			Begin
			Select D.ID,D.Name,D.DCode,D.States_ID, S.Name as States_Name,S.Country_ID, C.Name as Country_Name 
			,D.Image_URL,D.Image_Alt
			from Destination D
			inner join States S on S.ID=D.States_ID
			inner join Country C on C.ID=S.Country_ID
			where isnull(D.Active,1)=1
			End
	End
End
