--|| =================================================================||--
--|| NO 1.1||--
CREATE TABLE public."uc_ratings"
(
    "uc_ratings_id" SERIAL,
    "uc_application_id" integer NOT NULL,
    "rating_name" character varying COLLATE pg_catalog."default",
    "rating_description" character varying COLLATE pg_catalog."default",
    "rating_run_start_date" date,
    "rating_run_end_date" date,
    "submited_on_date" date,
    "submited_by_user_name" character varying COLLATE pg_catalog."default",
    "in_active_date" date,
    "active" bit(1),
    CONSTRAINT "ucr_pkey" PRIMARY KEY ("uc_ratings_id")
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;
ALTER TABLE public."uc_ratings" OWNER TO "uc_ratings_user";

--|| NO 1.2||--
CREATE TABLE public."uc_ratings_feedback"
(
    "uc_ratings_feedback_id" SERIAL,
    "uc_ratings_id" integer NOT NULL,
    "rating_value" integer NOT NULL,
    "rating_comment" character varying COLLATE pg_catalog."default",
    "submited_on_date" date,
    "submited_by_user_name" character varying COLLATE pg_catalog."default",
    CONSTRAINT "ucrf_pkey" PRIMARY KEY ("uc_ratings_feedback_id"),
    CONSTRAINT "ucrf_ucr_fkey" FOREIGN KEY ("uc_ratings_id")
        REFERENCES public."uc_ratings" ("uc_ratings_id") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;
ALTER TABLE public."uc_ratings_feedback" OWNER TO "uc_ratings_user";
--|| ============================================||--

