SELECT 
    i.name AS Investor_Name, 
    COUNT(t.transaction_id) AS Total_Transactions,
    SUM(t.quantity * t.transaction_price) AS Total_Transaction
FROM 
    Investor i
JOIN 
    Portfolio p ON i.investor_id = p.investor_id
JOIN 
    Transaction_Table t ON p.portfolio_id = t.transaction_id
GROUP BY 
    i.name;
	
-- connecting investors, their portfolios, and transactions. 