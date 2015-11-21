-- script para pruebas 

-- borra la tabla 

DROP TABLE IF EXISTS amigos;
-- crea la tabla 

CREATE TABLE amigos (
    nombre varchar,
    edad int, 
    email varchar 
    );
-- insertamos valores 
INSERT INTO amigos
VALUES (
'Juan Arevalo', 
35,
'juan@gmail.com'
);


ptd=# select country_name, location_type, count(*) from optd_por_public where country_code='FR' group by country_name, location_type;
 country_name | location_type | count 
--------------+---------------+-------
 France       | R             |    33
 France       | C             |   123
 France       | H             |     3
 France       | O             |   102
 France       | B             |     5
 France       | A             |   113
 France       | CA            |    26
 France       | CR            |     1
(8 rows)

optd=# select country_name, count(*) as n from optd_por_public where location_type='A' or location_type='CA' group by country_name order by n desc limit 10;
   country_name   |  n   
------------------+------
 United States    | 2225
 Australia        |  624
 Canada           |  544
 Papua New Guinea |  387
 Brazil           |  337
 China            |  234
 Indonesia        |  210
 Russia           |  200
 Colombia         |  159
 France           |  139
(10 rows)
ptd=# select manufacturer,model,nb_engines from optd_aircraft where nb_engines is not null  order by nb_engines desc limit 10;
 manufacturer |             model             | nb_engines 
--------------+-------------------------------+------------
 Antonov      | An-225                        |          6
 BAe          | BAE Systems 146-200 Passenger |          4
 BAe          | 146-300                       |          4
 Airbus       | A340-200                      |          4
 BAe          | 146 Freighter (-200QT & QC)   |          4
 BAe          | 146 Freighter (-300QT & QC)   |          4
 BAe          | 146 Freighter (-100QT & QC)   |          4
 BAe          | 146-100                       |          4
 Airbus       | A340-300                      |          4
 Airbus       | A340-600                      |          4
(10 rows)

ptd=# select manufacturer,model,nb_engines from optd_aircraft where nb_engines is not null  order by nb_engines desc limit 10;
 manufacturer |             model             | nb_engines 
--------------+-------------------------------+------------
 Antonov      | An-225                        |          6
 BAe          | BAE Systems 146-200 Passenger |          4
 BAe          | 146-300                       |          4
 Airbus       | A340-200                      |          4
 BAe          | 146 Freighter (-200QT & QC)   |          4
 BAe          | 146 Freighter (-300QT & QC)   |          4
 BAe          | 146 Freighter (-100QT & QC)   |          4
 BAe          | 146-100                       |          4
 Airbus       | A340-300                      |          4
 Airbus       | A340-600                      |          4
(10 rows)

optd=# select manufacturer,model,nb_engines from optd_aircraft where nb_engines is not null  order by nb_engines desc, manufacturer limit 10;
   manufacturer    |  model   | nb_engines 
-------------------+----------+------------
 Antonov           | An-225   |          6
 Airbus            | A380     |          4
 Airbus            | A340-600 |          4
 Airbus            | A340-500 |          4
 Airbus            | A380F    |          4
 Airbus            | A340-200 |          4
 Airbus            | A340-300 |          4
 Antonov           | An-22    |          4
 Antonow / Antonov | An-12    |          4
 Antonow / Antonov | An-124   |          4
(10 rows)

ptd=# select count(*) from optd_aircraft where nb_engines=4;
 count 
-------
    61
(1 row)

ptd=# select count(*) from optd_aircraft where nb_engines=4;
 count 
-------
    61
(1 row)

optd=# select manufacturer, avg(nb_engines) as m from optd_aircraft where nb_engines is not null group by manufacturer order by m desc limit 10;
    manufacturer     |         m          
---------------------+--------------------
 Shaanxi             | 4.0000000000000000
 Ilyushin            | 3.7142857142857143
 Lockheed            | 3.5000000000000000
 Antonov             | 3.2000000000000000
 BAe                 | 3.2000000000000000
 Junkers             | 3.0000000000000000
 Yakovlev / Jakovlev | 3.0000000000000000
 De Havilland        | 3.0000000000000000
 Douglas             | 2.9473684210526316
 Boeing              | 2.6986301369863014
(10 rows)



optd=# select iata_code,name ,country_name, population, elevation from optd_por_public where elevation is not null order by elevation desc limit 10;
 iata_code |                  name                  | country_name | population | elevation 
-----------+----------------------------------------+--------------+------------+-----------
 JRO       | Kilimanjaro                            | Tanzania     |          0 |      5895
 DCY       | Dao Cheng Yading Airport               | China        |          0 |      4410
 LPB       | El Alto International Airport          | Bolivia      |          0 |      4061
 POI       | Potosi                                 | Bolivia      |          0 |      3935
 JUL       | Inca Manco Cápac International Airport | Peru         |          0 |      3825
 ORU       | Oruro Airport                          | Bolivia      |          0 |      3702
 LXA       | Lhasa Gonggar Airport                  | China        |          0 |      3650
 JZH       | Jiuzhai Huanglong Airport              | China        |          0 |      3448
 ANS       | Andahuaylas Airport                    | Peru         |          0 |      3444
 NGX       | Manang Airport                         | Nepal        |          0 |      3350
