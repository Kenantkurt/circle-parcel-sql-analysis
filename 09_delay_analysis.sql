-- Delay analysis: parcels are considered late if total_time > 5 days

-- Count total parcels and delayed parcels
SELECT
  COUNT(*) AS total_parcels,
  COUNTIF(total_time > 5) AS delayed_parcels,

  -- Delay rate
  ROUND(SAFE_DIVIDE(COUNTIF(total_time > 5), COUNT(*)), 3) AS delay_rate

FROM course15.cc_parcel_kpi;
