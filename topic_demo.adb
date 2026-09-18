pragma Ada_2022;
with Ada.Finalization;
package body Topic_Demo is
   Initialize_Count : Natural := 0;
   Finalize_Count   : Natural := 0;
   type Probe is new Ada.Finalization.Controlled with null record;
   overriding procedure Initialize (Object : in out Probe);
   overriding procedure Finalize (Object : in out Probe);
   procedure Initialize (Object : in out Probe) is
   begin
      Initialize_Count := Initialize_Count + 1;
   end Initialize;
   procedure Finalize (Object : in out Probe) is
   begin
      Finalize_Count := Finalize_Count + 1;
   end Finalize;
   function Available return Boolean is
   begin
      Initialize_Count := 0;
      Finalize_Count := 0;
      declare
         P : Probe;
         pragma Unreferenced (P);
      begin
         null;
      end;
      return Initialize_Count = 1 and then Finalize_Count = 1;
   end Available;
end Topic_Demo;
