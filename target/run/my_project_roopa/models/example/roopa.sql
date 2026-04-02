
  
    

create or replace transient table CPM_DB.CPS_RPS.roopa
    
    
    
    as (

with source_data as (

select * from CPM_DB.CPS_RPS.TEST123

)

select *
from source_data
    )
;


  