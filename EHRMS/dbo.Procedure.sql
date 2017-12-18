CREATE PROCEDURE [dbo].[GetEmployee] 
	@PageNo int = 1,
	@pageSize int = 10 , 
	@IsActive bit = 1,
	@Search  varchar = '' , 
	@order varchar = 'id'
AS
BEGIN
	SELECT * from Employees
	where Name like '%'+@Search+'%'
	AND
	IsActive = @IsActive
	order by 
	case when @order = 'id' then Id end ,
	case when @order = 'age' then age end 

	OFFSET @pageSize * (@PageNo - 1) rows
	fetch next @pageSize rows only

	SELECT COunt(Id) from Employees
END