

CREATE TABLE category (
    category_id VARCHAR(5) PRIMARY KEY,
    category VARCHAR(15)
);

SELECT * 
FROM category

CREATE TABLE subcategory (
    subcategory_id VARCHAR(8) PRIMARY KEY,
    subcategory VARCHAR(30)
);

SELECT * 
FROM subcategory


CREATE TABLE contacts (
    contact_id INT PRIMARY KEY,
    first_name VARCHAR(30),
    last_name VARCHAR(30),
    email VARCHAR(60)
);

SELECT * 
FROM contacts


CREATE TABLE campaign (
    cf_id FLOAT PRIMARY KEY,
    contact_id INT REFERENCES contacts(contact_id),
    company_name VARCHAR(40),
    description VARCHAR(100),
    goal FLOAT,
    pledged FLOAT,
    outcome VARCHAR(11),
    backers_count INT,
	country VARCHAR(6),
	currency VARCHAR(6),
    launch_date DATE,
    end_date DATE,
    category_id VARCHAR(5) REFERENCES category(category_id),
    subcategory_id VARCHAR(8) REFERENCES subcategory(subcategory_id)
);

SELECT * 
FROM campaign
