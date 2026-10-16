-- @operation: export
-- @entity: batch
-- @name: Fix SoCFoI + CM4v Regex
-- @exportedAt: 2026-10-16T19:25:32.429Z
-- @opIds: 15086

-- --- BEGIN op 15086 ( update regular_expression "SiCFoI + CM4v" )
update "regular_expressions" set "pattern" = '^(?=.*\b(CMv4)\b).*\b(SiCFoI)\b' where "name" = 'SiCFoI + CM4v' and "pattern" = '(?=.*\b(CMv4)\b).*\b(SiCFoI)\b';
-- --- END op 15086
