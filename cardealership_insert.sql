-- Inserting data into customer table
INSERT INTO customer(
	customer_id,
	first_name,
	last_name,
	email,
	phone_number,
	street,
	city,
	state,
	zipcode
) VALUES(
	1,
	'John',
	'Doe',
	'john.doe@email.com',
	'123-456-7890',
	'123 Elm St',
	'Anywhere',
	'NY',
	'12345'
);

CREATE OR REPLACE FUNCTION add_customer(_customer_id INTEGER, _first_name VARCHAR(50), _last_name VARCHAR(50), _email VARCHAR(100), _phone_number VARCHAR(15), _street VARCHAR(100), _city VARCHAR(100), _state VARCHAR(50), _zipcode VARCHAR(15))
RETURNS VOID
AS $$
BEGIN 
	INSERT INTO customer(customer_id, first_name, last_name, email, phone_number, street, city, state, zipcode)
	VALUES(_customer_id, _first_name, _last_name, _email, _phone_number, _street, _city, _state, _zipcode);
END;
$$
LANGUAGE plpgsql;

SELECT add_customer(2, 'Jane', 'Smith', 'jane.smith@example.com', '234-567-8901', '456 Oak St', 'Somewhere', 'CA', '67890');
SELECT add_customer(3, 'Robert', 'Johnson', 'robert.johnson@example.com', '345-678-9012', '789 Maple St', 'Everywhere', 'TX', '11223');
SELECT add_customer(4, 'Mary', 'Jones', 'mary.jones@example.com', '456-789-0123', '101 Pine St', 'Nowhere', 'FL', '33445');
SELECT add_customer(5, 'James', 'Brown', 'james.brown@example.com', '567-890-1234', '202 Birch St', 'Here', 'WA', '66778');
SELECT add_customer(6, 'Patricia', 'Davis', 'patricia.davis@example.com', '678-901-2345', '303 Cedar St', 'There', 'CO', '99887');
SELECT add_customer(7, 'Michael', 'Miller', 'michael.miller@example.com', '789-012-3456', '404 Dogwood St', 'Left', 'MI', '44556');
SELECT add_customer(8, 'Elizabeth', 'Garcia', 'elizabeth.garcia@example.com', '890-123-4567', '505 Fir St', 'Right', 'OH', '77665');
SELECT add_customer(9, 'William', 'Rodriguez', 'william.rodriguez@example.com', '901-234-5678', '606 Hemlock St', 'Up', 'GA', '22332');
SELECT add_customer(10, 'Jennifer', 'Martinez', 'jennifer.martinez@example.com', '012-345-6789', '707 Ivy St', 'Down', 'IL', '99889');

-- Inserting data into salesperson table
INSERT INTO salesperson(
	salesperson_id,
	first_name,
	last_name,
	email,
	phone_number
) VALUES(
	101,
	'Lisa',
	'White',
	'lisa.white@sales.com',
	'987-654-3210'
);

CREATE OR REPLACE FUNCTION add_salesperson(_salesperson_id INTEGER, _first_name VARCHAR(50), _last_name VARCHAR(50), _email VARCHAR(100), _phone_number VARCHAR(15))
RETURNS VOID
AS $$
BEGIN 
	INSERT INTO salesperson(salesperson_id, first_name, last_name, email, phone_number)
	VALUES(_salesperson_id, _first_name, _last_name, _email, _phone_number);
END;
$$
LANGUAGE plpgsql;

SELECT add_salesperson(102, 'Richard', 'Lee', 'richard.lee@sales.com', '876-543-2109');
SELECT add_salesperson(103, 'Susan', 'Wilson', 'susan.wilson@sales.com', '765-432-1098');
SELECT add_salesperson(104, 'Joseph', 'Harris', 'joseph.harris@sales.com', '654-321-0987');
SELECT add_salesperson(105, 'Karen', 'Clark', 'karen.clark@sales.com', '543-210-9876');
SELECT add_salesperson(106, 'David', 'Lewis', 'david.lewis@sales.com', '432-109-8765');
SELECT add_salesperson(107, 'Barbara', 'Young', 'barbara.young@sales.com', '321-098-7654');
SELECT add_salesperson(108, 'Paul', 'Hall', 'paul.hall@sales.com', '210-987-6543');
SELECT add_salesperson(109, 'Linda', 'Scott', 'linda.scott@sales.com', '109-876-5432');
SELECT add_salesperson(110, 'Steven', 'Green', 'steven.green@sales.com', '098-765-4321');

