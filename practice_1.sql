CREATE TABLE shlyahov.TestTable(
id INTEGER NOT NULL,
name TEXT,
is_sold BIT,
invoice_date DATE
);

INSERT INTO shlyahov.TestTable
     VALUES
	 		(1, 'Boat', B'1', '2021-11-08'),
	 		(2, 'Auto', B'0', '2021-11-09'),
	 		(3, 'Plane', null, '2021-12-09');
	 
SELECT * FROM TestTable;

  ALTER TABLE TestTable
RENAME COLUMN name TO vehicle;

TRUNCATE TABLE shlyahov.TestTable;

DROP TABLE IF EXISTS shlyahov.TestTable;