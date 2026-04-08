create database supermarket;
use supermarket;
select count(*) from final_output;
RENAME TABLE final_output TO superstore_data;

SELECT SUM(Sales) AS total_sales
FROM superstore_data;

#total sales== 2292475.8562999563

SELECT SUM(Profit) AS total_profit
FROM superstore_data;

#total profit ====285707.60220000165

SELECT 
    SUM(Profit)/SUM(Sales) AS profit_margin
FROM superstore_data;

#profit margin==0.12462840182802717

SELECT 
    Category,
    SUM(Sales) AS total_sales
FROM superstore_data
GROUP BY Category
ORDER BY total_sales DESC;

#output Technology	835900.0669999964
#Furniture	733046.8612999996
#Office Supplies	723528.9280000029


SELECT 
    Category,
    SUM(Profit) AS total_profit
FROM superstore_data
GROUP BY Category
ORDER BY total_profit DESC;

#output
#Technology	145388.29659999989
#Office Supplies	120632.87839999991
#Furniture	19686.42720000003

SELECT 
    Region,
    SUM(Sales) AS total_sales
FROM superstore_data
GROUP BY Region
ORDER BY total_sales DESC;
#output
#West	720031.3445000002
#East	679086.053999998
#Central	502475.87280000065
#South	390882.5850000005


SELECT 
    `Sub-Category`,
    SUM(Profit) AS total_profit
FROM superstore_data
GROUP BY `Sub-Category`
ORDER BY total_profit ASC;

#Tables	-17725.481100000008
#Bookcases	-3472.5559999999978
#Supplies	-1347.3654999999983
#Fasteners	942.6377999999997
#Machines	3384.7569
#Labels	5546.253999999998
#Envelopes	6461.269100000003
#Art	6527.786999999998
#Furnishings	14294.297999999995
#Appliances	18138.005399999995
#Storage	21529.9083
#Chairs	26590.166300000026
#Binders	30038.821299999996
#Paper	32795.56099999999
#Accessories	41936.63569999993
#Phones	44449.0791
#Copiers	55617.82490000001


SELECT 
    `Product Name`,
    SUM(Sales) AS total_sales
FROM superstore_data
GROUP BY `Product Name`
ORDER BY total_sales DESC
LIMIT 10;

#output
#Canon imageCLASS 2200 Advanced Copier	61599.824
#Fellowes PB500 Electric Punch Plastic Comb Binding Machine with Manual Bind	27453.384
#Cisco TelePresence System EX90 Videoconferencing Unit	22638.48
#HON 5400 Series Task Chairs for Big and Tall	21870.576
#GBC DocuBind TL300 Electric Binding System	19823.479000000003
#GBC Ibimaster 500 Manual ProClick Binding System	19024.5
#Hewlett Packard LaserJet 3310 Copier	18839.686
#HP Designjet T520 Inkjet Large Format Printer - 24" Color"	18374.895
#GBC DocuBind P400 Electric Binding System	17965.068
#High Speed Automatic Electric Letter Opener	17030.311999999998

SELECT 
    YEAR(`Order Date`) AS year,
    SUM(Sales) AS total_sales
FROM superstore_data
GROUP BY year
ORDER BY year;

#2014	485067.798100001
#2015	468495.2359999999
#2016	607099.2610000005
#2017	731813.5611999996


SELECT 
    `Sub-Category`,
    SUM(Profit) AS total_profit
FROM superstore_data
GROUP BY `Sub-Category`
HAVING total_profit < 0
ORDER BY total_profit;


#Tables	-17725.481100000008
#Bookcases	-3472.5559999999978
#Supplies	-1347.3654999999983