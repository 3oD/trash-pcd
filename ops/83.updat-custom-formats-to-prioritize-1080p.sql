-- @operation: export
-- @entity: batch
-- @name: Updat Custom Formats to prioritize 1080p
-- @exportedAt: 2026-05-29T16:45:54.785Z
-- @opIds: 414, 415, 416, 417, 418

-- --- BEGIN op 414 ( update quality_profile "[German] HD Bluray + WEB" )
UPDATE quality_profile_custom_formats
SET score = 500
WHERE quality_profile_name = '[German] HD Bluray + WEB'
  AND custom_format_name = '1080p'
  AND arr_type = 'radarr'
  AND score = 50;
-- --- END op 414

-- --- BEGIN op 415 ( update quality_profile "[German] HD Bluray + WEB" )
UPDATE quality_profile_custom_formats
SET score = 500
WHERE quality_profile_name = '[German] HD Bluray + WEB'
  AND custom_format_name = '1080p'
  AND arr_type = 'sonarr'
  AND score = 50;
-- --- END op 415

-- --- BEGIN op 416 ( update quality_profile "[German] HD Bluray + WEB" )
DELETE FROM quality_profile_qualities
WHERE quality_profile_name = '[German] HD Bluray + WEB'
  AND quality_group_name = 'Merged QPs'
  AND quality_name IS NULL
  AND position = 0
  AND enabled = 1
  AND upgrade_until = 1;

DELETE FROM quality_group_members
WHERE quality_profile_name = '[German] HD Bluray + WEB'
  AND quality_group_name = 'Merged QPs'
  AND quality_name = 'Bluray-1080p';

DELETE FROM quality_group_members
WHERE quality_profile_name = '[German] HD Bluray + WEB'
  AND quality_group_name = 'Merged QPs'
  AND quality_name = 'Bluray-720p';

DELETE FROM quality_group_members
WHERE quality_profile_name = '[German] HD Bluray + WEB'
  AND quality_group_name = 'Merged QPs'
  AND quality_name = 'HDTV-1080p';

DELETE FROM quality_group_members
WHERE quality_profile_name = '[German] HD Bluray + WEB'
  AND quality_group_name = 'Merged QPs'
  AND quality_name = 'HDTV-720p';

DELETE FROM quality_group_members
WHERE quality_profile_name = '[German] HD Bluray + WEB'
  AND quality_group_name = 'Merged QPs'
  AND quality_name = 'WEBDL-1080p';

DELETE FROM quality_group_members
WHERE quality_profile_name = '[German] HD Bluray + WEB'
  AND quality_group_name = 'Merged QPs'
  AND quality_name = 'WEBDL-720p';

DELETE FROM quality_group_members
WHERE quality_profile_name = '[German] HD Bluray + WEB'
  AND quality_group_name = 'Merged QPs'
  AND quality_name = 'WEBRip-1080p';

DELETE FROM quality_group_members
WHERE quality_profile_name = '[German] HD Bluray + WEB'
  AND quality_group_name = 'Merged QPs'
  AND quality_name = 'WEBRip-720p';

DELETE FROM quality_groups
WHERE quality_profile_name = '[German] HD Bluray + WEB'
  AND name = 'Merged QPs';

INSERT INTO quality_groups (quality_profile_name, name)
SELECT '[German] HD Bluray + WEB', 'Merged 1080p'
WHERE NOT EXISTS (
  SELECT 1 FROM quality_groups
  WHERE quality_profile_name = '[German] HD Bluray + WEB'
    AND name = 'Merged 1080p'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '[German] HD Bluray + WEB', 'Merged 1080p', 'Bluray-1080p', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = '[German] HD Bluray + WEB'
    AND quality_group_name = 'Merged 1080p'
    AND quality_name = 'Bluray-1080p'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '[German] HD Bluray + WEB', 'Merged 1080p', 'WEBRip-1080p', 1
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = '[German] HD Bluray + WEB'
    AND quality_group_name = 'Merged 1080p'
    AND quality_name = 'WEBRip-1080p'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '[German] HD Bluray + WEB', 'Merged 1080p', 'WEBDL-1080p', 2
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = '[German] HD Bluray + WEB'
    AND quality_group_name = 'Merged 1080p'
    AND quality_name = 'WEBDL-1080p'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '[German] HD Bluray + WEB', 'Merged 1080p', 'HDTV-1080p', 3
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = '[German] HD Bluray + WEB'
    AND quality_group_name = 'Merged 1080p'
    AND quality_name = 'HDTV-1080p'
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT '[German] HD Bluray + WEB', NULL, 'Merged 1080p', 0, 1, 1
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = '[German] HD Bluray + WEB'
    AND quality_name IS NULL
    AND quality_group_name = 'Merged 1080p'
);

