CREATE OR REPLACE TRIGGER trg_pdb_startup_db
   AFTER STARTUP
   ON DATABASE
BEGIN
   EXECUTE IMMEDIATE 'ALTER PLUGGABLE DATABASE ALL OPEN';
END;
