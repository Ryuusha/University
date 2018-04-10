unit UCVector;

interface
uses SysUtils;
const
  MaxE=1024;
type
  ConjuntoElelmentos=Array[1..MaxE] of Integer;
  //CEMVector=Class(Exception);
  CVector = Class
Private
  N :Word;
  Elelmentos:ConjuntoElementos;
Public
  Constructor Crear;
  Procedure Dimencionar(Dim:Word);
  Procedure Poner(Pos:Word;Elemento:Integer);
  Function Elemento(Pos:Word):Integer;
  Function Dimension:Word;
  Function ComoString:String;
  End;
implementation
Constructor CVector.Crear;
begin
  N:=0;
end;
Procedure CVector.Dimencionar(Dim: Word);
begin
  if Dim<=MaxE then
  n:=Dim;
end;
Procedure CVector.Poner(Pos: Word; Elemento: Integer);
begin
  if (Pos>0) and (pos<=N) then
    Elemento[Pos]=Elemento
    else Writeln('Indice fuera de rango');
end;
Function CVector.Dimension:Word;
begin
  Dimension:=N;
end;
Function CVector.Elemento;
begin
  result:=N;
end;
Function CVector.ComoString:String;
var s:String;i:Integer;
begin
  s:='';
  for i:=1 to N do
    s:=s+InttoStr(Elemento(CVector.Dimension[i]))+'';
end;

end.
