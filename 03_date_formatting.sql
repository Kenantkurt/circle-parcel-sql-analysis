-- Ensure date columns are correctly formatted using PARSE_DATE

SELECT
  parcel_id,
  PARSE_DATE('%Y-%m-%d', date_purchase) AS date_purchase,
  PARSE_DATE('%Y-%m-%d', date_shipping) AS date_shipping,
  PARSE_DATE('%Y-%m-%d', date_delivery) AS date_delivery,
  PARSE_DATE('%Y-%m-%d', date_cancelled) AS date_cancelled,
  transporter,
  priority
FROM course15.cc_parcel;
