create table terms(id INTEGER PRIMARY KEY AUTOINCREMENT,
                  name varchar,
                  definition varchar,
                  author varchar,
                  web_link varchar,
                  category_id integer,
                  created_at datetime,
                  updated_at datetime
                  );

create table categories(id INTEGER PRIMARY KEY AUTOINCREMENT,
                        name varchar,
                        subject varchar,
                        created_at datetime,
                        updated_at datetime
                        );

INSERT INTO categories (
name,
subject,
created_at,
updated_at)
VALUES
(
"Front End Engineering",
"Javascript",
2013-11-11,
2014-11-12
);

INSERT INTO categories (
name,
subject,
created_at,
updated_at)
VALUES
(
"Back End Engineering",
"Ruby",
2013-11-13,
2014-11-13
);

INSERT INTO terms (
 name,
 definition,
 author,
 web_link,
 category_id,
 created_at,
 updated_at)
VALUES
 (
 "Active record",
 "an ORM for ruby",
 "David Heinemeier Hansson",
 "http://goo.gl/dbXsUX",
 2,
2013-11-10,
2014-11-10),
 (
 "Modules",
 "a way of grouping together methods, classes, and constants",
 "Andy Hunt, Dave Thomas",
 "http://goo.gl/cee6oc",
 2,
 2013-11-11,
 2014-11-12),
 (
 "Ruby Tk",
 "a graphical user interface (GUI) for Ruby",
 "David Heinemeier Hansson",
 "http://goo.gl/JD1zMe",
 2,
 2013-11-12,
 2014-11-13),
 (
 "Strings",
 "Strings are text. They are denoted by surrounding text with either single or double quotes.",
 "MDN Mozilla Developer Network",
 "https://goo.gl/auKju",
 1,
 2013-11-14,
 2014-11-15),
 (
 "Classes",
 "Classes are a template to create many objects with similar qualities.",
 "MDN Mozilla Developer Network",
 "https://goo.gl/4yX6jM",
 1,
 2013-11-16,
 2014-11-17),
 (
  "Ternary Operator",
  "The ternary operator is usually used as a shortcut for the if statement.",
  "MDN Mozilla Developer Network",
  "https://goo.gl/zdZXj",
 1,
 2013-11-18,
 2014-11-19);
