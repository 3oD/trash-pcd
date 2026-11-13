-- @operation: export
-- @entity: batch
-- @name: Add English (Original) CF

-- English-only releases of English-original titles pass the minimum score of
-- [German] HD Bluray + WEB, but still rank below every German release.
INSERT INTO custom_formats (name, description, include_in_rename) VALUES ('English (Original)', '**Language: English (Original)**

Matches releases with English audio when English is the original language and no German audio is present. Allows English-only releases of English-original titles as a fallback, while German releases stay preferred.', 0);
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('English (Original)', 'Language Profiles');

INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required) VALUES ('English (Original)', 'English', 'language', 'all', 0, 1);
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required) VALUES ('English (Original)', 'Original Language', 'language', 'all', 0, 1);
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required) VALUES ('English (Original)', 'Not German', 'language', 'all', 1, 1);
INSERT INTO condition_languages (custom_format_name, condition_name, language_name, except_language) VALUES ('English (Original)', 'English', 'English', 0);
INSERT INTO condition_languages (custom_format_name, condition_name, language_name, except_language) VALUES ('English (Original)', 'Original Language', 'Original', 0);
INSERT INTO condition_languages (custom_format_name, condition_name, language_name, except_language) VALUES ('English (Original)', 'Not German', 'German', 0);

INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[German] HD Bluray + WEB', 'English (Original)', 'radarr', 9000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[German] HD Bluray + WEB', 'English (Original)', 'sonarr', 9000);

update "quality_profiles" set "minimum_custom_format_score" = 9000 where "name" = '[German] HD Bluray + WEB' and "minimum_custom_format_score" = 10000;
