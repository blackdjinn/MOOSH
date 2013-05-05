--with Ada.Unbounded_Strings;
package body B32Integer is

   type b32Char is (
      '0', '1', '2', '3', '4', '5', '6', '7', '8', '9',
      'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'J', 'K',
      'M', 'N', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W',
      'X', 'Y');


   function Charval(C:Character) return b32U is
      S:String(1..1);
   begin
      S(1):=C;
      case C is
         when 'I' | 'i' | 'L' | 'l' => return 1;
         when '0'..'9' => return b32Char'Pos(B32Char'Value(S));
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
