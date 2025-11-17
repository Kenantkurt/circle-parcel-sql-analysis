-- Explore cc_parcel table
SELECT *
FROM course15.cc_parcel
LIMIT 50;

-- Explore cc_parcel_product table
SELECT *
FROM course15.cc_parcel_product
LIMIT 50;

-- Check primary key for cc_parcel (parcel_id should be unique)
SELECT
  parcel_id,
  COUNT(*) AS nb_rows
FROM course15.cc_parcel
GROUP BY parcel_id
HAVING COUNT(*) > 1;

-- Check primary key for cc_parcel_product (parcel_id + product_id)
SELECT
  parcel_id,
  product_id,
  COUNT(*) AS nb_rows
FROM course15.cc_parcel_product
GROUP BY parcel_id, product_id
HAVING COUNT(*) > 1;
