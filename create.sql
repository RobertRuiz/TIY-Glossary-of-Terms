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
