## Fundamentals
```sql
SELECT
FROM 
SELECT DISTINCT
COUNT(*) - COUNT(DISTINCT column)
WHERE - appears after FROM -> FROM WHERE ...
OPERATORS, < > >= <= !=
AND OR NOT
WHERE name='value' AND column = ''
ORDER BY column ASC/DESC
WHERE BETWEEN _ AND _
WHERE NOT BETWEEN _ AND _
IN(list)
```
```sql
LIKE
'%...' '...%' '_...' '.._..'
WHERE column LIKE '%a'
WHERE title 'Mission Impossible _'
```

## GROUP BY
### Aggregate functions
AGG(), AVG(), COUNT(), MAX(), MIN(), SUM(), ROUND()
We only use aggregate with select or HAVING

```sql
SELECT AGG(column) -- GROUP BY AGG(column)
HAVING -> It must have an aggregate funtion
```

## JOINS
AS - Select column as new_name, we cannot use AS inside a WHERE 

### INNER JOIN
```sql
SELECT * FROM t1
INNER JOIN t2
ON t1.col_match = t2.col_match
```

### OUTER JOIN
```sql
SELECT * FROM t1
FULL OUTER JOIN t2
ON t1.col_match = t2.col_match
WHERE T1.ID is NULL OR t2.id IS NULL
```
### SELF JOIN
They are about creating a copy of the same table and joining those two tables
together
1. Create the first by using AS, select what we want to display
2. JOIN the same table and calling it different AS
3. ON the values we want to match
```sql
SELECT tableA.col, tableB.col
FROM table AS table A
JOIN table AS tableB ON
tableA.some_col = tableB.other_col
```

## Advanced
```sql
EXTRACT(), AGE(), TO_CHAR()
EXTRACT(YEAR, MONTH, DAY, WEEK, QUARTER)
EXTRACT(YEAR FROM column)
AGE(column)
TO_CHAR(date_col, "format"-"mm-dd-yyyy")
```

## EXISTS
```sql
SELECT column_name
FROM table
WHERE EXISTS
(SELECT column FROM table WHERE condition)
```
## CREATING
Data types: Boolean, character, numeric, temporal, UUID, ARRAY, JSON, SERIAL
Constraints: NOT NULL, UNIQUE, PRIMARY KEY, FOREIGN KEY, CHECK, EXCLUSION

### CREATE
```sql
CREATE TABLE players(
	player_id SERIAL PRIMARY KEY
	age SMALLINT NOT NULL
)
```

### INSERT
Allows you to insert rows to a table
```sql
INSERT INTO table(column1, column2)
VALUES(value1, value2,...),
VALUES(value1, value2,...),...;
```
```sql
from another table
INSERT INTO table(column1, column2,...)
SELECT column1, column2,...
FROM another_table
WHERE condition
```

### UPDATE
```sql
UPDATE table
SET column1 = value1,
	column2 = value 2,...
WHERE condition;
```
```sql
UPDATE account 
SET last_login = CURRENT_TIMESTAMP
WHERE last_login IS NULL
```
```sql
UPDATE tableA
SET original_col = tableB.new_col
FROM tableB
WHERE tableA.id = tableB.id
```

### DELETE
Remove rows from a table

```sql
DELETE FROM table 
WHERE row_id = 1
Deleting based on their presence in other table
DELETE FROM tableA
USING tableB
WHERE tableA.id = tableB.id
```

### ALTER
- Adding, dropping renaming column
- Changing a column's data type
- Set default values for a column
- Add check constraints.
- Rename table.
```sql
ALTER TABLE table_name action
ALTER TABLE table_name ADD COLUMN new_col TYPE
ALTER TABLE table_name DROP COLUMN col_name
```

### DROP 
Allows for the complete removal of a column in a table.
```sql
ALTER TABLE table_name
DROP COLUMN column_name CASCADE
```
```sql
ALTER TABLE table_name
DROP COLUMN IF EXISTS col_name
```

## CONDITIONAL
```sql
SELECT a
CASE
	WHEN condition1 THEN result1
	WHEN condition2 THEN result2
	ELSE some_other_result
END
FROM test;
```

## COALESCE 
Returns the first element that is not null.
```sql
SELECT item, (price - COALESCE(discount,0)) AS final FROM table
```
It can also be used in case we want to return a string instead of null value
```sql
SELECT name, COALESCE(mobile, '07986 444 2266') AS mobile
FROM teacher;
```
## CAST
Let's you convert from one datatype into another 
```sql
SELECT CAST('5' AS INTEGER)
SELECT '5'::INTEGER
SELECT CAST(date AS TIMESTAMP) FROM table
```

