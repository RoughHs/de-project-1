insert into analysis.dm_rfm_segments
SELECT  freq.user_id
	   ,rec.recency
       ,freq.frequency
	   ,mon.monetary_value
FROM analysis.tmp_rfm_frequency  as freq
	 left join analysis.tmp_rfm_monetary_value as mon
	 on freq.user_id = mon.user_id
	 left join analysis.tmp_rfm_recency as rec
	 on freq.user_id = rec.user_id;

0	1	3	4
1	4	3	3
2	2	3	5
3	2	3	3
4	4	3	3
5	4	5	5
6	1	3	5
7	4	2	2
8	1	1	3
9	1	2	2