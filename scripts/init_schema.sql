/*
=============Creating schemas==================
This script creates three new schemas : 'gold', 'silver' and 'bronze', following the medallion architecture. It only creates schemas if they do not exist. If they do exist, no changes are made and 
schemas remain as is.
*/

-- Creating the schemas as per medallion architecture
CREATE SCHEMA IF NOT EXISTS gold;
CREATE SCHEMA IF NOT EXISTS  silver;
CREATE SCHEMA IF NOT EXISTS  bronze;

