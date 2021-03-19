#!/bin/bash

mysql --local-infile=1 --user=root --host=localhost -e "USE library; LOAD DATA LOCAL INFILE 'books.csv' INTO TABLE books FIELDS TERMINATED BY ',' ENCLOSED BY '\"' LINES TERMINATED BY '\n' IGNORE 1 LINES (@Title, @Author, @Genre, @Height, @Publisher) SET title = @Title, author = @Author, genre = @Genre, height = @Height, publisher = @Publisher" -p00000000