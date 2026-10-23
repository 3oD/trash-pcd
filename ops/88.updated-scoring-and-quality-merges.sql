-- @operation: export
-- @entity: batch
-- @name: updated Scoring and Quality Merges
-- @exportedAt: 2026-05-21T16:01:22.150Z
-- @opIds: 328, 329, 330, 331, 332, 333

-- --- BEGIN op 328 ( update quality_profile "[German] HD Bluray + WEB" )
DELETE FROM quality_profile_qualities
WHERE quality_profile_name = '[German] HD Bluray + WEB'
  AND quality_name = 'HDTV-1080p'
  AND quality_group_name IS NULL
  AND position = 8
  AND enabled = 0
  AND upgrade_until = 0;

DELETE FROM quality_profile_qualities
WHERE quality_profile_name = '[German] HD Bluray + WEB'
  AND quality_name = 'HDTV-720p'
  AND quality_group_name IS NULL
  AND position = 9
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 8
WHERE quality_profile_name = '[German] HD Bluray + WEB'
  AND quality_name = 'Bluray-576p'
  AND quality_group_name IS NULL
  AND position = 10
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 9
WHERE quality_profile_name = '[German] HD Bluray + WEB'
  AND quality_name = 'Bluray-480p'
  AND quality_group_name IS NULL
  AND position = 11
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 10
WHERE quality_profile_name = '[German] HD Bluray + WEB'
  AND quality_group_name = 'WEB 480p'
  AND quality_name IS NULL
  AND position = 12
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 11
WHERE quality_profile_name = '[German] HD Bluray + WEB'
  AND quality_name = 'DVD-R'
  AND quality_group_name IS NULL
  AND position = 13
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 12
WHERE quality_profile_name = '[German] HD Bluray + WEB'
  AND quality_name = 'DVD'
  AND quality_group_name IS NULL
  AND position = 14
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 13
WHERE quality_profile_name = '[German] HD Bluray + WEB'
  AND quality_name = 'SDTV'
  AND quality_group_name IS NULL
  AND position = 15
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 14
WHERE quality_profile_name = '[German] HD Bluray + WEB'
  AND quality_name = 'DVDSCR'
  AND quality_group_name IS NULL
  AND position = 16
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 15
WHERE quality_profile_name = '[German] HD Bluray + WEB'
  AND quality_name = 'REGIONAL'
  AND quality_group_name IS NULL
  AND position = 17
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 16
WHERE quality_profile_name = '[German] HD Bluray + WEB'
  AND quality_name = 'TELECINE'
  AND quality_group_name IS NULL
  AND position = 18
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 17
WHERE quality_profile_name = '[German] HD Bluray + WEB'
  AND quality_name = 'TELESYNC'
  AND quality_group_name IS NULL
  AND position = 19
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 18
WHERE quality_profile_name = '[German] HD Bluray + WEB'
  AND quality_name = 'CAM'
  AND quality_group_name IS NULL
  AND position = 20
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 19
WHERE quality_profile_name = '[German] HD Bluray + WEB'
  AND quality_name = 'WORKPRINT'
  AND quality_group_name IS NULL
  AND position = 21
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 20
WHERE quality_profile_name = '[German] HD Bluray + WEB'
  AND quality_name = 'Unknown'
  AND quality_group_name IS NULL
  AND position = 22
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 21
WHERE quality_profile_name = '[German] HD Bluray + WEB'
  AND quality_name = 'HDTV-480p'
  AND quality_group_name IS NULL
  AND position = 23
  AND enabled = 0
  AND upgrade_until = 0;

