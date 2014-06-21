with GNAT.Sockets; use GNAT.Sockets;
with Logger;
package body NetConnect is
   task type Listener is
      entry LogStatus;
      entry ListenForConnects (ListenOn : in Sock_Address_Type);
      entry Close;
   end Listener;

   task type body Listener is
      Address  : Sock_Addr_Type;
      Server   : Socket_Type;

   begin
      accept ListenForConnects (ListenOn : in Sock_Address_Type);
         Address := ListenOn
      
      accept LogStstus;
         Logger.Log("Listener LogStatus called");

      accept Close;
   end Listener;

   procedure Testr is
   begin
      Logger.Log(Image(Addresses(Get_Host_By_Name("localhost"))));
   end Testr;

   procedure Initialize is
   begin
      GNAT.Sockets.Initialize;
   end Initialize;

end NetConnect;
