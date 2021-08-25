SELECT 
    COUNT(BillingCountry) as NumberOfInvoices,
    BillingCountry
FROM Invoice
GROUP BY BillingCountry;