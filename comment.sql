select * from user;


delete from BBS where bbsAvailable = 0;
select * from BBS;

create table comment (
	commentContent varchar(300),
    commentID int,
    userID varchar(20),
    commentAvailable int,
    commentDate varchar(50),
    bbsID int,
    primary key(commentID)
);

select * from comment;