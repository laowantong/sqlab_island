# Cheat sheet

## Adventure

### Episode 1

**Token.** `call decrypt(042)`

Copy-paste the previous query. After the star `*`, add a comma and the given formula. Execute the complete query.

**Formula**. `salt_042(sum(hash) OVER ()) AS token`

```sql
SELECT *
FROM village
```

### Episode 2

**Token.** `call decrypt(279731784972193)`

How can you see a list of all inhabitants?

**Formula**. `salt_002(sum(hash) OVER ()) AS token`

```sql
SELECT *
FROM inhabitant
```

### Episode 3

**Token.** `call decrypt(128589543210724)`

Copy-paste the previous query, add the given formula, and execute it.

**Formula**. `salt_048(sum(hash) OVER ()) AS token`

```sql
SELECT *
FROM inhabitant A
WHERE job = 'butcher'
```

### Episode 4

**Token.** `call decrypt(280206676651511)`

Okay, let's see who is friendly on this island...

**Formula**. `salt_023(sum(hash) OVER ()) AS token`

```sql
SELECT *
FROM inhabitant
WHERE state = 'friendly'
```

### Episode 5

**Token.** `call decrypt(49081739277115)`

Now try to find a friendly weaponsmith to forge you one.

_Tip._ You can combine predicates in the `WHERE` clause with `AND`.

**Formula**. `salt_060(sum(hash) OVER ()) AS token`

```sql
SELECT *
FROM inhabitant
WHERE state = 'friendly'
    AND job = 'weaponsmith'
```

### Episode 6

**Token.** `call decrypt(111903790755050)`

Maybe other friendly smiths can help you out, e.g. a blacksmith.

_Tip._ Try out: job `LIKE` '%smith' to find all inhabitants whose job ends with 'smith' (% is a wildcard for any number of characters).

**Formula**. `salt_069(sum(hash) OVER ()) AS token`

```sql
SELECT *
FROM inhabitant
WHERE state = 'friendly'
    AND job LIKE '%smith'
```

### Episode 7

**Token.** `call decrypt(71115866585707)`

First, execute the `INSERT` query. Then, look for your personid.

_Tip._ In former queries, the * stands for: all columns. Instead of the star, you can also address one or more columns (separated by a comma) and you will only get the columns you need.

**Formula**. `salt_090(sum(hash) OVER ()) AS token`

```sql
INSERT INTO inhabitant (name, villageid, gender, job, gold, state)
VALUES ('Stranger', 1, '?', '?', 0, '?');


SELECT personid
FROM inhabitant
WHERE name = 'Stranger';
```

```sql
INSERT INTO inhabitant (name, villageid, gender, job, gold, state)
VALUES ('Stranger', 1, '?', '?', 0, '?')
```

```sql
INSERT INTO inhabitant (name, villageid, gender, job, gold, state)
VALUES ('Stranger', 1, '?', '?', 0, '?')
```

```sql
INSERT INTO inhabitant (name, villageid, gender, job, gold, state)
VALUES ('Stranger', 1, '?', '?', 0, '?')
```

```sql
INSERT INTO inhabitant (name, villageid, gender, job, gold, state)
VALUES ('Stranger', 1, '?', '?', 0, '?')
```

```sql
DELETE
FROM inhabitant
WHERE name = 'Stranger';


ALTER TABLE inhabitant AUTO_INCREMENT = 1;


INSERT INTO inhabitant (name, villageid, gender, job, gold, state)
VALUES ('Stranger', 1, '?', '?', 0, '?');
```

### Episode 8

**Token.** `call decrypt(29896704364823)`

How much gold do you have?

**Formula**. `salt_099(sum(hash) OVER ()) AS token`

```sql
SELECT gold
FROM inhabitant
WHERE personid = 20
```

### Episode 9

**Token.** `call decrypt(7708171354493)`

Make a list of all items that don't belong to anyone.

_Tip._ You can recognize ownerless items by: WHERE owner IS NULL

**Formula**. `salt_073(sum(hash) OVER ()) AS token`

```sql
SELECT *
FROM item
WHERE OWNER IS NULL
```

### Episode 10

