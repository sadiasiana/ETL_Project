
CREATE TABLE "Netflix_Movies" (
    "show_id" char(10)   NOT NULL,
    "type" varchar   NOT NULL,
    "title" varchar   NOT NULL,
    "director" varchar   NOT NULL,
    "cast" varchar   NOT NULL,
    "country" varchar   NOT NULL,
    "date_added" Date   NOT NULL,
    "release_year" varchar   NOT NULL,
    "rating" varchar   NOT NULL,
    "duration" varchar   NOT NULL,
    "listed_in" varchar   NOT NULL,
    "description" varchar   NOT NULL,
    "imdb" varchar   NOT NULL,
    "rotten_tomatoes" varchar   NOT NULL,
    "hulu" varchar   NOT NULL,
    "prime_video" varchar   NOT NULL,
    "disney" varchar   NOT NULL,
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
