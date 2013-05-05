package B32Integer is
   subtype b32U is Integer range 0..16#7FFFFFFF#;
   function Charval(C:Character) return b32U;
   function Scan (S:String) return b32U;
   function Format (N:b32U) return String;
end B32Integer;
