/* Formatted on 10/24/2023 1:54:29 AM (QP5 v5.227.12220.39754) */
--Create a function to check palindrome--

CREATE OR REPLACE FUNCTION f_str_check (v_string IN VARCHAR2)
   RETURN VARCHAR2
IS
   v_letter           VARCHAR2 (40);
   v_reverse_string   VARCHAR2 (20);
   v_result           VARCHAR2 (200);
BEGIN
   FOR i IN REVERSE 1 .. LENGTH (TRIM (v_string))
   LOOP
      v_letter := SUBSTR (v_string, i, 1);
      v_reverse_string := v_reverse_string || '' || v_letter;
   END LOOP;

   IF v_reverse_string = v_string
   THEN
      v_result := (v_reverse_string || '' || ' is palindrome');
   ELSE
      v_result := (v_reverse_string || '' || ' is not palindrome');
   END IF;

   RETURN v_result;
END;
/

--Query and Check--

SELECT f_str_check ('fdgd') Palindrome FROM DUAL;
/


---PLSQL Annonymous block---

DECLARE
   v_string           VARCHAR2 (20) := 'tenet';
   v_letter           VARCHAR2 (40);
   v_reverse_string   VARCHAR2 (20);
BEGIN
   FOR i IN REVERSE 1 .. LENGTH (TRIM (v_string))
   LOOP
      v_letter := SUBSTR (v_string, i, 1);
      v_reverse_string := v_reverse_string || '' || v_letter;
   END LOOP;

   IF v_reverse_string = v_string
   THEN
      DBMS_OUTPUT.Put_line (v_reverse_string || '' || ' is palindrome');
   ELSE
      DBMS_OUTPUT.Put_line (v_reverse_string || '' || ' is not palindrome');
   END IF;
END;
/