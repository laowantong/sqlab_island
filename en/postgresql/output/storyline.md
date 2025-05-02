
Oh dear, what happened? It seems that I am the only survivor of the air crash. Wow, there are some villages on this island.

```sql
SELECT *
FROM village
```

<details><summary>Statement</summary>Copy-paste the previous query. After the star `*`, add a comma and the given formula. Execute the complete query.<br><br>

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
            <td>761729108008</td>
            <td>279644058721993</td>
        </tr>
        <tr>
            <td>2</td>
            <td>Cucumbertown</td>
            <td>6</td>
            <td>690325653982</td>
            <td>279644058721993</td>
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
            <td>894147374131</td>
            <td>130877018053621</td>
        </tr>
        <tr>
            <td>2</td>
            <td>Ernest Perry</td>
            <td>3</td>
            <td>m</td>
            <td>weaponsmith</td>
            <td>280</td>
            <td>friendly</td>
            <td>447643847988</td>
            <td>130877018053621</td>
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

<details><summary>Statement</summary>Copy-paste the previous query, add the given formula, and execute it.<br><br>

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
            <td>200228709826</td>
            <td>279073832771282</td>
        </tr>
        <tr>
            <td>7</td>
            <td>Peter Slaughterer</td>
            <td>3</td>
            <td>m</td>
            <td>butcher</td>
            <td>3250</td>
            <td>evil</td>
            <td>149631755589</td>
            <td>279073832771282</td>
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
            <td>894147374131</td>
            <td>50980998180879</td>
        </tr>
        <tr>
            <td>2</td>
            <td>Ernest Perry</td>
            <td>3</td>
            <td>m</td>
            <td>weaponsmith</td>
            <td>280</td>
            <td>friendly</td>
            <td>447643847988</td>
            <td>50980998180879</td>
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
            <td>447643847988</td>
            <td>111873735423475</td>
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
            <td>447643847988</td>
            <td>71849070099607</td>
        </tr>
        <tr>
            <td>10</td>
            <td>Peter Drummer</td>
            <td>1</td>
            <td>m</td>
            <td>smith</td>
            <td>600</td>
            <td>friendly</td>
            <td>243111385149</td>
            <td>71849070099607</td>
        </tr>
</table>
Total: 3 rows affected.

</details><br>


That looks better! I will go and visit those smiths.

– Hi stranger! Where are you going? I'm Paul, I'm the major of Monkeycity. I will go ahead and register you as a citizen.

```sql
INSERT INTO inhabitant (name, villageid, gender, job, gold, state) VALUES ('Stranger', 1, '?', '?', 0, '?')
```

– No need to call me stranger!

<details><summary>Statement</summary>First, execute the `INSERT` statement. Then, look for your personid.

_Tip._ In former queries, the * stands for: all columns. Instead of the star, you can also address one or more columns (separated by a comma) and you will only get the columns you need.<br><br>

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
            <td>30525141563126</td>
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
            <td>8733222069916</td>
        </tr>
</table>
Total: 1 row affected.

</details><br>


Damn! No mon, no fun. There has to be another option to earn gold other than going to work. Maybe I could collect ownerless items and sell them!

<details><summary>Statement</summary>Make a list of all items that don't belong to anyone.

_Tip._ You can recognize ownerless items by: WHERE owner IS NULL<br><br>

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

<details><summary>Statement</summary>Execute the `UPDATE` statement, and check the `item` table afterwards.<br><br>

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
            <td>carton</td>
            <td>None</td>
            <td>456410402076</td>
            <td>107025105236366</td>
        </tr>
</table>
Total: 9 rows affected.

</details><br>




<details><summary>Statement</summary>Do you know a trick how to collect all the ownerless items? Afterwards, list all of the items you own.<br><br>

<table>
    <thead>
        <tr>
            <th>item</th>
            <th>token</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>coffee cup</td>
            <td>139744599079637</td>
        </tr>
        <tr>
            <td>bucket</td>
            <td>139744599079637</td>
        </tr>
</table>
Total: 6 rows affected.

</details><br>


So greedy! You've snapped up all items, even those that already had an owner.

<details><summary>Statement</summary>Let's give them back to their rightful owners: the cane to 5, the hammer to 2 and the rope to 17. Afterwards, list all of the items you own.<br><br>