INSERT INTO quality_groups (quality_profile_name, name)
SELECT '[German] HD Bluray + WEB', 'Merged 720p'
WHERE NOT EXISTS (
  SELECT 1 FROM quality_groups
  WHERE quality_profile_name = '[German] HD Bluray + WEB'
    AND name = 'Merged 720p'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '[German] HD Bluray + WEB', 'Merged 720p', 'Bluray-720p', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = '[German] HD Bluray + WEB'
    AND quality_group_name = 'Merged 720p'
    AND quality_name = 'Bluray-720p'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '[German] HD Bluray + WEB', 'Merged 720p', 'WEBDL-720p', 1
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = '[German] HD Bluray + WEB'
    AND quality_group_name = 'Merged 720p'
    AND quality_name = 'WEBDL-720p'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '[German] HD Bluray + WEB', 'Merged 720p', 'WEBRip-720p', 2
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = '[German] HD Bluray + WEB'
    AND quality_group_name = 'Merged 720p'
    AND quality_name = 'WEBRip-720p'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '[German] HD Bluray + WEB', 'Merged 720p', 'HDTV-720p', 3
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = '[German] HD Bluray + WEB'
    AND quality_group_name = 'Merged 720p'
    AND quality_name = 'HDTV-720p'
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT '[German] HD Bluray + WEB', NULL, 'Merged 720p', 1, 1, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = '[German] HD Bluray + WEB'
    AND quality_name IS NULL
    AND quality_group_name = 'Merged 720p'
);

UPDATE quality_profile_qualities
SET position = 2
WHERE quality_profile_name = '[German] HD Bluray + WEB'
  AND quality_name = 'Raw-HD'
  AND quality_group_name IS NULL
  AND position = 1
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 3
WHERE quality_profile_name = '[German] HD Bluray + WEB'
  AND quality_name = 'BR-DISK'
  AND quality_group_name IS NULL
  AND position = 2
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 4
WHERE quality_profile_name = '[German] HD Bluray + WEB'
  AND quality_name = 'Remux-2160p'
  AND quality_group_name IS NULL
  AND position = 3
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 5
WHERE quality_profile_name = '[German] HD Bluray + WEB'
  AND quality_name = 'Bluray-2160p'
  AND quality_group_name IS NULL
  AND position = 4
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 6
WHERE quality_profile_name = '[German] HD Bluray + WEB'
  AND quality_group_name = 'WEB 2160p'
  AND quality_name IS NULL
  AND position = 5
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 7
WHERE quality_profile_name = '[German] HD Bluray + WEB'
  AND quality_name = 'HDTV-2160p'
  AND quality_group_name IS NULL
  AND position = 6
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 8
WHERE quality_profile_name = '[German] HD Bluray + WEB'
  AND quality_name = 'Remux-1080p'
  AND quality_group_name IS NULL
  AND position = 7
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 9
WHERE quality_profile_name = '[German] HD Bluray + WEB'
  AND quality_name = 'Bluray-576p'
  AND quality_group_name IS NULL
  AND position = 8
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 10
WHERE quality_profile_name = '[German] HD Bluray + WEB'
  AND quality_name = 'Bluray-480p'
  AND quality_group_name IS NULL
  AND position = 9
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 11
WHERE quality_profile_name = '[German] HD Bluray + WEB'
  AND quality_group_name = 'WEB 480p'
  AND quality_name IS NULL
  AND position = 10
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 12
WHERE quality_profile_name = '[German] HD Bluray + WEB'
  AND quality_name = 'DVD-R'
  AND quality_group_name IS NULL
  AND position = 11
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 13
WHERE quality_profile_name = '[German] HD Bluray + WEB'
  AND quality_name = 'DVD'
  AND quality_group_name IS NULL
  AND position = 12
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 14
WHERE quality_profile_name = '[German] HD Bluray + WEB'
  AND quality_name = 'SDTV'
  AND quality_group_name IS NULL
  AND position = 13
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 15
WHERE quality_profile_name = '[German] HD Bluray + WEB'
  AND quality_name = 'DVDSCR'
  AND quality_group_name IS NULL
  AND position = 14
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 16
WHERE quality_profile_name = '[German] HD Bluray + WEB'
  AND quality_name = 'REGIONAL'
  AND quality_group_name IS NULL
  AND position = 15
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 17
WHERE quality_profile_name = '[German] HD Bluray + WEB'
  AND quality_name = 'TELECINE'
  AND quality_group_name IS NULL
  AND position = 16
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 18
WHERE quality_profile_name = '[German] HD Bluray + WEB'
  AND quality_name = 'TELESYNC'
  AND quality_group_name IS NULL
  AND position = 17
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 19
WHERE quality_profile_name = '[German] HD Bluray + WEB'
  AND quality_name = 'CAM'
  AND quality_group_name IS NULL
  AND position = 18
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 20
WHERE quality_profile_name = '[German] HD Bluray + WEB'
  AND quality_name = 'WORKPRINT'
  AND quality_group_name IS NULL
  AND position = 19
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 21
WHERE quality_profile_name = '[German] HD Bluray + WEB'
  AND quality_name = 'Unknown'
  AND quality_group_name IS NULL
  AND position = 20
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 22
WHERE quality_profile_name = '[German] HD Bluray + WEB'
  AND quality_name = 'HDTV-480p'
  AND quality_group_name IS NULL
  AND position = 21
  AND enabled = 0
  AND upgrade_until = 0;
-- --- END op 416

-- --- BEGIN op 417 ( update quality_profile "[German] HD Bluray + WEB" )
UPDATE quality_profile_custom_formats
SET score = 750
WHERE quality_profile_name = '[German] HD Bluray + WEB'
  AND custom_format_name = '1080p'
  AND arr_type = 'radarr'
  AND score = 500;
-- --- END op 417

-- --- BEGIN op 418 ( update quality_profile "[German] HD Bluray + WEB" )
UPDATE quality_profile_custom_formats
SET score = 750
WHERE quality_profile_name = '[German] HD Bluray + WEB'
  AND custom_format_name = '1080p'
  AND arr_type = 'sonarr'
  AND score = 500;
-- --- END op 418
