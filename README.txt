Extending Mondial to include data such as GDP, Life-Expectancy from Gapminder. Mondial PostgreSQL schema and load statments can be downloaded from: http://www.dbis.informatik.uni-goettingen.de/Mondial.
Gapminder tables located here: http://www.gapminder.org/

Gapminder: Gapminder .csv files of tables to be integrated with Mondial.

Gapminder_Schema.sql: 5 Gapminder tables

bridge_table.sql: Bridge table to account for differences in mondial and Gapminder namings.

bridge_load.sql: Bridge load statments

parser.py: python program to convert .csv programs into Mondial+Gapminder insert statments.

5 tables can be converted into insert statments via following commands in Ubuntu:

python parser.py gm-le.csv le
python parser.py gm-income.csv income
python parser.py gm-health-spending.csv health
python parser.py gm-pop.csv pop
python parser.py gm-electricity.csv electricity

view.sql: Creates a horizontal view of the Gapminder tables.
