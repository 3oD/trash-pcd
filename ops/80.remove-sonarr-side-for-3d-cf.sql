-- @operation: export
-- @entity: batch
-- @name: Remove Sonarr Side for 3D CF
-- @exportedAt: 2026-10-15T21:53:56.484Z
-- @opIds: 14902, 14903, 14904

-- --- BEGIN op 14902 ( update custom_format "3D" )
UPDATE custom_format_conditions
SET arr_type = 'radarr'
WHERE custom_format_name = '3D'
  AND name = '3D'
  AND type = 'release_title'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;
-- --- END op 14902

-- --- BEGIN op 14903 ( update custom_format "3D" )
UPDATE custom_format_conditions
SET arr_type = 'radarr'
WHERE custom_format_name = '3D'
  AND name = 'BD3D'
  AND type = 'release_title'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;
-- --- END op 14903

-- --- BEGIN op 14904 ( update custom_format "3D" )
UPDATE custom_format_conditions
SET arr_type = 'radarr'
WHERE custom_format_name = '3D'
  AND name = 'BluRay3D'
  AND type = 'release_title'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;
-- --- END op 14904