## NULLIF
Takes in 2 inputs and returns null if both are equal, otherwise returns the first argument passed.
`NULLIF(10,10) -> NULL`
`NULLIF(10,12) -> 10`
This becomes very useful in cases where a null value would cause an error or unwanted result.

## Correlated Suquery
*So I think it's easier if you work with the subquery backwards. The subquery returns all of the area values that are on the same continent as x and then if x.area is greater than every value in what the subquery returns, that comparison will be TRUE and thus return in the outer query.
so if you have x comparison ALL (subquery) the comparison is true if it is true for all results in the subquery* **Discord**

*sorta, it doesn't run that way under the hood but it is checking it against every value in there. I think if you tried to build that query from scratch you'd think of it that way though*
*1) figure out the values you need from your database and select those.
2) figure out the comparison you need
3) build a subquery to return all the values you need to compare to* **Discord**

## Wildcards
### FOR MS SQL
```sql
SELECT DISTINCT CITY
FROM STATION
WHERE CITY LIKE '[AEIOU]%'
ORDER BY CITY;
```

### PostgresSQL
```sql
SELECT DISTINCT s.CITY
FROM STATION s
WHERE LOWER(s.CITY) SIMILAR TO '(a|e|i|o|u)%';
```
```sql
SELECT DISTINCT s.CITY
FROM STATION s
WHERE s.CITY ~ '^(a|e|i|o|u)';
```
### MySQL
```sql
SELECT DISTINCT CITY
FROM STATION
WHERE CITY REGEXP '^[AEIOU]'
ORDER BY CITY;

SELECT DISTINCT CITY
FROM STATION
WHERE LEFT(CITY,1) IN ('A','E','I','O','U')
ORDER BY CITY;
```
```sql
^			// start of string
[aeiou]			// a single vowel
.			// any characted...
*			// ...repeated any number of times
[aeiou]			// another vowel
$			// end of string
~ // Matches regular expression, case sensitive
~* // Matches regular expression, case insensitive
!~ // Does not match regular expression, case sensitive
!~* // Does not to match regular expression, case insensitive
```

```sql
SELECT DISTINCT CITY
FROM STATION
WHERE CITY NOT REGEXP '^[AEIOU]|[aeiou]$';
| : and
NOT REGEXP ^[aeiou].*[aeiou]$
```

### Patter matching
[PostgresSQL docs](https://www.postgresql.org/docs/9.3/functions-matching.html)<br/>
[MySQL docs](https://dev.mysql.com/doc/refman/8.0/en/pattern-matching.html)

## REPLACE()
Replace a value from an int or a str
REPLACE(column,replacedValue,newValue)

## CEIL()
Round up to the nearest integer

## FLOOR()
Round down to the nearest integer

## SIGN()
The SIGN() function returns the sign of a number. <br/>
This function will return one of the following:
- If number > 0, it returns 1
- If number = 0, it returns 0
- If number < 0, it returns -1

## OFFSET
You can also specify an OFFSET from where to start returning data. In this example you skip the first two rows
```sql
SELECT * FROM artists LIMIT 5 OFFSET 2;
```


## ROW_NUMBER() OVER()
### RANK() OVER()
The ROW_NUMBER() function requires the OVER(ORDER BY) expression to determine the order that the rows are numbered. The default order is ascending but descending can also be used. 
```sql
SELECT ROW_NUMBER() OVER (ORDER BY Products.ProductID) FROM Products;
```

## Using PostgresSQL

### Install
```shell
sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list'
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
sudo apt-get update
sudo apt-get install postgresql
```
### pgcli
```shell
sudo apt-get install pgcli
```
### Run
```shell
sudo su -l postgres
psql
\q
exit
```
### PostgresSQL in Vim
#### CREATE DATABASE
```shell
psql -h localhost -p portnumber -U user database
psql -h localhost -p 5432 -U postgres scratch
```
#### Create a tmux pane referred as "runner"
- Open tmux
- Open vim
In vim create a tmux pane
`:VtrOpenRunner`
#### Run pgcli
Run pgcli in the newly created pane and connect to the DB databese created above.
`pgcli -h localhost -p 5432 -u postgres pagila`
#### Query
Once we have pgcli running on the runner pane, we can write down our SQL query in Vim then select the query in Visual mode.
`SELECT film_id, title FROM film LIMIT 5;`
Finally use the binding `<Leader>sl` to send the selected SQL commands to the runner. The binding (enable via `g:VtrUseVtrMaps` mentioned above) executes command `:VtrSendLinesToRunner`.
