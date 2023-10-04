BEGIN
   DBMS_SCHEDULER.create_job (
      job_name          => 'EMP_TRANSFER_DATA',
      job_type          => 'PLSQL_BLOCK',
      job_action        => 'BEGIN retrieve_data_from_source; END;',
      start_date        => SYSTIMESTAMP,
      repeat_interval   => 'FREQ=MINUTELY; INTERVAL=1',
      enabled           => TRUE);
END;
/


BEGIN
   retrieve_data_from_source;
END;
