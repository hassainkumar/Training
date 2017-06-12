select row_number()over(order by id) as rowid,
rank() over(order by NAME) as rankname,
*
into FRIENDS.dbo.detailtest
 from FRIENDS.dbo.detail

order by rankname
;

