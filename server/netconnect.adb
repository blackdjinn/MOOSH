with GNAT.Sockets; use GNAT.Sockets;
with Logger;
package body NetConnect is
   procedure Testr is
   begin
      Logger.Log(Image(Addresses(Get_Host_By_Name("localhost"))));
   end Testr;
end NetConnect;
