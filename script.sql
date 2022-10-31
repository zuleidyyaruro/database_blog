CREATE TABLE "user" (
  "id" SERIAL PRIMARY KEY,
  "name" varchar,
  "email" varchar UNIQUE NOT NULL,
  "password" varchar NOT NULL
);

CREATE TABLE "post" (
  "id" SERIAL PRIMARY KEY,
  "title" varchar NOT NULL,
  "description" varchar,
  "content" text,
  "created_at" date NOT NULL,
  "category_id" int NOT NULL,
  "user_id" int NOT NULL
);

CREATE TABLE "category" (
  "id" SERIAL PRIMARY KEY,
  "name" varchar NOT NULL
);

CREATE TABLE "comment" (
  "id" SERIAL PRIMARY KEY,
  "comment" varchar NOT NULL,
  "created_at" date NOT NULL,
  "post_id" int NOT NULL
);

ALTER TABLE "comment" ADD FOREIGN KEY ("post_id") REFERENCES "post" ("id");

ALTER TABLE "post" ADD FOREIGN KEY ("category_id") REFERENCES "category" ("id");

ALTER TABLE "post" ADD FOREIGN KEY ("user_id") REFERENCES "user" ("id");



INSERT INTO category VALUES(1, 'Entertainment');
INSERT INTO category VALUES(2, 'Technology');

INSERT INTO "user" VALUES(1, 'Zuleidy', 'zuleidy3@prueba.com', '435345');
INSERT INTO "user" VALUES(2, 'Andrea', 'andrea@prueba.com', 'dsfa3');

INSERT INTO post VALUES(1, 'Test Title', 'Test Description', 'Test Content', '2022-10-30', 1, 1);
INSERT INTO post VALUES(2, 'Test Title2', 'Test Description2', 'Test Content2', '2022-10-30', 2, 2);

INSERT INTO "comment"  VALUES(1, 'Comment 1', '2022-10-30', 1);
INSERT INTO "comment"  VALUES(2, 'Comment 2', '2022-10-30', 2);
