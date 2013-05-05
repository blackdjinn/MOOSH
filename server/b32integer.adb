--with Ada.Unbounded_Strings;
package body B32Integer is
   function Charval(C:Character) return b32U is
   begin
      case C is
         when 'I' | 'i' | 'L' | 'l' => return 1;
         when '0'..'9' => return Character'Pos(C) - Character'Pos('0');
         when 'A'..'H' => return Character'Pos(C) - Character'Pos('A')+ 10;
         when 'a'..'h' => return Character'Pos(C) - Character'Pos('A')+10;
         when others => return 200;
      end case;
   end Charval;

   function Scan (S:String) return b32U is
   begin
      return 0;
   end Scan;

   function Format (N:b32U) return String is
   begin
      return "FOO";
   end Format;
end B32Integer;
