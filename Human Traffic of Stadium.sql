SELECT DISTINCT a.* FROM Stadium a
JOIN Stadium b JOIN Stadium c ON
(a.id = b.id-1 && a.id=c.id-2)OR
(a.id-1 = b.id && a.id=c.id-1)OR
(a.id=b.id+1 && a.id=c.id+2)
WHERE a.people >=100 && b.people>=100 && c.people>=100
ORDER BY a.visit_date
