CREATE TABLE contacts (
	contact_id integer PRIMARY KEY NOT NULL,
 	first_name varchar(30)NOT NULL,
	last_name varchar(30)NOT NULL,
	email varchar(50)NOT NULL
);
--next table
CREATE TABLE subcategory (
	subcategory_id varchar(20) PRIMARY KEY NOT NULL,
	subcategory varchar(20)NOT NULL
);

--next table
CREATE TABLE category (
	id varchar(20) PRIMARY KEY NOT NULL,
	category varchar(20) NOT NULL	
);

--next table
CREATE TABLE campaign (
	cf_id integer NOT NULL,
	contact_id int NOT NULL,
	company_name varchar(50)NOT NULL,
	description text NOT NULL,	
	goal real NOT NULL,
	pledged real NOT NULL,
	outcome varchar(20) NOT NULL,
	backers_count integer NOT NULL,
	country varchar(10) NOT NULL,
	currency varchar(20) NOT NULL,
	launch_date date NOT NULL,
	end_date date NOT NULL,
	category_id varchar(10) NOT NULL,
	subcategory_id varchar(10) NOT NULL,
	FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
	FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id),
	FOREIGN KEY (category_id) REFERENCES category(id)
);
 	SELECT* FROM campaign;
	SELECT* FROM category;
	SELECT* FROM subcategory;
	SELECT* FROM contacts;