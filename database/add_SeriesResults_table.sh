#!/bin/bash

db_file=$1

sqlite3 $db_file \
"CREATE TABLE SeriesResults (
    YearRoundSeriesID INTEGER      UNIQUE
                                   REFERENCES SeriesSelections (YearRoundSeriesID) 
                                   PRIMARY KEY
                                   NOT NULL,
    Winner            VARCHAR (40) NOT NULL,
    Games             INTEGER (1)  NOT NULL,
    Player            VARCHAR (40) 
);"
