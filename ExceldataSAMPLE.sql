Select Region, Rep,Item,Units,unit_cost,Total, (0.05) as Discount,(4.5/100) as Vat,(total-0.05-0.045) as NetTOTAL
from ExcelDataSampleCSV
where region is not null
order by discount desc


 