SELECT COUNT(InvoiceDate) as TotalInvoices2009
FROM Invoice
WHERE InvoiceDate BETWEEN '2009-01-01' AND '2009-12-31';

SELECT COUNT(InvoiceDate) as TotalInvoices2011
FROM Invoice
WHERE InvoiceDate BETWEEN '2011-01-01' AND '2011-12-31';



SELECT COUNT(InvoiceDate) as TotalInvoicesFor2009_And2011
FROM Invoice
WHERE InvoiceDate BETWEEN '2009-01-01' AND '2009-12-31'
    OR InvoiceDate BETWEEN '2011-01-01' AND '2011-12-31';
