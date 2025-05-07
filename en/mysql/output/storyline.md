
Oh dear, what happened? It seems that I am the only survivor of the air crash. Wow, there are some villages on this island.

```sql
SELECT *
FROM village
```

<details><summary>Statement</summary>Copy-paste the previous query<mark>, add the given formula after the star `*`</mark>, and execute it to see the result.<br><br>

<table>
    <thead>
        <tr>
            <th>villageid</th>
            <th>name</th>
            <th>chief</th>
            <th>hash</th>
            <th>token</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>1</td>
            <td>Monkeycity</td>
            <td>1</td>
            <td>537616450612</td>
            <td>279731784972193</td>
        </tr>
        <tr>
            <td>2</td>
            <td>Cucumbertown</td>
            <td>6</td>
            <td>506002862681</td>
            <td>279731784972193</td>
        </tr>
</table>
Total: 3 rows affected.

</details><br>


It seems there are a few people living in these villages.

<details><summary>Statement</summary>How can you see a list of all inhabitants?<br><br>

<table>
    <thead>
        <tr>
            <th>personid</th>
            <th>name</th>
            <th>villageid</th>
            <th>gender</th>
            <th>job</th>
            <th>gold</th>
            <th>state</th>
            <th>hash</th>
            <th>token</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>1</td>
            <td>Paul Bakerman</td>
            <td>1</td>
            <td>m</td>
            <td>baker</td>
            <td>850</td>
            <td>friendly</td>
            <td>667574576304</td>
            <td>128589543210724</td>
        </tr>
        <tr>
            <td>2</td>
            <td>Ernest Perry</td>
            <td>3</td>
            <td>m</td>
            <td>weaponsmith</td>
            <td>280</td>
            <td>friendly</td>
            <td>73993229357</td>
            <td>128589543210724</td>
        </tr>
</table>
Total: 19 rows affected.

</details><br>


Woah, so many people!

Man! I'm hungry. I will go and find a butcher to ask for some free sausages.

```sql
SELECT *
FROM inhabitant
WHERE job = 'butcher'
```

<details><summary>Statement</summary>Copy-paste the previous query<mark>, add the given formula</mark>, and execute it.<br><br>

<table>
    <thead>
        <tr>
            <th>personid</th>
            <th>name</th>
            <th>villageid</th>
            <th>gender</th>
            <th>job</th>
            <th>gold</th>
            <th>state</th>
            <th>hash</th>
            <th>token</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>6</td>
            <td>Gerry Slaughterer</td>
            <td>2</td>
            <td>m</td>
            <td>butcher</td>
            <td>4850</td>
            <td>evil</td>
            <td>872618219253</td>
            <td>280206676651511</td>
        </tr>
        <tr>
            <td>7</td>
            <td>Peter Slaughterer</td>
            <td>3</td>
            <td>m</td>
            <td>butcher</td>
            <td>3250</td>
            <td>evil</td>
            <td>648197551204</td>
            <td>280206676651511</td>
        </tr>
</table>
Total: 4 rows affected.

</details><br>


– There you are! Enjoy your meal! But take care of yourself. As long as you are unarmed, stay away from villains. Not everyone on this island is friendly.  
– Thank you, Edward!

<details><summary>Statement</summary>Okay, let's see who is friendly on this island...<br><br>

<table>
    <thead>
        <tr>
            <th>personid</th>
            <th>name</th>
            <th>villageid</th>
            <th>gender</th>
            <th>job</th>
            <th>gold</th>
            <th>state</th>
            <th>hash</th>
            <th>token</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>1</td>
            <td>Paul Bakerman</td>
            <td>1</td>
            <td>m</td>
            <td>baker</td>
            <td>850</td>
            <td>friendly</td>
            <td>667574576304</td>
            <td>49081739277115</td>
        </tr>
        <tr>
            <td>2</td>
            <td>Ernest Perry</td>
            <td>3</td>
            <td>m</td>
            <td>weaponsmith</td>
            <td>280</td>
            <td>friendly</td>
            <td>73993229357</td>
            <td>49081739277115</td>
        </tr>
</table>
Total: 11 rows affected.

</details><br>


