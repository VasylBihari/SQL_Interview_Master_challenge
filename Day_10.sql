/*Which AR filters have generated user interactions in July 2024? List the filters by name.
Tables
ar_filter_engagements(engagement_id, filter_id, interaction_count, engagement_date)
ar_filters(filter_id, filter_name)*/

SELECT
  DISTINCT(filter_name)
FROM ar_filters a
INNER JOIN ar_filter_engagements e ON a.filter_id=e.filter_id
WHERE e.engagement_date >= '2024-07-01' AND e.engagement_date <= '2024-07-31'

/**/
