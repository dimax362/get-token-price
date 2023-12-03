WITH price AS (
  SELECT
    DATE_TRUNC('hour', "minute") AS time,
    AVG("price") AS price
  FROM prices.usd
  WHERE
    contract_address = 0x3432B6A60D23Ca0dFCa7761B7ab56459D9C964D0
AND "minute" > DATE_TRUNC('day', CURRENT_TIMESTAMP) - INTERVAL '6' HOUR
  GROUP BY
    1
  ORDER BY
    1 DESC
  LIMIT 1
)
SELECT
  *
FROM price