(10 rows)

aeropuerto mas alto 
optd=# select iata_code,name ,country_name, population, elevation from optd_por_public where elevation is not null order by elevation desc limit 10;
 iata_code |                  name                  | country_name | population | elevation 
-----------+----------------------------------------+--------------+------------+-----------
 JRO       | Kilimanjaro                            | Tanzania     |          0 |      5895
 DCY       | Dao Cheng Yading Airport               | China        |          0 |      4410
 LPB       | El Alto International Airport          | Bolivia      |          0 |      4061
 POI       | Potosi                                 | Bolivia      |          0 |      3935
 JUL       | Inca Manco Cápac International Airport | Peru         |          0 |      3825
 ORU       | Oruro Airport                          | Bolivia      |          0 |      3702
 LXA       | Lhasa Gonggar Airport                  | China        |          0 |      3650
 JZH       | Jiuzhai Huanglong Airport              | China        |          0 |      3448
 ANS       | Andahuaylas Airport                    | Peru         |          0 |      3444
 NGX       | Manang Airport                         | Nepal        |          0 |      3350
(10 rows)




d=# select iata_code,name ,country_name, population, elevation from optd_por_public where elevation is not null order by elevation desc limit 10;

td=# select iata_code,name ,country_name, population, elevation from optd_por_public where elevation is not null order by elevation desc limit 10;




mayor poblacion

ptd=# select country_name, sum(population)
from optd_por_public                                                                        
where population is not null                                                               
group by country_name                                                                      
order by 2 desc limit 10;
 country_name  |    sum    
---------------+-----------
 China         | 271282741
 United States | 100991190
 India         |  91702545
 Brazil        |  69691299
 Russia        |  60358786
 Mexico        |  40140673
 Japan         |  36484380
 Turkey        |  32241348
 Nigeria       |  31153622
 Indonesia     |  31145792
(10 rows)

optd=# select country_name, count(*) 
from optd_por_public 
where location_type='A'and population is not null
group by country_name
order by 2 desc limit 10;
   country_name   | count 
------------------+-------
 United States    |  1624
 Canada           |   468
 Australia        |   349
 Brazil           |   224
 China            |   210
 Russia           |   171
 Indonesia        |   141
 Papua New Guinea |   133
 France           |   113
 United Kingdom   |    97
(10 rows)





hacemos varias querys de join. 
con los ficheros de aerolineas. 
lo vamos a hacer en postgren
copiamos todos los fichertos a l directorio tmp

