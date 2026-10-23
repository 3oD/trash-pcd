-- @operation: export
-- @entity: batch
-- @name: Fix unlimited quality definitions (max_size 0 = Unlimited)

-- Profilarr represents "Unlimited" as max_size = 0. The *arr ceiling values
-- (Radarr 2000 / Sonarr 1000) are reported back as Unlimited and cause permanent drift.
UPDATE radarr_quality_definitions SET max_size = 0 WHERE max_size = 2000;
UPDATE sonarr_quality_definitions SET max_size = 0 WHERE max_size = 1000;