-- Inserting data into mechanic table
INSERT INTO mechanic(
	mechanic_id,
	first_name,
	last_name,
	email,
	phone_number
) VALUES(
	201,
	'Derek',
	'Taylor',
	'derek.taylor@mech.com',
	'291-654-8721'
);

CREATE OR REPLACE FUNCTION add_mechanic(_mechanic_id INTEGER, _first_name VARCHAR(50), _last_name VARCHAR(50), _email VARCHAR(100), _phone_number VARCHAR(15))
RETURNS VOID
AS $$
BEGIN
	INSERT INTO mechanic(mechanic_id, first_name, last_name, email, phone_number)
	VALUES(_mechanic_id, _first_name, _last_name, _email, _phone_number);
END;
$$
LANGUAGE plpgsql;

SELECT add_mechanic(202, 'Angela', 'Perez', 'angela.perez@mech.com', '182-543-7612');
SELECT add_mechanic(203, 'Brian', 'Morris', 'brian.morris@mech.com', '073-432-6503');
SELECT add_mechanic(204, 'Nancy', 'Collins', 'nancy.collins@mech.com', '964-321-5394');
SELECT add_mechanic(205, 'Gary', 'Nelson', 'gary.nelson@mech.com', '855-210-4285');
SELECT add_mechanic(206, 'Rebecca', 'Carter', 'rebecca.carter@mech.com', '746-109-3176');
SELECT add_mechanic(207, 'Ronald', 'Mitchell', 'ronald.mitchell@mech.com', '637-098-2067');
SELECT add_mechanic(208, 'Sharon', 'Gomez', 'sharon.gomez@mech.com', '528-987-1958');
SELECT add_mechanic(209, 'Kevin', 'Cook', 'kevin.cook@mech.com', '419-876-0849');
SELECT add_mechanic(210, 'Laura', 'Russell', 'laura.russell@mech.com', '300-765-9730');

-- Inserting data into vehicle_condition table
INSERT INTO vehicle_condition(
	condition_id,
	v_condition
) VALUES(
	1,
	'New'
);

INSERT INTO vehicle_condition(
	condition_id,
	v_condition
) VALUES(
	2,
	'Used'
);

INSERT INTO vehicle_condition(
	condition_id,
	v_condition
) VALUES(
	3,
	'In for service'
);

-- Inserting data into vehicle table
INSERT INTO vehicle(
	serial_number,
	v_year,
	v_make,
	v_model,
	v_mileage,
	condition_id
) VALUES (
	123456,
	2023,
	'Toyota',
	'Camry',
	20,
	1
);

CREATE OR REPLACE FUNCTION add_vehicle(_serial_number INTEGER, _v_year NUMERIC(4,0), _v_make VARCHAR(50), _v_model VARCHAR(100), _v_mileage NUMERIC(10,0), _condition_id INTEGER)
RETURNS VOID
AS $$
BEGIN
	INSERT INTO vehicle(serial_number, v_year, v_make, v_model, v_mileage, condition_id)
	VALUES(_serial_number, _v_year, _v_make, _v_model, _v_mileage, _condition_id);
END;
$$
LANGUAGE plpgsql;

