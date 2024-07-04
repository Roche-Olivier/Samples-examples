--|| ============================================||--
--|| NO 1.1||--
CREATE TABLE public."unit_of_measures_types"
(
    "id" serial,
    "unit_of_measures_types_id" integer NOT NULL,
    "name" character varying COLLATE pg_catalog."default",
    "description" character varying COLLATE pg_catalog."default",
    "active" bit(1),
    CONSTRAINT "uomt_pkey" PRIMARY KEY ("unit_of_measures_types_id")
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;
ALTER TABLE public."unit_of_measures_types" OWNER TO "plant_monitor_user";

--|| NO 1.2||--
CREATE TABLE public."unit_of_measures"
(
    "id" serial,
    "unit_of_measures_id" integer NOT NULL,
    "unit_of_measures_types_id" integer NOT NULL,
    "name" character varying COLLATE pg_catalog."default",
    "description" character varying COLLATE pg_catalog."default",
    "active" bit(1),
    CONSTRAINT "uom_pkey" PRIMARY KEY ("unit_of_measures_id"),
    CONSTRAINT "uom_uomt_fkey" FOREIGN KEY ("unit_of_measures_types_id")
        REFERENCES public."unit_of_measures_types" ("unit_of_measures_types_id") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;
ALTER TABLE public."unit_of_measures" OWNER TO "plant_monitor_user";
--|| ============================================||--


--|| ============================================||--
--|| NO 2.1||--
CREATE TABLE public."external_company_types"
(
    "id" serial,
    "external_company_types_id" integer NOT NULL,
    "name" character varying COLLATE pg_catalog."default",
    "description" character varying COLLATE pg_catalog."default",
    "active" bit(1),
    CONSTRAINT "ect_pkey" PRIMARY KEY ("external_company_types_id")
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;
ALTER TABLE public."external_company_types" OWNER TO "plant_monitor_user";

--|| NO 2.2||--
CREATE TABLE public."external_companies"
(
    "id" serial,
    "external_companies_id" integer NOT NULL,
    "external_company_types_id" integer NOT NULL,
    "name" character varying COLLATE pg_catalog."default",
    "description" character varying COLLATE pg_catalog."default",
    "active" bit(1),
    CONSTRAINT "ec_pkey" PRIMARY KEY ("external_companies_id"),
    CONSTRAINT "ec_ect_fkey" FOREIGN KEY ("external_company_types_id")
        REFERENCES public."external_company_types" ("external_company_types_id") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;
ALTER TABLE public."external_companies" OWNER TO "plant_monitor_user";
--|| ============================================||--

--|| ============================================||--
--|| NO 3.1||--
CREATE TABLE public."nutrients_and_additive_types"
(
    "id" serial,
    "nutrients_and_additive_types_id" integer NOT NULL,
    "name" character varying COLLATE pg_catalog."default",
    "description" character varying COLLATE pg_catalog."default",
    "active" bit(1),
    CONSTRAINT "naat_pkey" PRIMARY KEY ("nutrients_and_additive_types_id")
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;
ALTER TABLE public."nutrients_and_additive_types" OWNER TO "plant_monitor_user";
--|| ============================================||--


--|| ============================================||--
--|| NO 4.1||--
CREATE TABLE public."nutrients_and_additives"
(
    "id" serial,
    "nutrients_and_additives_id" integer NOT NULL,
    "nutrients_and_additive_types_id" integer NOT NULL,
    "external_companies_id" integer NOT NULL,
    "name" character varying COLLATE pg_catalog."default",
    "description" character varying COLLATE pg_catalog."default",
    "hex_color" character varying COLLATE pg_catalog."default",
    "active" bit(1),
    CONSTRAINT "naa_pkey" PRIMARY KEY ("nutrients_and_additives_id"),
    CONSTRAINT "naa_naat_fkey" FOREIGN KEY ("nutrients_and_additive_types_id")
        REFERENCES public."nutrients_and_additive_types" ("nutrients_and_additive_types_id") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT "naa_ect_fkey" FOREIGN KEY ("external_companies_id")
        REFERENCES public."external_companies" ("external_companies_id") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;
ALTER TABLE public."nutrients_and_additives" OWNER TO "plant_monitor_user";
--|| ============================================||--

--|| ============================================||--
--|| NO 5.1||--
CREATE TABLE public."container_types"
(
    "id" serial,
    "container_types_id" integer NOT NULL,
    "name" character varying COLLATE pg_catalog."default",
    "description" character varying COLLATE pg_catalog."default",
    "active" bit(1),
    CONSTRAINT "ct_pkey" PRIMARY KEY ("container_types_id")
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;
ALTER TABLE public."container_types" OWNER TO "plant_monitor_user";

--|| NO 5.2||--
CREATE TABLE public."containers"
(
    "id" serial,
    "containers_id" integer NOT NULL,
    "container_types_id" integer NOT NULL,
    "name" character varying COLLATE pg_catalog."default",
    "description" character varying COLLATE pg_catalog."default",
    "units" character varying COLLATE pg_catalog."default",
    "unit_of_measures_id" integer NOT NULL,
    "color" character varying COLLATE pg_catalog."default",
    "shape" character varying COLLATE pg_catalog."default",
    "image_base_64" character varying COLLATE pg_catalog."default",
    "active" bit(1),
    CONSTRAINT "c_pkey" PRIMARY KEY ("containers_id"),
    CONSTRAINT "c_ct_fkey" FOREIGN KEY ("container_types_id")
        REFERENCES public."container_types" ("container_types_id") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT "c_uom_fkey" FOREIGN KEY ("unit_of_measures_id")
        REFERENCES public."unit_of_measures" ("unit_of_measures_id") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;
ALTER TABLE public."containers" OWNER TO "plant_monitor_user";
--|| ============================================||--


--|| ============================================||--
--|| NO 6.1||--
CREATE TABLE public."plant_grow_stages"
(
    "id" serial,
    "plant_grow_stages_id" integer NOT NULL,
    "name" character varying COLLATE pg_catalog."default",
    "description" character varying COLLATE pg_catalog."default",
    "active" bit(1),
    CONSTRAINT "pgs_pkey" PRIMARY KEY ("plant_grow_stages_id")
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;
ALTER TABLE public."plant_grow_stages" OWNER TO "plant_monitor_user";
--|| ============================================||--


--|| ============================================||--
--|| NO 7.1||--
CREATE TABLE public."users"
(
    "id" serial,
    "users_id" integer NOT NULL,
    "name" character varying COLLATE pg_catalog."default",
    "description" character varying COLLATE pg_catalog."default",
    "last_login_date" date,
    "active" bit(1),
    CONSTRAINT "u_pkey" PRIMARY KEY ("users_id")
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;
ALTER TABLE public."users" OWNER TO "plant_monitor_user";
--|| ============================================||--



--|| ============================================||--
--|| NO 8.1||--
CREATE TABLE public."light_types"
(
    "id" serial,
    "light_types_id" integer NOT NULL,
    "name" character varying COLLATE pg_catalog."default",
    "description" character varying COLLATE pg_catalog."default",
    "active" bit(1),
    CONSTRAINT "lt_pkey" PRIMARY KEY ("light_types_id")
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;
ALTER TABLE public."light_types" OWNER TO "plant_monitor_user";
--|| ============================================||--



--|| ============================================||--
--|| NO 9.1||--
CREATE TABLE public."environment_allocations"
(
    "id" serial,
    "environment_allocations_id" integer NOT NULL,
    "name" character varying COLLATE pg_catalog."default",
    "description" character varying COLLATE pg_catalog."default",
    "active" bit(1),
    CONSTRAINT "ea_pkey" PRIMARY KEY ("environment_allocations_id")
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;
ALTER TABLE public."environment_allocations" OWNER TO "plant_monitor_user";
--|| ============================================||--


--|| ============================================||--
--|| NO 10.1||--
CREATE TABLE public."medium_types"
(
    "id" serial,
    "medium_types_id" integer NOT NULL,
    "name" character varying COLLATE pg_catalog."default",
    "description" character varying COLLATE pg_catalog."default",
    "active" bit(1),
    CONSTRAINT "mt_pkey" PRIMARY KEY ("medium_types_id")
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;
ALTER TABLE public."medium_types" OWNER TO "plant_monitor_user";

--|| NO 10.2||--
CREATE TABLE public."mediums"
(
    "id" serial,
    "mediums_id" integer NOT NULL,
    "medium_types_id" integer NOT NULL,
    "name" character varying COLLATE pg_catalog."default",
    "description" character varying COLLATE pg_catalog."default",
    "units" character varying COLLATE pg_catalog."default",
    "unit_of_measures_id" integer NOT NULL,
    "image_base_64" character varying COLLATE pg_catalog."default",
    "active" bit(1),
    CONSTRAINT "m_pkey" PRIMARY KEY ("mediums_id"),
    CONSTRAINT "m_mt_fkey" FOREIGN KEY ("medium_types_id")
        REFERENCES public."medium_types" ("medium_types_id") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
  CONSTRAINT "m_uom_fkey" FOREIGN KEY ("unit_of_measures_id")
        REFERENCES public."unit_of_measures" ("unit_of_measures_id") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;
ALTER TABLE public."mediums" OWNER TO "plant_monitor_user";

--|| ============================================||--


--|| ============================================||--
--|| NO 11.1||--
CREATE TABLE public."genotypes"
(
    "id" serial,
    "genotypes_id" integer NOT NULL,
    "name" character varying COLLATE pg_catalog."default",
    "description" character varying COLLATE pg_catalog."default",
    "active" bit(1),
    CONSTRAINT "gt_pkey" PRIMARY KEY ("genotypes_id")
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;
ALTER TABLE public."genotypes" OWNER TO "plant_monitor_user";

--|| NO 11.2||--
CREATE TABLE public."strains"
(
    "id" serial,
    "strains_id" integer NOT NULL,
    "genotypes_id" integer NOT NULL,
    "external_companies_id" integer NOT NULL,
    "name" character varying COLLATE pg_catalog."default",
    "description" character varying COLLATE pg_catalog."default",
    "abbreviation" character varying COLLATE pg_catalog."default",
    "active" bit(1),
    CONSTRAINT "s_pkey" PRIMARY KEY ("strains_id"),
    CONSTRAINT "s_gt_fkey" FOREIGN KEY ("genotypes_id")
        REFERENCES public."genotypes" ("genotypes_id") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT "s_ec_fkey" FOREIGN KEY ("external_companies_id")
        REFERENCES public."external_companies" ("external_companies_id") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;
ALTER TABLE public."strains" OWNER TO "plant_monitor_user";
--|| ============================================||--


--|| ============================================||--
--|| NO 12.1||--
CREATE TABLE public."diary"
(
    "id" serial,
    "diary_id" integer NOT NULL,
    "users_id" integer NOT NULL,
    "name" character varying COLLATE pg_catalog."default",
    "description" character varying COLLATE pg_catalog."default",
    "environment_allocations_id" integer NOT NULL,
    "mediums_id" integer NOT NULL,
    "light_types_id" integer NOT NULL,
    "light_units" integer NOT NULL,
    "light_units_of_measure_id" integer NOT NULL,
    "strains_id" integer NOT NULL,
    "created_date" date,
     "image_base_64" character varying COLLATE pg_catalog."default",
    "active" bit(1),
    CONSTRAINT "d_pkey" PRIMARY KEY ("diary_id"),
    CONSTRAINT "d_u_fkey" FOREIGN KEY ("users_id")
        REFERENCES public."users" ("users_id") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT "d_ea_fkey" FOREIGN KEY ("environment_allocations_id")
        REFERENCES public."environment_allocations" ("environment_allocations_id") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT "d_m_fkey" FOREIGN KEY ("mediums_id")
        REFERENCES public."mediums" ("mediums_id") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT "d_lt_fkey" FOREIGN KEY ("light_types_id")
        REFERENCES public."light_types" ("light_types_id") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT "d_uom_fkey" FOREIGN KEY ("light_units_of_measure_id")
        REFERENCES public."unit_of_measures" ("unit_of_measures_id") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT "d_s_fkey" FOREIGN KEY ("strains_id")
        REFERENCES public."strains" ("strains_id") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;
ALTER TABLE public."diary" OWNER TO "plant_monitor_user";
--|| ============================================||--

--|| ============================================||--
--|| NO 13.1||--
CREATE TABLE public."diary_week"
(
    "id" serial,
    "diary_week_id" integer NOT NULL,
    "diary_id" integer NOT NULL,
    "week_number" integer NOT NULL,
    "plant_height" integer NOT NULL,
    "light_on_hours" integer NOT NULL,
    "water_ph" numeric(3,1), 
    "water_tds"  integer NOT NULL,
    "air_humidity" numeric(4,2), 
    "smell" character varying COLLATE pg_catalog."default",
    "solution_temp" numeric(4,2),
    "medium_temp" numeric(4,2),
    "day_air_temp" numeric(4,2),
    "night_air_temp" numeric(4,2),
    "lamp_to_plant_distance_unit" numeric(4,2),
    "lamp_to_plant_distance_unit_of_measure_id"  integer NOT NULL,
    "water_per_24_hour_unit" numeric(4,2),
    "water_per_24_hour_unit_of_measure_id"  integer NOT NULL,
    "containers_id"  integer NOT NULL,
    "plant_grow_stages_id"  integer NOT NULL,
    "active" bit(1),
    CONSTRAINT "dw_pkey" PRIMARY KEY ("diary_week_id"),
    CONSTRAINT "dw_d_fkey" FOREIGN KEY ("diary_id")
        REFERENCES public."diary" ("diary_id") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT "dw_lamp_uom_fkey" FOREIGN KEY ("lamp_to_plant_distance_unit_of_measure_id")
        REFERENCES public."unit_of_measures" ("unit_of_measures_id") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT "dw_water_uom_fkey" FOREIGN KEY ("water_per_24_hour_unit_of_measure_id")
        REFERENCES public."unit_of_measures" ("unit_of_measures_id") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT "d_c_fkey" FOREIGN KEY ("containers_id")
        REFERENCES public."containers" ("containers_id") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT "d_pgs_fkey" FOREIGN KEY ("plant_grow_stages_id")
        REFERENCES public."plant_grow_stages" ("plant_grow_stages_id") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;
ALTER TABLE public."diary_week" OWNER TO "plant_monitor_user";
--|| ============================================||--



--|| ============================================||--
--|| NO 14.1||--
CREATE TABLE public."diary_week_nutrients"
(
    "id" serial,
    "diary_week_id" integer NOT NULL,
    "diary_id" integer NOT NULL,
    "nutrients_and_additives_id" integer NOT NULL,
    "units" numeric(5,2),
    "unit_of_measures_id" integer NOT NULL,
    "active" bit(1),
    CONSTRAINT "dwn_pkey" PRIMARY KEY ("id"),
    CONSTRAINT "dwn_dw_fkey" FOREIGN KEY ("diary_week_id")
        REFERENCES public."diary_week" ("diary_week_id") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT "dwn_d_fkey" FOREIGN KEY ("diary_id")
        REFERENCES public."diary" ("diary_id") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT "dwn_naa_fkey" FOREIGN KEY ("nutrients_and_additives_id")
        REFERENCES public."nutrients_and_additives" ("nutrients_and_additives_id") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT "dwn_uom_fkey" FOREIGN KEY ("unit_of_measures_id")
        REFERENCES public."unit_of_measures" ("unit_of_measures_id") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;
ALTER TABLE public."diary_week_nutrients" OWNER TO "plant_monitor_user";
--|| ============================================||--

--|| ============================================||--
--|| NO 15.1||--
CREATE TABLE public."diary_week_images"
(
    "id" serial,
    "diary_week_id" integer NOT NULL,
    "diary_id" integer NOT NULL,
    "name" character varying COLLATE pg_catalog."default",
    "description" character varying COLLATE pg_catalog."default",
    "image_base_64" character varying COLLATE pg_catalog."default",
    "date" date,
    "active" bit(1),
    CONSTRAINT "dwi_pkey" PRIMARY KEY ("id"),
    CONSTRAINT "dwi_dw_fkey" FOREIGN KEY ("diary_week_id")
        REFERENCES public."diary_week" ("diary_week_id") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT "dwi_d_fkey" FOREIGN KEY ("diary_id")
        REFERENCES public."diary" ("diary_id") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;
ALTER TABLE public."diary_week_images" OWNER TO "plant_monitor_user";
--|| ============================================||--
