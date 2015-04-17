DROP DATABASE DevMeet;
CREATE DATABASE DevMeet;

\c devmeet;

CREATE TABLE users(
        id SERIAL
    ,   first_name VARCHAR(30)
    ,   email VARCHAR(40)
    ,   password VARCHAR(50)
    ,   PRIMARY KEY (id)
);

CREATE TABLE meetups(
        id SERIAL
    ,   api_event_id VARCHAR(50)
    ,   event_name TEXT
    ,   event_description TEXT
    ,   event_url TEXT
    ,   event_time BIGINT
    ,   event_updated BIGINT
    ,   event_duration BIGINT
    ,   venue_address TEXT
    ,   venue_city VARCHAR(40)
    ,   venue_state VARCHAR(5)
    ,   venue_lat DECIMAL
    ,   venue_lon DECIMAL
    ,   group_name VARCHAR(50)
    ,   group_urlname VARCHAR(50)
    ,   group_how_to_find TEXT
    ,   api_group_id VARCHAR(50)
    ,   PRIMARY KEY (id)
);


CREATE TABLE starred(
        id SERIAL
    ,   meetup_id INT
    ,   user_id INT 
    ,   FOREIGN KEY (meetup_id) REFERENCES meetups(id)
    ,   FOREIGN KEY (user_id) REFERENCES users(id)
);
