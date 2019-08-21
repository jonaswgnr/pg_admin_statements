SELECT 
	relname AS TableName
	,schemaname
	,n_live_tup AS LiveTuples
	,n_dead_tup AS DeadTuples
FROM pg_stat_user_tables
order by DeadTuples DESC;

