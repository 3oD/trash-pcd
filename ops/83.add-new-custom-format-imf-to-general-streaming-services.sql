-- @operation: export
-- @entity: batch
-- @name: Add NEW Custom Format IMF to General Streaming Services
-- @exportedAt: 2026-10-15T22:35:54.002Z
-- @opIds: 14968, 14982, 14983, 14984, 14985, 14986, 14987, 14988, 14989, 14990, 14991, 14992, 14993, 15037, 15038, 15039, 15040, 15041

-- --- BEGIN op 14968 ( create regular_expression "Interoperable Master Format" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Interoperable Master Format', '(\b(IMF)\b(?=.*\b(web[ ._-]?rip))\b)', NULL, NULL);
-- --- END op 14968

-- --- BEGIN op 14982 ( create custom_format "IMF" )
insert into "custom_formats" ("name", "description") values ('IMF', '');
-- --- END op 14982

-- --- BEGIN op 14983 ( update custom_format "IMF" )
update "custom_formats" set "description" = '**Amazon Prime Video**

From Wikipedia, the free encyclopedia

Amazon Prime Video, or simply Prime Video, is an American subscription video on-demand over-the-top streaming and rental service of Amazon offered as a standalone service or as part of Amazon''s Prime subscription. The service primarily distributes films and television series produced by Amazon MGM Studios or licensed to Amazon, as Amazon Originals, with the service also hosting content from other providers, content add-ons, live sporting events, and video rental and purchasing services.' where "name" = 'IMF' and "description" = '';
-- --- END op 14983

-- --- BEGIN op 14984 ( update custom_format "IMF" )
update "custom_formats" set "include_in_rename" = 1 where "name" = 'IMF' and "include_in_rename" = 0;
-- --- END op 14984

-- --- BEGIN op 14985 ( update custom_format "IMF" )
insert into "tags" ("name") values ('General Streaming Services') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('IMF', 'General Streaming Services');
-- --- END op 14985

-- --- BEGIN op 14986 ( update custom_format "IMF" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('IMF', 'Amazon', 'release_title', 'all', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('IMF', 'Amazon', 'Amazon');
-- --- END op 14986

-- --- BEGIN op 14987 ( update custom_format "IMF" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('IMF', 'WEBDL', 'source', 'all', 0, 0);

INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('IMF', 'WEBDL', 'web_dl');
-- --- END op 14987

-- --- BEGIN op 14988 ( update custom_format "IMF" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('IMF', 'WEBRIP', 'source', 'all', 0, 0);

INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('IMF', 'WEBRIP', 'webrip');
-- --- END op 14988

-- --- BEGIN op 14989 ( update custom_format "IMF" )
update "custom_formats" set "description" = 'IMF (Interoperable Master Format)

IMF (Interoperable Master Format) isn''t a streaming service but a standardized file format for storing and delivering finished video content.

Releases that use IMF as a source are created from the highest available source, resulting in a higher-quality WEBRip than those sourced from standard streaming delivery files.

IMF is widely used by major studios and streaming platforms to manage and distribute large catalogs of content efficiently and consistently.

For more information, visit the IMF Explainer page and the Interoperable Master Format Wikipedia page.' where "name" = 'IMF' and "description" = '**Amazon Prime Video**

From Wikipedia, the free encyclopedia

Amazon Prime Video, or simply Prime Video, is an American subscription video on-demand over-the-top streaming and rental service of Amazon offered as a standalone service or as part of Amazon''s Prime subscription. The service primarily distributes films and television series produced by Amazon MGM Studios or licensed to Amazon, as Amazon Originals, with the service also hosting content from other providers, content add-ons, live sporting events, and video rental and purchasing services.';
-- --- END op 14989

-- --- BEGIN op 14990 ( update custom_format "IMF" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'IMF'
	  AND name = 'Amazon'
	  AND type = 'release_title'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 1;
-- --- END op 14990

-- --- BEGIN op 14991 ( update custom_format "IMF" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('IMF', 'IMF', 'release_title', 'radarr', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('IMF', 'IMF', 'Interoperable Master Format');
-- --- END op 14991

-- --- BEGIN op 14992 ( update custom_format "IMF" )
UPDATE custom_format_conditions
SET arr_type = 'radarr'
WHERE custom_format_name = 'IMF'
  AND name = 'WEBDL'
  AND type = 'source'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;
-- --- END op 14992

-- --- BEGIN op 14993 ( update custom_format "IMF" )
UPDATE custom_format_conditions
SET arr_type = 'radarr'
WHERE custom_format_name = 'IMF'
  AND name = 'WEBRIP'
  AND type = 'source'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;
-- --- END op 14993

-- --- BEGIN op 15037 ( update quality_profile "[German] HD Bluray + WEB" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '[German] HD Bluray + WEB', 'IMF', 'radarr', 20
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '[German] HD Bluray + WEB'
    AND custom_format_name = 'IMF'
    AND arr_type = 'radarr'
);
-- --- END op 15037

-- --- BEGIN op 15038 ( update quality_profile "[German] HD Remux + WEB" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '[German] HD Remux + WEB', 'IMF', 'radarr', 20
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '[German] HD Remux + WEB'
    AND custom_format_name = 'IMF'
    AND arr_type = 'radarr'
);
-- --- END op 15038

-- --- BEGIN op 15039 ( update quality_profile "[German] Remux + WEB 2160p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '[German] Remux + WEB 2160p', 'IMF', 'radarr', 20
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '[German] Remux + WEB 2160p'
    AND custom_format_name = 'IMF'
    AND arr_type = 'radarr'
);
-- --- END op 15039

-- --- BEGIN op 15040 ( update quality_profile "[German] UHD Bluray + WEB" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '[German] UHD Bluray + WEB', 'IMF', 'radarr', 20
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '[German] UHD Bluray + WEB'
    AND custom_format_name = 'IMF'
    AND arr_type = 'radarr'
);
-- --- END op 15040

-- --- BEGIN op 15041 ( update quality_profile "[German] UHD Bluray + WEB (Alternative)" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '[German] UHD Bluray + WEB (Alternative)', 'IMF', 'radarr', 20
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '[German] UHD Bluray + WEB (Alternative)'
    AND custom_format_name = 'IMF'
    AND arr_type = 'radarr'
);
-- --- END op 15041
