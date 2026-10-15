-- @operation: export
-- @entity: batch
-- @name: Fix HDR10+ Naming
-- @exportedAt: 2026-10-15T22:17:43.387Z
-- @opIds: 14933

-- --- BEGIN op 14933 ( update custom_format "HDR10+ Boost" )
update "custom_formats" set "name" = 'HDR10+ Boost' where "name" = 'HDR10Plus Boost';
-- --- END op 14933
