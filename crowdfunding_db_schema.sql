-- Create category table
CREATE TABLE category (
	category_id VARCHAR(4) PRIMARY KEY  NOT NULL,
	category VARCHAR(12) NOT NULL
);

-- Create subcategory table
create table subcategory (
	subcategory_id VARCHAR(8) PRIMARY KEY NOT NULL,
	subcategory VARCHAR(17) NOT NULL
);

-- Create contacts table
create table contacts (
	contact_id INT PRIMARY KEY NOT NULL,
	first_name VARCHAR(12) NOT NULL,
	last_name VARCHAR(13) NOT NULL,
	email VARCHAR(42) NOT NULL
);

-- Create campaigns table
CREATE TABLE campaigns (
	cf_id INT PRIMARY KEY NOT NULL,
	contact_id INT NOT NULL,
	company_name VARCHAR(35) NOT NULL,
	description VARCHAR(55) NOT NULL,
	goal FLOAT NOT NULL,
	pledged FLOAT NOT NULL,
	outcome VARCHAR(10) NOT NULL,
	backers_count INT NOT NULL,
	country VARCHAR(2) NOT NULL,
	currency VARCHAR(3) NOT NULL,
	launched_date DATE NOT NULL,
	end_date DATE NOT NULL,
	category_id VARCHAR(12) NOT NULL,
	subcategory_id VARCHAR(17) NOT NULL,

	FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
	FOREIGN KEY (category_id) REFERENCES category(category_id),
	FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)
);
