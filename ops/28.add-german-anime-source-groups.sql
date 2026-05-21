-- @operation: export
-- @entity: batch
-- @name: Add German Anime Source Groups
-- @exportedAt: 2026-05-21T00:00:00.000Z
-- @opIds: 10564, 10565, 10566, 10567, 10568, 10569, 10570, 10571, 10572, 10573, 10574, 10575, 10576, 10577, 10578, 10579, 10580, 10581, 10582, 10583, 10584, 10585, 10586, 10587, 10588, 10589, 10590, 10591, 10592, 10593, 10594

-- ============================================================================
-- REGULAR EXPRESSIONS
-- ============================================================================

-- --- BEGIN op 10564 ( create regular_expression "Ainz" )
INSERT INTO regular_expressions (name, pattern, regex101_id, description) VALUES ('Ainz', '^(Ainz)$', NULL, NULL);
-- --- END op 10564

-- --- BEGIN op 10565 ( create regular_expression "Baka" )
INSERT INTO regular_expressions (name, pattern, regex101_id, description) VALUES ('Baka', '^(Baka)$', NULL, NULL);
-- --- END op 10565

-- --- BEGIN op 10566 ( create regular_expression "Fuuko" )
INSERT INTO regular_expressions (name, pattern, regex101_id, description) VALUES ('Fuuko', '^(Fuuko)$', NULL, NULL);
-- --- END op 10566

-- --- BEGIN op 10567 ( create regular_expression "Pudding-sama" )
INSERT INTO regular_expressions (name, pattern, regex101_id, description) VALUES ('Pudding-sama', '^(Pudding-sama)$', NULL, NULL);
-- --- END op 10567

-- --- BEGIN op 10568 ( create regular_expression "RTemp" )
INSERT INTO regular_expressions (name, pattern, regex101_id, description) VALUES ('RTemp', '^(RTemp)$', NULL, NULL);
-- --- END op 10568

-- --- BEGIN op 10569 ( create regular_expression "snk (Anime)" )
INSERT INTO regular_expressions (name, pattern, regex101_id, description) VALUES ('snk (Anime)', '\b(snk|shw)\b', NULL, NULL);
-- --- END op 10569

-- --- BEGIN op 10570 ( create regular_expression "AO (Anime)" )
INSERT INTO regular_expressions (name, pattern, regex101_id, description) VALUES ('AO (Anime)', '^(AO)$', NULL, NULL);
-- --- END op 10570

-- --- BEGIN op 10571 ( create regular_expression "FumoFriday" )
INSERT INTO regular_expressions (name, pattern, regex101_id, description) VALUES ('FumoFriday', '^(FumoFriday)$', NULL, NULL);
-- --- END op 10571

-- --- BEGIN op 10572 ( create regular_expression "GP (Anime)" )
INSERT INTO regular_expressions (name, pattern, regex101_id, description) VALUES ('GP (Anime)', '^(GP)$', NULL, NULL);
-- --- END op 10572

-- --- BEGIN op 10573 ( create regular_expression "Waechter" )
INSERT INTO regular_expressions (name, pattern, regex101_id, description) VALUES ('Waechter', '^(Waechter)$', NULL, NULL);
-- --- END op 10573

-- --- BEGIN op 10574 ( create regular_expression "DRiFTKiNG (Sonarr)" )
INSERT INTO regular_expressions (name, pattern, regex101_id, description) VALUES ('DRiFTKiNG (Sonarr)', '\b(DRiFTKiNG|DK)\b', NULL, NULL);
-- --- END op 10574

-- --- BEGIN op 10575 ( create regular_expression "ZeroTwo Aliases (Anime)" )
INSERT INTO regular_expressions (name, pattern, regex101_id, description) VALUES ('ZeroTwo Aliases (Anime)', '\b(BUTTERCUP|HARTZ02|XiSS|DOGPACK404|PRiNCESSDiANA|DiVA|WAREZCX|BiTCHNUGGET)\b', NULL, NULL);
-- --- END op 10575

-- --- BEGIN op 10576 ( create regular_expression "PHM" )
INSERT INTO regular_expressions (name, pattern, regex101_id, description) VALUES ('PHM', '^(PHM)$', NULL, NULL);
-- --- END op 10576

-- --- BEGIN op 10577 ( create regular_expression "4Baka" )
INSERT INTO regular_expressions (name, pattern, regex101_id, description) VALUES ('4Baka', '^(4Baka)$', NULL, NULL);
-- --- END op 10577

