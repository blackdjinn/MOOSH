-- Logging package. Eventually support different backends.
--
with Ada.Text_IO; use Ada.Text_IO;
package body Logger is
   procedure Log (message : String ) is -- defaults to 'Info'
   begin
      Put ("Log>> ");
      Put_Line (message);
   end Log;
   --procedure Log (pri: Priority; message: String;);
   --procedure Log_Target_File (filename: String;);
end Logger;
