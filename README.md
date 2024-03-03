# 🏝 SQLab Island

## Credits

This is an adaptation of [SQL Island](https://sql-island.informatik.uni-kl.de), a simple game designed to teach SQL, distributed under the [MIT License](https://opensource.org/licenses/MIT) on [GitHub](https://github.com/jschildgen/sql-island) by its main author, [Johannes Schildgen](https://www.johannesschildgen.de) (Regensburg University of Applied Sciences, Germany). 

The original game was adapted by Aristide Grange (University of Lorraine, France) to demonstrate the use of SQL Adventure Builder, or SQLab, a system enabling teachers to create standalone educational games for learning SQL. This system lives in a [separate repository](https://github.com/laowantong/sqlab).

## Usage

An SQLab adventure contains the data, the questions, their solutions and hints, and all the accompanying texts. It is entirely self-contained in a single database. As a result, it can be played on any computer with a working installation of a database management system. Currently, two versions of SQL Island are available: one for MySQL and one for PostgreSQL, both in English.

- For MySQL, download the file `en/mysql/output/sql_island.sql` and import it under MySQL. Then, access to the first episode of the adventure by executing the following SQL query:

  ```sql
  call decrypt(042)
  ```

- For PostgreSQL, the file is `en/postgresql/output/sql_island.sql` and the query is:

  ```sql
  select decrypt(42)
  ```

42 is called a “token”. Each query will return a table with an added column containing the token needed to access the next episode (or a hint for the incorrect queries anticipated by the game creator).

## Disclaimer

The present adaptation of SQL Island includes a few changes in the game's content to be compatible with SQLab. Any bug or problem is the sole responsibility of the adapter, and should be reported in the issues of [SQLab's repository](https://github.com/laowantong/sqlab).