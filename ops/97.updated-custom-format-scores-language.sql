-- @operation: export
-- @entity: batch
-- @name: Updated Custom Format Scores + Language
-- @exportedAt: 2026-05-24T11:16:39.426Z
-- @opIds: 403, 404, 405, 406, 407, 408, 409

-- --- BEGIN op 403 ( update quality_profile "[German] HD Bluray + WEB" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '[German] HD Bluray + WEB', 'German Anime Bluray Tier 01', 'sonarr', 2900
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '[German] HD Bluray + WEB'
    AND custom_format_name = 'German Anime Bluray Tier 01'
    AND arr_type = 'sonarr'
);
-- --- END op 403

-- --- BEGIN op 404 ( update quality_profile "[German] HD Bluray + WEB" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '[German] HD Bluray + WEB', 'German Anime Bluray Tier 02', 'sonarr', 2650
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '[German] HD Bluray + WEB'
    AND custom_format_name = 'German Anime Bluray Tier 02'
    AND arr_type = 'sonarr'
);
-- --- END op 404

-- --- BEGIN op 405 ( update quality_profile "[German] HD Bluray + WEB" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '[German] HD Bluray + WEB', 'German Anime Bluray Tier 03', 'sonarr', 2300
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '[German] HD Bluray + WEB'
    AND custom_format_name = 'German Anime Bluray Tier 03'
    AND arr_type = 'sonarr'
);
-- --- END op 405

-- --- BEGIN op 406 ( update quality_profile "[German] HD Bluray + WEB" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '[German] HD Bluray + WEB', 'German Anime Web Tier 01', 'sonarr', 2100
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '[German] HD Bluray + WEB'
    AND custom_format_name = 'German Anime Web Tier 01'
    AND arr_type = 'sonarr'
);
-- --- END op 406

-- --- BEGIN op 407 ( update quality_profile "[German] HD Bluray + WEB" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '[German] HD Bluray + WEB', 'German Anime Web Tier 02', 'sonarr', 1900
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '[German] HD Bluray + WEB'
    AND custom_format_name = 'German Anime Web Tier 02'
    AND arr_type = 'sonarr'
);
-- --- END op 407

-- --- BEGIN op 408 ( update quality_profile "[German] HD Bluray + WEB" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '[German] HD Bluray + WEB', 'German Anime Web Tier 03', 'sonarr', 1800
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '[German] HD Bluray + WEB'
    AND custom_format_name = 'German Anime Web Tier 03'
    AND arr_type = 'sonarr'
);
-- --- END op 408

-- --- BEGIN op 409 ( update quality_profile "[German] HD Bluray + WEB" )
INSERT INTO quality_profile_languages (quality_profile_name, language_name, type)
SELECT '[German] HD Bluray + WEB', 'German', 'simple'
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_languages
  WHERE quality_profile_name = '[German] HD Bluray + WEB'
);
-- --- END op 409
