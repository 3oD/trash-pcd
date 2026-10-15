-- @operation: export
-- @entity: batch
-- @name: Fix HDR10+ Naming
-- @exportedAt: 2026-10-15T22:17:35.663Z
-- @opIds: 14932

-- --- BEGIN op 14932 ( update custom_format "HDR10+ Boost" )
update "custom_formats" set "name" = 'HDR10+ Boost' where "name" = 'HDR10Plus Boost';
-- --- END op 14932