There is no way around getting a sword for myself.

<details><summary>Statement</summary>Now try to find a friendly weaponsmith to forge you one.

_Tip._ You can combine predicates in the `WHERE` clause with `AND`.<br><br>

<table>
    <thead>
        <tr>
            <th>personid</th>
            <th>name</th>
            <th>villageid</th>
            <th>gender</th>
            <th>job</th>
            <th>gold</th>
            <th>state</th>
            <th>hash</th>
            <th>token</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>2</td>
            <td>Ernest Perry</td>
            <td>3</td>
            <td>m</td>
            <td>weaponsmith</td>
            <td>280</td>
            <td>friendly</td>
            <td>73993229357</td>
            <td>111903790755050</td>
        </tr>
</table>
Total: 1 row affected.

</details><br>


Hm, that's very few.

<details><summary>Statement</summary>Maybe other friendly smiths can help you out, e.g. a blacksmith.

_Tip._ Try out: job LIKE '%smith' to find all inhabitants whose job ends with 'smith' (% is a wildcard for any number of characters).<br><br>

<table>
    <thead>
        <tr>
            <th>personid</th>
            <th>name</th>
            <th>villageid</th>
            <th>gender</th>
            <th>job</th>
            <th>gold</th>
            <th>state</th>
            <th>hash</th>
            <th>token</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>2</td>
            <td>Ernest Perry</td>
            <td>3</td>
            <td>m</td>
            <td>weaponsmith</td>
            <td>280</td>
            <td>friendly</td>
            <td>73993229357</td>
            <td>71115866585707</td>
        </tr>
        <tr>
            <td>10</td>
            <td>Peter Drummer</td>
            <td>1</td>
            <td>m</td>
            <td>smith</td>
            <td>600</td>
            <td>friendly</td>
            <td>713565808545</td>
            <td>71115866585707</td>
        </tr>
</table>
Total: 3 rows affected.

</details><br>


That looks better! I will go and visit those smiths.

– Hi stranger! Where are you going? I'm Paul, I'm the major of Monkeycity. I will go ahead and register you as a citizen.

```sql
INSERT INTO
    inhabitant (name, villageid, gender, job, gold, state)
VALUES
    ('Stranger', 1, '?', '?', 0, '?')
```

<details><summary>Statement</summary>Execute the given `INSERT` statement. <mark>Then, list all the rows of the table `inhabitant`, with the given formula as added column.</mark>

_Tip._ In former queries, the `*` stands for: all columns. Instead of the star, you can also address one or more columns (separated by a comma) and you will only get the columns you need.<br><br>

<table>
    <thead>
        <tr>
            <th>personid</th>
            <th>name</th>
            <th>villageid</th>
            <th>gender</th>
            <th>job</th>
            <th>gold</th>
            <th>state</th>
            <th>hash</th>
            <th>token</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>1</td>
            <td>Paul Bakerman</td>
            <td>1</td>
            <td>m</td>
            <td>baker</td>
            <td>850</td>
            <td>friendly</td>
            <td>667574576304</td>
            <td>19389891798490</td>
        </tr>
        <tr>
            <td>2</td>
            <td>Ernest Perry</td>
            <td>3</td>
            <td>m</td>
            <td>weaponsmith</td>
            <td>280</td>
            <td>friendly</td>
            <td>73993229357</td>
            <td>19389891798490</td>
        </tr>
</table>
Total: 20 rows affected.

</details><br>


– No need to call me stranger!

<details><summary>Statement</summary>What is your personid?<br><br>

<table>
    <thead>
        <tr>
            <th>personid</th>
            <th>token</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>20</td>
            <td>37445107108825</td>
        </tr>
</table>
Total: 1 row affected.

</details><br>


– Hi Ernest! How much is a sword?  
– I can offer to make you a sword for 150 gold. That's the cheapest you will find!

<details><summary>Statement</summary>How much gold do you have?<br><br>

<table>
    <thead>
        <tr>
            <th>gold</th>
            <th>token</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>0</td>
            <td>7708171354493</td>
        </tr>
</table>
Total: 1 row affected.

</details><br>


