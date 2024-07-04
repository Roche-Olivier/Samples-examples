--Access on the database for AwardsDbUser

GRANT TEMPORARY, CONNECT ON DATABASE "uc_ratings" TO PUBLIC;

GRANT ALL ON DATABASE "uc_ratings" TO "uc_ratings_user";

ALTER DEFAULT PRIVILEGES
GRANT ALL ON TABLES TO "uc_ratings_user";
