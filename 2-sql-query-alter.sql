

use db_library

ALTER TABLE members ADD address_id int NULL;

alter table members add constraint address_members_fk
		foreign key (address_id) references address (id)
		on delete set null
		on update cascade;

alter table loans add constraint members_loans_fk
		foreign key (member_id) references members (id)
		on delete cascade
		on update cascade;

alter table loans add constraint library_loans_fk
		foreign key (library_id) references library (id)
		on delete cascade
		on update cascade;

alter table book_category add constraint category_book_category_fk
		foreign key (category_id) references category (id)
		on delete cascade
		on update cascade;


alter table book_author add constraint authors_book_author_fk
		foreign key (author_id) references author (id)
		on delete cascade;


alter table book_library add constraint books_book_library_fk
		foreign key (book_id) references books (id)
		on delete cascade;

ALTER TABLE library ADD address_id int NULL;

alter table library add constraint library_address_fk
		foreign key (address_id) references address (id);



alter table loans add constraint loans_books_fk
		foreign key (book_id) references books (id)
		on delete cascade
		on update cascade;

alter table book_category add constraint book_category_books_fk
		foreign key (book_id) references books (id)
		on delete cascade
		on update cascade;


alter table book_author add constraint book_author_books_fk
		foreign key (book_id) references books (id)
		on delete cascade
		on update cascade;

alter table book_library add constraint book_library_books_fk
		foreign key (library_id) references library(id)
		on delete cascade;