<table>
    <thead>
        <tr>
            <th>item</th>
            <th>token</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>coffee cup</td>
            <td>206054094742976</td>
        </tr>
        <tr>
            <td>bucket</td>
            <td>206054094742976</td>
        </tr>
</table>
Total: 6 rows affected.

</details><br>




<details><summary>Statement</summary>Find a friendly inhabitant who is either a merchant or a dealer. Maybe they want to buy some of your items.<br><br>

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
            <td>435957500169</td>
            <td>166940006711685</td>
        </tr>
        <tr>
            <td>12</td>
            <td>Otto Alexander</td>
            <td>2</td>
            <td>m</td>
            <td>dealer</td>
            <td>680</td>
            <td>friendly</td>
            <td>461779699008</td>
            <td>166940006711685</td>
        </tr>
</table>
Total: 3 rows affected.

</details><br>


– I'd like to get the ring and the teapot. The rest is nothing but scrap. Please give me the two items. My `personid` is 15.

<details><summary>Statement</summary>Afterwards, check the items that she owns.<br><br>

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
            <td>ring</td>
            <td>15</td>
            <td>972837695337</td>
            <td>261661938333343</td>
        </tr>
        <tr>
            <td>teapot</td>
            <td>15</td>
            <td>503611185415</td>
            <td>261661938333343</td>
        </tr>
</table>
Total: 2 rows affected.

</details><br>


— Thank you! Here, some gold!

<details><summary>Statement</summary>Transfer 120 from Helen's gold to yours, and then check the new amounts of your two rows.

_Tip._ SQL has no “transfer” operation. Use two `UPDATE` statements.<br><br>

<table>
    <thead>
        <tr>
            <th>name</th>
            <th>gold</th>
            <th>token</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>Helen Grasshead</td>
            <td>560</td>
            <td>33454360073749</td>
        </tr>
        <tr>
            <td>Stranger</td>
            <td>120</td>
            <td>33454360073749</td>
        </tr>
</table>
Total: 2 rows affected.

</details><br>




<details><summary>Statement</summary>You have correctly updated Helen's gold. Now update yours.<br><br>

<table>
    <thead>
        <tr>
            <th>name</th>
            <th>gold</th>
            <th>token</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>Helen Grasshead</td>
            <td>680</td>
            <td>36634440878275</td>
        </tr>
        <tr>
            <td>Stranger</td>
            <td>240</td>
            <td>36634440878275</td>
        </tr>
</table>
Total: 2 rows affected.

</details><br>




<details><summary>Statement</summary>You have correctly updated your gold. Now update Helen's.<br><br>

<table>
    <thead>
        <tr>
            <th>name</th>
            <th>gold</th>
            <th>token</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>Stranger</td>
            <td>240</td>
            <td>12496616506700</td>
        </tr>
        <tr>
            <td>Helen Grasshead</td>
            <td>560</td>
            <td>12496616506700</td>
        </tr>
</table>
Total: 2 rows affected.

</details><br>


Unfortunately, that's not enough gold to buy a sword. Seems like I do have to work after all. Maybe it's not a bad idea to change my name from Stranger to my real name before I will apply for a job.

<details><summary>Statement</summary>Update your name to 'Leslie Qualls' and show the updated row.<br><br>

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
            <td>20</td>
            <td>Leslie Qualls</td>
            <td>1</td>
            <td>?</td>
            <td>?</td>
            <td>240</td>
            <td>?</td>
            <td>793987966137</td>
            <td>18336198393759</td>
        </tr>
</table>
Total: 1 row affected.

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
            <td>894147374131</td>
            <td>30928237956525</td>
        </tr>
        <tr>
            <td>9</td>
            <td>Tiffany Drummer</td>
            <td>1</td>
            <td>f</td>
            <td>baker</td>
            <td>550</td>
            <td>evil</td>
            <td>777224738827</td>
            <td>30928237956525</td>
        </tr>
</table>
Total: 3 rows affected.

</details><br>


Aha, Paul! I know him!

– Hi, you again! I saw you want to work as a baker? Okay! You will be paid 1 gold for 100 bread rolls.

(8 hours later...)

