#!/bin/bash

db_file=$1

sqlite3 $db_file \
"CREATE TABLE Series (
    YearRoundSeriesID INTEGER      PRIMARY KEY
                                   UNIQUE
                                   NOT NULL,
    Year              INTEGER (4)  NOT NULL,
    Round             INTEGER (1)  NOT NULL,
    Conference        CHAR (4),
    SeriesNumber      INTEGER (1)  NOT NULL,
    TeamHigherSeed    VARCHAR (40) NOT NULL,
    TeamLowerSeed     VARCHAR (40) NOT NULL,
    PlayerHigherSeed  VARCHAR (40),
    PlayerLowerSeed   VARCHAR (40) 
);"