-- --- BEGIN op 10578 ( create regular_expression "ATAX" )
INSERT INTO regular_expressions (name, pattern, regex101_id, description) VALUES ('ATAX', '^(ATAX)$', NULL, NULL);
-- --- END op 10578

-- --- BEGIN op 10579 ( create regular_expression "HDC" )
INSERT INTO regular_expressions (name, pattern, regex101_id, description) VALUES ('HDC', '^(HDC)$', NULL, NULL);
-- --- END op 10579

-- --- BEGIN op 10580 ( create regular_expression "Mindus" )
INSERT INTO regular_expressions (name, pattern, regex101_id, description) VALUES ('Mindus', '^(Mindus)$', NULL, NULL);
-- --- END op 10580

-- --- BEGIN op 10581 ( create regular_expression "SUBARU" )
INSERT INTO regular_expressions (name, pattern, regex101_id, description) VALUES ('SUBARU', '^(SUBARU)$', NULL, NULL);
-- --- END op 10581

-- --- BEGIN op 10582 ( create regular_expression "W33BSHiT" )
INSERT INTO regular_expressions (name, pattern, regex101_id, description) VALUES ('W33BSHiT', '^(W33BSHiT)$', NULL, NULL);
-- --- END op 10582

-- --- BEGIN op 10583 ( create regular_expression "AST4u" )
INSERT INTO regular_expressions (name, pattern, regex101_id, description) VALUES ('AST4u', '^(AST4u)$', NULL, NULL);
-- --- END op 10583

-- --- BEGIN op 10584 ( create regular_expression "HiSHiRO" )
INSERT INTO regular_expressions (name, pattern, regex101_id, description) VALUES ('HiSHiRO', '^(HiSHiRO)$', NULL, NULL);
-- --- END op 10584

-- --- BEGIN op 10585 ( create regular_expression "Lynacchi" )
INSERT INTO regular_expressions (name, pattern, regex101_id, description) VALUES ('Lynacchi', '^(Lynacchi)$', NULL, NULL);
-- --- END op 10585

-- --- BEGIN op 10586 ( create regular_expression "Tanuki" )
INSERT INTO regular_expressions (name, pattern, regex101_id, description) VALUES ('Tanuki', '^(Tanuki)$', NULL, NULL);
-- --- END op 10586

-- --- BEGIN op 10587 ( create regular_expression "MELD" )
INSERT INTO regular_expressions (name, pattern, regex101_id, description) VALUES ('MELD', '^(MELD)$', NULL, NULL);
-- --- END op 10587

-- --- BEGIN op 10588 ( create regular_expression "Otaku" )
INSERT INTO regular_expressions (name, pattern, regex101_id, description) VALUES ('Otaku', '^(Otaku)$', NULL, NULL);
-- --- END op 10588

-- ============================================================================
-- CUSTOM FORMATS + CONDITIONS
-- ============================================================================

-- --- BEGIN op 10589 ( create custom_format "German Anime Bluray Tier 01" )
INSERT INTO custom_formats (name, description, include_in_rename) VALUES ('German Anime Bluray Tier 01', '**German Anime Bluray Tier 01**

- WiP
- German Anime Bluray release groups – Tier 01.', 0);

INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required) VALUES ('German Anime Bluray Tier 01', 'Baka', 'release_group', 'sonarr', 0, 0);
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required) VALUES ('German Anime Bluray Tier 01', 'Pudding-sama', 'release_group', 'sonarr', 0, 0);
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required) VALUES ('German Anime Bluray Tier 01', 'RTemp', 'release_group', 'sonarr', 0, 0);
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required) VALUES ('German Anime Bluray Tier 01', 'snk (Anime)', 'release_group', 'sonarr', 0, 0);
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required) VALUES ('German Anime Bluray Tier 01', 'Ainz', 'release_group', 'sonarr', 0, 0);
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required) VALUES ('German Anime Bluray Tier 01', 'TvR', 'release_group', 'sonarr', 0, 0);
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required) VALUES ('German Anime Bluray Tier 01', 'Fuuko', 'release_group', 'sonarr', 0, 0);
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required) VALUES ('German Anime Bluray Tier 01', 'AO (Anime)', 'release_group', 'sonarr', 0, 0);
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required) VALUES ('German Anime Bluray Tier 01', 'CNY', 'release_group', 'sonarr', 0, 0);
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required) VALUES ('German Anime Bluray Tier 01', 'FumoFriday', 'release_group', 'sonarr', 0, 0);
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required) VALUES ('German Anime Bluray Tier 01', 'Waechter', 'release_group', 'sonarr', 0, 0);
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required) VALUES ('German Anime Bluray Tier 01', 'GP (Anime)', 'release_group', 'sonarr', 0, 0);
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required) VALUES ('German Anime Bluray Tier 01', 'Bluray', 'source', 'sonarr', 0, 1);
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required) VALUES ('German Anime Bluray Tier 01', 'Not REMUX', 'source', 'sonarr', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Anime Bluray Tier 01', 'Baka', 'Baka');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Anime Bluray Tier 01', 'Pudding-sama', 'Pudding-sama');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Anime Bluray Tier 01', 'RTemp', 'RTemp');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Anime Bluray Tier 01', 'snk (Anime)', 'snk (Anime)');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Anime Bluray Tier 01', 'Ainz', 'Ainz');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Anime Bluray Tier 01', 'TvR', 'TvR');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Anime Bluray Tier 01', 'Fuuko', 'Fuuko');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Anime Bluray Tier 01', 'AO (Anime)', 'AO (Anime)');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Anime Bluray Tier 01', 'CNY', 'CNY');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Anime Bluray Tier 01', 'FumoFriday', 'FumoFriday');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Anime Bluray Tier 01', 'Waechter', 'Waechter');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Anime Bluray Tier 01', 'GP (Anime)', 'GP (Anime)');

INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('German Anime Bluray Tier 01', 'Bluray', 'bluray');
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('German Anime Bluray Tier 01', 'Not REMUX', 'bluray_raw');
-- --- END op 10589

-- --- BEGIN op 10590 ( create custom_format "German Anime Bluray Tier 02" )
INSERT INTO custom_formats (name, description, include_in_rename) VALUES ('German Anime Bluray Tier 02', '**German Anime Bluray Tier 02**

- WiP
- German Anime Bluray release groups – Tier 02.', 0);

INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required) VALUES ('German Anime Bluray Tier 02', 'ABJ (Sonarr)', 'release_group', 'sonarr', 0, 0);
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required) VALUES ('German Anime Bluray Tier 02', 'DRiFTKiNG (Sonarr)', 'release_group', 'sonarr', 0, 0);
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required) VALUES ('German Anime Bluray Tier 02', 'VECTOR', 'release_group', 'sonarr', 0, 0);
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required) VALUES ('German Anime Bluray Tier 02', 'ZeroTwo', 'release_group', 'sonarr', 0, 0);
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required) VALUES ('German Anime Bluray Tier 02', 'ZeroTwo Aliases (Anime)', 'release_group', 'sonarr', 0, 0);
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required) VALUES ('German Anime Bluray Tier 02', 'SiXTYNiNE (Sonarr)', 'release_group', 'sonarr', 0, 0);
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required) VALUES ('German Anime Bluray Tier 02', 'PHM', 'release_group', 'sonarr', 0, 0);
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required) VALUES ('German Anime Bluray Tier 02', 'Bluray', 'source', 'sonarr', 0, 1);
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required) VALUES ('German Anime Bluray Tier 02', 'Not REMUX', 'source', 'sonarr', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Anime Bluray Tier 02', 'ABJ (Sonarr)', 'ABJ (Sonarr)');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Anime Bluray Tier 02', 'DRiFTKiNG (Sonarr)', 'DRiFTKiNG (Sonarr)');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Anime Bluray Tier 02', 'VECTOR', 'VECTOR');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Anime Bluray Tier 02', 'ZeroTwo', 'ZeroTwo');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Anime Bluray Tier 02', 'ZeroTwo Aliases (Anime)', 'ZeroTwo Aliases (Anime)');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Anime Bluray Tier 02', 'SiXTYNiNE (Sonarr)', 'SiXTYNiNE (Sonarr)');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Anime Bluray Tier 02', 'PHM', 'PHM');

INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('German Anime Bluray Tier 02', 'Bluray', 'bluray');
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('German Anime Bluray Tier 02', 'Not REMUX', 'bluray_raw');
-- --- END op 10590