**Token.** `call decrypt(253789061748229)`

Execute the `UPDATE` query, and check the `item` table afterwards.

**Formula**. `salt_093(sum(hash) OVER ()) AS token`

```sql
UPDATE item
SET OWNER = 20
WHERE item = 'coffee cup';


SELECT *
FROM item
```

### Episode 11

**Token.** `call decrypt(107025105236366)`

Do you know a trick how to collect all the ownerless items? Afterwards, list all of the items you own.

**Formula**. `salt_033(sum(hash) OVER ()) AS token`

```sql
UPDATE item
SET OWNER = 20
WHERE OWNER IS NULL;


SELECT item
FROM item
WHERE OWNER = 20
```

### Episode 12

**Token.** `call decrypt(139744599079637)`

Find a friendly inhabitant who is either a dealer or a merchant. Maybe they want to buy some of your items.

_Tip._ When you use both `AND` and `OR`, don't forget to put brackets correctly!

**Formula**. `salt_024(sum(hash) OVER ()) AS token`

```sql
SELECT *
FROM inhabitant
WHERE state = 'friendly'
    AND (job = 'dealer' OR job = 'merchant')
```

### Episode 13

**Token.** `call decrypt(166788243175236)`

Afterwards, check the items that she owns.

**Formula**. `salt_034(sum(hash) OVER ()) AS token`

```sql
UPDATE item
SET OWNER = 15
WHERE item = 'ring'
    OR item = 'teapot';


SELECT *
FROM item
WHERE OWNER = 15
```

### Episode 14

**Token.** `call decrypt(261661938333343)`

Substract 120 from Helen's gold, add 120 to yours, and then check the new amounts of your two rows.

**Formula**. `salt_091(sum(hash) OVER ()) AS token`

```sql
UPDATE inhabitant
SET gold = gold - 120
WHERE personid = 15;


UPDATE inhabitant
SET gold = gold + 120
WHERE personid = 20;


SELECT name
     , gold
FROM inhabitant
WHERE personid IN (15, 20)
```

### Episode 15

**Token.** `call decrypt(34807888636366)`

Update your name to 'Leslie Qualls' and show the updated row.

**Formula**. `salt_080(sum(hash) OVER ()) AS token`

```sql
UPDATE inhabitant
SET name = 'Leslie Qualls'
WHERE personid = 20;


SELECT *
FROM inhabitant
WHERE personid = 20
```

### Episode 16

**Token.** `call decrypt(18314467662514)`

Since baking is one of your hobbies, why not find a baker who you can work for?

_Tip._ List all bakers and use `ORDER BY` gold to sort the results. `ORDER BY` gold `DESC` is even better because then the richest baker is on top.

**Formula** (replace the emoji 👀 with gold on the first row). `salt_078(👀 + sum(hash) OVER ()) AS token`

```sql
SELECT *
FROM inhabitant
WHERE job = 'baker'
ORDER BY gold DESC
```

### Episode 17

**Token.** `call decrypt(34285849059910)`

Update your gold by adding your salary (100) and substracting the price of the sword (150).

**Formula**. `salt_010(sum(hash) OVER ()) AS token`

```sql
UPDATE inhabitant
SET gold = gold + 100 - 150
WHERE personid = 20;


SELECT name
     , gold
FROM inhabitant
WHERE personid = 20
```

### Episode 18

**Token.** `call decrypt(157095709958947)`

Is there a pilot on this island by any chance? He could fly you home.

**Formula**. `salt_086(sum(hash) OVER ()) AS token`

```sql
SELECT *
FROM inhabitant
WHERE job = 'pilot'
```

### Episode 19

**Token.** `call decrypt(229615318980909)`

Copy-paste the previous query, add the given formula, and execute it.

**Formula**. `salt_029(sum(A.hash + B.hash) OVER ()) AS token`

The expression presented here is called a join. It combines the information of the `inhabitant` table with information of the `village` table by matching `villageid` values.

```sql
SELECT A.name
FROM village A, inhabitant B
WHERE A.villageid = B.villageid
    AND B.name = 'Dirty Dieter'
```

### Episode 20

**Token.** `call decrypt(256975312978711)`

