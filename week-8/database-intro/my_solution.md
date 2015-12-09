###1. Select all data for all states.

 SELECT * FROM States;
id          state_name  population_density  population  region_id
----------  ----------  ------------------  ----------  ----------
1           Alabama     96.45               4822023     5
2           Alaska      1.1111              731449      10
3           Arizona     57.05               6553255     8
4           Arkansas    56.43               2949131     7
5           California  244.2               38041430    9
6           Colorado    49.33               5187582     8
7           Connecticu  741.4               3590347     1
8           Delaware    470.7               917092      3
9           Florida     360.2               19317568    3
10          Georgia     172.5               9919945     3
11          Hawaii      216.8               1392313     11
12          Idaho       19.15               1595728     8
13          Illinois    231.9               12875255    4
14          Indiana     182.5               6537334     4
15          Iowa        54.81               3074186     6
16          Kansas      35.09               2885905     6
17          Kentucky    110.0               4380415     5
18          Louisiana   105.0               4601893     7
19          Maine       43.04               1329192     1
20          Maryland    606.2               5884563     3
21          Massachuse  852.1               6646144     1
22          Michigan    174.8               9883360     4
23          Minnesota   67.14               5379139     6
24          Mississipp  63.5                2984926     5
25          Missouri    87.26               6021988     6
26          Montana     6.86                1005141     8
27          Nebraska    23.97               1855525     6
28          Nevada      24.8                2758931     8
29          New Hampsh  147.0               1320718     1
30          New Jersey  1205.0              8864590     2
31          New Mexico  17.16               2085538     8
32          New York    415.3               19570261    2
33          North Caro  200.6               9752073     3
34          North Dako  9.92                699628      6
35          Ohio        282.5               11544225    4
36          Oklahoma    55.22               3814820     7
37          Oregon      40.33               3899353     9
38          Pennsylvan  285.3               12763536    2
39          Rhode Isla  1016.0              1050292     1
40          South Caro  157.1               4723723     3
41          South Dako  10.86               833354      6
42          Tennessee   156.6               6456243     5
43          Texas       98.07               26059203    7
44          Utah        34.3                2855287     8
45          Vermont     67.73               626011      1
46          Virginia    207.3               8185867     3
47          Washington  102.6               6724540     9
48          Washington  10357.0             632323      3
49          West Virgi  77.06               1855413     3
50          Wisconsin   105.2               5726398     4
51          Wyoming     5.851               576412      8

###2. Select all data for all regions.

 SELECT * FROM regions;
id          region_name
----------  -----------
1           New England
2           Mid-Atlanti
3           South Atlan
4           East North
5           East South
6           West North
7           West South
8           Mountain
9           Pacific
10          North Pacif
11          Tropical Pa

###3. Select the state_name and population for all states.

SELECT state_name,population FROM states
   ...> ;
state_name  population
----------  ----------
Alabama     4822023
Alaska      731449
Arizona     6553255
Arkansas    2949131
California  38041430
Colorado    5187582
Connecticu  3590347
Delaware    917092
Florida     19317568
Georgia     9919945
Hawaii      1392313
Idaho       1595728
Illinois    12875255
Indiana     6537334
Iowa        3074186
Kansas      2885905
Kentucky    4380415
Louisiana   4601893
Maine       1329192
Maryland    5884563
Massachuse  6646144
Michigan    9883360
Minnesota   5379139
Mississipp  2984926
Missouri    6021988
Montana     1005141
Nebraska    1855525
Nevada      2758931
New Hampsh  1320718
New Jersey  8864590
New Mexico  2085538
New York    19570261
North Caro  9752073
North Dako  699628
Ohio        11544225
Oklahoma    3814820
Oregon      3899353
Pennsylvan  12763536
Rhode Isla  1050292
South Caro  4723723
South Dako  833354
Tennessee   6456243
Texas       26059203
Utah        2855287
Vermont     626011
Virginia    8185867
Washington  6724540
Washington  632323
West Virgi  1855413
Wisconsin   5726398
Wyoming     576412

