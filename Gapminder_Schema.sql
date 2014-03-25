create table GM_POP (
country varchar(50) not null,
year integer,
POP real,
constraint GM_POP_pk primary key(country,year)
);

create table GM_LE (
country varchar(50) not null,
year integer,
LE real,
constraint GM_LE_pk primary key(country,year)
);

create table GM_GDP (
country varchar(50) not null,
year integer,
GDP real,
constraint GM_GDP_pk primary key(country,year)
);

create table GM_HS (
country varchar(50) not null,
year integer,
HS real,
constraint GM_HS_pk primary key(country,year)
);

create table GM_EL (
country varchar(50) not null,
year integer,
EL real,
constraint GM_EL_pk primary key(country,year)
);
