-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/LCEG6q
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Netflix_Movies" (
    "show_id" char(10)   NOT NULL,
    "type" varchar   NOT NULL,
    "title" varchar   NOT NULL,
    "director" varchar   NOT NULL,
    "cast" varchar   NOT NULL,
    "country" varchar   NOT NULL,
    "date_added" Date   NOT NULL,
    "release_year" int   NOT NULL,
    "rating" varchar   NOT NULL,
    "duration" int   NOT NULL,
    "listed_in" varchar   NOT NULL,
    "description" varchar   NOT NULL,
    "imdb" varchar   NOT NULL,
    "rotten tomatoes" varchar   NOT NULL,
    "hulu" boolean   NOT NULL,
    "prime_video" boolean   NOT NULL,
    "Disney+" boolean   NOT NULL,
    CONSTRAINT "pk_Netflix_Movies" PRIMARY KEY (
        "show_id"
     )
);


CREATE TABLE "Countries" (
    "country" varchar   NOT NULL,
    "region" varchar   NOT NULL,
    CONSTRAINT "pk_Countries" PRIMARY KEY (
        "country"
     )
);

ALTER TABLE "Netflix_Movies" ADD CONSTRAINT "fk_Netflix_Movies_country" FOREIGN KEY("country")
REFERENCES "Countries" ("country");

