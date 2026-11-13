-- @operation: export
-- @entity: batch
-- @name: Updated Quality Profile Description
-- @exportedAt: 2026-05-21T16:13:40.074Z
-- @opIds: 401

-- --- BEGIN op 401 ( update quality_profile "[German] HD Bluray + WEB" )
update "quality_profiles" set "description" = 'German Quality Profile that covers:
- WEBDL: 720p, 1080p
- Bluray: 720p, 1080p
- HDTV: 720p, 1080p' where "name" = '[German] HD Bluray + WEB' and "description" = 'German Quality Profile that covers:
- WEBDL: 720p, 1080p
- Bluray: 720p, 1080p';
-- --- END op 401
