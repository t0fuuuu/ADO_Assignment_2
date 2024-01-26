select * 
from {{ ref('raw_product') }}
where unitprice < unitcost 