-- --- BEGIN op 10591 ( create custom_format "German Anime Bluray Tier 03" )
INSERT INTO custom_formats (name, description, include_in_rename) VALUES ('German Anime Bluray Tier 03', '**German Anime Bluray Tier 03**

- WiP
- German Anime Bluray release groups – Tier 03.', 0);

INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required) VALUES ('German Anime Bluray Tier 03', 'SUBARU', 'release_group', 'sonarr', 0, 0);
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required) VALUES ('German Anime Bluray Tier 03', 'ATAX', 'release_group', 'sonarr', 0, 0);
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required) VALUES ('German Anime Bluray Tier 03', 'HDC', 'release_group', 'sonarr', 0, 0);
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required) VALUES ('German Anime Bluray Tier 03', 'Mindus', 'release_group', 'sonarr', 0, 0);
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required) VALUES ('German Anime Bluray Tier 03', '4Baka', 'release_group', 'sonarr', 0, 0);
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required) VALUES ('German Anime Bluray Tier 03', 'W33BSHiT', 'release_group', 'sonarr', 0, 0);
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required) VALUES ('German Anime Bluray Tier 03', 'AST4u', 'release_group', 'sonarr', 0, 0);
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required) VALUES ('German Anime Bluray Tier 03', 'Bluray', 'source', 'sonarr', 0, 1);
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required) VALUES ('German Anime Bluray Tier 03', 'Not REMUX', 'source', 'sonarr', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Anime Bluray Tier 03', 'SUBARU', 'SUBARU');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Anime Bluray Tier 03', 'ATAX', 'ATAX');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Anime Bluray Tier 03', 'HDC', 'HDC');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Anime Bluray Tier 03', 'Mindus', 'Mindus');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Anime Bluray Tier 03', '4Baka', '4Baka');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Anime Bluray Tier 03', 'W33BSHiT', 'W33BSHiT');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Anime Bluray Tier 03', 'AST4u', 'AST4u');

INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('German Anime Bluray Tier 03', 'Bluray', 'bluray');
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('German Anime Bluray Tier 03', 'Not REMUX', 'bluray_raw');
-- --- END op 10591

-- --- BEGIN op 10592 ( create custom_format "German Anime Web Tier 01" )
INSERT INTO custom_formats (name, description, include_in_rename) VALUES ('German Anime Web Tier 01', '**German Anime Web Tier 01**

- WiP
- German Anime Web release groups – Tier 01.', 0);

INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required) VALUES ('German Anime Web Tier 01', 'Baka', 'release_group', 'sonarr', 0, 0);
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required) VALUES ('German Anime Web Tier 01', 'Pudding-sama', 'release_group', 'sonarr', 0, 0);
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required) VALUES ('German Anime Web Tier 01', 'RTemp', 'release_group', 'sonarr', 0, 0);
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required) VALUES ('German Anime Web Tier 01', 'snk (Anime)', 'release_group', 'sonarr', 0, 0);
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required) VALUES ('German Anime Web Tier 01', 'Ainz', 'release_group', 'sonarr', 0, 0);
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required) VALUES ('German Anime Web Tier 01', 'TvR', 'release_group', 'sonarr', 0, 0);
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required) VALUES ('German Anime Web Tier 01', 'Tanuki', 'release_group', 'sonarr', 0, 0);
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required) VALUES ('German Anime Web Tier 01', 'HiSHiRO', 'release_group', 'sonarr', 0, 0);
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required) VALUES ('German Anime Web Tier 01', 'WeebPinn', 'release_group', 'sonarr', 0, 0);
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required) VALUES ('German Anime Web Tier 01', 'Lynacchi', 'release_group', 'sonarr', 0, 0);
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required) VALUES ('German Anime Web Tier 01', 'WebDL', 'source', 'sonarr', 0, 0);
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required) VALUES ('German Anime Web Tier 01', 'WebRip', 'source', 'sonarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Anime Web Tier 01', 'Baka', 'Baka');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Anime Web Tier 01', 'Pudding-sama', 'Pudding-sama');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Anime Web Tier 01', 'RTemp', 'RTemp');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Anime Web Tier 01', 'snk (Anime)', 'snk (Anime)');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Anime Web Tier 01', 'Ainz', 'Ainz');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Anime Web Tier 01', 'TvR', 'TvR');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Anime Web Tier 01', 'Tanuki', 'Tanuki');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Anime Web Tier 01', 'HiSHiRO', 'HiSHiRO');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Anime Web Tier 01', 'WeebPinn', 'WeebPinn');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Anime Web Tier 01', 'Lynacchi', 'Lynacchi');

INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('German Anime Web Tier 01', 'WebDL', 'web_dl');
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('German Anime Web Tier 01', 'WebRip', 'webrip');
-- --- END op 10592

