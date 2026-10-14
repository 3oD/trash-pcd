-- @operation: export
-- @entity: batch
-- @name: Add RlsGrp SumVision to Generated Dynamic HDR
-- @exportedAt: 2026-10-14T01:29:53.940Z
-- @opIds: 14713, 14716, 14717, 14718, 14719, 14720, 14721, 14722, 14723, 14724, 14725, 14726, 14727

-- --- BEGIN op 14713 ( update custom_format "Generated Dynamic HDR" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Generated Dynamic HDR', 'SumVision', 'release_title', 'radarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Generated Dynamic HDR', 'SumVision', 'SumVision');
-- --- END op 14713

-- --- BEGIN op 14716 ( update custom_format "Generated Dynamic HDR" )
UPDATE custom_format_conditions
SET arr_type = 'radarr'
WHERE custom_format_name = 'Generated Dynamic HDR'
  AND name = 'BiTOR'
  AND type = 'release_group'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;
-- --- END op 14716

-- --- BEGIN op 14717 ( update custom_format "Generated Dynamic HDR" )
UPDATE custom_format_conditions
SET arr_type = 'radarr'
WHERE custom_format_name = 'Generated Dynamic HDR'
  AND name = 'DV'
  AND type = 'release_title'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;
-- --- END op 14717

-- --- BEGIN op 14718 ( update custom_format "Generated Dynamic HDR" )
UPDATE custom_format_conditions
SET arr_type = 'radarr'
WHERE custom_format_name = 'Generated Dynamic HDR'
  AND name = 'DepraveD'
  AND type = 'release_group'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;
-- --- END op 14718

-- --- BEGIN op 14719 ( update custom_format "Generated Dynamic HDR" )
UPDATE custom_format_conditions
SET arr_type = 'radarr'
WHERE custom_format_name = 'Generated Dynamic HDR'
  AND name = 'Flights'
  AND type = 'release_group'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;
-- --- END op 14719

-- --- BEGIN op 14720 ( update custom_format "Generated Dynamic HDR" )
UPDATE custom_format_conditions
SET arr_type = 'radarr'
WHERE custom_format_name = 'Generated Dynamic HDR'
  AND name = 'GuyZo'
  AND type = 'release_group'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;
-- --- END op 14720

-- --- BEGIN op 14721 ( update custom_format "Generated Dynamic HDR" )
UPDATE custom_format_conditions
SET arr_type = 'radarr'
WHERE custom_format_name = 'Generated Dynamic HDR'
  AND name = 'HDR10+'
  AND type = 'release_title'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;
-- --- END op 14721

-- --- BEGIN op 14722 ( update custom_format "Generated Dynamic HDR" )
UPDATE custom_format_conditions
SET arr_type = 'radarr'
WHERE custom_format_name = 'Generated Dynamic HDR'
  AND name = 'SasukeducK'
  AND type = 'release_group'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;
-- --- END op 14722

-- --- BEGIN op 14723 ( update custom_format "Generated Dynamic HDR" )
UPDATE custom_format_conditions
SET type = 'release_group'
WHERE custom_format_name = 'Generated Dynamic HDR'
  AND name = 'SumVision'
  AND type = 'release_title'
  AND arr_type = 'radarr'
  AND negate = 0
  AND required = 0;

DELETE FROM condition_patterns WHERE custom_format_name = 'Generated Dynamic HDR' AND condition_name = 'SumVision' AND regular_expression_name = 'SumVision';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Generated Dynamic HDR', 'SumVision', 'SumVision');
-- --- END op 14723

-- --- BEGIN op 14724 ( update custom_format "Generated Dynamic HDR" )
UPDATE custom_format_conditions
SET arr_type = 'radarr'
WHERE custom_format_name = 'Generated Dynamic HDR'
  AND name = 'VD0N'
  AND type = 'release_group'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;
-- --- END op 14724

-- --- BEGIN op 14725 ( update custom_format "Generated Dynamic HDR" )
UPDATE custom_format_conditions
SET arr_type = 'radarr'
WHERE custom_format_name = 'Generated Dynamic HDR'
  AND name = 'VECTOR'
  AND type = 'release_group'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;
-- --- END op 14725

-- --- BEGIN op 14726 ( update custom_format "Generated Dynamic HDR" )
UPDATE custom_format_conditions
SET arr_type = 'radarr'
WHERE custom_format_name = 'Generated Dynamic HDR'
  AND name = 'VisionXpert'
  AND type = 'release_group'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;
-- --- END op 14726

-- --- BEGIN op 14727 ( update custom_format "Generated Dynamic HDR" )
UPDATE custom_format_conditions
SET arr_type = 'radarr'
WHERE custom_format_name = 'Generated Dynamic HDR'
  AND name = 'tarunk9c'
  AND type = 'release_group'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;
-- --- END op 14727
