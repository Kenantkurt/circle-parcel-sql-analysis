-- Create parcel status based on delivery steps

SELECT
  *,
  CASE
    WHEN date_cancelled IS NOT NULL THEN 'Cancelled'
    WHEN date_shipping IS NULL AND date_cancelled IS NULL THEN 'In Progress'
    WHEN date_shipping IS NOT NULL AND date_delivery IS NULL AND date_cancelled IS NULL THEN 'In Transit'
    WHEN date_delivery IS NOT NULL THEN 'Delivered'
  END AS status
FROM course15.cc_parcel;
