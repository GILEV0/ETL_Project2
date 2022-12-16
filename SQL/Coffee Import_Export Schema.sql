-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/xjpHy3
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Create tables for each dataset

CREATE TABLE "coffee_export" (
    "country" VARCHAR   NOT NULL,
    "Total_re_export" INT   NOT NULL
);

CREATE TABLE "coffee_import" (
    "country" VARCHAR   NOT NULL,
    "Total_import" INT   NOT NULL
);

ALTER TABLE "coffee_export" ADD CONSTRAINT "fk_coffee_export_country" FOREIGN KEY("country")
REFERENCES "coffee_import" ("Total_import");

ALTER TABLE "coffee_export" ADD CONSTRAINT "fk_coffee_export_Total_re_export" FOREIGN KEY("Total_re_export")
REFERENCES "coffee_import" ("Total_import");

ALTER TABLE "coffee_import" ADD CONSTRAINT "fk_coffee_import_country" FOREIGN KEY("country")
REFERENCES "coffee_export" ("Total_re_export");

