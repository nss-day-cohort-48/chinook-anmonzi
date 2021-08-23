SELECT
    i.InvoiceId,
    COUNT(i.InvoiceId) as LineItemCount
FROM InvoiceLine as i
GROUP BY i.InvoiceId;