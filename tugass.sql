create database tugass

use tugass



create table Users(
	UserID char(10),
	FirstName varchar(200),
	LastName varchar(200),
	school varchar(100),
	Email varchar(100),
	PhoneNumber int,
	Lokasi varchar(100),
	DateofBirth varchar(100),
	Gender varchar(10),
	constraint UserPK PRIMARY KEY (UserId)
)

create table Pages(
	PageID char(10),
	PageName varchar(20),
	PageContent varchar(200),
	constraint PagePK primary key (PageID)

)

create table Friends(
	UserID char(10) foreign key references Users(UserID),
	FriendID char(20),
)

create table PagesLikes(
	 PageID char(10) foreign key references Pages(PageID),
	 UserID char(10) foreign key references Users(UserID),
)

create table Post(
	UserID char(10) foreign key references Users(UserID),
	PostId char(10),
	PostDate char(20),
	PostContent varchar(50),
	constraint PostPK primary key(PostID),
)

create table PostLike(
	UserID char(10) foreign key references Users(UserID),
	PostID char(10) foreign key references Post(PostID),
)


create table Comments(
	UserID char(10) foreign key references Users(UserID),
	PostID char(10) foreign key references Post(PostID),
	CommentID char(30),
	Commentdate char(20),
	Commentcontent varchar(50),
	constraint CommentsPK primary key(CommentID),
)

create table CommentLikes(
	CommentID char(30) foreign key references Comments(CommentID),
	UserID char(10) foreign key references Users(UserID),
)

create table Share(
	UserID char(10) foreign key references Users(UserID),
	PostID char(10) foreign key references Post(PostID),
)

create table Photos(
	PostID char(10) foreign key references Post(PostID),
	ImageContent varchar(50),
	PhotoID char(10),
	constraint PhotosPK primary key (PhotoID),

)