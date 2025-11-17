-- KPI comparison by priority level

SELECT
  priority,
  COUNT(*) AS nb_parcel,
  ROUND(AVG(shipping_time), 2) AS avg_shipping_time,
  ROUND(AVG(delivery_time), 2) AS avg_delivery_time,
  ROUND(AVG(total_time), 2) AS avg_total_time,

  -- Ratio: shipping_time / total_time
  ROUND(SAFE_DIVIDE(AVG(shipping_time), AVG(total_time)), 2) AS ratio_shipping_total

FROM course15.cc_parcel_kpi
GROUP BY priority
ORDER BY avg_total_time;