Damn! No mon, no fun. There has to be another option to earn gold other than going to work. Maybe I could collect ownerless items and sell them!

<details><summary>Statement</summary>Make a list of all items that don't belong to anyone.

_Tip._ You can recognize ownerless items by: WHERE owner IS NULL. The special comparison operator `IS` is `NULL`-aware (by contrast with `=`, which would not work here).<br><br>

<table>
    <thead>
        <tr>
            <th>item</th>
            <th>owner</th>
            <th>hash</th>
            <th>token</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>bucket</td>
            <td>None</td>
            <td>184436083777</td>
            <td>253789061748229</td>
        </tr>
        <tr>
            <td>carton</td>
            <td>None</td>
            <td>456410402076</td>
            <td>253789061748229</td>
        </tr>
</table>
Total: 6 rows affected.

</details><br>


So much cool stuff!

Yay, a coffee cup. Let's collect it!

```sql
UPDATE item
SET owner = 20
WHERE item = 'coffee cup'
```

<details><summary>Statement</summary>Execute the `UPDATE` statement. <mark>Afterwards, show the item table with the formula as added column.</mark><br><br>

<table>
    <thead>
        <tr>
            <th>item</th>
            <th>owner</th>
            <th>hash</th>
            <th>token</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>bucket</td>
            <td>None</td>
            <td>184436083777</td>
            <td>107025105236366</td>
        </tr>
        <tr>
            <td>cane</td>
            <td>5</td>
            <td>11384476511</td>
            <td>107025105236366</td>
        </tr>
</table>
Total: 9 rows affected.

</details><br>


Let's reclaim all that's left!

<details><summary>Statement</summary>Do you know a trick how to collect all the ownerless items? <mark>Afterwards, list all of the items you own.</mark><br><br>

<table>
    <thead>
        <tr>
            <th>item</th>
            <th>token</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>bucket</td>
            <td>139744599079637</td>
        </tr>
        <tr>
            <td>carton</td>
            <td>139744599079637</td>
        </tr>
</table>
Total: 6 rows affected.

</details><br>


So greedy! You've snapped up all items, even those that already had an owner.

<details><summary>Statement</summary>Let's give them back to their rightful owners: the cane to 5, the hammer to 2 and the rope to 17. <mark>Afterwards, list all of the items.</mark><br><br>

<table>
    <thead>
        <tr>
            <th>item</th>
            <th>token</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>bucket</td>
            <td>204603481281422</td>
        </tr>
        <tr>
            <td>cane</td>
            <td>204603481281422</td>
        </tr>
</table>
Total: 9 rows affected.

</details><br>


Maybe someone wants to buy some of your items?

<details><summary>Statement</summary>Find a friendly inhabitant who is either a merchant or a dealer.<br><br>

<table>
    <thead>
        <tr>
            <th>personid</th>
            <th>name</th>
            <th>villageid</th>
            <th>gender</th>
            <th>job</th>
            <th>gold</th>
            <th>state</th>
            <th>hash</th>
            <th>token</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>4</td>
            <td>Carl Ox</td>
            <td>1</td>
            <td>m</td>
            <td>merchant</td>
            <td>250</td>
            <td>friendly</td>
            <td>843473717421</td>
            <td>166788243175236</td>
        </tr>
        <tr>
            <td>12</td>
            <td>Otto Alexander</td>
            <td>2</td>
            <td>m</td>
            <td>dealer</td>
            <td>680</td>
            <td>friendly</td>
            <td>371232179800</td>
            <td>166788243175236</td>
        </tr>
</table>
Total: 3 rows affected.

</details><br>


Helen Grasshead says:

– I'd like to get the ring and the teapot. The rest is nothing but scrap.

<details><summary>Statement</summary>Give Helen (`personid` 15) the two items. <mark>Afterwards, show the item table with the formula as added column.</mark><br><br>

<table>
    <thead>
        <tr>
            <th>item</th>
            <th>owner</th>
            <th>hash</th>
            <th>token</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>bucket</td>
            <td>20</td>
            <td>832641554092</td>
            <td>255787834193736</td>
        </tr>
        <tr>
            <td>cane</td>
            <td>5</td>
            <td>11384476511</td>
            <td>255787834193736</td>
        </tr>
