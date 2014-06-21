-- Logging package. Eventually support different backends.
--
with Ada.Text_IO; use Ada.Text_IO;
package body Logger is
   procedure Log (message : String ) is -- defaults to 'Info'
   begin
      Log(Info,message);
   end Log;
   
   procedure Log (pri: Priority; message: String) is
   begin
      Put_Line (Priority_String(pri) & " " & ISOdate & "| " & message);
   end Log;
   --procedure Log_Target_File (filename: String;);

   function ISOdate return String is
   begin
      return "0000000000.00";
   end ISOdate;

   function Priority_String (pri: Priority) return String is
   begin
      case pri is
         when Info    => return "Inf";
         when Warning => return "Wrn";
         when Error   => return "ERR";
         when Fatal   => return "FTL";
         when Debug   => return "Dbg";
         when Anal    => return "Anl";
         when otthers => return "???";
      end case;
   end Priority_String;

end Logger;