SELECT add_vehicle(789012, 2022, 'Honda', 'Civic', 65000, 2);
SELECT add_vehicle(345678, 2023, 'Ford', 'Mustang', 35, 1);
SELECT add_vehicle(901234, 2019, 'Chevrolet', 'Malibu', 45000, 2);
SELECT add_vehicle(567890, 2020, 'Tesla', 'Model 3', 90000, 2);
SELECT add_vehicle(678901, 2023, 'Hyundai', 'Elantra', 15, 1);
SELECT add_vehicle(789312, 2018, 'Kia', 'Optima', 68000, 2);
SELECT add_vehicle(890123, 2023, 'BMW', '3 Series', 30, 1);
SELECT add_vehicle(912345, 2021, 'Audi', 'A4', 52000, 2);
SELECT add_vehicle(112345, 2019, 'Mazda', 'CX-5', 76000, 2);
SELECT add_vehicle(112233, 2023, 'Nissan', 'Altima', 25, 1);       
SELECT add_vehicle(223344, 2019, 'Subaru', 'Forester', 48000, 3);
SELECT add_vehicle(334455, 2023, 'Jeep', 'Wrangler', 40, 1);      
SELECT add_vehicle(445566, 2017, 'Dodge', 'Charger', 71000, 3); 
SELECT add_vehicle(556677, 2020, 'Volkswagen', 'Golf', 33000, 2);
SELECT add_vehicle(667788, 2023, 'Lexus', 'ES', 10, 1);           
SELECT add_vehicle(778899, 2018, 'Jaguar', 'XE', 58000, 2);       
SELECT add_vehicle(889900, 2023, 'Mercedes', 'C-Class', 45, 1); 
SELECT add_vehicle(990011, 2019, 'Acura', 'TLX', 42000, 3);     
SELECT add_vehicle(111122, 2021, 'Infiniti', 'Q50', 29000, 2);
SELECT add_vehicle(110022, 2023, 'Cadillac', 'CTS', 12, 1);
SELECT add_vehicle(220033, 2018, 'Mitsubishi', 'Lancer', 53000, 3);
SELECT add_vehicle(330044, 2023, 'Lincoln', 'MKZ', 50, 1);
SELECT add_vehicle(440055, 2016, 'Volvo', 'XC90', 79000, 2);
SELECT add_vehicle(550066, 2021, 'Porsche', '911', 27000, 3);
SELECT add_vehicle(660077, 2023, 'Land Rover', 'Discovery', 18, 1);
SELECT add_vehicle(770088, 2017, 'Fiat', '500', 36000, 2);
SELECT add_vehicle(880099, 2023, 'Mini', 'Cooper', 30, 1);
SELECT add_vehicle(990100, 2020, 'Buick', 'Enclave', 41000, 2);
SELECT add_vehicle(111111, 2019, 'Maserati', 'Ghibli', 32000, 2);

-- Inserting data for sale_invoice table
INSERT INTO sale_invoice(
	sale_id,
	sale_cost,
	payment_type,
	serial_number,
	customer_id,
	salesperson_id
) VALUES(
	3847,
	53000.00,
	'Loan',
	345678,
	7,
	104
);

INSERT INTO sale_invoice(
	sale_id,
	sale_cost,
	payment_type,
	sale_date,
	serial_number,
	customer_id,
	salesperson_id
) VALUES(
	8924,
	36750.00,
	'Loan',
	'2023-05-23',
	330044,
	2,
	101
);

INSERT INTO sale_invoice(
	sale_id,
	sale_cost,
	payment_type,
	sale_date,
	serial_number,
	customer_id,
	salesperson_id
) VALUES(
	5028,
	76800.00,
	'Loan',
	'2023-08-02',
	890123,
	9,
	110
);

INSERT INTO sale_invoice(
	sale_id,
	sale_cost,
	payment_type,
	sale_date,
	serial_number,
	customer_id,
	salesperson_id
) VALUES(
	7849,
	26300.00,
	'Cash',
	'2023-01-30',
	111122,
	4,
	104
);

INSERT INTO sale_invoice(
	sale_id,
	sale_cost,
	payment_type,
	serial_number,
	customer_id,
	salesperson_id
) VALUES(
	2190,
	30250.00,
	'Loan',
	123456,
	5,
	105
);

-- Inserting data for part table
CREATE OR REPLACE FUNCTION add_part(_part_id INTEGER, _part_name VARCHAR(150), _part_cost NUMERIC(10,2))
RETURNS VOID
AS $$
BEGIN
	INSERT INTO part(part_id, part_name, part_cost)
	VALUES(_part_id, _part_name, _part_cost);
END;
$$
LANGUAGE plpgsql;