</table>
Total: 9 rows affected.

</details><br>


— Thank you! Here, some gold!

<details><summary>Statement</summary>Transfer 120 from Helen's gold to yours. <mark>Afterwards, show the inhabitant table with the formula as added column.</mark>

_Tip._ SQL has no “transfer” operation. Use two `UPDATE` statements.<br><br>

<table>
    <thead>
        <tr>
            <th>personid</th>
            <th>name</th>
            <th>villageid</th>
            <th>gender</th>
            <th>job</th>
            <th>gold</th>
            <th>state</th>
            <th>hash</th>
            <th>token</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>1</td>
            <td>Paul Bakerman</td>
            <td>1</td>
            <td>m</td>
            <td>baker</td>
            <td>850</td>
            <td>friendly</td>
            <td>667574576304</td>
            <td>24919761524173</td>
        </tr>
        <tr>
            <td>2</td>
            <td>Ernest Perry</td>
            <td>3</td>
            <td>m</td>
            <td>weaponsmith</td>
            <td>280</td>
            <td>friendly</td>
            <td>73993229357</td>
            <td>24919761524173</td>
        </tr>
</table>
Total: 20 rows affected.

</details><br>




<details><summary>Statement</summary>You have correctly updated Helen's gold. Now update yours.<br><br>

<table>
    <thead>
        <tr>
            <th>personid</th>
            <th>name</th>
            <th>villageid</th>
            <th>gender</th>
            <th>job</th>
            <th>gold</th>
            <th>state</th>
            <th>hash</th>
            <th>token</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>1</td>
            <td>Paul Bakerman</td>
            <td>1</td>
            <td>m</td>
            <td>baker</td>
            <td>850</td>
            <td>friendly</td>
            <td>667574576304</td>
            <td>46779335306464</td>
        </tr>
        <tr>
            <td>2</td>
            <td>Ernest Perry</td>
            <td>3</td>
            <td>m</td>
            <td>weaponsmith</td>
            <td>280</td>
            <td>friendly</td>
            <td>73993229357</td>
            <td>46779335306464</td>
        </tr>
</table>
Total: 20 rows affected.

</details><br>




<details><summary>Statement</summary>You have correctly updated your gold. Now update Helen's.<br><br>

<table>
    <thead>
        <tr>
            <th>personid</th>
            <th>name</th>
            <th>villageid</th>
            <th>gender</th>
            <th>job</th>
            <th>gold</th>
            <th>state</th>
            <th>hash</th>
            <th>token</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>1</td>
            <td>Paul Bakerman</td>
            <td>1</td>
            <td>m</td>
            <td>baker</td>
            <td>850</td>
            <td>friendly</td>
            <td>667574576304</td>
            <td>845203505654</td>
        </tr>
        <tr>
            <td>2</td>
            <td>Ernest Perry</td>
            <td>3</td>
            <td>m</td>
            <td>weaponsmith</td>
            <td>280</td>
            <td>friendly</td>
            <td>73993229357</td>
            <td>845203505654</td>
        </tr>
</table>
Total: 20 rows affected.

</details><br>


Unfortunately, that's not enough gold to buy a sword. Seems like I do have to work after all. Maybe it's not a bad idea to change my name from Stranger to my real name before I will apply for a job.

<details><summary>Statement</summary>Update your name to 'Leslie Qualls'. <mark>Afterwards, show the inhabitant table with the formula as added column.</mark><br><br>

<table>
    <thead>
        <tr>
            <th>personid</th>
            <th>name</th>
            <th>villageid</th>
            <th>gender</th>
            <th>job</th>
            <th>gold</th>
            <th>state</th>
            <th>hash</th>
            <th>token</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>1</td>
            <td>Paul Bakerman</td>
            <td>1</td>
            <td>m</td>
            <td>baker</td>
            <td>850</td>
            <td>friendly</td>
            <td>667574576304</td>
            <td>27912063284788</td>
        </tr>
        <tr>
            <td>2</td>
            <td>Ernest Perry</td>
            <td>3</td>
            <td>m</td>
            <td>weaponsmith</td>
            <td>280</td>
            <td>friendly</td>
            <td>73993229357</td>
            <td>27912063284788</td>
        </tr>
