with NetConnect;
with Logger; use Logger;
with B32Integer;
with b32_IO; use b32_IO;


procedure moosh is
begin
   Log("MOOSH running.");
   NetConnect.Testr;
   Log(B32Integer.Format(135));
   Put(B32Integer.Charval('3'));
   Put(B32Integer.Charval('C'));
   Put(B32Integer.Charval('X'));
   Log("MOOSH closing.");
end moosh;
