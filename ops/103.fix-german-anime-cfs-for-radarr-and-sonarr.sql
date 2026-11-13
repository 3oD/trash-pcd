-- @operation: export
-- @entity: batch
-- @name: Fix German Anime CFs for Radarr and Sonarr

-- The German Anime tier CFs only had Sonarr conditions, so they compiled to an
-- empty CF on Radarr ("Must contain at least one Condition"). Follow the
-- HD Bluray Tier 01 layout: shared conditions for both arrs, Remux exclusion
-- via source on Sonarr and via quality modifier on Radarr.

-- Release groups and WEB/Bluray sources work the same on both arrs
UPDATE custom_format_conditions
SET arr_type = 'all'
WHERE custom_format_name IN ('German Anime Bluray Tier 01', 'German Anime Bluray Tier 02', 'German Anime Bluray Tier 03',
                             'German Anime Web Tier 01', 'German Anime Web Tier 02', 'German Anime Web Tier 03')
  AND arr_type = 'sonarr'
  AND (type = 'release_group' OR (type = 'source' AND name IN ('Bluray', 'WebDL', 'WebRip')));

-- CFs ported from TRaSH main op 1 only had Radarr conditions but are scored for
-- Sonarr in [German] Anime HD Bluray + WEB; their condition types are arr-agnostic
UPDATE custom_format_conditions
SET arr_type = 'all'
WHERE custom_format_name IN ('German Anime Scene', 'German DL', 'German Subbed', 'Not German, Japanese or English')
  AND arr_type = 'radarr'
  AND type IN ('release_group', 'language', 'release_title');

-- Bluray tiers: keep the Sonarr remux exclusion, add the Radarr one
UPDATE custom_format_conditions
SET name = 'Not Remux Source'
WHERE custom_format_name IN ('German Anime Bluray Tier 01', 'German Anime Bluray Tier 02', 'German Anime Bluray Tier 03')
  AND name = 'Not REMUX'
  AND type = 'source'
  AND arr_type = 'sonarr';

INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required) VALUES ('German Anime Bluray Tier 01', 'Not REMUX', 'quality_modifier', 'radarr', 1, 1);
INSERT INTO condition_quality_modifiers (custom_format_name, condition_name, quality_modifier) VALUES ('German Anime Bluray Tier 01', 'Not REMUX', 'remux');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required) VALUES ('German Anime Bluray Tier 02', 'Not REMUX', 'quality_modifier', 'radarr', 1, 1);
INSERT INTO condition_quality_modifiers (custom_format_name, condition_name, quality_modifier) VALUES ('German Anime Bluray Tier 02', 'Not REMUX', 'remux');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required) VALUES ('German Anime Bluray Tier 03', 'Not REMUX', 'quality_modifier', 'radarr', 1, 1);
INSERT INTO condition_quality_modifiers (custom_format_name, condition_name, quality_modifier) VALUES ('German Anime Bluray Tier 03', 'Not REMUX', 'remux');
