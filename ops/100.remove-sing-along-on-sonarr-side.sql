-- @operation: export
-- @entity: batch
-- @name: Remove Sing-Along on Sonarr Side
-- @exportedAt: 2026-10-15T22:02:13.960Z
-- @opIds: 14928

-- --- BEGIN op 14928 ( update custom_format "Sing-Along Versions" )
UPDATE custom_format_conditions
SET arr_type = 'radarr'
WHERE custom_format_name = 'Sing-Along Versions'
  AND name = 'Sing-Along'
  AND type = 'release_title'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 1;
-- --- END op 14928
