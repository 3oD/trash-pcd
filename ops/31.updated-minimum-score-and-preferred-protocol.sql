-- @operation: export
-- @entity: batch
-- @name: Updated Minimum Score and Preferred protocol
-- @exportedAt: 2026-05-24T11:29:26.437Z
-- @opIds: 411, 412

-- --- BEGIN op 411 ( update delay_profile "Default" )
update "delay_profiles" set "preferred_protocol" = 'prefer_usenet' where "name" = 'Default' and "preferred_protocol" = 'prefer_torrent';
-- --- END op 411

-- --- BEGIN op 412 ( update quality_profile "[German] HD Bluray + WEB" )
update "quality_profiles" set "minimum_custom_format_score" = 10000 where "name" = '[German] HD Bluray + WEB' and "minimum_custom_format_score" = 100000;
-- --- END op 412
