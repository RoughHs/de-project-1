create table analysis.dm_rfm_segments (   
	user_id integer not null primary key,
	recency smallint not null,
	frequency smallint not null,
	monetary_value smallint not null
);