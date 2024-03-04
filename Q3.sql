SELECT 
    sector, 
    SUM(market_cap) AS Total_Market_Cap
FROM 
    Stock
GROUP BY 
    sector
HAVING 
    Total_Market_Cap > 1000000;
	
-- shows the total market cap from the sectors listed 