</table>
Total: 20 rows affected.

</details><br>




<details><summary>Statement</summary>Since baking is one of your hobbies, why not find a baker who you can work for?

_Tip._ List all bakers and use `ORDER BY` gold to sort the results. `ORDER BY` gold `DESC` is even better because then the richest baker is on top.<br><br>

<table>
    <thead>
        <tr>
            <th>personid</th>
            <th>name</th>
            <th>villageid</th>
            <th>gender</th>
            <th>job</th>
            <th>gold</th>
            <th>state</th>
            <th>hash</th>
            <th>token</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>1</td>
            <td>Paul Bakerman</td>
            <td>1</td>
            <td>m</td>
            <td>baker</td>
            <td>850</td>
            <td>friendly</td>
            <td>667574576304</td>
            <td>34285849060426</td>
        </tr>
        <tr>
            <td>9</td>
            <td>Tiffany Drummer</td>
            <td>1</td>
            <td>f</td>
            <td>baker</td>
            <td>550</td>
            <td>evil</td>
            <td>434738589188</td>
            <td>34285849060426</td>
        </tr>
</table>
Total: 3 rows affected.

</details><br>


Aha, Paul! I know him!

– Hi, you again! I saw you want to work as a baker? Okay! You will be paid 1 gold for 100 bread rolls.

(8 hours later...)

– Here, I made ten thousand bread rolls! I quit! This should be enough money to buy a sword. Let's see what happens with my gold balance.

Here's your new sword, Losloo Qoolls! Now you can go everywhere.

<details><summary>Statement</summary>Transfer your salary (100) from Paul's gold to yours, and substract the price of the sword (150). <mark>Afterwards, show the inhabitant table with the formula as added column.</mark><br><br>

<table>
    <thead>
        <tr>
            <th>gold</th>
            <th>token</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>750</td>
            <td>148615726566579</td>
        </tr>
        <tr>
            <td>280</td>
            <td>148615726566579</td>
        </tr>
</table>
Total: 20 rows affected.

</details><br>


– My name is Leslie qualls! Thanks anyway!

<details><summary>Statement</summary>Is there a pilot on this island by any chance? He could fly you home.<br><br>

<table>
    <thead>
        <tr>
            <th>personid</th>
            <th>name</th>
            <th>villageid</th>
            <th>gender</th>
            <th>job</th>
            <th>gold</th>
            <th>state</th>
            <th>hash</th>
            <th>token</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>8</td>
            <td>Arthur Tailor</td>
            <td>2</td>
            <td>m</td>
            <td>pilot</td>
            <td>490</td>
            <td>kidnapped</td>
            <td>823379478192</td>
            <td>229615318980909</td>
        </tr>
</table>
Total: 1 row affected.

</details><br>


Oh no, his state is 'kidnapped'.

Horrible, the pilot is held captive by Dirty Dieter! I will show you a trick how to find out the name of the village where Dirty Dieter lives.

```sql
SELECT A.name
FROM village A
JOIN inhabitant B ON A.villageid = B.villageid
WHERE B.name = 'Dirty Dieter'
```

<details><summary>Statement</summary>Copy-paste the previous query<mark>, add the given formula</mark>, and execute it.<br><br>

<table>
    <thead>
        <tr>
            <th>name</th>
            <th>token</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>Onionville</td>
            <td>256975312978711</td>
        </tr>
</table>
Total: 1 row affected.

</details><br>


– Thanks for the hint!

<details><summary>Statement</summary>Use the join to find out the chief's name of the village Onionville.

_Tip._ In the column `chief` in the village table, the `personid` of the chief is stored.<br><br>

<table>
    <thead>
        <tr>
            <th>name</th>
            <th>token</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>Fred Dix</td>
            <td>240365303417698</td>
        </tr>
</table>
Total: 1 row affected.

</details><br>


I've got it! I will visit Fred and ask him about Dirty Dieter and the pilot.

Um, how many inhabitants does Onionville have?

