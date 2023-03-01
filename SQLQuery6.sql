
Artists:
artist_id (integer)
artist_name (varchar(50))
Albums:
 album_id (integer)
 album_name (varchar(50))
artist_id (integer)

CREATE TABLE Artists (
  artist_id INTEGER PRIMARY KEY,
  artist_name varchar(50) NOT NULL
);
CREATE TABLE Albums (
  album_id INTEGER PRIMARY KEY,
  album_name varchar(50) NOT NULL,
  artist_id INTEGER NOT NULL,
  FOREIGN KEY (artist_id) REFERENCES Artists(artist_id)
);

INSERT INTO Artists (artist_id, artist_name) VALUES
  (1, 'The Beatles'),
  (2, 'Led Zeppelin'),
  (3, 'Pink Floyd');
INSERT INTO Albums (album_id, album_name, artist_id) VALUES
  (1, 'Abbey Road', 1),
  (2, 'Led Zeppelin IV', 2),
  (3, 'Dark Side of the Moon', 3),
  (4, 'The Wall', 3),
  (5, 'Houses of the Holy', 2),
  (6, 'Let It Be', 1);