DELETE FROM quality_group_members
WHERE quality_profile_name = '[German] HD Bluray + WEB'
  AND quality_group_name = 'Merged QPs'
  AND (SELECT COUNT(*)
FROM quality_group_members
WHERE quality_profile_name = '[German] HD Bluray + WEB'
  AND quality_group_name = 'Merged QPs') = 6
  AND NOT EXISTS (
    SELECT 1
    FROM quality_group_members
    WHERE quality_profile_name = '[German] HD Bluray + WEB'
  AND quality_group_name = 'Merged QPs'
      AND quality_name NOT IN ('Bluray-1080p', 'WEBRip-1080p', 'WEBDL-1080p', 'Bluray-720p', 'WEBDL-720p', 'WEBRip-720p')
  )
  AND (
    NOT EXISTS (
      SELECT 1
      FROM quality_group_members
      WHERE quality_profile_name = '[German] HD Bluray + WEB'
  AND quality_group_name = 'Merged QPs'
        AND NOT (
          (quality_name = 'Bluray-1080p'
        AND position = 0)
      OR (quality_name = 'WEBRip-1080p'
        AND position = 1)
      OR (quality_name = 'WEBDL-1080p'
        AND position = 2)
      OR (quality_name = 'Bluray-720p'
        AND position = 3)
      OR (quality_name = 'WEBDL-720p'
        AND position = 4)
      OR (quality_name = 'WEBRip-720p'
        AND position = 5)
        )
    )
    OR NOT EXISTS (
      SELECT 1
      FROM quality_group_members
      WHERE quality_profile_name = '[German] HD Bluray + WEB'
  AND quality_group_name = 'Merged QPs'
        AND position != 0
    )
  );

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
WITH can_insert AS (
  SELECT (
    SELECT COUNT(*)
    FROM quality_group_members
    WHERE quality_profile_name = '[German] HD Bluray + WEB'
      AND quality_group_name = 'Merged QPs'
  ) = 0 AS ok
),
new_rows AS (
SELECT '[German] HD Bluray + WEB' AS quality_profile_name, 'Merged QPs' AS quality_group_name, 'Bluray-1080p' AS quality_name, 0 AS position
UNION ALL
SELECT '[German] HD Bluray + WEB' AS quality_profile_name, 'Merged QPs' AS quality_group_name, 'WEBRip-1080p' AS quality_name, 1 AS position
UNION ALL
SELECT '[German] HD Bluray + WEB' AS quality_profile_name, 'Merged QPs' AS quality_group_name, 'WEBDL-1080p' AS quality_name, 2 AS position
UNION ALL
SELECT '[German] HD Bluray + WEB' AS quality_profile_name, 'Merged QPs' AS quality_group_name, 'HDTV-1080p' AS quality_name, 3 AS position
UNION ALL
SELECT '[German] HD Bluray + WEB' AS quality_profile_name, 'Merged QPs' AS quality_group_name, 'Bluray-720p' AS quality_name, 4 AS position
UNION ALL
SELECT '[German] HD Bluray + WEB' AS quality_profile_name, 'Merged QPs' AS quality_group_name, 'WEBDL-720p' AS quality_name, 5 AS position
UNION ALL
SELECT '[German] HD Bluray + WEB' AS quality_profile_name, 'Merged QPs' AS quality_group_name, 'WEBRip-720p' AS quality_name, 6 AS position
UNION ALL
SELECT '[German] HD Bluray + WEB' AS quality_profile_name, 'Merged QPs' AS quality_group_name, 'HDTV-720p' AS quality_name, 7 AS position
)
SELECT
  new_rows.quality_profile_name,
  new_rows.quality_group_name,
  new_rows.quality_name,
  new_rows.position
FROM new_rows
CROSS JOIN can_insert
WHERE ok;
-- --- END op 328

-- --- BEGIN op 329 ( update quality_profile "[German] HD Bluray + WEB" )
update "quality_profiles" set "minimum_custom_format_score" = 100000 where "name" = '[German] HD Bluray + WEB' and "minimum_custom_format_score" = 0;
-- --- END op 329

-- --- BEGIN op 330 ( update quality_profile "[German] HD Bluray + WEB" )
update "quality_profiles" set "upgrade_score_increment" = 1000 where "name" = '[German] HD Bluray + WEB' and "upgrade_score_increment" = 1;
-- --- END op 330

-- --- BEGIN op 331 ( update quality_profile "[German] HD Bluray + WEB" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '[German] HD Bluray + WEB', 'IMAX', 'radarr', 800
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '[German] HD Bluray + WEB'
    AND custom_format_name = 'IMAX'
    AND arr_type = 'radarr'
);
-- --- END op 331

-- --- BEGIN op 332 ( update quality_profile "[German] HD Bluray + WEB" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '[German] HD Bluray + WEB', 'NOT: IMAX Enhanced', 'radarr', 800
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '[German] HD Bluray + WEB'
    AND custom_format_name = 'NOT: IMAX Enhanced'
    AND arr_type = 'radarr'
);
-- --- END op 332

-- --- BEGIN op 333 ( update quality_profile "[German] HD Bluray + WEB" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '[German] HD Bluray + WEB', 'Special Edition', 'radarr', 125
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '[German] HD Bluray + WEB'
    AND custom_format_name = 'Special Edition'
    AND arr_type = 'radarr'
);
-- --- END op 333
