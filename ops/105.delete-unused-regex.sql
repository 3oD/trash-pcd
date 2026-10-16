-- @operation: export
-- @entity: batch
-- @name: Delete Unused Regex
-- @exportedAt: 2026-10-16T19:24:29.837Z
-- @opIds: 15080

-- --- BEGIN op 15080 ( delete regular_expression "FAND" )
delete from "regular_expressions" where "name" = 'FAND';
-- --- END op 15080