```sql
SELECT COUNT(*) as population
FROM inhabitant A
JOIN village B ON A.villageid = B.villageid
WHERE B.name = 'Onionville'
```

<details><summary>Statement</summary>Copy-paste the previous query<mark>, add the given formula</mark>, and execute it.<br><br>

<table>
    <thead>
        <tr>
            <th>population</th>
            <th>token</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>8</td>
            <td>233051995253998</td>
        </tr>
</table>
Total: 1 row affected.

</details><br>


– Hello Leslie Qualls, the pilot is held captive by Dirty Dieter in his sister's house.

<details><summary>Statement</summary>Shall I tell you how many women there are in Onionville? Nah, you can figure it out by yourself!

_Tip._ Women show up as gender = 'f'.<br><br>

<table>
    <thead>
        <tr>
            <th>women</th>
            <th>token</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>1</td>
            <td>41535988500868</td>
        </tr>
</table>
Total: 1 row affected.

</details><br>


Oh, only one woman.

<details><summary>Statement</summary>What's her name?<br><br>

<table>
    <thead>
        <tr>
            <th>name</th>
            <th>token</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>Dirty Diane</td>
            <td>124493698100759</td>
        </tr>
</table>
Total: 1 row affected.

</details><br>


Let's go!

– Leslie Qualls, if you hand me over the entire property of our nearby village Cucumbertown, I will release the pilot. I will show you now what this property consists of.

```sql
SELECT SUM(A.gold) as total
FROM inhabitant A
JOIN village B ON A.villageid = B.villageid
WHERE B.name = 'Cucumbertown'
```

<details><summary>Statement</summary>Copy-paste the previous query<mark>, add the given formula</mark>, and execute it.<br><br>

<table>
    <thead>
        <tr>
            <th>total</th>
            <th>token</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>8860</td>
            <td>157771240628108</td>
        </tr>
</table>
Total: 1 row affected.

</details><br>


Oh no, baking bread alone can't solve my problems. If I continue working and selling items though, I could earn more gold than the worth of gold inventories of all bakers, dealers and merchants together.

<details><summary>Statement</summary>Sum the gold of all these people.<br><br>

<table>
    <thead>
        <tr>
            <th>total</th>
            <th>token</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>3910</td>
            <td>205678511338701</td>
        </tr>
</table>
Total: 1 row affected.

</details><br>


That's not enough.

Let's have a look at how much average gold people own, depending on their job.

```sql
SELECT job, avg(gold)
FROM inhabitant
GROUP BY job
ORDER BY avg(gold)
```

<details><summary>Statement</summary>Copy-paste the previous query, add the given formula, and execute it.<br><br>

<table>
    <thead>
        <tr>
            <th>job</th>
            <th>average</th>
            <th>token</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>farmer</td>
            <td>10.0000</td>
            <td>227531204698033</td>
        </tr>
        <tr>
            <td>?</td>
            <td>190.0000</td>
            <td>227531204698033</td>
        </tr>
</table>
Total: 11 rows affected.

</details><br>


Ok, so the only way is to mug the villains. Or I might as well go ahead and just kill Dirty Dieter with my sword!

```sql
DELETE
FROM inhabitant
WHERE name = 'Dirty Dieter'
```

<details><summary>Statement</summary>Execute the previous statement. <mark>Afterwards, show the item table with the formula as added column.</mark> There should be now one ownerless item.<br><br>

<table>
    <thead>
        <tr>
            <th>item</th>
            <th>owner</th>
            <th>hash</th>
            <th>token</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>bucket</td>
            <td>20</td>
            <td>832641554092</td>
            <td>198001479871924</td>
        </tr>
        <tr>
            <td>cane</td>
            <td>None</td>
            <td>11384476511</td>
            <td>198001479871924</td>
        </tr>
</table>
Total: 9 rows affected.

</details><br>


Dirty Diane: Heeeey! Now I'm very angry!

What will you do next, Leslie Qualls?

<details><summary>Statement</summary>Delete Dirty Diane. <mark>Afterwards, show the inhabitant table with the formula as added column.</mark><br><br>

