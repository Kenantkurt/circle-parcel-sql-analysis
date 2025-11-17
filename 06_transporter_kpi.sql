-- KPI comparison by transporter (carrier)

SELECT
  transporter,
  COUNT(*) AS nb_parcel,
  ROUND(AVG(shipping_time), 2) AS avg_shipping_time,
  ROUND(AVG(delivery_time), 2) AS avg_delivery_time,
  ROUND(AVG(total_time), 2) AS avg_total_time
FROM course15.cc_parcel_kpi
GROUP BY transporter
ORDER BY avg_total_time;
