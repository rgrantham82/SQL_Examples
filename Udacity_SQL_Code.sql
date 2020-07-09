-- The results were analyzed according to availability. In other words, I analyzed trends between 1820 and 2013 which were the only available years based on the queries.
-- This was a simple project in which I analyzed weather patterns between my local area (Austin, TX) and the globe to check for any particular or interesting trends. It involved extracting and loading the necessary data using SQL and then analyzing the data in Excel or Google Sheets. To start, I extracted the required data using the following queries:

SELECT g.year, 
       g.avg_temp AS global_avg_temp, 
       c.avg_temp AS city_avg_temp 
FROM   global_data AS g 
       LEFT JOIN city_data AS c 
              ON g.year = c.year 
WHERE  c.city = 'Austin'; 

-- I went one step further and extracted data for San Francisco to compare between both Austin and the globe with: 

SELECT    A.year, 
          A.avg_temp gl_temp, 
          B.avg_temp austin_temp, 
          C.avg_temp sf_temp 
FROM      global_data A 
LEFT JOIN city_data B 
ON        A.year = B.year 
LEFT JOIN city_data C 
ON        A.year = C.year 
WHERE     B.city = 'Austin' 
AND       C.city = 'San Francisco’;

