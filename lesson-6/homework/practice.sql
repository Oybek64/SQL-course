1. SELECT DISTINCT
   LEAST(col1, col2) AS col1,
   GREATEST(col1, col2) AS col2
   FROM InputTbl;

2. SELECT * FROM TestMultipleZero
   WHERE NOT (A = 0 AND B = 0 AND C = 0 AND D = 0);

3. SELECT * FROM section1
   WHERE ID%2=1;

4. SELECT *  FROM section1
   WHERE id = (SELECT MIN(id) FROM section1);

5. SELECT * FROM section1 
   WHERE id = (SELECT MAX(ID) FROM section1);

6. SELECT * FROM section1
   WHERE name LIKE 'B%';

7. SELECT *
   FROM ProductCodes
   WHERE Code LIKE '%/_%' ESCAPE '/';
        
