SELECT Track.Name as Track,
    SUM(InvoiceLine.UnitPrice * InvoiceLine.Quantity) as Total
From InvoiceLine
    INNER JOIN Track on Track.TrackId = InvoiceLine.TrackId
WHERE Track.Name = "The Woman King";