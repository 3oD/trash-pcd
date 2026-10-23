-- @operation: export
-- @entity: batch
-- @name: Delete Unused Regex
-- @exportedAt: 2026-10-16T19:24:35.909Z
-- @opIds: 15081

-- --- BEGIN op 15081 ( delete regular_expression "FAND" )
delete from "regular_expressions" where "name" = 'FAND';
-- --- END op 15081
