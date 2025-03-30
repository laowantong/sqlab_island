# Cheat sheet

## Adventure

### Episode 1

**Token.** 042.

Copy-paste the previous query. After the star `*`, add a comma and the given formula. Execute the complete query.

**Formula**. `salt_042(sum(nn(hash)) OVER ()) AS token`

```sql
SELECT *
FROM village
```

### Episode 2

**Token.** 279644058721993.

How can you see a list of all inhabitants?

**Formula**. `salt_002(sum(nn(hash)) OVER ()) AS token`

```sql
SELECT *
FROM inhabitant
```

### Episode 3

**Token.** 130877018053621.

Copy-paste the previous query, add the given formula, and execute it.

**Formula**. `salt_048(sum(nn(hash)) OVER ()) AS token`

```sql
SELECT *
FROM inhabitant A
WHERE job = 'butcher'
```

### Episode 4

**Token.** 279073832771282.

Okay, let's see who is friendly on this island...

**Formula**. `salt_023(sum(nn(hash)) OVER ()) AS token`

```sql
SELECT *
FROM inhabitant
WHERE state = 'friendly'
```

### Episode 5

**Token.** 50980998180879.

Now try to find a friendly weaponsmith to forge you one.

_Tip._ You can combine predicates in the `WHERE` clause with `AND`.

**Formula**. `salt_060(sum(nn(hash)) OVER ()) AS token`

```sql
SELECT *
FROM inhabitant
WHERE state = 'friendly'
    AND job = 'weaponsmith'
```

### Episode 6

**Token.** 111873735423475.

Maybe other friendly smiths can help you out, e.g. a blacksmith.

_Tip._ Try out: job LIKE '%smith' to find all inhabitants whose job ends with 'smith' (% is a wildcard for any number of characters).

**Formula**. `salt_069(sum(nn(hash)) OVER ()) AS token`

```sql
SELECT *
FROM inhabitant
WHERE state = 'friendly'
    AND job LIKE '%smith'
```

### Episode 7

**Token.** 71849070099607.

First, execute the `INSERT` statement. Then, look for your personid.

_Tip._ In former queries, the * stands for: all columns. Instead of the star, you can also address one or more columns (separated by a comma) and you will only get the columns you need.

**Formula**. `salt_090(sum(nn(hash)) OVER ()) AS token`

```sql
INSERT INTO inhabitant (name, villageid, gender, job, gold, state)
VALUES ('Stranger', 1, '?', '?', 0, '?');


SELECT personid
FROM inhabitant
WHERE name = 'Stranger';
```

### Episode 8

**Token.** 30525141563126.

How much gold do you have?

**Formula**. `salt_099(sum(nn(hash)) OVER ()) AS token`

```sql
SELECT gold
FROM inhabitant
WHERE personid = 20
```

### Episode 9

**Token.** 8733222069916.

Make a list of all items that don't belong to anyone.

_Tip._ You can recognize ownerless items by: WHERE owner IS NULL

**Formula**. `salt_073(sum(nn(hash)) OVER ()) AS token`

```sql
SELECT *
FROM item
WHERE owner IS NULL
```

### Episode 10

**Token.** 253789061748229.

Execute the `UPDATE` statement, and check the `item` table afterwards.

**Formula**. `salt_093(sum(nn(hash)) OVER ()) AS token`

```sql
UPDATE item
SET owner = 20
WHERE item = 'coffee cup';


SELECT *
FROM item
```

### Episode 11

**Token.** 107025105236366.

Do you know a trick how to collect all the ownerless items? Afterwards, list all of the items you own.

**Formula**. `salt_033(sum(nn(hash)) OVER ()) AS token`

```sql
UPDATE item
SET owner = 20
WHERE owner IS NULL;


SELECT item
FROM item
WHERE owner = 20
```

```sql
UPDATE item
SET owner = 20;


SELECT item
FROM item
```

### Episode 12

**Token.** 140217850902324.

Let's give them back to their rightful owners: the cane to 5, the hammer to 2 and the rope to 17. Afterwards, list all of the items you own.

**Formula**. `salt_025(sum(nn(hash)) OVER ()) AS token`

```sql
UPDATE item
SET owner = 5
WHERE item = 'cane';

UPDATE item
SET owner = 2
WHERE item = 'hammer';

UPDATE item
SET owner = 17
WHERE item = 'rope';

SELECT item
FROM item
WHERE owner = 20
```

### Episode 13

**Token.** 206054094742976.

Find a friendly inhabitant who is either a merchant or a dealer. Maybe they want to buy some of your items.

**Formula**. `salt_024(sum(nn(hash)) OVER ()) AS token`

With a logical `OR`.

```sql
SELECT *
FROM inhabitant
WHERE state = 'friendly'
    AND (job = 'merchant' OR job = 'dealer')
```

