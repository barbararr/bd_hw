CREATE TABLE "Book" (
  "ISBN" int PRIMARY KEY,
  "Author" varchar,
  "Year" int,
  "Title" varchar,
  "PageCount" int
);

CREATE TABLE "BookObject" (
  "Id" int PRIMARY KEY,
  "ISBN" int UNIQUE,
  "ShelfPlace" varchar
);

CREATE TABLE "BookCategory" (
  "Id" int PRIMARY KEY,
  "Name" varchar
);

CREATE TABLE "Publisher" (
  "Id" int PRIMARY KEY,
  "Name" varchar,
  "Adress" varchar
);

CREATE TABLE "BookRecord" (
  "Id" int PRIMARY KEY,
  "ReturnDate" date
);

CREATE TABLE "Reader" (
  "Id" int PRIMARY KEY,
  "Surname" varchar,
  "Name" varchar,
  "BirthDate" date,
  "Adress" varchar
);

ALTER TABLE "BookObject" ADD FOREIGN KEY ("ISBN") REFERENCES "Book" ("ISBN");

ALTER TABLE "Book" ADD FOREIGN KEY ("ISBN") REFERENCES "Publisher" ("Id");

ALTER TABLE "BookRecord" ADD FOREIGN KEY ("Id") REFERENCES "BookObject" ("Id");

ALTER TABLE "BookRecord" ADD FOREIGN KEY ("Id") REFERENCES "Reader" ("Id");

ALTER TABLE "Book" ADD FOREIGN KEY ("ISBN") REFERENCES "BookCategory" ("Id");
