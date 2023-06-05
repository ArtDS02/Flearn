Create Database ExamSystem
Use ExamSystem

Create Table Account(
	AccountID Int IDENTITY(1,1) PRIMARY KEY,
	FirstName NVARCHAR(50),
    LastName NVARCHAR(50),
	UserName VARCHAR(50),
	[Password] VARCHAR(50),
	Phone VARCHAR(20),
	Email VARCHAR(50),
	DOB VARCHAR(50),
	[Role] Int
)

Create Table CollectionDetail(
	CollectionDetailID Int IDENTITY(1,1) PRIMARY KEY,
	[Name] NVARCHAR(50),
	[Owner] Int References Account(AccountID)
)
select * from CollectionDetail

Create Table Question(
	QuestionID Int IDENTITY(1,1) PRIMARY KEY,
	Detail NVarchar(Max),
	AnswerA NVarchar(Max),
	AnswerB NVarchar(Max),
	AnswerC NVarchar(Max),
	AnswerD NVarchar(Max),
	TrueAnswer Varchar(10)
)

Create Table [Collection](	
	CollectionDetailID Int References CollectionDetail(CollectionDetailID),
	QuestionID Int References Question(QuestionID),	
	Primary Key (CollectionDetailID, QuestionID)
)
select * from [Collection]

Create Table Exam(
	ExamID Int IDENTITY(1,1) PRIMARY KEY,
	[Name] NVarchar(50),
	TimeLimit int,
	[Date] Varchar(50),	
	[Owner] Int References Account(AccountID),
	CollectionDetailID Int References CollectionDetail(CollectionDetailID)
)


Create Table Enrollment(	
	AccountID Int References Account(AccountID),
	ExamID Int References Exam(ExamID),
	Primary Key(AccountID, ExamID)
)

Create Table Result(
	ResultId Int IDENTITY(1,1) PRIMARY KEY,
	AccountID Int References Account(AccountID),
	ExamID Int References Exam(ExamID),
	Score Int,
	[Rank] NVarchar(50) 
)







---------------------------------------------------------------------------------------------
									-- Table: Account
INSERT INTO Account (FirstName, LastName, UserName, [Password], Phone, Email, DOB, [Role])
VALUES ('Thinh', 'Quoc', 'thinhquoc', '123456789', '1234567890', 'quocthinh1992002@gmail.com', '2002-09-19', 0);

INSERT INTO Account (FirstName, LastName, UserName, [Password], Phone, Email, DOB, [Role])
VALUES ('Michael', 'Johnson', 'mjohnson', 'mikepass', '5551234567', 'mjohnson@example.com', '1992-09-21', 1);

INSERT INTO Account (FirstName, LastName, UserName, [Password], Phone, Email, DOB, [Role])
VALUES ('Emily', 'Wilson', 'emwilson', 'emilypass', '1112223333', 'emwilson@example.com', '1998-07-07', 2);



INSERT INTO CollectionDetail ([Name], [Owner])
VALUES ('World history', 1);

INSERT INTO CollectionDetail ([Name], [Owner])
VALUES ('Animal quizz', 1);

INSERT INTO CollectionDetail ([Name], [Owner])
VALUES (N'Địa lý Việt Nam', 2);


INSERT INTO Question (Detail, AnswerA, AnswerB, AnswerC, AnswerD, TrueAnswer)
VALUES ('Who is credited with discovering America?', 'Christopher Columbus', 'Marco Polo', 'Vasco da Gama', 'Amerigo Vespucci', 'A');

INSERT INTO Question (Detail, AnswerA, AnswerB, AnswerC, AnswerD, TrueAnswer)
VALUES ('Which ancient civilization built the Great Wall of China?', 'Ancient Egyptians', 'Mayans', 'Romans', 'Chinese', 'D');

INSERT INTO Question (Detail, AnswerA, AnswerB, AnswerC, AnswerD, TrueAnswer)
VALUES ('Which war was fought between the North and the South regions of the United States?', 'World War I', 'Civil War', 'World War II', 'Revolutionary War', 'B');

INSERT INTO Question (Detail, AnswerA, AnswerB, AnswerC, AnswerD, TrueAnswer)
VALUES ('Who was the first President of the United States?', 'George Washington', 'Thomas Jefferson', 'Abraham Lincoln', 'John Adams', 'A');