SELECT add_part(000000000, 'None', 0.00);
SELECT add_part(123456789, 'Oil - 1qt', 8.00);
SELECT add_part(987654321, 'Oil Filter', 10.00);
SELECT add_part(246813597, 'Transmission Fluid', 15.00);
SELECT add_part(864209173, 'Transmission Filter', 35.00);
SELECT add_part(814625793, 'Windshield Wiper', 15.00);
SELECT add_part(492785163, 'Washer Fluid', 12.00);
SELECT add_part(305812694, 'Engine Coolant', 25.00);
SELECT add_part(526819374, 'Radiator', 295.00);
SELECT add_part(712943586, 'Spark Plug', 5.00);
SELECT add_part(938175264, 'Fuel Injector', 60.00);
SELECT add_part(392748561, 'Fuel Pump', 95.00);
SELECT add_part(562391847, 'Timing Belt', 45.00);
SELECT add_part(417286935, 'Accessory Belt', 30.00);
SELECT add_part(785316492, 'Oxygen Sensor', 90.00);
SELECT add_part(509237814, 'Brake Pads', 25.00);
SELECT add_part(671859234, 'Brake Rotor', 75.00);
SELECT add_part(382961457, 'Brake Caliper', 125.00);
SELECT add_part(745218693, 'Brake Fluid', 10.00);
SELECT add_part(816492573, 'Intake Manifold', 465.00);
SELECT add_part(239748165, 'Intake Manifold Gasket', 30.00);
SELECT add_part(628154973, 'Exhaust Manifold', 345.00);
SELECT add_part(953107682, 'Exhaust Manifold Gasket', 40.00);
SELECT add_part(491237865, 'Turbocharger', 1500.00);
SELECT add_part(174629385, 'Starter', 160.00);
SELECT add_part(890532417, 'Water Pump', 175.00);
SELECT add_part(413725896, 'Alternator', 200.00);
SELECT add_part(628493517, 'AC Compressor', 225.00);
SELECT add_part(952316784, 'Power Steering Pump', 125.00);
SELECT add_part(187645932, 'Power Steering Rack', 325.00);
SELECT add_part(564839271, 'Power Steering Fluid', 15.00);
SELECT add_part(657493218, 'Headlight Bulb', 18.00);
SELECT add_part(703218649, 'Battery', 150.00);
SELECT add_part(296157483, 'Air Filter', 30.00);
SELECT add_part(831492765, 'Cabin Air Filter', 15.00);
SELECT add_part(479261358, 'Piston', 225.00);
SELECT add_part(342785916, 'Piston Ring', 25.00);
SELECT add_part(513204786, 'Connecting Rod', 80.00);
SELECT add_part(841675293, 'Camshaft', 170.00);
SELECT add_part(279318645, 'Intake Valve', 20.00);
SELECT add_part(654782391, 'Exhaust Valve', 20.00);
SELECT add_part(907243518, 'Oil Pump', 90.00);
SELECT add_part(328594761, 'Crankshaft', 680.00);
SELECT add_part(146782935, 'Valve Cover', 245.00);
SELECT add_part(792415863, 'Valve Cover Gasket', 35.00);
SELECT add_part(268391547, 'Cylinder Head', 1800.00);
SELECT add_part(435869172, 'Cylinder Head Gasket', 85.00);
SELECT add_part(621439587, 'Engine Block', 3500.00);
SELECT add_part(945783216, 'Oil Pan', 95.00);
SELECT add_part(358712694, 'Oil Pan Gasket', 40.00);
SELECT add_part(769241835, 'Tire', 200.00);
SELECT add_part(213685794, 'Valve Stem', 5.00);
SELECT add_part(487253961, 'Wheel', 195.00);
SELECT add_part(238167945, 'Shock Absorber/Strut', 250.00);
SELECT add_part(594816273, 'Catalytic Converter', 480.00);
SELECT add_part(732194658, 'Exhaust Muffler', 125.00);
SELECT add_part(673492158, 'Exhaust Pipe', 180.00);
SELECT add_part(865372149, 'Flywheel', 325.00);
SELECT add_part(178649532, 'Clutch', 180.00);
SELECT add_part(306894752, 'Driveshaft', 365.00);
SELECT add_part(924517683, 'Differential', 290.00);
SELECT add_part(571238946, 'Differential Fluid', 15.00);

-- Inserting data for service_ticket table
INSERT INTO service_ticket(
	service_id,
	service_type,
	service_cost,
	customer_id,
	serial_number
) VALUES(
	76136,
	'Oil Change and Tire Rotation',
	65.59,
	10,
	223344
);

INSERT INTO service_ticket(
	service_id,
	service_type,
	service_date,
	service_cost,
	customer_id,
	serial_number
) VALUES(
	98963,
	'Fuel Injector Cleaning',
	'2023-03-21',
	76.54,
	3,
	220033
);

INSERT INTO service_ticket(
	service_id,
	service_type,
	service_date,
	service_cost,
	customer_id,
	serial_number
) VALUES(
	34841,
	'Turbocharger Replacement',
	'2023-10-06',
	1996.27,
	8,
	550066
);

INSERT INTO service_ticket(
	service_id,
	service_type,
	service_date,
	service_cost,
	customer_id,
	serial_number
) VALUES(
	68461,
	'Head Gasket Replacement',
	'2023-07-17',
	147.36,
	1,
	445566
);

INSERT INTO service_ticket(
	service_id,
	service_type,
	service_cost,
	customer_id,
	serial_number
) VALUES(
	23254,
	'Oil Change, Brakes, and New Tires',
	1626.89,
	6,
	990011
);

