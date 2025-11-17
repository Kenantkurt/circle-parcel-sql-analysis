-- Calculate shipping_time, delivery_time and total_time KPIs

SELECT
  parcel_id,
  date_purchase,
  date_shipping,
  date_delivery,
  date_cancelled,
  transporter,
  priority,

  -- Time from purchase to shipping
  DATE_DIFF(date_shipping, date_purchase, DAY) AS shipping_time,

  -- Time from shipping to delivery
  DATE_DIFF(date_delivery, date_shipping, DAY) AS delivery_time,

  -- Time from purchase to delivery
  DATE_DIFF(date_delivery, date_purchase, DAY) AS total_time

FROM course15.cc_parcel_kpi;  -- Assuming cc_parcel_kpi contains formatted date fields
