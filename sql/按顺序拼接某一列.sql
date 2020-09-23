SELECT *,
    collect_list(b) OVER (ORDER BY a)
FROM
    (SELECT 1 a, 'N' b UNION ALL
     SELECT 4 a, 'C' b UNION ALL
     SELECT 5 a, '*' b UNION ALL
     SELECT 3 a, '1' b UNION ALL
     SELECT 2 a, '2' b
    ) t
;

