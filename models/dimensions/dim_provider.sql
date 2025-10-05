{{ config(materialized='table') }}

SELECT
  provider_id,
  provider_name,
  facility_id,
  GENDER,
  SPECIALITY,
  CITY,
  STATE,
  ZIP
FROM {{ source('capstone_silver','providers') }}
