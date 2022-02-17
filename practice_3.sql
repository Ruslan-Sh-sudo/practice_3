CREATE TABLE shlyahov.TestTable(
id INTEGER NOT NULL,
name TEXT,
is_sold BIT,
invoice_date DATE);

ALTER TABLE shlyahov.testtable ADD UNIQUE (id);
ALTER TABLE shlyahov.testtable ADD UNIQUE (name);

INSERT INTO shlyahov.TestTable (id, name, is_sold, invoice_date)
     VALUES
            (1, 'Boat', B'1', '2021-11-08'),
            (2,'Auto', B'0', '2021-11-09'),
            (3,'Plane', null, '2021-12-09');

INSERT INTO shlyahov.TestTable (id, name, is_sold, invoice_date)
     VALUES
            (4, 'Bycicle', B'0', '2020-08-23'),
			(5, 'Rocket', B'1', '2020-01-01'),
			(6, 'Motorcycle', null, '2020-08-26'),
			(7, 'Submarine', B'0', '1999-05-16');

INSERT INTO shlyahov.TestTable (id, invoice_date)
 	 VALUES (8,'2020-08-25');
	 
INSERT INTO shlyahov.TestTable (id, name)
     VALUES (9,'Scooter');

UPDATE TestTable SET is_sold = B'0' 
 WHERE is_sold is null;

DELETE FROM TestTable 
      WHERE name is null
	     OR invoice_date is null;
		 
INSERT INTO shlyahov.TestTable (id, name, is_sold, invoice_date)
     VALUES (4, 'Bycicle', B'0', '2020-08-23')
ON CONFLICT (name)
		 DO
 UPDATE SET name = 'Train';