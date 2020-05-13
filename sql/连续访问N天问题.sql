-- 连续访问N天问题
SELECT *,
       datediff(dt, '1970-01-01') - row_number() OVER (PARTITION BY id ORDER BY dt) AS con_flag -- 连续访问标志，连续访问的日期，该值相同
FROM
  (SELECT 1 AS id, '2020-02-10' AS dt UNION ALL
   SELECT 1 AS id, '2020-02-12' AS dt UNION ALL
   SELECT 1 AS id, '2020-02-13' AS dt UNION ALL
   SELECT 1 AS id, '2020-02-14' AS dt UNION ALL
   SELECT 1 AS id, '2020-02-16' AS dt UNION ALL
   SELECT 1 AS id, '2020-02-17' AS dt UNION ALL
   SELECT 1 AS id, '2020-02-20' AS dt UNION ALL
   SELECT 1 AS id, '2020-02-21' AS dt
  ) t
;
---- 结果
-- 1	2020-02-10	18301
-- 1	2020-02-12	18302
-- 1	2020-02-13	18302
-- 1	2020-02-14	18302
-- 1	2020-02-16	18303
-- 1	2020-02-17	18303
-- 1	2020-02-20	18305
-- 1	2020-02-21	18305

