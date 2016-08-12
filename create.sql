create table terms(id INTEGER PRIMARY KEY AUTOINCREMENT,
                  name varchar,
                  definition varchar,
                  author varchar,
                  web_link varchar,
                  category_id integer
                  );

create table categories(id INTEGER PRIMARY KEY AUTOINCREMENT,
                        name varchar,
                        subject varchar
                        );

INSERT INTO categories (
name,
subject)
VALUES
(
"Programming",
"Ruby"
);

INSERT INTO categories (
name,
subject)
VALUES
(
"Comedy",
"Stand up comedy"
);

INSERT INTO terms (
 name,
 definition,
 author,
 web_link,
 category_id)
VALUES
 (
 "active record",
 "an ORM for ruby",
 "David Heinemeier Hansson",
 "http://goo.gl/dbXsUX",
 1),
 (
 "modules",
 "a way of grouping together methods, classes, and constants",
 "Andy Hunt, Dave Thomas",
 "http://goo.gl/cee6oc",
 1),
 (
 "Ruby Tk",
 "a graphical user interface (GUI) for Ruby",
 "David Heinemeier Hansson",
 "http://goo.gl/JD1zMe",
 1),
 (
 "riffing",
 "verbally bantering with the audience; also known as crowd work.",
 "Greg Dean",
 "http://goo.gl/Md0cr1",
 2);
