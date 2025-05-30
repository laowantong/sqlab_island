config = {
    "dbms": "MariaDB",
    "drivername": "mariadb+pymysql",
    "username": "root",
    "host": "localhost",
    "port": "3307",
    "cnx_path": "./cnx.ini",
    "language": "en",
    "ddl_path": "./ddl.sql",
    "dataset_dir": "../dataset",
    "source_path": "./sqlab_island.ipynb",
    "relational_schema_dir": "../assets/",
    "reformat_sql": False,
    "sqlparse_subs": {
        "lowercase_user_names": (r"\b(OWNER)\b", lambda m: m[0].lower()),
    },
    "metadata": {
        "title": "SQLab Island",
        "description": "An SQLab adaptation of SQL Island for MariaDB.",
        "version": "3.1.0",
        "repository": "https://github.com/laowantong/sqlab_island",
        "license_name": "CC BY-SA 4.0",
        "license_url": "https://creativecommons.org/licenses/by-sa/4.0/",
        "author_name": "Aristide Grange",
        "author_affiliation": "LCOMS, Université de Lorraine, France",
        "author_contact": "first_name.last_name at univ-lorraine.fr",
        "author_role": "Adaptation for SQLab",
        "original_author_name": "Johannes Schildgen",
        "original_author_affiliation": "Ostbayerische Technische Hochschule (OTH) Regensburg, Germany",
        "original_author_contact": "https://www.johannesschildgen.de",
        "original_author_role": "Dataset and storyline creation",
        "original_repository": "https://github.com/jschildgen/sql-island",
        "original_license_name": "MIT",
        "original_license_url": "https://opensource.org/licenses/MIT",
        "original_dbms": "SQLite",
    },
}