-- --- BEGIN op 10593 ( create custom_format "German Anime Web Tier 02" )
INSERT INTO custom_formats (name, description, include_in_rename) VALUES ('German Anime Web Tier 02', '**German Anime Web Tier 02**

- WiP
- German Anime Web release groups – Tier 02.', 0);

INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required) VALUES ('German Anime Web Tier 02', 'ABJ (Sonarr)', 'release_group', 'sonarr', 0, 0);
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required) VALUES ('German Anime Web Tier 02', 'DRiFTKiNG (Sonarr)', 'release_group', 'sonarr', 0, 0);
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required) VALUES ('German Anime Web Tier 02', 'VECTOR', 'release_group', 'sonarr', 0, 0);
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required) VALUES ('German Anime Web Tier 02', 'ZeroTwo', 'release_group', 'sonarr', 0, 0);
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required) VALUES ('German Anime Web Tier 02', 'ZeroTwo Aliases (Anime)', 'release_group', 'sonarr', 0, 0);
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required) VALUES ('German Anime Web Tier 02', 'SiXTYNiNE (Sonarr)', 'release_group', 'sonarr', 0, 0);
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required) VALUES ('German Anime Web Tier 02', 'AO (Anime)', 'release_group', 'sonarr', 0, 0);
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required) VALUES ('German Anime Web Tier 02', 'MELD', 'release_group', 'sonarr', 0, 0);
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required) VALUES ('German Anime Web Tier 02', 'WebDL', 'source', 'sonarr', 0, 0);
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required) VALUES ('German Anime Web Tier 02', 'WebRip', 'source', 'sonarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Anime Web Tier 02', 'ABJ (Sonarr)', 'ABJ (Sonarr)');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Anime Web Tier 02', 'DRiFTKiNG (Sonarr)', 'DRiFTKiNG (Sonarr)');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Anime Web Tier 02', 'VECTOR', 'VECTOR');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Anime Web Tier 02', 'ZeroTwo', 'ZeroTwo');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Anime Web Tier 02', 'ZeroTwo Aliases (Anime)', 'ZeroTwo Aliases (Anime)');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Anime Web Tier 02', 'SiXTYNiNE (Sonarr)', 'SiXTYNiNE (Sonarr)');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Anime Web Tier 02', 'AO (Anime)', 'AO (Anime)');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Anime Web Tier 02', 'MELD', 'MELD');

INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('German Anime Web Tier 02', 'WebDL', 'web_dl');
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('German Anime Web Tier 02', 'WebRip', 'webrip');
-- --- END op 10593

-- --- BEGIN op 10594 ( create custom_format "German Anime Web Tier 03" )
INSERT INTO custom_formats (name, description, include_in_rename) VALUES ('German Anime Web Tier 03', '**German Anime Web Tier 03**

- WiP
- German Anime Web release groups – Tier 03.', 0);

INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required) VALUES ('German Anime Web Tier 03', 'SUBARU', 'release_group', 'sonarr', 0, 0);
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required) VALUES ('German Anime Web Tier 03', 'ATAX', 'release_group', 'sonarr', 0, 0);
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required) VALUES ('German Anime Web Tier 03', 'HDC', 'release_group', 'sonarr', 0, 0);
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required) VALUES ('German Anime Web Tier 03', 'Mindus', 'release_group', 'sonarr', 0, 0);
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required) VALUES ('German Anime Web Tier 03', 'W33BSHiT', 'release_group', 'sonarr', 0, 0);
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required) VALUES ('German Anime Web Tier 03', 'Fuuko', 'release_group', 'sonarr', 0, 0);
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required) VALUES ('German Anime Web Tier 03', 'Waechter', 'release_group', 'sonarr', 0, 0);
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required) VALUES ('German Anime Web Tier 03', 'Otaku', 'release_group', 'sonarr', 0, 0);
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required) VALUES ('German Anime Web Tier 03', '4Baka', 'release_group', 'sonarr', 0, 0);
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required) VALUES ('German Anime Web Tier 03', 'WebDL', 'source', 'sonarr', 0, 0);
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required) VALUES ('German Anime Web Tier 03', 'WebRip', 'source', 'sonarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Anime Web Tier 03', 'SUBARU', 'SUBARU');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Anime Web Tier 03', 'ATAX', 'ATAX');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Anime Web Tier 03', 'HDC', 'HDC');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Anime Web Tier 03', 'Mindus', 'Mindus');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Anime Web Tier 03', 'W33BSHiT', 'W33BSHiT');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Anime Web Tier 03', 'Fuuko', 'Fuuko');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Anime Web Tier 03', 'Waechter', 'Waechter');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Anime Web Tier 03', 'Otaku', 'Otaku');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Anime Web Tier 03', '4Baka', '4Baka');

INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('German Anime Web Tier 03', 'WebDL', 'web_dl');
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('German Anime Web Tier 03', 'WebRip', 'webrip');
-- --- END op 10594
