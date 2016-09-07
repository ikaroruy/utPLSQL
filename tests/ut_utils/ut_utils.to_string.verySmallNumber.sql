PROMPT Returns a full string representation of a very small number

--Arrange
declare
  l_value    number := 0.123456789012345678901234567890123456789;
  l_expected varchar2(100) := '.123456789012345678901234567890123456789';
  l_result   varchar2(100);
begin
--Act
  l_result :=  ut_utils.to_String(l_value);
--Assert
  if l_result = l_expected then
    :test_result := ut_utils.tr_success;
  else
    dbms_output.put_line('expected: '||l_expected||', got: '||l_result );
  end if;
end;
/
