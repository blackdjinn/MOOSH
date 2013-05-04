with Ada.Text_IO; use Ada.Text_IO;
with NetConnect;
with Logger;

procedure moosh is
begin
   Logger.Log("MOOSH running.");
   NetConnect.Testr;
   Logger.Log("MOOSH closing.");
end moosh;
