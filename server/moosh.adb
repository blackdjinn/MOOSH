with NetConnect;
with Logger; use Logger;


procedure moosh is
begin
   Log("MOOSH running.");
   NetConnect.Testr;
   Log("MOOSH closing.");
end moosh;
