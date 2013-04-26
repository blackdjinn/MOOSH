with Ada.Text_IO; use Ada.Text_IO;
with NetConnect;
procedure moosh is
begin
   Put_Line ("MOOSH running.");
   NetConnect.Testr;
end moosh;