With the `IN` operator (recommended). A cleaner, more scalable way to check a column against multiple values.

```sql
SELECT *
FROM inhabitant
WHERE state = 'friendly'
    AND job in ('merchant', 'dealer')
```

### Episode 14

**Token.** 166940006711685.

Afterwards, check the items that she owns.

**Formula**. `salt_034(sum(nn(hash)) OVER ()) AS token`

```sql
UPDATE item
SET owner = 15
WHERE item IN ('ring', 'teapot');


SELECT *
FROM item
WHERE owner = 15
```

### Episode 15

**Token.** 261661938333343.

Transfer 120 from Helen's gold to yours, and then check the new amounts of your two rows.

_Tip._ SQL has no “transfer” operation. Use two `UPDATE` statements.

**Formula**. `salt_091(sum(nn(hash)) OVER ()) AS token`

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

```sql
UPDATE inhabitant
SET gold = gold - 120
WHERE personid = 15;


SELECT name
     , gold
FROM inhabitant
WHERE personid IN (15, 20)
```

```sql
UPDATE inhabitant
SET gold = gold + 120
WHERE personid = 20;


SELECT name
     , gold
FROM inhabitant
WHERE personid IN (15, 20)
```

### Episode 16

**Token.** 33486899158028.

You have correctly updated Helen's gold. Now update yours.

**Formula**. `salt_075(sum(nn(hash)) OVER ()) AS token`

```sql
UPDATE inhabitant
SET gold = gold + 120
WHERE personid = 20;


SELECT name
     , gold
FROM inhabitant
WHERE personid IN (15, 20)
```

### Episode 17

**Token.** 33458254442206.

You have correctly updated your gold. Now update Helen's.

**Formula**. `salt_076(sum(nn(hash)) OVER ()) AS token`

```sql
UPDATE inhabitant
SET gold = gold - 120
WHERE personid = 15;


SELECT name
     , gold
FROM inhabitant
WHERE personid IN (15, 20)
```

### Episode 18

**Token.** 36634440878275.

Update your name to 'Leslie Qualls' and show the updated row.

**Formula**. `salt_080(sum(nn(hash)) OVER ()) AS token`

```sql
UPDATE inhabitant
SET name = 'Leslie Qualls'
WHERE personid = 20;


SELECT *
FROM inhabitant
WHERE personid = 20
```

### Episode 19

**Token.** 18336198393759.

Since baking is one of your hobbies, why not find a baker who you can work for?

_Tip._ List all bakers and use `ORDER BY` gold to sort the results. `ORDER BY` gold `DESC` is even better because then the richest baker is on top.

**Formula** (replace (0) with gold on the last row). `salt_078((0) + sum(nn(hash)) OVER ()) AS token`

```sql
SELECT *
FROM inhabitant
WHERE job = 'baker'
ORDER BY gold DESC
```

### Episode 20

**Token.** 30928237956525.

Transfer your salary (100) from Paul's gold to yours, and substract the price of the sword (150). Then, display your gold balance.

**Formula**. `salt_010(sum(nn(hash)) OVER ()) AS token`

```sql
UPDATE inhabitant
SET gold = gold - 100
WHERE personid = 1;


UPDATE inhabitant
SET gold = gold + 100 - 150
WHERE personid = 20;


SELECT gold
FROM inhabitant
WHERE personid = 20
```

### Episode 21

**Token.** 156356238644044.

Is there a pilot on this island by any chance? He could fly you home.

**Formula**. `salt_086(sum(nn(hash)) OVER ()) AS token`

```sql
SELECT *
FROM inhabitant
WHERE job = 'pilot'
```

### Episode 22

**Token.** 228770217179253.

Copy-paste the previous query, add the given formula, and execute it.

**Formula**. `salt_029(sum(nn(A.hash) + nn(B.hash)) OVER ()) AS token`

The expression presented here is called a join. It combines the information of the `inhabitant`
table with information of the `village` table by matching `villageid` values.

```sql
SELECT A.name
FROM village A
JOIN inhabitant B ON A.villageid = B.villageid
WHERE B.name = 'Dirty Dieter'
```

Variant. Implicit JOIN. You may encounter a syntax where the join conditions are mixed with the filter conditions. This can make the query harder to understand, especially as the number of tables and conditions increases. While this method is still supported for backward compatibility, it is generally considered outdated. The explicit JOIN syntax is recommended for new SQL code.

```sql
SELECT A.name
FROM village A, inhabitant B
WHERE A.villageid = B.villageid
  AND B.name = 'Dirty Dieter'
```

### Episode 23

**Token.** 256500123076880.

Use the join to find out the chief's name of the village Onionville.