###4. Select the state_name and population for all states ordered by population. The state with the highest population should be at the top.
SELECT state_name,population FROM states ORDER BY population DESC;
state_name  population
----------  ----------
California  38041430
Texas       26059203
New York    19570261
Florida     19317568
Illinois    12875255
Pennsylvan  12763536
Ohio        11544225
Georgia     9919945
Michigan    9883360
North Caro  9752073
New Jersey  8864590
Virginia    8185867
Washington  6724540
Massachuse  6646144
Arizona     6553255
Indiana     6537334
Tennessee   6456243
Missouri    6021988
Maryland    5884563
Wisconsin   5726398
Minnesota   5379139
Colorado    5187582
Alabama     4822023
South Caro  4723723
Louisiana   4601893
Kentucky    4380415
Oregon      3899353
Oklahoma    3814820
Connecticu  3590347
Iowa        3074186
Mississipp  2984926
Arkansas    2949131
Kansas      2885905
Utah        2855287
Nevada      2758931
New Mexico  2085538
Nebraska    1855525
West Virgi  1855413
Idaho       1595728
Hawaii      1392313
Maine       1329192
New Hampsh  1320718
Rhode Isla  1050292
Montana     1005141
Delaware    917092
South Dako  833354
Alaska      731449
North Dako  699628
Washington  632323
Vermont     626011
Wyoming     576412

###5. Select the state_name for the states in region 7.
 SELECT state_name FROM states WHERE region_id IN (7);
state_name
----------
Arkansas
Louisiana
Oklahoma
Texas


###6. Select the state_name and population_density for states with a population density over 50 ordered from least to most dense.
SELECT state_name,population_density FROM states WHERE population_density NOT BETWEEN 0 AND 49 ORDER BY population_density;
state_name  population_density
----------  ------------------
Colorado    49.33
Iowa        54.81
Oklahoma    55.22
Arkansas    56.43
Arizona     57.05
Mississipp  63.5
Minnesota   67.14
Vermont     67.73
West Virgi  77.06
Missouri    87.26
Alabama     96.45
Texas       98.07
Washington  102.6
Louisiana   105.0
Wisconsin   105.2
Kentucky    110.0
New Hampsh  147.0
Tennessee   156.6
South Caro  157.1
Georgia     172.5
Michigan    174.8
Indiana     182.5
North Caro  200.6
Virginia    207.3
Hawaii      216.8
Illinois    231.9
California  244.2
Ohio        282.5
Pennsylvan  285.3
Florida     360.2
New York    415.3
Delaware    470.7
Maryland    606.2
Connecticu  741.4
Massachuse  852.1
Rhode Isla  1016.0
New Jersey  1205.0
Washington  10357.0


###7. Select the state_name for states with a population between 1 million and 1.5 million people.
SELECT state_name FROM states WHERE population BETWEEN 1000000 AND 1500000;
state_name
----------
Hawaii
Maine
Montana
New Hampsh
Rhode Isla


###8. Select the state_name and region_id for states ordered by region in ascending order.
SELECT state_name,region_id FROM states ORDER BY region_id;                           state_name   region_id
-----------  ----------
Connecticut  1
Maine        1
Massachuset  1
New Hampshi  1
Rhode Islan  1
Vermont      1
New Jersey   2
New York     2
Pennsylvani  2
Delaware     3
Florida      3
Georgia      3
Maryland     3
North Carol  3
South Carol  3
Virginia     3
Washington,  3
West Virgin  3
Illinois     4
Indiana      4
Michigan     4
Ohio         4
Wisconsin    4
Alabama      5
Kentucky     5
Mississippi  5
Tennessee    5
Iowa         6
Kansas       6
Minnesota    6
Missouri     6
Nebraska     6
North Dakot  6
South Dakot  6
Arkansas     7
Louisiana    7
Oklahoma     7
Texas        7
Arizona      8
Colorado     8
Idaho        8
Montana      8
Nevada       8
New Mexico   8
Utah         8
Wyoming      8
California   9
Oregon       9
Washington   9
Alaska       10
Hawaii       11


