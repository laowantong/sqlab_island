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

**Token.** 280010183117016.

How can you see a list of all inhabitants?

**Formula**. `salt_002(sum(nn(hash)) OVER ()) AS token`

```sql
SELECT *
FROM inhabitant
```

### Episode 3

**Token.** 127572182569252.

Copy-paste the previous query, add the given formula, and execute it.

**Formula**. `salt_048(sum(nn(hash)) OVER ()) AS token`

```sql
SELECT *
FROM inhabitant A
WHERE job = 'butcher'
```

### Episode 4

**Token.** 278655325129117.

Okay, let's see who is friendly on this island...

**Formula**. `salt_023(sum(nn(hash)) OVER ()) AS token`

```sql
SELECT *
FROM inhabitant
WHERE state = 'friendly'
```

### Episode 5

**Token.** 49877984153702.

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

**Token.** 111347585921835.

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

**Token.** 71493821063775.

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

**Token.** 30398186716581.

How much gold do you have?

**Formula**. `salt_099(sum(nn(hash)) OVER ()) AS token`

```sql
SELECT gold
FROM inhabitant
WHERE personid = 20
```

### Episode 9

**Token.** 8348573347279.

Make a list of all items that don't belong to anyone.

_Tip._ You can recognize ownerless items by: WHERE owner IS NULL

**Formula**. `salt_073(sum(nn(hash)) OVER ()) AS token`

```sql
SELECT *
FROM item
WHERE owner IS NULL
```

### Episode 10

**Token.** 250823105679734.

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

**Token.** 112781382726964.

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

**Token.** 134094834306231.

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

**Token.** 206536196373822.

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

**Token.** 166475576240457.

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

**Token.** 261352685198133.

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

**Token.** 34877944868442.

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

**Token.** 34756549418683.

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

**Token.** 36005631554399.

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

**Token.** 17932999715393.

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

**Token.** 34691307363878.

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

**Token.** 156519988531042.

Is there a pilot on this island by any chance? He could fly you home.

**Formula**. `salt_086(sum(nn(hash)) OVER ()) AS token`

```sql
SELECT *
FROM inhabitant
WHERE job = 'pilot'
```

### Episode 22

**Token.** 228820229151258.

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

**Token.** 256416647551874.

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

**Token.** 241551827838277.

Copy-paste the previous query, add the given formula, and execute it.

**Formula**. `salt_012(sum(avg(nn(A.hash) + nn(B.hash))) OVER ()) AS token`

```sql
SELECT count(*) AS population
FROM inhabitant A
JOIN village B ON A.villageid = B.villageid
WHERE B.name = 'Onionville'
```

### Episode 25

**Token.** 238207576521752.

Shall I tell you how many women there are in Onionville? Nah, you can figure it out by yourself!

_Tip._ Women show up as gender = 'f'.

**Formula** (replace (0) with this number). `salt_032((0) + sum(avg(nn(A.hash) + nn(B.hash))) OVER ()) AS token`

```sql
SELECT count(*) AS women
FROM inhabitant A
JOIN village B ON A.villageid = B.villageid
    AND B.name = 'Onionville'
    AND gender = 'f'
```

### Episode 26

**Token.** 41269257906868.

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

**Token.** 124758398389543.

Copy-paste the previous query, add the given formula, and execute it.

**Formula**. `salt_035(sum(avg(nn(A.hash) + nn(B.hash))) OVER ()) AS token`

```sql
SELECT sum(A.gold) AS total
FROM inhabitant A
JOIN village B ON A.villageid = B.villageid
WHERE B.name = 'Cucumbertown'
```

### Episode 28

**Token.** 152687633573299.

Sum the gold of all these people.

**Formula** (replace (0) with this sum). `salt_046((0) + sum(avg(nn(hash))) OVER ()) AS token`

```sql
SELECT sum(inhabitant.gold) AS total
FROM inhabitant
WHERE job IN ('baker', 'dealer', 'merchant')
```

### Episode 29

**Token.** 203591029657813.

Copy-paste the previous query, add the given formula, and execute it.

**Formula**. `salt_071(sum(avg(nn(hash))) OVER ()) AS token`

```sql
SELECT job
     , avg(gold) AS average
FROM inhabitant
GROUP BY job
ORDER BY average
```

### Episode 30

**Token.** 222052332563255.

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

**Token.** 193773092890240.

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

**Token.** 60216806700812.

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

**Token.** 225765442742136.

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

**Token.** 225973728467568.

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

**Token.** 255035326205192.