_Tip._ In the column `chief` in the village table, the `personid` of the chief is stored.

**Formula**. `salt_045(sum(nn(A.hash) + nn(B.hash)) OVER ()) AS token`

```sql
SELECT B.name
FROM village A
JOIN inhabitant B ON A.chief = B.personid
WHERE A.name = 'Onionville'
```

### Episode 24

**Token.** 241491762019151.

Copy-paste the previous query, add the given formula, and execute it.

**Formula**. `salt_012(bit_xor(sum(nn(A.hash) + nn(B.hash))) OVER ()) AS token`

```sql
SELECT count(*) AS population
FROM inhabitant A
JOIN village B ON A.villageid = B.villageid
WHERE B.name = 'Onionville'
```

### Episode 25

**Token.** 229606212629141.

Shall I tell you how many women there are in Onionville? Nah, you can figure it out by yourself!

_Tip._ Women show up as gender = 'f'.

**Formula** (replace (0) with this number). `salt_032((0) + bit_xor(sum(nn(A.hash) + nn(B.hash))) OVER ()) AS token`

```sql
SELECT count(*) AS women
FROM inhabitant A
JOIN village B ON A.villageid = B.villageid
    AND B.name = 'Onionville'
    AND gender = 'f'
```

### Episode 26

**Token.** 41770464086333.

What's her name?

**Formula**. `salt_036(sum(nn(A.hash) + nn(B.hash)) OVER ()) AS token`

```sql
SELECT A.name
FROM inhabitant A
JOIN village B ON A.villageid = B.villageid
WHERE B.name = 'Onionville'
    AND gender = 'f'
```

### Episode 27

**Token.** 124254928334508.

Copy-paste the previous query, add the given formula, and execute it.

**Formula**. `salt_035(bit_xor(sum(nn(A.hash) + nn(B.hash))) OVER ()) AS token`

```sql
SELECT sum(A.gold) AS total
FROM inhabitant A
JOIN village B ON A.villageid = B.villageid
WHERE B.name = 'Cucumbertown'
```

### Episode 28

**Token.** 158000323613499.

Sum the gold of all these people.

**Formula** (replace (0) with this sum). `salt_046((0) + bit_xor(sum(nn(hash))) OVER ()) AS token`

```sql
SELECT sum(inhabitant.gold) AS total
FROM inhabitant
WHERE job IN ('baker', 'dealer', 'merchant')
```

### Episode 29

**Token.** 208022858214383.

Copy-paste the previous query, add the given formula, and execute it.

**Formula**. `salt_071(bit_xor(sum(nn(hash))) OVER ()) AS token`

```sql
SELECT job
     , avg(gold) AS average
FROM inhabitant
GROUP BY job
ORDER BY average
```

### Episode 30

**Token.** 228039061975856.

Execute the previous statement. Which item is now ownerless?

**Formula**. `salt_018(sum(nn(hash)) OVER ()) AS token`

```sql
DELETE
FROM inhabitant
WHERE name = 'Dirty Dieter';


SELECT item
FROM item
WHERE owner IS NULL
```

### Episode 31

**Token.** 193891994785434.

Delete Dirty Diane, and show the remaining inhabitants of Onionville (villageid 3).

**Formula**. `salt_004(sum(nn(hash)) OVER ()) AS token`

```sql
DELETE
FROM inhabitant
WHERE name = 'Dirty Diane';


SELECT *
FROM inhabitant
WHERE villageid = 3
```

### Episode 32

**Token.** 59998173561476.

Change the pilot's status to 'friendly', your own status to 'emigrated', and show the table `inhabitant`.

**Formula**. `salt_051(sum(nn(hash)) OVER ()) AS token`

```sql
UPDATE inhabitant
SET state = 'friendly'
WHERE job = 'pilot';

SELECT *
FROM inhabitant;
```

```sql
UPDATE inhabitant
SET state = 'emigrated'
WHERE personid = 20;

SELECT *
FROM inhabitant;
```

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

### Episode 33

**Token.** 226496379089034.

You have correctly updated the pilot's status. Now update yours to 'emigrated', and show the table `inhabitant`.

**Formula**. `salt_052(sum(nn(hash)) OVER ()) AS token`

```sql
UPDATE inhabitant
SET state = 'emigrated'
WHERE personid = 20;

SELECT *
FROM inhabitant;
```

### Episode 34

**Token.** 225990166488874.

You have correctly updated your status. Now update the pilot's state to 'friendly', and show the table `inhabitant`.

**Formula**. `salt_053(sum(nn(hash)) OVER ()) AS token`

```sql
UPDATE inhabitant
SET state = 'friendly'
WHERE job = 'pilot';

SELECT *
FROM inhabitant;
```

### Episode 35

**Token.** 254055169129857.


