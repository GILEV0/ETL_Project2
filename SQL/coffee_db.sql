--Create tables for each dataset
CREATE TABLE coffee_export(
	country VARCHAR PRIMARY KEY,
	Total_re_export INT
);

CREATE TABLE coffee_import(
	country VARCHAR PRIMARY KEY,
	Total_import INT
);

SELECT coffee_export.country, coffee_export.Total_re_export, coffee_import.Total_import
FROM coffee_export
JOIN coffee_import ON coffee_export.country = coffee_import.country;

CREATE TABLE coffee_df(
    Country VARCHAR PRIMARY KEY,
    Total_import INT,
    Total_re_export INT,
	Import_vs_Export INT,
	percent_consumed FLOAT
);
--Order top import & re exporting countries
SELECT * FROM coffee_export
ORDER BY Total_re_export DESC LIMIT(10);

SELECT * FROM coffee_import
ORDER BY Total_import DESC LIMIT(10);

SELECT * FROM coffee_df
ORDER BY coffee_df DESC LIMIT(10);