<table>
    <thead>
        <tr>
            <th>personid</th>
            <th>name</th>
            <th>villageid</th>
            <th>gender</th>
            <th>job</th>
            <th>gold</th>
            <th>state</th>
            <th>hash</th>
            <th>token</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>1</td>
            <td>Paul Bakerman</td>
            <td>1</td>
            <td>m</td>
            <td>baker</td>
            <td>750</td>
            <td>friendly</td>
            <td>221738647112</td>
            <td>66098661366712</td>
        </tr>
        <tr>
            <td>2</td>
            <td>Ernest Perry</td>
            <td>3</td>
            <td>m</td>
            <td>weaponsmith</td>
            <td>280</td>
            <td>friendly</td>
            <td>73993229357</td>
            <td>66098661366712</td>
        </tr>
</table>
Total: 18 rows affected.

</details><br>


– Yeah! Now I release the pilot!<br>
– Thank's for releasing me, Leslie Qualls! I will fly you home!<br>
– I take my sword, some gold and lots of useless items with me as a souvenir.

<details><summary>Statement</summary>Change the pilot's status to 'friendly', your own status to 'emigrated'. <mark>Afterwards, show the inhabitant table with the formula as added column.</mark><br><br>

<table>
    <thead>
        <tr>
            <th>personid</th>
            <th>name</th>
            <th>villageid</th>
            <th>gender</th>
            <th>job</th>
            <th>gold</th>
            <th>state</th>
            <th>hash</th>
            <th>token</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>1</td>
            <td>Paul Bakerman</td>
            <td>1</td>
            <td>m</td>
            <td>baker</td>
            <td>750</td>
            <td>friendly</td>
            <td>221738647112</td>
            <td>214187513069315</td>
        </tr>
        <tr>
            <td>2</td>
            <td>Ernest Perry</td>
            <td>3</td>
            <td>m</td>
            <td>weaponsmith</td>
            <td>280</td>
            <td>friendly</td>
            <td>73993229357</td>
            <td>214187513069315</td>
        </tr>
</table>
Total: 18 rows affected.

</details><br>




<details><summary>Statement</summary>You have correctly updated the pilot's status. Now update yours to 'emigrated'. <mark>Afterwards, show the inhabitant table with the formula as added column.</mark><br><br>

<table>
    <thead>
        <tr>
            <th>personid</th>
            <th>name</th>
            <th>villageid</th>
            <th>gender</th>
            <th>job</th>
            <th>gold</th>
            <th>state</th>
            <th>hash</th>
            <th>token</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>1</td>
            <td>Paul Bakerman</td>
            <td>1</td>
            <td>m</td>
            <td>baker</td>
            <td>750</td>
            <td>friendly</td>
            <td>221738647112</td>
            <td>255276062128450</td>
        </tr>
        <tr>
            <td>2</td>
            <td>Ernest Perry</td>
            <td>3</td>
            <td>m</td>
            <td>weaponsmith</td>
            <td>280</td>
            <td>friendly</td>
            <td>73993229357</td>
            <td>255276062128450</td>
        </tr>
</table>
Total: 18 rows affected.

</details><br>




<details><summary>Statement</summary>You have correctly updated your status. Now update the pilot's state to 'friendly'. <mark>Afterwards, show the inhabitant table with the formula as added column.</mark><br><br>

<table>
    <thead>
        <tr>
            <th>personid</th>
            <th>name</th>
            <th>villageid</th>
            <th>gender</th>
            <th>job</th>
            <th>gold</th>
            <th>state</th>
            <th>hash</th>
            <th>token</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>1</td>
            <td>Paul Bakerman</td>
            <td>1</td>
            <td>m</td>
            <td>baker</td>
            <td>750</td>
            <td>friendly</td>
            <td>221738647112</td>
            <td>148646393118578</td>
        </tr>
        <tr>
            <td>2</td>
            <td>Ernest Perry</td>
            <td>3</td>
            <td>m</td>
            <td>weaponsmith</td>
            <td>280</td>
            <td>friendly</td>
            <td>73993229357</td>
            <td>148646393118578</td>
        </tr>
</table>
Total: 18 rows affected.

</details><br>


You have completed SQLab Island. What a big adventure!

