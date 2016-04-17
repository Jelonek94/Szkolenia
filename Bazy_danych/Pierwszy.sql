DROP TABLE IF EXISTS sq_has_teams;
DROP TABLE IF EXISTS study_groups;
DROP TABLE IF EXISTS faculty;
DROP TABLE IF EXISTS teams;

CREATE TABLE faculty (
	name 		varchar(16),
	CONSTRAINT 	fac_pkey PRIMARY KEY(name)	

);

CREATE TABLE teams (
	name    	varchar(16),
	cash		integer,
	CONSTRAINT 	teams_pkey PRIMARY KEY(name)

);

CREATE TABLE study_groups(
	name		varchar(64),
	members_num	integer,
	faculty_name		varchar(16),
	CONSTRAINT	sg_pkey PRIMARY KEY(name)
);

ALTER TABLE study_groups ADD CONSTRAINT sg_fac_fkey FOREIGN KEY (faculty_name) REFERENCES faculty(name);

CREATE TABLE sg_has_teams(
	team_name	varchar(64),
	sg_name		varchar(64),
	CONSTRAINT	sght_pkey PRIMARY KEY (team_name,sg_name)
);

ALTER TABLE sg_has_teams ADD CONSTRAINT t_name_fkey FOREIGN KEY (team_name) REFERENCES teams(name);
ALTER TABLE sg_has_teams ADD CONSTRAINT sg_name_fkey FOREIGN KEY (sg_name) REFERENCES study_groups(name);



