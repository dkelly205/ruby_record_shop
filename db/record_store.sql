DROP TABLE artists;
DROP TABLE albums;


CREATE TABLE artists
(
  id SERIAL8 primary key,
  name VARCHAR(255)
);


CREATE TABLE albums
(
  id SERIAL8 primary key,
  title VARCHAR(255) not null,
  artist_id INT8 references artists(id)
);
