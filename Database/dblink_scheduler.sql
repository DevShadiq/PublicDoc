declare
        	s varchar2(32767) := '{ "a": 1, "b": ["hello", "world"]}';
    	begin
        	apex_json.parse(s);
        	sys.dbms_output.put_line('a is '||apex_json.get_varchar2(p_path => 'a'));
        	sys.dbms_output.put_line('a is '||apex_json.get_varchar2(p_path => 'b[1]'));
        	sys.dbms_output.put_line('a is '||apex_json.get_varchar2(p_path => 'b[2]'));
end;



select ID, NAME,CLASS
    	from xmltable (
        	'/json/row'
        	passing apex_json.to_xmltype('[{"ID": 1, "NAME": "ZAMAN", "CLASS": "9"},{"ID": 2, "NAME": "TAREK","CLASS":10},{"ID": 3, "NAME": "AMIN","CLASS":10}]')
        	columns
            	ID number path '/row/ID',
            	NAME varchar2(5) path '/row/NAME',
            	CLASS NUMBER path '/row/CLASS'
             	);





begin
dbms_scheduler.create_job (
   job_name           =>  'job_gbl_mail_insp',
   job_type           =>  'PLSQL_BLOCK',
   job_action         =>  'BEGIN
                             pkg_gbl_mail.inspection_pass_mail(1);
                            END;',
   start_date         =>  '07-aug-2023 04:50:00 pm',
   repeat_interval    =>  'freq=minutely; interval=1; byhour=16;BYMINUTE=50; byday=SAT,SUN,MON,TUE,WED,THU,FRI;',
   enabled            =>  true);
end;
