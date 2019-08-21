SELECT
   relname as "Table",
   schemaname as "Schema Name",
   pg_size_pretty(pg_total_relation_size(relid)) As "Size",
   pg_size_pretty(pg_total_relation_size(relid) - pg_relation_size(relid)) as "External Size"
FROM pg_catalog.pg_statio_user_tables 
WHERE schemaname = 'public'
ORDER BY pg_total_relation_size(relid) DESC;
