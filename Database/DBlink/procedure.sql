/* Formatted on 10/4/2023 2:40:22 PM (QP5 v5.227.12220.39754) */
CREATE OR REPLACE PROCEDURE retrieve_data_from_source
AS
BEGIN
   DECLARE
      v_oldpk   NUMBER;

      CURSOR mp
      IS
         SELECT employee_id,
                first_name,
                last_name,
                email,
                hire_date,
                job_id,
                salary
           FROM employees@hrdb a
          WHERE NOT EXISTS
                   (SELECT *
                      FROM emp b
                     WHERE b.employee_id = a.employee_id);

   BEGIN
      FOR x IN mp
      LOOP
         INSERT INTO emp (employee_id,
                          first_name,
                          last_name,
                          email,
                          hire_date,
                          job_id,
                          salary)
              VALUES (x.employee_id,
                      x.first_name,
                      x.last_name,
                      x.email,
                      x.hire_date,
                      x.job_id,
                      x.salary);
      END LOOP;
   END;
END;
/