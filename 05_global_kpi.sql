-- Global KPIs for all parcels

SELECT
  COUNT(*) AS nb_parcel,
  ROUND(AVG(shipping_time), 2) AS avg_shipping_time,
  ROUND(AVG(delivery_time), 2) AS avg_delivery_time,
  ROUND(AVG(total_time), 2) AS avg_total_time
FROM course15.cc_parcel_kpi;
