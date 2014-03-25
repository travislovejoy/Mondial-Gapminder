create view GMH as
select country, year, LE, POP, GDP, HS, EL
from GM_POP t1
Natural FULL JOIN GM_LE t2           

Natural FULL JOIN GM_GDP t3     
 
Natural FULL JOIN GM_HS t4     
 
Natural FULL JOIN GM_EL t5     
;

    
