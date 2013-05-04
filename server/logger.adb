-- Logging package. Eventually support different backends.
--
package body Logger is
   procedure Log (message : String; ) is -- defaults to 'Info'
      Tio.Put_Line ("Log>>"+message);
   end Log;
   --procedure Log (pri: Priority; message: String;);
   --procedure Log_Target_File (filename: String;);
end Logger;
