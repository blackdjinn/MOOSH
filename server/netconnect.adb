with GNAT.Sockets; use GNAT.Sockets;
with Ada.Text_IO; use Ada.Text_IO;
package body NetConnect is
   procedure Testr is
   begin
      Put_Line(Image(Addresses(Get_Host_By_Name("localhost"))));
   end Testr;
end NetConnect;