INSERT INTO Question (Detail, AnswerA, AnswerB, AnswerC, AnswerD, TrueAnswer)
VALUES ('Which European country colonized a significant part of Africa during the era of imperialism?', 'England', 'France', 'Spain', 'Italy', 'B');

INSERT INTO Question (Detail, AnswerA, AnswerB, AnswerC, AnswerD, TrueAnswer)
VALUES ('Who was the leader of the Soviet Union during World War II?', 'Nikita Khrushchev', 'Vladimir Lenin', 'Joseph Stalin', 'Mikhail Gorbachev', 'C');

INSERT INTO Question (Detail, AnswerA, AnswerB, AnswerC, AnswerD, TrueAnswer)
VALUES ('Which city was the capital of the Roman Empire?', 'Athens', 'Rome', 'Alexandria', 'Constantinople', 'B');

INSERT INTO Question (Detail, AnswerA, AnswerB, AnswerC, AnswerD, TrueAnswer)
VALUES ('Who wrote the "I Have a Dream" speech?', 'Winston Churchill', 'Abraham Lincoln', 'Nelson Mandela', 'Martin Luther King Jr.', 'D');

INSERT INTO Question (Detail, AnswerA, AnswerB, AnswerC, AnswerD, TrueAnswer)
VALUES ('Which document outlined the principles and grievances of the American colonists against British rule?', 'Bill of Rights', 'Constitution', 'Declaration of Independence', 'Articles of Confederation', 'C');

INSERT INTO Question (Detail, AnswerA, AnswerB, AnswerC, AnswerD, TrueAnswer)
VALUES ('Which European explorer reached India by sea, establishing direct trade routes?', 'Vasco da Gama', 'Christopher Columbus', 'Ferdinand Magellan', 'James Cook', 'A');

INSERT INTO Question (Detail, AnswerA, AnswerB, AnswerC, AnswerD, TrueAnswer)
VALUES ('Who was the first woman to win a Nobel Prize and the only person to win Nobel Prizes in two different scientific fields?', 'Marie Curie', 'Rosalind Franklin', 'Ada Lovelace', 'Jane Goodall', 'A');


INSERT INTO Question (Detail, AnswerA, AnswerB, AnswerC, AnswerD, TrueAnswer)
VALUES
  ('What is the largest living land animal?', 'Elephant', 'Lion', 'Giraffe', 'Hippopotamus', 'A'),
  ('Which bird is known for its ability to mimic human speech?', 'Parrot', 'Owl', 'Penguin', 'Sparrow', 'B'),
  ('What is the fastest land animal?', 'Cheetah', 'Lion', 'Gazelle', 'Zebra', 'C'),
  ('What is the world''s largest fish species?', 'Whale Shark', 'Great White Shark', 'Tiger Shark', 'Hammerhead Shark', 'D'),
  ('Which animal has the longest neck?', 'Giraffe', 'Elephant', 'Lion', 'Horse', 'A'),
  ('What is the largest species of penguin?', 'Emperor Penguin', 'King Penguin', 'Adelie Penguin', 'Macaroni Penguin', 'B'),
  ('Which animal is known for its ability to change color?', 'Chameleon', 'Lion', 'Elephant', 'Gorilla', 'C'),
  ('What is the national bird of the United States?', 'Bald Eagle', 'Peacock', 'Pigeon', 'Hummingbird', 'A'),
  ('Which animal is capable of flying upside down?', 'Bat', 'Butterfly', 'Ostrich', 'Duck', 'A'),
  ('What is the tallest living animal?', 'Kangaroo', 'Elephant', 'Giraffe', 'Zebra', 'C'),
  ('Which animal is known for its black and white stripes?', 'Leopard', 'Zebra', 'Tiger', 'Cheetah', 'B'),
  ('What is the largest species of bear?', 'Black Bear', 'Grizzly Bear', 'Polar Bear', 'Koala', 'C'),
  ('Which animal is considered the king of the jungle?', 'Gorilla', 'Tiger', 'Elephant', 'Lion', 'D'),
  ('What is the only mammal capable of sustained flight?', 'Bat', 'Flying Squirrel', 'Bird', 'Penguin', 'A'),
  ('Which animal has the longest lifespan?', 'Giant Tortoise', 'Elephant', 'Blue Whale', 'Gorilla', 'A')