Use the join to find out the chief's name of the village Onionville.

_Tip._ In the column `chief` in the village table, the `personid` of the chief is stored.

**Formula**. `salt_045(sum(A.hash + B.hash) OVER ()) AS token`

```sql
SELECT B.name
FROM village A, inhabitant B
WHERE A.chief = B.personid
    AND A.name = 'Onionville'
```

### Episode 21

**Token.** `call decrypt(240365303417698)`

Copy-paste the previous query, add the given formula, and execute it.

**Formula** (replace the emoji 👀 with this number). `salt_012(👀 + sum(bit_xor(A.hash + B.hash)) OVER ()) AS token`

```sql
SELECT count(*) AS population
FROM inhabitant A, village B
WHERE A.villageid = B.villageid
    AND B.name = 'Onionville'
```

### Episode 22

**Token.** `call decrypt(237781870732904)`

Shall I tell you how many women there are in Onionville? Nah, you can figure it out by yourself!

_Tip._ Women show up as gender = 'f'.

**Formula** (replace the emoji 👀 with this number). `salt_032(👀 + sum(bit_xor(A.hash + B.hash)) OVER ()) AS token`

```sql
SELECT count(*) AS women
FROM inhabitant A, village B
WHERE A.villageid = B.villageid
    AND B.name = 'Onionville'
    AND gender = 'f'
```

### Episode 23

**Token.** `call decrypt(41535988500868)`

What's her name?

**Formula**. `salt_036(sum(A.hash + B.hash) OVER ()) AS token`

```sql
SELECT A.name
FROM inhabitant A, village B
WHERE A.villageid = B.villageid
    AND B.name = 'Onionville'
    AND gender = 'f'
```

### Episode 24

**Token.** `call decrypt(124493698100759)`

Copy-paste the previous query, add the given formula, and execute it.

**Formula** (replace the emoji 👀 with this sum). `salt_035(👀 + sum(bit_xor(A.hash + B.hash)) OVER ()) AS token`

```sql
SELECT sum(A.gold) AS total
FROM inhabitant A
   , village B
WHERE A.villageid = B.villageid
    AND B.name = 'Cucumbertown'
```

### Episode 25

**Token.** `call decrypt(152867079389134)`

Sum the gold of all these people.

**Formula** (replace the emoji 👀 with this sum). `salt_046(👀 + sum(bit_xor(hash)) OVER ()) AS token`

```sql
SELECT sum(inhabitant.gold) AS total
FROM inhabitant
WHERE job IN ('baker', 'dealer', 'merchant')
```

### Episode 26

**Token.** `call decrypt(203716599638991)`

Copy-paste the previous query, add the given formula, and execute it.

**Formula** (replace the emoji 👀 with the average on the last row). `salt_071(👀 + sum(bit_xor(hash)) OVER ()) AS token`

```sql
SELECT job
     , avg(gold) AS average
FROM inhabitant
GROUP BY job
ORDER BY average
```

### Episode 27

**Token.** `call decrypt(222167811363863)`

Execute the previous query. Which item is now ownerless?

**Formula**. `salt_018(sum(hash) OVER ()) AS token`

```sql
DELETE
FROM inhabitant
WHERE name = 'Dirty Dieter';


SELECT item
FROM item
WHERE OWNER IS NULL
```

### Episode 28

**Token.** `call decrypt(193619246200652)`

Delete Dirty Diane, and show the table `inhabitant`.

**Formula**. `salt_004(sum(hash) OVER ()) AS token`

```sql
DELETE
FROM inhabitant
WHERE name = 'Dirty Diane';


SELECT *
FROM inhabitant
```

### Episode 29

**Token.** `call decrypt(67594779315675)`

Change the pilot's status to 'friendly', your own status to 'emigrated', and show the table `inhabitant`.

**Formula**. `salt_051(sum(hash) OVER ()) AS token`

```sql
UPDATE inhabitant
SET state = 'emigrated'
WHERE personid = 20;


UPDATE inhabitant
SET state = 'friendly'
WHERE job = 'pilot';


SELECT *
FROM inhabitant;
```

### Episode 30


