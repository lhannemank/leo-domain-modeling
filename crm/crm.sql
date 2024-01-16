-- Drops existing tables, so we start fresh with each
-- run of this script
-- e.g. DROP TABLE IF EXISTS ______;
DROP TABLE IF EXISTS salespersons;
DROP TABLE IF EXISTS contacts;
DROP TABLE IF EXISTS companies;
DROP TABLE IF EXISTS activities;
DROP TABLE IF EXISTS industries;
DROP TABLE IF EXISTS industry_maps;
-- CREATE TABLES
CREATE TABLE salespersons (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  first_name TEXT,
  last_name TEXT,
  email TEXT
);
CREATE TABLE companies (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  company_name TEXT
);
CREATE TABLE contacts (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  first_name TEXT,
  last_name TEXT,
  email TEXT,
  phone TEXT,
  title TEXT,
  company_id INTEGER
);
CREATE TABLE activities (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  type TEXT,
  datetime TEXT,
  time TEXT,
  notes TEXT,
  salesperson_id INTEGER,
  contact_id INTEGER,
  company_id INTEGER);
CREATE TABLE industries (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT);
CREATE TABLE industry_maps (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  industry_id INTEGER,
  company_id INTEGER);