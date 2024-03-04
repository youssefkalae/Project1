SELECT sector, COUNT(*) AS Number_of_Stocks
FROM Stock
GROUP BY sector;

-- count of stocks from each sector 