###9. Select the region_name for the regions with "Central" in the name.
id          region_name
----------  ------------------
4           East North Central
5           East South Central
6           West North Central
7           West South Central

###10. Select the region_name and the state_name for all states and regions in ascending order by region_id. Refer to the region by name. (This will involve joining the tables).
SELECT region_name,state_name FROM regions,states ORDER BY region_id;                 region_name  state_name
-----------  -----------
New England  Connecticut
New England  Maine
New England  Massachuset
New England  New Hampshi
New England  Rhode Islan
New England  Vermont
Mid-Atlanti  Connecticut
Mid-Atlanti  Maine
Mid-Atlanti  Massachuset
Mid-Atlanti  New Hampshi
Mid-Atlanti  Rhode Islan
Mid-Atlanti  Vermont
South Atlan  Connecticut
South Atlan  Maine
South Atlan  Massachuset
South Atlan  New Hampshi
South Atlan  Rhode Islan
South Atlan  Vermont
East North   Connecticut
East North   Maine
East North   Massachuset
East North   New Hampshi
East North   Rhode Islan
East North   Vermont
East South   Connecticut
East South   Maine
East South   Massachuset
East South   New Hampshi
East South   Rhode Islan
East South   Vermont
West North   Connecticut
West North   Maine
West North   Massachuset
West North   New Hampshi
West North   Rhode Islan
West North   Vermont
West South   Connecticut
West South   Maine
West South   Massachuset
West South   New Hampshi
West South   Rhode Islan
West South   Vermont
Mountain     Connecticut
Mountain     Maine
Mountain     Massachuset
Mountain     New Hampshi
Mountain     Rhode Islan
Mountain     Vermont
Pacific      Connecticut
Pacific      Maine
Pacific      Massachuset
Pacific      New Hampshi
Pacific      Rhode Islan
Pacific      Vermont
North Pacif  Connecticut
North Pacif  Maine
North Pacif  Massachuset
North Pacif  New Hampshi
North Pacif  Rhode Islan
North Pacif  Vermont
Tropical Pa  Connecticut
Tropical Pa  Maine
Tropical Pa  Massachuset
Tropical Pa  New Hampshi
Tropical Pa  Rhode Islan
Tropical Pa  Vermont
New England  New Jersey
New England  New York
New England  Pennsylvani
Mid-Atlanti  New Jersey
Mid-Atlanti  New York
Mid-Atlanti  Pennsylvani
South Atlan  New Jersey
South Atlan  New York
South Atlan  Pennsylvani
East North   New Jersey
East North   New York
East North   Pennsylvani
East South   New Jersey
East South   New York
East South   Pennsylvani
West North   New Jersey
West North   New York
West North   Pennsylvani
West South   New Jersey
West South   New York
West South   Pennsylvani
Mountain     New Jersey
Mountain     New York
Mountain     Pennsylvani
Pacific      New Jersey
Pacific      New York
Pacific      Pennsylvani
North Pacif  New Jersey
North Pacif  New York
North Pacif  Pennsylvani
Tropical Pa  New Jersey
Tropical Pa  New York
Tropical Pa  Pennsylvani
New England  Delaware
New England  Florida
New England  Georgia
New England  Maryland
New England  North Carol
New England  South Carol
New England  Virginia
New England  Washington,
New England  West Virgin
Mid-Atlanti  Delaware
Mid-Atlanti  Florida
Mid-Atlanti  Georgia
Mid-Atlanti  Maryland
Mid-Atlanti  North Carol
Mid-Atlanti  South Carol
Mid-Atlanti  Virginia
Mid-Atlanti  Washington,
Mid-Atlanti  West Virgin
South Atlan  Delaware
South Atlan  Florida
South Atlan  Georgia
South Atlan  Maryland
South Atlan  North Carol
South Atlan  South Carol
South Atlan  Virginia
South Atlan  Washington,
South Atlan  West Virgin
East North   Delaware
East North   Florida
East North   Georgia
East North   Maryland
East North   North Carol
East North   South Carol
East North   Virginia
East North   Washington,
East North   West Virgin
East South   Delaware
East South   Florida
East South   Georgia
East South   Maryland
East South   North Carol
East South   South Carol
East South   Virginia
East South   Washington,
East South   West Virgin
West North   Delaware
West North   Florida
West North   Georgia
West North   Maryland
West North   North Carol
West North   South Carol
West North   Virginia
West North   Washington,
West North   West Virgin
West South   Delaware
West South   Florida
West South   Georgia
West South   Maryland
West South   North Carol
West South   South Carol
West South   Virginia
West South   Washington,
West South   West Virgin
Mountain     Delaware
Mountain     Florida
Mountain     Georgia
Mountain     Maryland
Mountain     North Carol
Mountain     South Carol
Mountain     Virginia
Mountain     Washington,
Mountain     West Virgin
Pacific      Delaware
Pacific      Florida
Pacific      Georgia
Pacific      Maryland
Pacific      North Carol
Pacific      South Carol
Pacific      Virginia
Pacific      Washington,
Pacific      West Virgin
North Pacif  Delaware
North Pacif  Florida
North Pacif  Georgia
North Pacif  Maryland
North Pacif  North Carol
North Pacif  South Carol
North Pacif  Virginia
North Pacif  Washington,
North Pacif  West Virgin
Tropical Pa  Delaware
Tropical Pa  Florida
Tropical Pa  Georgia
Tropical Pa  Maryland
Tropical Pa  North Carol
Tropical Pa  South Carol
Tropical Pa  Virginia
Tropical Pa  Washington,
Tropical Pa  West Virgin
New England  Illinois
New England  Indiana
New England  Michigan
New England  Ohio
New England  Wisconsin
Mid-Atlanti  Illinois
Mid-Atlanti  Indiana
Mid-Atlanti  Michigan
Mid-Atlanti  Ohio
Mid-Atlanti  Wisconsin
South Atlan  Illinois
South Atlan  Indiana
South Atlan  Michigan
South Atlan  Ohio
South Atlan  Wisconsin
East North   Illinois
East North   Indiana
East North   Michigan
East North   Ohio
East North   Wisconsin
East South   Illinois
East South   Indiana
East South   Michigan
East South   Ohio
East South   Wisconsin
West North   Illinois
West North   Indiana
West North   Michigan
West North   Ohio
West North   Wisconsin
West South   Illinois
West South   Indiana
West South   Michigan
West South   Ohio
West South   Wisconsin
Mountain     Illinois
Mountain     Indiana
Mountain     Michigan
Mountain     Ohio
Mountain     Wisconsin
Pacific      Illinois
Pacific      Indiana
Pacific      Michigan
Pacific      Ohio
Pacific      Wisconsin
North Pacif  Illinois
North Pacif  Indiana
North Pacif  Michigan
North Pacif  Ohio
North Pacif  Wisconsin
Tropical Pa  Illinois
Tropical Pa  Indiana
Tropical Pa  Michigan
Tropical Pa  Ohio
Tropical Pa  Wisconsin
New England  Alabama
New England  Kentucky
New England  Mississippi
New England  Tennessee
Mid-Atlanti  Alabama
Mid-Atlanti  Kentucky
Mid-Atlanti  Mississippi
Mid-Atlanti  Tennessee
South Atlan  Alabama
South Atlan  Kentucky
South Atlan  Mississippi
South Atlan  Tennessee
East North   Alabama
East North   Kentucky
East North   Mississippi
East North   Tennessee
East South   Alabama
East South   Kentucky
East South   Mississippi
East South   Tennessee
West North   Alabama
West North   Kentucky
West North   Mississippi
West North   Tennessee
West South   Alabama
West South   Kentucky
West South   Mississippi
West South   Tennessee
Mountain     Alabama
Mountain     Kentucky
Mountain     Mississippi
Mountain     Tennessee
Pacific      Alabama
Pacific      Kentucky
Pacific      Mississippi
Pacific      Tennessee
North Pacif  Alabama
North Pacif  Kentucky
North Pacif  Mississippi
North Pacif  Tennessee
Tropical Pa  Alabama
Tropical Pa  Kentucky
Tropical Pa  Mississippi
Tropical Pa  Tennessee
New England  Iowa
New England  Kansas
New England  Minnesota
New England  Missouri
New England  Nebraska
New England  North Dakot
New England  South Dakot
Mid-Atlanti  Iowa
Mid-Atlanti  Kansas
Mid-Atlanti  Minnesota
Mid-Atlanti  Missouri
Mid-Atlanti  Nebraska
Mid-Atlanti  North Dakot
Mid-Atlanti  South Dakot
South Atlan  Iowa
South Atlan  Kansas
South Atlan  Minnesota
South Atlan  Missouri
South Atlan  Nebraska
South Atlan  North Dakot
South Atlan  South Dakot
East North   Iowa
East North   Kansas
East North   Minnesota
East North   Missouri
East North   Nebraska
East North   North Dakot
East North   South Dakot
East South   Iowa
East South   Kansas
East South   Minnesota
East South   Missouri
East South   Nebraska
East South   North Dakot
East South   South Dakot
West North   Iowa
West North   Kansas
West North   Minnesota
West North   Missouri
West North   Nebraska
West North   North Dakot
West North   South Dakot
West South   Iowa
West South   Kansas
West South   Minnesota
West South   Missouri
West South   Nebraska
West South   North Dakot
West South   South Dakot
Mountain     Iowa
Mountain     Kansas
Mountain     Minnesota
Mountain     Missouri
Mountain     Nebraska
Mountain     North Dakot
Mountain     South Dakot
Pacific      Iowa
Pacific      Kansas
Pacific      Minnesota
Pacific      Missouri
Pacific      Nebraska
Pacific      North Dakot
Pacific      South Dakot
North Pacif  Iowa
North Pacif  Kansas
North Pacif  Minnesota
North Pacif  Missouri
North Pacif  Nebraska
North Pacif  North Dakot
North Pacif  South Dakot
Tropical Pa  Iowa
Tropical Pa  Kansas
Tropical Pa  Minnesota
Tropical Pa  Missouri
Tropical Pa  Nebraska
Tropical Pa  North Dakot
Tropical Pa  South Dakot
New England  Arkansas
New England  Louisiana
New England  Oklahoma
New England  Texas
Mid-Atlanti  Arkansas
Mid-Atlanti  Louisiana
Mid-Atlanti  Oklahoma
Mid-Atlanti  Texas
South Atlan  Arkansas
South Atlan  Louisiana
South Atlan  Oklahoma
South Atlan  Texas
East North   Arkansas
East North   Louisiana
East North   Oklahoma
East North   Texas
East South   Arkansas
East South   Louisiana
East South   Oklahoma
East South   Texas
West North   Arkansas
West North   Louisiana
West North   Oklahoma
West North   Texas
West South   Arkansas
West South   Louisiana
West South   Oklahoma
West South   Texas
Mountain     Arkansas
Mountain     Louisiana
Mountain     Oklahoma
Mountain     Texas
Pacific      Arkansas
Pacific      Louisiana
Pacific      Oklahoma
Pacific      Texas
North Pacif  Arkansas
North Pacif  Louisiana
North Pacif  Oklahoma
North Pacif  Texas
Tropical Pa  Arkansas
Tropical Pa  Louisiana
Tropical Pa  Oklahoma
Tropical Pa  Texas
New England  Arizona
New England  Colorado
New England  Idaho
New England  Montana
New England  Nevada
New England  New Mexico
New England  Utah
New England  Wyoming
Mid-Atlanti  Arizona
Mid-Atlanti  Colorado
Mid-Atlanti  Idaho
Mid-Atlanti  Montana
Mid-Atlanti  Nevada
Mid-Atlanti  New Mexico
Mid-Atlanti  Utah
Mid-Atlanti  Wyoming
South Atlan  Arizona
South Atlan  Colorado
South Atlan  Idaho
South Atlan  Montana
South Atlan  Nevada
South Atlan  New Mexico
South Atlan  Utah
South Atlan  Wyoming
East North   Arizona
East North   Colorado
East North   Idaho
East North   Montana
East North   Nevada
East North   New Mexico
East North   Utah
East North   Wyoming
East South   Arizona
East South   Colorado
East South   Idaho
East South   Montana
East South   Nevada
East South   New Mexico
East South   Utah
East South   Wyoming
West North   Arizona
West North   Colorado
West North   Idaho
West North   Montana
West North   Nevada
West North   New Mexico
West North   Utah
West North   Wyoming
West South   Arizona
West South   Colorado
West South   Idaho
West South   Montana
West South   Nevada
West South   New Mexico
West South   Utah
West South   Wyoming
Mountain     Arizona
Mountain     Colorado
Mountain     Idaho
Mountain     Montana
Mountain     Nevada
Mountain     New Mexico
Mountain     Utah
Mountain     Wyoming
Pacific      Arizona
Pacific      Colorado
Pacific      Idaho
Pacific      Montana
Pacific      Nevada
Pacific      New Mexico
Pacific      Utah
Pacific      Wyoming
North Pacif  Arizona
North Pacif  Colorado
North Pacif  Idaho
North Pacif  Montana
North Pacif  Nevada
North Pacif  New Mexico
North Pacif  Utah
North Pacif  Wyoming
Tropical Pa  Arizona
Tropical Pa  Colorado
Tropical Pa  Idaho
Tropical Pa  Montana
Tropical Pa  Nevada
Tropical Pa  New Mexico
Tropical Pa  Utah
Tropical Pa  Wyoming
New England  California
New England  Oregon
New England  Washington
Mid-Atlanti  California
Mid-Atlanti  Oregon
Mid-Atlanti  Washington
South Atlan  California
South Atlan  Oregon
South Atlan  Washington
East North   California
East North   Oregon
East North   Washington
East South   California
East South   Oregon
East South   Washington
West North   California
West North   Oregon
West North   Washington
West South   California
West South   Oregon
West South   Washington
Mountain     California
Mountain     Oregon
Mountain     Washington
Pacific      California
Pacific      Oregon
Pacific      Washington
North Pacif  California
North Pacif  Oregon
North Pacif  Washington
Tropical Pa  California
Tropical Pa  Oregon
Tropical Pa  Washington
New England  Alaska
Mid-Atlanti  Alaska
South Atlan  Alaska
East North   Alaska
East South   Alaska
West North   Alaska
West South   Alaska
Mountain     Alaska
Pacific      Alaska
North Pacif  Alaska
Tropical Pa  Alaska
New England  Hawaii
Mid-Atlanti  Hawaii
South Atlan  Hawaii
East North   Hawaii
East South   Hawaii
West North   Hawaii
West South   Hawaii
Mountain     Hawaii
Pacific      Hawaii
North Pacif  Hawaii
Tropical Pa  Hawaii



###What are databases for?
Databases are for keeping large amounts of data while allowing one to easily retrieve that data. 

###What is a one-to-many relationship?
This is the concept that one concept or descriptor describes many things that fall under it. The relationship can be identified with the phrases "____ belongs to a ____. ____ has many ____." For example, blue heeler breed belongs to 'dog'. 'Dog' has many breeds. In terms of our databses, it is the reference of a key multiple times in another table. 

###What is a primary key? What is a foreign key? How can you determine which is which?
A primary key is the key in database that is unique for each record in the database. A foreign key is a field that uniquely idetnfies another row in another table. The way to determine which is which is by evaluating their relationship. The foreign key points to a primary key in the first table.

###How can you select information out of a SQL database? What are some general guidelines for that?
You can select information from the database using specific commands. You can select partiuclar columns from a database by specifying SELECT column FROM table_name. You can from that point order information using ORDER BY or choosind specific keywords (WHERE columns IN keyword. )

##Mis-Match:
![screenshot](mis-match.png)