dsc: opentraveldata % chmod a+r /tmp/*.csv                                        ~/Data/opentraveldata 0 9:15:09
dsc: opentraveldata % ll                                                          ~/Data/opentraveldata 0 9:15:35
total 7.9M
-rw-r--r--. 1 dsc dsc  19K Nov  8 14:10 optd_aircraft.csv
-rw-r--r--. 1 dsc dsc 105K Nov  8 14:10 optd_airlines.csv
-rw-r--r--. 1 dsc dsc 7.8M Nov  8 14:10 optd_por_public.csv
-rw-rw-r--. 1 dsc dsc 5.7K Nov  9 12:53 ref_airline_nb_of_flights.csv
dsc: opentraveldata % ll /tmp                                                     ~/Data/opentraveldata 0 9:15:38

creamos las dos tablas en posgres 

sc: opentraveldata % csvsql -d '^' optd_airlines.csv -i postgresql | psql optd   ~/Data/opentraveldata 0 9:15:38
CREATE TABLE
dsc: opentraveldata % csvsql -d '^' ref_airline_nb_of_flights.csv  -i postgresql | psql optd 
CREATE TABLE
dsc: opentraveldata %                                                             ~/Data/opentraveldata 0 9:18:45
dsc: opentraveldata % ll                                                          ~/Data/opentraveldata 0 9:19:14
total 7.9M
-rw-r--r--. 1 dsc dsc  19K Nov  8 14:10 optd_aircraft.csv
-rw-r--r--. 1 dsc dsc 105K Nov  8 14:10 optd_airlines.csv
-rw-r--r--. 1 dsc dsc 7.8M Nov  8 14:10 optd_por_public.csv
-rw-rw-r--. 1 dsc dsc 5.7K Nov  9 12:53 ref_airline_nb_of_flights.csv
dsc: opentraveldata % psql optd                                                   ~/Data/opentraveldata 0 9:19:15
psql (9.4.4)
Type "help" for help.

optd=# ll
optd-# \d
                 List of relations
 Schema |           Name            | Type  | Owner 
--------+---------------------------+-------+-------
 public | optd_aircraft             | table | dsc
 public | optd_airlines             | table | dsc
 public | optd_por_public           | table | dsc
 public | population                | view  | dsc
 public | ref_airline_nb_of_flights | table | dsc
(5 rows)

optd-# 

vamos a llenar las tablas de datos 

copiamos los ficheros: 

ptd=# copy optd_airlines  from '/tmp/optd_airlines.csv'
delimiter '^' csv header;
COPY 1253

optd=# copy ref_airline_nb_of_flights  from '/tmp/ref_airline_nb_of_flights.csv'
delimiter '^' csv header;
COPY 683


hacemos la query para lo que queremos hacer. 
tenemos fichero con los nombres de las aerolineas y otro con los vuelos. 
tabla que tenga código aerolinea numero de vuelos y nombre de la aerolinea.

codigo airline |numero vuelos|nombre 

SELECT airline_code_2c, name, flight_freq
FROM ref_airline_nb_of_flights AS r
LEFT OUTER JOIN optd_airlines AS o
ON o."2char_code" = r.airline_code_2c;


hay duplicados en la segunda tabla con la variable que estamos utilizando para unir airline_code_ 2c

sacamos top ten

SELECT name, airline_code_2c, flight_freq
FROM ref_airline_nb_of_flights AS r
LEFT OUTER JOIN optd_airlines AS o
ON o."2char_code" = r.airline_code_2cptd=# SELECT name, airline_code_2c, flight_freq
optd-# FROM ref_airline_nb_of_flights AS r
optd-# LEFT OUTER JOIN optd_airlines AS o
optd-# ON o."2char_code" = r.airline_code_2c
optd-# ORDER BY flight_freq DESC LIMIT 10;
          name           | airline_code_2c | flight_freq 
-------------------------+-----------------+-------------
 AccesRail               | 9B              |     1467079
 American Airlines       | AA              |     1146018
 Delta Air Lines         | DL              |     1070828
 Southwest Airlines      | WN              |      754539
 United Airlines         | UA              |      706085
 China Southern Airlines | CZ              |      652351
 SkyWest Airlines        | OO              |      638745
 ExpressJet              | EV              |      619958
 China Eastern Airlines  | MU              |      617893
 Air Canada              | AC              |      572034
(10 rows)


ORDER BY flight_freq DESC LIMIT 10;

left /right nos quedamos con el orden de la tabla de la derecha o de la izquierda.

cambiamos las tablas de orden 
SELECT name, airline_code_2c, flight_freq
FROM ref_airline_nb_of_flights AS r
LEFT OUTER JOIN optd_airlines AS o
ON o."2char_code" = r.airline_code_2;


SELECT airline_code_2c,name, flight_freq
FROM ref_airline_nb_of_flights AS r
RIGHT OUTER JOIN optd_airlines AS o
ON o."2char_code" = r.airline_code_2;

query multible calculando la media. 

relacion ciudades por encima de la media



SELECT name, country_name, elevation
FROM optd_por_public
WHERE elevation > (
   SELECT avg(elevation) FROM optd_por_public 
   WHERE elevation IS NOT NULL AND location_type='C'
   ) AND location_type = 'C'
LIMIT 10;



SELECT country_name, count(*)
FROM optd_por_public
WHERE elevation > (
   SELECT avg(elevation) FROM optd_por_public 
   WHERE elevation IS NOT NULL AND location_type='C'
   ) AND location_type = 'C'
LIMIT 10;


SELECT country_name, count(*)
FROM optd_por_public
GROUP BY country_name
HAVING elevation > (
   SELECT avg(elevation) FROM optd_por_public 
   WHERE elevation IS NOT NULL AND location_type='C'
   ) AND location_type = 'C'
LIMIT 10;


 
SELECT country_name, count(*) AS n
FROM optd_por_public
WHERE elevation > (
   SELECT avg(elevation) FROM optd_por_public 
   WHERE elevation IS NOT NULL AND location_type='C'
   ) AND location_type = 'C'
GROUP BY country_name
HAVING count(*) >= 3;



quitando el having el resultado es:country_name  |  n  
---------------+-----
 United States | 383
 Italy         |   6
 Brazil        |   3
 India         |   3
 Canada        |   8
(5 rows)
 


country_name  |  n  
---------------+-----
 China         |   1
 Austria       |   2
 Costa Rica    |   1
 Turkey        |   2
 Australia     |   2
 United States | 383
 Peru          |   1
 Germany       |   1
 France        |   1
 Algeria       |   1
 Colombia      |   2
 Afghanistan   |   1
 Italy         |   6
 Pakistan      |   1
 Spain         |   1
 Nepal         |   2
 Brazil        |   3
 India         |   3
 Guam          |   1
 Switzerland   |   2
 Uzbekistan    |   1
 Tanzania      |   1
 Sri Lanka     |   1
 Egypt         |   1
 Canada        |   8
(25 rows)


otro ejercicios: paises con la elevación media global 
número de ciudades de cada pais con una elevación media de ese pais. 
ciudades de españa con elevación superior a la media de españa, lo mismo para francia etc...

hay que calcular la media del pais para luego sacar las ciudades que están por encima de esa media. y así con el resto de ciudades......
