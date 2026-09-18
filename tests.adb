pragma Ada_2022;
with Ada.Assertions; use Ada.Assertions;
with Ada.Text_IO; use Ada.Text_IO;
with Topic_Demo;
procedure Tests is
begin
   Assert (Topic_Demo.Available);
   Put_Line ("PASS package API demonstration");
end Tests;