-- Inserting data into the vehicle_mechanic and vehicle_part tables
-- Mechanic and part for service_ticket: 76136
INSERT INTO vehicle_mechanic(
	v_mechanic_id,
	serial_number,
	mechanic_id,
	service_id
) VALUES(
	761,
	223344,
	205,
	76136
);

INSERT INTO vehicle_part(
	v_part_id,
	part_quantity,
	serial_number,
	service_id,
	part_id
) VALUES(
	7610,
	4.5,
	223344,
	76136,
	123456789
);

INSERT INTO vehicle_part(
	v_part_id,
	part_quantity,
	serial_number,
	service_id,
	part_id
) VALUES(
	7611,
	1,
	223344,
	76136,
	987654321
);

-- Mechanic and part for service_ticket: 98963
INSERT INTO vehicle_mechanic(
	v_mechanic_id,
	serial_number,
	mechanic_id,
	service_id
) VALUES(
	989,
	220033,
	201,
	98963
);

INSERT INTO vehicle_part(
	v_part_id,
	part_quantity,
	serial_number,
	service_id,
	part_id
) VALUES(
	9890,
	0,
	220033,
	98963,
	0
);

-- Mechanic and part for service_ticket: 34841
INSERT INTO vehicle_mechanic(
	v_mechanic_id,
	serial_number,
	mechanic_id,
	service_id
) VALUES(
	348,
	550066,
	203,
	34841
);

INSERT INTO vehicle_mechanic(
	v_mechanic_id,
	serial_number,
	mechanic_id,
	service_id
) VALUES(
	349,
	550066,
	207,
	34841
);

INSERT INTO vehicle_part(
	v_part_id,
	part_quantity,
	serial_number,
	service_id,
	part_id
) VALUES(
	3480,
	1,
	220033,
	34841,
	491237865
);

-- Mechanic and part for service_ticket: 68461
INSERT INTO vehicle_mechanic(
	v_mechanic_id,
	serial_number,
	mechanic_id,
	service_id
) VALUES(
	684,
	445566,
	210,
	68461
);

INSERT INTO vehicle_part(
	v_part_id,
	part_quantity,
	serial_number,
	service_id,
	part_id
) VALUES(
	6840,
	1,
	445566,
	68461,
	435869172
);

-- Mechanic and part for service_ticket: 23254
INSERT INTO vehicle_mechanic(
	v_mechanic_id,
	serial_number,
	mechanic_id,
	service_id
) VALUES(
	232,
	990011,
	209,
	23254
);

INSERT INTO vehicle_mechanic(
	v_mechanic_id,
	serial_number,
	mechanic_id,
	service_id
) VALUES(
	233,
	990011,
	202,
	23254
);

INSERT INTO vehicle_mechanic(
	v_mechanic_id,
	serial_number,
	mechanic_id,
	service_id
) VALUES(
	234,
	990011,
	206,
	23254
);

INSERT INTO vehicle_part(
	v_part_id,
	part_quantity,
	serial_number,
	service_id,
	part_id
) VALUES(
	2340,
	4.5,
	990011,
	23254,
	123456789
);

INSERT INTO vehicle_part(
	v_part_id,
	part_quantity,
	serial_number,
	service_id,
	part_id
) VALUES(
	2341,
	1,
	990011,
	23254,
	987654321
);

INSERT INTO vehicle_part(
	v_part_id,
	part_quantity,
	serial_number,
	service_id,
	part_id
) VALUES(
	2342,
	4,
	990011,
	23254,
	509237814
);

INSERT INTO vehicle_part(
	v_part_id,
	part_quantity,
	serial_number,
	service_id,
	part_id
) VALUES(
	2343,
	4,
	990011,
	23254,
	671859234
);

INSERT INTO vehicle_part(
	v_part_id,
	part_quantity,
	serial_number,
	service_id,
	part_id
) VALUES(
	2344,
	4,
	990011,
	23254,
	769241835
);

INSERT INTO vehicle_part(
	v_part_id,
	part_quantity,
	serial_number,
	service_id,
	part_id
) VALUES(
	2345,
	4,
	990011,
	23254,
	213685794
);

-- Inserting data into service_history table
INSERT INTO service_history(
	serial_number
) VALUES(
	223344
);

INSERT INTO service_history(
	serial_number
) VALUES (
	220033
);

INSERT INTO service_history(
	serial_number
) VALUES (
	550066
);

INSERT INTO service_history(
	serial_number
) VALUES (
	445566
);

INSERT INTO service_history(
	serial_number
) VALUES (
	990011
);