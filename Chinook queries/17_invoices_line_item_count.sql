SELECT 
    il.InvoiceId,
    COUNT(InvoiceLineId) as LinesPerInvoice
FROM InvoiceLine as il
GROUP BY il.InvoiceId;
