-- select sorguları örnekleri

use db_library

select * from books where page_number > (
	select min(page_number) from books group by title
		having title like '%1984%' );
    	
select * from books where page_number>all(
		select page_number from book_author ky
		inner join books k on k.id=ky.book_id
		inner join author y on y.id=ky.id
		where y.first_name like '%ç%' and y.last_name like '%as%'
);

select * from books inner join book_author 
			on books.id=book_author.book_id;