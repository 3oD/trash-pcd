-- @operation: export
-- @entity: batch
-- @name: Add NEW Custom Format IMF to General Streaming Services
-- @exportedAt: 2026-10-15T22:35:46.733Z
-- @opIds: 14967, 14969, 14970, 14971, 14972, 14973, 14974, 14975, 14976, 14977, 14978, 14979, 14980, 14981, 15025, 15026, 15027, 15028, 15029, 15030, 15031, 15032, 15033, 15034, 15035, 15036

-- --- BEGIN op 14967 ( create regular_expression "Interoperable Master Format" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Interoperable Master Format', '(\b(IMF)\b(?=.*\b(web[ ._-]?rip))\b)', NULL, NULL);
-- --- END op 14967

-- --- BEGIN op 14969 ( create custom_format "IMF" )
insert into "custom_formats" ("name", "description") values ('IMF', '');
-- --- END op 14969

-- --- BEGIN op 14970 ( update custom_format "IMF" )
update "custom_formats" set "description" = '**Amazon Prime Video**

From Wikipedia, the free encyclopedia

Amazon Prime Video, or simply Prime Video, is an American subscription video on-demand over-the-top streaming and rental service of Amazon offered as a standalone service or as part of Amazon''s Prime subscription. The service primarily distributes films and television series produced by Amazon MGM Studios or licensed to Amazon, as Amazon Originals, with the service also hosting content from other providers, content add-ons, live sporting events, and video rental and purchasing services.' where "name" = 'IMF' and "description" = '';
-- --- END op 14970

-- --- BEGIN op 14971 ( update custom_format "IMF" )
update "custom_formats" set "include_in_rename" = 1 where "name" = 'IMF' and "include_in_rename" = 0;
-- --- END op 14971

-- --- BEGIN op 14972 ( update custom_format "IMF" )
insert into "tags" ("name") values ('General Streaming Service') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('IMF', 'General Streaming Service');
-- --- END op 14972

-- --- BEGIN op 14973 ( update custom_format "IMF" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('IMF', 'Amazon', 'release_title', 'all', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('IMF', 'Amazon', 'Amazon');
-- --- END op 14973

-- --- BEGIN op 14974 ( update custom_format "IMF" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('IMF', 'WEBDL', 'source', 'all', 0, 0);

INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('IMF', 'WEBDL', 'web_dl');
-- --- END op 14974

-- --- BEGIN op 14975 ( update custom_format "IMF" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('IMF', 'WEBRIP', 'source', 'all', 0, 0);

INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('IMF', 'WEBRIP', 'webrip');
-- --- END op 14975

-- --- BEGIN op 14976 ( update custom_format "IMF" )
update "custom_formats" set "description" = 'IMF (Interoperable Master Format)

IMF (Interoperable Master Format) isn''t a streaming service but a standardized file format for storing and delivering finished video content.

Releases that use IMF as a source are created from the highest available source, resulting in a higher-quality WEBRip than those sourced from standard streaming delivery files.

IMF is widely used by major studios and streaming platforms to manage and distribute large catalogs of content efficiently and consistently.

For more information, visit the IMF Explainer page and the Interoperable Master Format Wikipedia page.' where "name" = 'IMF' and "description" = '**Amazon Prime Video**

From Wikipedia, the free encyclopedia

Amazon Prime Video, or simply Prime Video, is an American subscription video on-demand over-the-top streaming and rental service of Amazon offered as a standalone service or as part of Amazon''s Prime subscription. The service primarily distributes films and television series produced by Amazon MGM Studios or licensed to Amazon, as Amazon Originals, with the service also hosting content from other providers, content add-ons, live sporting events, and video rental and purchasing services.';
-- --- END op 14976

-- --- BEGIN op 14977 ( update custom_format "IMF" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'IMF'
	  AND name = 'Amazon'
	  AND type = 'release_title'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 1;
-- --- END op 14977

-- --- BEGIN op 14978 ( update custom_format "IMF" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('IMF', 'IMF', 'release_title', 'all', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('IMF', 'IMF', 'Interoperable Master Format');
-- --- END op 14978

-- --- BEGIN op 14979 ( update custom_format "IMF" )
UPDATE custom_format_conditions
SET arr_type = 'radarr'
WHERE custom_format_name = 'IMF'
  AND name = 'IMF'
  AND type = 'release_title'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 1;
-- --- END op 14979

-- --- BEGIN op 14980 ( update custom_format "IMF" )
UPDATE custom_format_conditions
SET arr_type = 'radarr'
WHERE custom_format_name = 'IMF'
  AND name = 'WEBDL'
  AND type = 'source'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;
-- --- END op 14980

-- --- BEGIN op 14981 ( update custom_format "IMF" )
UPDATE custom_format_conditions
SET arr_type = 'radarr'
WHERE custom_format_name = 'IMF'
  AND name = 'WEBRIP'
  AND type = 'source'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;
-- --- END op 14981

-- --- BEGIN op 15025 ( update quality_profile "[French MULTi.VF] HD Bluray + WEB" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '[French MULTi.VF] HD Bluray + WEB', 'IMF', 'radarr', 20
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '[French MULTi.VF] HD Bluray + WEB'
    AND custom_format_name = 'IMF'
    AND arr_type = 'radarr'
);
-- --- END op 15025

-- --- BEGIN op 15026 ( update quality_profile "[French MULTi.VF] HD Remux" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '[French MULTi.VF] HD Remux', 'IMF', 'radarr', 20
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '[French MULTi.VF] HD Remux'
    AND custom_format_name = 'IMF'
    AND arr_type = 'radarr'
);
-- --- END op 15026

-- --- BEGIN op 15027 ( update quality_profile "[French MULTi.VF] UHD Bluray + WEB" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '[French MULTi.VF] UHD Bluray + WEB', 'IMF', 'radarr', 20
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '[French MULTi.VF] UHD Bluray + WEB'
    AND custom_format_name = 'IMF'
    AND arr_type = 'radarr'
);
-- --- END op 15027

-- --- BEGIN op 15028 ( update quality_profile "[French MULTi.VF] UHD Remux" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '[French MULTi.VF] UHD Remux', 'IMF', 'radarr', 20
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '[French MULTi.VF] UHD Remux'
    AND custom_format_name = 'IMF'
    AND arr_type = 'radarr'
);
-- --- END op 15028

-- --- BEGIN op 15029 ( update quality_profile "[French MULTi.VO] HD Bluray + WEB" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '[French MULTi.VO] HD Bluray + WEB', 'IMF', 'radarr', 20
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '[French MULTi.VO] HD Bluray + WEB'
    AND custom_format_name = 'IMF'
    AND arr_type = 'radarr'
);
-- --- END op 15029

-- --- BEGIN op 15030 ( update quality_profile "[French MULTi.VO] HD Remux" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '[French MULTi.VO] HD Remux', 'IMF', 'radarr', 20
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '[French MULTi.VO] HD Remux'
    AND custom_format_name = 'IMF'
    AND arr_type = 'radarr'
);
-- --- END op 15030

-- --- BEGIN op 15031 ( update quality_profile "[French MULTi.VO] UHD Bluray + WEB" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '[French MULTi.VO] UHD Bluray + WEB', 'IMF', 'radarr', 20
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '[French MULTi.VO] UHD Bluray + WEB'
    AND custom_format_name = 'IMF'
    AND arr_type = 'radarr'
);
-- --- END op 15031

-- --- BEGIN op 15032 ( update quality_profile "[French MULTi.VO] UHD Remux" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '[French MULTi.VO] UHD Remux', 'IMF', 'radarr', 20
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '[French MULTi.VO] UHD Remux'
    AND custom_format_name = 'IMF'
    AND arr_type = 'radarr'
);
-- --- END op 15032

-- --- BEGIN op 15033 ( update quality_profile "[French VOSTFR] HD Bluray + WEB" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '[French VOSTFR] HD Bluray + WEB', 'IMF', 'radarr', 20
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '[French VOSTFR] HD Bluray + WEB'
    AND custom_format_name = 'IMF'
    AND arr_type = 'radarr'
);
-- --- END op 15033

-- --- BEGIN op 15034 ( update quality_profile "[French VOSTFR] HD Remux" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '[French VOSTFR] HD Remux', 'IMF', 'radarr', 20
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '[French VOSTFR] HD Remux'
    AND custom_format_name = 'IMF'
    AND arr_type = 'radarr'
);
-- --- END op 15034

-- --- BEGIN op 15035 ( update quality_profile "[French VOSTFR] UHD Bluray + WEB" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '[French VOSTFR] UHD Bluray + WEB', 'IMF', 'radarr', 20
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '[French VOSTFR] UHD Bluray + WEB'
    AND custom_format_name = 'IMF'
    AND arr_type = 'radarr'
);
-- --- END op 15035

-- --- BEGIN op 15036 ( update quality_profile "[French VOSTFR] UHD Remux" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '[French VOSTFR] UHD Remux', 'IMF', 'radarr', 20
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '[French VOSTFR] UHD Remux'
    AND custom_format_name = 'IMF'
    AND arr_type = 'radarr'
);
-- --- END op 15036
