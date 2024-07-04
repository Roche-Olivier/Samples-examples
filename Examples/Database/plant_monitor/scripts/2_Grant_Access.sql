--Access on the database for AwardsDbUser

GRANT TEMPORARY, CONNECT ON DATABASE "plant_monitor" TO PUBLIC;

GRANT ALL ON DATABASE "plant_monitor" TO "plant_monitor_user";

ALTER DEFAULT PRIVILEGES
GRANT ALL ON TABLES TO "plant_monitor_user";
