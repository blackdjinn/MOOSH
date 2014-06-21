-- Logging package. Eventually support different backends.
--
with Ada.Text_IO; use Ada.Text_IO;
with GNAT.Time_Stamp; use GNAT.Time_Stamp;
package body Logger is

   function Priority_String (pri: Priority) return String is
   begin
      case pri is
         when Info    => return "Inf";
         when Warning => return "Wrn";
         when Error   => return "ERR";
         when Fatal   => return "FTL";
         when Debug   => return "Dbg";
         when Anal    => return "Anl";
         when others  => return "???"; -- This should never happen.
      end case;
   end Priority_String;

   procedure Log (message : String ) is -- defaults to 'Info'
   begin
      Log(Info,message);
   end Log;
   
   procedure Log (pri: Priority; message: String) is
   begin
      Put_Line (Priority_String(pri) & " " & Current_Time & "| " & message);
   end Log;
   --procedure Log_Target_File (filename: String;);
end Logger;
