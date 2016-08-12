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



INSERT INTO terms (
 name,
 definition,
 author,
 web_link)
VALUES
 (
 "active record",
 "an ORM for ruby",
 "David Heinemeier Hansson",
 "http://goo.gl/dbXsUX"),
 (
 "modules",
 "a way of grouping together methods, classes, and constants",
 "Andy Hunt, Dave Thomas",
 "http://goo.gl/cee6oc"),
 (
 "Ruby Tk",
 "a graphical user interface (GUI) for Ruby",
 "David Heinemeier Hansson",
  "http://goo.gl/JD1zMe");

INSERT INTO categories (
name,
subject)
VALUES
(
"Ruby",
"programming");


INSERT INTO terms (
 name,
 definition,
 author,
 web_link)
VALUES
 (
 "riffing",
 "verbally bantering with the audience; also known as crowd work.",
 "Greg Dean",
 "http://goo.gl/Md0cr1");

 INSERT INTO categories (
 name,
 subject)
 VALUES
 (
 "Miscellaneous",
 "Stand up comedy");

SELECT
  name,
  web_link
FROM
  terms;