INSERT INTO Question (Detail, AnswerA, AnswerB, AnswerC, AnswerD, TrueAnswer)
VALUES
(N'Thủ đô của Pháp là gì?', 'Paris', 'Lyon', 'Marseille', 'Nice', 'A'),
(N'Núi cao nhất thế giới là gì?', 'Everest', 'Kilimanjaro', 'K2', 'Matterhorn', 'A'),
(N'Hồ lớn nhất thế giới là gì?', N'Hồ Baikal', N'Hồ Michigan', N'Hồ Victoria', N'Hồ Tanganika', 'A'),
(N'Thành phố nào được gọi là "thành phố không bao giờ ngủ"?', 'New York', 'Tokyo', 'Paris', 'Las Vegas', 'D'),
(N'Đất nước nào là quốc gia có diện tích nhỏ nhất thế giới?', 'Vatican', 'Monaco', 'Nauru', 'Tuvalu', 'A'),
(N'Dòng sông nào là dòng sông dài nhất thế giới?', N'Sông Nile', N'Sông Amazon', N'Sông Mississippi', N'Sông Yangtze', 'B'),
(N'Núi lửa nổi tiếng Vesuvius nằm ở quốc gia nào?', N'Ý', N'Mỹ', N'Nhật Bản', 'New Zealand', 'A'),
(N'Kênh đào Panama nối hai đại dương nào với nhau?', N'Đại Tây Dương và Thái Bình Dương', N'Đại Tây Dương và Ấn Độ Dương', N'Thái Bình Dương và Ấn Độ Dương', N'Đại Tây Dương và Địa Trung Hải', 'A'),
(N'Quốc gia nào có dân số đông nhất thế giới?', N'Trung Quốc', N'Ấn Độ', N'Mỹ', 'Indonesia', 'A'),
(N'Hòn đảo nào là hòn đảo lớn nhất thế giới?', N'Đảo Greenland', N'Đảo Borneo', N'Đảo Madagascar', N'Đảo Honshu', 'A'),
(N'Thành phố nào được gọi là "thành phố tình yêu"?', 'Paris', 'Venice', 'Rome', 'Florence', 'B'),
(N'Quốc gia nào là quốc gia có dân số ít nhất thế giới?', 'Vatican', 'Monaco', 'Tonga', 'Andorra', 'A'),
(N'Dãy núi Rocky nằm ở châu lục nào?', N'Bắc Mỹ', N'Nam Mỹ', N'Châu Âu', N'Châu Phi', 'A')

Select * From Question
Select * From CollectionDetail
Select * From Collection

Insert into Collection Values (1,23)
Insert into Collection Values (1,24)
Insert into Collection Values (1,25)
Insert into Collection Values (1,26)
Insert into Collection Values (1,27)
Insert into Collection Values (1,28)
Insert into Collection Values (1,29)
Insert into Collection Values (1,30)
Insert into Collection Values (1,31)
Insert into Collection Values (1,32)
Insert into Collection Values (1,33)

Insert into Collection Values (2,34)
Insert into Collection Values (2,35)
Insert into Collection Values (2,36)
Insert into Collection Values (2,37)
Insert into Collection Values (2,38)
Insert into Collection Values (2,39)
Insert into Collection Values (2,40)
Insert into Collection Values (2,41)
Insert into Collection Values (2,42)
Insert into Collection Values (2,43)
Insert into Collection Values (2,44)
Insert into Collection Values (2,45)
Insert into Collection Values (2,46)
Insert into Collection Values (2,47)
Insert into Collection Values (2,48)

Insert into Collection Values (3,62)
Insert into Collection Values (3,63)
Insert into Collection Values (3,64)
Insert into Collection Values (3,65)
Insert into Collection Values (3,66)
Insert into Collection Values (3,67)
Insert into Collection Values (3,68)
Insert into Collection Values (3,69)
Insert into Collection Values (3,70)
Insert into Collection Values (3,71)
Insert into Collection Values (3,72)
Insert into Collection Values (3,73)
Insert into Collection Values (3,74)







