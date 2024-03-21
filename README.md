# 🏝 SQLab Island

## Credits

This is an adaptation of [SQL Island](https://sql-island.informatik.uni-kl.de), a simple game designed to teach SQL, distributed under the [MIT License](https://opensource.org/licenses/MIT) on [GitHub](https://github.com/jschildgen/sql-island) by its main author, [Johannes Schildgen](https://www.johannesschildgen.de) (Regensburg University of Applied Sciences, Germany). 

The original game was adapted by Aristide Grange (University of Lorraine, France) to demonstrate the use of SQL Adventure Builder, or SQLab, a system enabling teachers to create standalone educational games for learning SQL. This system lives in a [separate repository](https://github.com/laowantong/sqlab) with the explanation of its principles.

## Versions

To play SQLab Island, you just need to download a dump of the self-contained database and import it into your favorite SQL database management system (DBMS). There are currently two versions, both in English:

### MySQL

1. [Download dump.sql](https://raw.githubusercontent.com/laowantong/sqlab_island/main/en/mysql/output/dump.sql) (right-click and "Save link as...").
2. On the command line, create a new database called `sqlab_island`, populate it and connect to it:
   ```bash
   mysql -u username -p < dump.sql
   mysql -u username -p sqlab_island
   ```
3. On the MySQL prompt, access the first episode of the adventure:
   ```sql
   SELECT decrypt(42)
   ```

### PostgreSQL

1. [Download dump.sql](https://raw.githubusercontent.com/laowantong/sqlab_island/main/en/postgresql/output/dump.sql) (right-click and "Save link as...").
2. On the command line, create a new database called `sqlab_island`, populate it and connect to it:
   ```bash
   psql -U username -f dump.sql
   psql -U username sqlab_island
   ```
3. On the PostgreSQL prompt, access the first episode of the adventure:
   ```sql
   SELECT decrypt(42)
   ```

### SQLite

1. Install [`sqlpkg`](https://github.com/nalgeon/sqlpkg-cli).
2. On the command line, install the required SQLite extensions:
   ```bash
   sqlpkg install nalgeon/crypto
   sqlpkg install nalgeon/define
   sqlpkg install nalgeon/regexp
   sqlpkg install nyurik/compressions
   ```
3. [Download dump.sql](https://raw.githubusercontent.com/laowantong/sqlab_island/main/en/sqlite/output/dump.sql) (right-click and "Save link as...").
4. On the command line, launch SQLite:
   ```bash
   sqlite3
   ```
5. On the SQLite prompt, load the required extensions, read the dump and access the first episode of the adventure:
   ```sql
   .load /path/to/.sqlpkg/nalgeon/crypto/crypto
   .load /path/to/.sqlpkg/nalgeon/define/define
   .load /path/to/.sqlpkg/nalgeon/regexp/regexp
   .load /path/to/.sqlpkg/nyurik/compressions/libsqlite_compressions
   .read dump.sql
   SELECT * FROM decrypt(42)
   ```

## Disclaimer and potential issues

The present adaptation of SQL Island includes a few changes in the game's content to be compatible with SQLab. Any bug or problem is the sole responsibility of the adapter, and should be reported in the [issues of SQLab](https://github.com/laowantong/sqlab/issues) itself.