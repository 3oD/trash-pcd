-- @operation: export
-- @entity: batch
-- @name: Remove Sonarr Side for BCORE
-- @exportedAt: 2026-10-15T21:55:10.503Z
-- @opIds: 14909, 14910, 14911

-- --- BEGIN op 14909 ( update custom_format "BCORE" )
UPDATE custom_format_conditions
SET arr_type = 'radarr'
WHERE custom_format_name = 'BCORE'
  AND name = 'Bravia Core'
  AND type = 'release_title'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 1;
-- --- END op 14909

-- --- BEGIN op 14910 ( update custom_format "BCORE" )
UPDATE custom_format_conditions
SET arr_type = 'radarr'
WHERE custom_format_name = 'BCORE'
  AND name = 'WEBDL'
  AND type = 'source'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;
-- --- END op 14910

-- --- BEGIN op 14911 ( update custom_format "BCORE" )
UPDATE custom_format_conditions
SET arr_type = 'radarr'
WHERE custom_format_name = 'BCORE'
  AND name = 'WEBRIP'
  AND type = 'source'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;
-- --- END op 14911
