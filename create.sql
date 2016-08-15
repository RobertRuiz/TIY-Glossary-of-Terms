CREATE TABLE terms(id serial primary key, name char(100), definition char(100), author char(100), category_id integer, web_link char(100);

create table categories(id serial primary key, name char(100), subject char(100);

INSERT INTO categories (
name,
subject)
VALUES
(
"Front End Engineering",
"Javascript"
);

INSERT INTO categories (
name,
subject)
VALUES
(
"Back End Engineering",
"Ruby"
);

INSERT INTO terms (
 name,
 definition,
 author,
 web_link,
 category_id)
VALUES
 (
 "Active record",
 "an ORM for ruby",
 "David Heinemeier Hansson",
 "http://goo.gl/dbXsUX",
 2),
 (
 "Modules",
 "a way of grouping together methods, classes, and constants",
 "Andy Hunt, Dave Thomas",
 "http://goo.gl/cee6oc",
 2),
 (
 "Ruby Tk",
 "a graphical user interface (GUI) for Ruby",
 "David Heinemeier Hansson",
 "http://goo.gl/JD1zMe",
 2),
 (
 "Strings",
 "Strings are text. They are denoted by surrounding text with either single or double quotes.",
 "MDN Mozilla Developer Network",
 "https://goo.gl/auKju",
 1),
 (
 "Classes",
 "Classes are a template to create many objects with similar qualities.",
 "MDN Mozilla Developer Network",
 "https://goo.gl/4yX6jM",
 1),
 (
  "Ternary Operator",
  "The ternary operator is usually used as a shortcut for the if statement.",
  "MDN Mozilla Developer Network",
  "https://goo.gl/zdZXj",
 1);
