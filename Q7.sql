SELECT
  ticker,
  sector,
  market_cap,
  RANK() OVER (PARTITION BY sector ORDER BY market_cap DESC) AS MarketCapRank
FROM
  Stock;
  
--divides data in partitions  for each sector (stock tickers as different groups) then I order it by market_cap then ranks them 