CREATE TABLE players (
    id INT AUTO_INCREMENT PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    nationality VARCHAR(50),
    position VARCHAR(50),
    birth_year INT,
    preferred_foot VARCHAR(10),
    shirt_number INT,
    image_url VARCHAR(255)
);

CREATE TABLE clubs (
    id INT AUTO_INCREMENT PRIMARY KEY,
    club_name VARCHAR(100) NOT NULL
);

CREATE TABLE player_clubs (
    id INT AUTO_INCREMENT PRIMARY KEY,
    player_id INT NOT NULL,
    club_id INT NOT NULL,
    year_joined INT,
    year_left INT,

    CONSTRAINT fk_player
        FOREIGN KEY (player_id)
        REFERENCES players(id)
        ON DELETE CASCADE,

    CONSTRAINT fk_club
        FOREIGN KEY (club_id)
        REFERENCES clubs(id)
        ON DELETE CASCADE
);


CREATE INDEX idx_player_clubs_player_id ON player_clubs(player_id);
CREATE INDEX idx_player_clubs_club_id ON player_clubs(club_id);



INSERT INTO clubs (club_name) VALUES
('Barcelona'),
('Real Madrid'),
('Manchester United'),
('Manchester City'),
('PSG'),
('Juventus'),
('Bayern Munich'),
('Chelsea'),
('Arsenal'),
('Liverpool');


INSERT INTO players (full_name, nationality, position, birth_year, preferred_foot, shirt_number)
VALUES
('Lionel Messi', 'Argentina', 'Forward', 1987, 'Left', 10),
('Cristiano Ronaldo', 'Portugal', 'Forward', 1985, 'Right', 7),
('Kevin De Bruyne', 'Belgium', 'Midfielder', 1991, 'Right', 17),
('Luka Modric', 'Croatia', 'Midfielder', 1985, 'Right', 10),
('Robert Lewandowski', 'Poland', 'Forward', 1988, 'Right', 9);


INSERT INTO player_clubs (player_id, club_id, year_joined, year_left) VALUES
(1, 1, 2004, 2021),
(1, 5, 2021, 2023),
(2, 3, 2003, 2009),
(2, 2, 2009, 2018),
(2, 6, 2018, 2021),
(3, 4, 2015, NULL),
(4, 2, 2012, NULL),
(5, 7, 2014, 2022),
(5, 1, 2022, NULL);