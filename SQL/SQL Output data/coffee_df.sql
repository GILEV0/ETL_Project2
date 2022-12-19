CREATE TABLE coffee_df(
    Country VARCHAR PRIMARY KEY,
    Total_import INT,
    Total_re_export INT,
	Import_vs_Export INT,
	percent_consumed FLOAT
);
SELECT * FROM coffee_df;

DROP TABLE coffee_df;