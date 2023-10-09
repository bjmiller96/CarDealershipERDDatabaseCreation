 CREATE TABLE customer(
	customer_id SERIAL PRIMARY KEY,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	email VARCHAR(100),
	phone_number VARCHAR(15),
	street VARCHAR(100),
	city VARCHAR(100),
	state VARCHAR(50),
	zipcode VARCHAR(15)
);

CREATE TABLE salesperson(
	salesperson_id SERIAL PRIMARY KEY,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	email VARCHAR(100),
	phone_number VARCHAR(15)
);

CREATE TABLE mechanic(
	mechanic_id SERIAL PRIMARY KEY,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	email VARCHAR(100),
	phone_number VARCHAR(15)
);

CREATE TABLE vehicle_condition(
	condition_id SERIAL PRIMARY KEY,
	v_condition VARCHAR(20)
);

CREATE TABLE vehicle(
	serial_number SERIAL PRIMARY KEY,
	v_year NUMERIC(4,0),
	v_make VARCHAR(50),
	v_model VARCHAR(100),
	v_mileage NUMERIC(10,0),
	condition_id INTEGER NOT NULL,
	FOREIGN KEY(condition_id) REFERENCES vehicle_condition(condition_id)
);	

CREATE TABLE sale_invoice(
	sale_id SERIAL PRIMARY KEY,
	sale_cost NUMERIC(10,2),
	sale_date DATE DEFAULT CURRENT_DATE,
	payment_type VARCHAR(15),
	serial_number INTEGER NOT NULL,
	customer_id INTEGER NOT NULL,
	salesperson_id INTEGER NOT NULL,
	FOREIGN KEY(serial_number) REFERENCES vehicle(serial_number),
	FOREIGN KEY(customer_id) REFERENCES customer(customer_id),
	FOREIGN KEY(salesperson_id) REFERENCES salesperson(salesperson_id)
);

CREATE TABLE service_ticket(
	service_id SERIAL PRIMARY KEY,
	service_type VARCHAR(150),
	service_date DATE DEFAULT CURRENT_DATE,
	service_cost NUMERIC(10,2),
	customer_id INTEGER NOT NULL,
	serial_number INTEGER NOT NULL,
	FOREIGN KEY(customer_id) REFERENCES customer(customer_id),
	FOREIGN KEY(serial_number) REFERENCES vehicle(serial_number)
);

CREATE TABLE service_history(
	serial_number INTEGER NOT NULL,
	FOREIGN KEY(serial_number) REFERENCES vehicle(serial_number)
);

CREATE TABLE part(
	part_id SERIAL PRIMARY KEY,
	part_name VARCHAR(150),
	part_cost NUMERIC(10,2)
);

CREATE TABLE vehicle_mechanic(
	v_mechanic_id SERIAL PRIMARY KEY,
	serial_number INTEGER NOT NULL,
	mechanic_id INTEGER NOT NULL,
	service_id INTEGER NOT NULL,
	FOREIGN KEY(serial_number) REFERENCES vehicle(serial_number),
	FOREIGN KEY(mechanic_id) REFERENCES mechanic(mechanic_id),
	FOREIGN KEY(service_id) REFERENCES service_ticket(service_id)
);

CREATE TABLE vehicle_part(
	v_part_id SERIAL PRIMARY KEY,
	part_quantity NUMERIC(8,2),
	serial_number INTEGER NOT NULL,
	service_id INTEGER NOT NULL,
	part_id INTEGER NOT NULL,
	FOREIGN KEY(serial_number) REFERENCES vehicle(serial_number),
	FOREIGN KEY(service_id) REFERENCES service_ticket(service_id),
	FOREIGN KEY(part_id) REFERENCES part(part_id)
);
