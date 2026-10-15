-- @operation: export
-- @entity: batch
-- @name: Fix IMF
-- @exportedAt: 2026-10-15T22:51:45.437Z
-- @opIds: 15047, 15048

-- --- BEGIN op 15047 ( update custom_format "IMF" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'IMF'
	  AND name = 'WEBDL'
	  AND type = 'source'
	  AND arr_type = 'radarr'
	  AND negate = 0
	  AND required = 0;
-- --- END op 15047

-- --- BEGIN op 15048 ( update custom_format "IMF" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'IMF'
	  AND name = 'WEBRIP'
	  AND type = 'source'
	  AND arr_type = 'radarr'
	  AND negate = 0
	  AND required = 0;
-- --- END op 15048
