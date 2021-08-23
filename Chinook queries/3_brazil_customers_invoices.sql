SELECT
    FirstName || ' ' || LastName as FullName,
    InvoiceId,
    InvoiceDate,
    BillingCountry
FROM Customer
JOIN Invoice
    ON Customer.CustomerId = Invoice.CustomerId;