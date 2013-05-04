-- Logging package. Eventually support different backends.
--
package Logger is
   type Priority is (Info, Warning, Error, Fatal, Debug, Anal);
   procedure Log (message : String ); -- defaults to 'Info'
   --procedure Log (pri: Priority; message: String;);
   --procedure Log_Target_File (filename: String;);
end Logger;