– Here, I made ten thousand bread rolls! I quit! This should be enough money to buy a sword. Let's see what happens with my gold balance.

Here's your new sword, Losloo Qoolls! Now you can go everywhere.

<details><summary>Statement</summary>Transfer your salary (100) from Paul's gold to yours, and substract the price of the sword (150). Then, display your gold balance.<br><br>

<table>
    <thead>
        <tr>
            <th>gold</th>
            <th>token</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>190</td>
            <td>156356238644044</td>
        </tr>
</table>
Total: 1 row affected.

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
            <td>526020225000</td>
            <td>228770217179253</td>
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

<details><summary>Statement</summary>Copy-paste the previous query, add the given formula, and execute it.<br><br>

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
            <td>256500123076880</td>
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
            <td>241491762019151</td>
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

<details><summary>Statement</summary>Copy-paste the previous query, add the given formula, and execute it.<br><br>

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
            <td>229606212629141</td>
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
            <td>41770464086333</td>
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
            <td>124254928334508</td>
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

<details><summary>Statement</summary>Copy-paste the previous query, add the given formula, and execute it.<br><br>

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
            <td>158000323613499</td>
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
            <td>208022858214383</td>
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
            <td>10.0000000000000000</td>
            <td>228039061975856</td>
        </tr>
        <tr>
            <td>?</td>
            <td>190.0000000000000000</td>
            <td>228039061975856</td>
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

<details><summary>Statement</summary>Execute the previous statement. Which item is now ownerless?<br><br>

<table>
    <thead>
        <tr>
            <th>item</th>
            <th>token</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>cane</td>
            <td>193891994785434</td>
        </tr>
</table>
Total: 1 row affected.

</details><br>


Dirty Diane: Heeeey! Now I'm very angry!

What will you do next, Leslie Qualls?

<details><summary>Statement</summary>Delete Dirty Diane, and show the remaining inhabitants of Onionville (villageid 3).<br><br>

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
            <td>447643847988</td>
            <td>59998173561476</td>
        </tr>
        <tr>
            <td>7</td>
            <td>Peter Slaughterer</td>
            <td>3</td>
            <td>m</td>
            <td>butcher</td>
            <td>3250</td>
            <td>evil</td>
            <td>149631755589</td>
            <td>59998173561476</td>
        </tr>
</table>
Total: 6 rows affected.

</details><br>


– Yeah! Now I release the pilot!<br>
– Thank's for releasing me, Leslie Qualls! I will fly you home!<br>
– I take my sword, some gold and lots of useless items with me as a souvenir.

<details><summary>Statement</summary>Change the pilot's status to 'friendly', your own status to 'emigrated', and show the table `inhabitant`.<br><br>

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
            <td>447643847988</td>
            <td>226496379089034</td>
        </tr>
        <tr>
            <td>3</td>
            <td>Rita Ox</td>
            <td>1</td>
            <td>f</td>
            <td>baker</td>
            <td>350</td>
            <td>friendly</td>
            <td>551997830527</td>
            <td>226496379089034</td>
        </tr>
</table>
Total: 18 rows affected.

</details><br>




<details><summary>Statement</summary>You have correctly updated the pilot's status. Now update yours to 'emigrated', and show the table `inhabitant`.<br><br>

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
            <td>447643847988</td>
            <td>254055169129857</td>
        </tr>
        <tr>
            <td>3</td>
            <td>Rita Ox</td>
            <td>1</td>
            <td>f</td>
            <td>baker</td>
            <td>350</td>
            <td>friendly</td>
            <td>551997830527</td>
            <td>254055169129857</td>
        </tr>
</table>
Total: 18 rows affected.

</details><br>




<details><summary>Statement</summary>You have correctly updated your status. Now update the pilot's state to 'friendly', and show the table `inhabitant`.<br><br>

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
            <td>447643847988</td>
            <td>149613783694257</td>
        </tr>
        <tr>
            <td>3</td>
            <td>Rita Ox</td>
            <td>1</td>
            <td>f</td>
            <td>baker</td>
            <td>350</td>
            <td>friendly</td>
            <td>551997830527</td>
            <td>149613783694257</td>
        </tr>
</table>
Total: 18 rows affected.

</details><br>


You have completed SQLab Island. What a big adventure!

