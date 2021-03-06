Unit UJuego;

interface
uses sysutils,graphics,dialogs;
const
	pared =1;
	camino=0;

type
  Cjuego = class
  private
    M : array[1..50,1..50] of integer;
    Nf,Nc,bx,by : integer;
      pantX,pantY : integer;
    dimpieza : integer;
    Bicho : integer;
  public
    constructor crear;
    procedure cargar;
    procedure dibujarpieza(f,c : integer; Pant :  Tcanvas);
    procedure DibujarPlano(Pant : Tcanvas);
    procedure MoverDerecha(Pant : Tcanvas);
    procedure MoverIzquierda(Pant : Tcanvas);
    procedure MoverArriba(Pant : Tcanvas);
    procedure MoverAbajo(Pant : Tcanvas);
    function escamino(f,c : integer) : boolean;
end;

implementation
  constructor Cjuego.crear;
  begin
    Nf:=0;
    Nc:=0;
  end;

  procedure Cjuego.cargar;
    procedure llenar(f:integer; s:string);
    var
    c : integer;
    begin
      for c := 1 to length(s) do
       M[f,c]:=strtoint(s[c]);
    end;
  begin
    Nf:=4;
    Nc:=4;
    llenar(1,'1111');
    llenar(2,'1001');
    llenar(3,'1201');
    llenar(4,'1111');
    bx:=2;
    by:=3;
  end;


  /// Posx = Cx + (c-1)*tamano
  /// Posy = Cy + (f-1)*tamano
  ///  tamano = tamano de la figura
  ///  Cx y Cy posiciones iniciales
  procedure Cjuego.dibujarpieza(f,c:integer; pant : Tcanvas);
  var
    xr,yr : integer;
    cod : integer;
    figura : tbitmap;
    archbmp : string;
  begin
    PANTX:=200;
    PANTY:=100;
    dimpieza:=50;
    xr:= pantx + (c-1)*dimpieza;
    yr:= panty + (f-1)*dimpieza;
    cod:=M[f,c];
    figura:= Tbitmap.Create;
    case cod of
    2 : archbmp:='C:\Users\Estudiante_2\Desktop/bicho.bmp';
    1 : archbmp:='C:\Users\Estudiante_2\Desktop/muro.bmp';
    0 : archbmp:='C:\Users\Estudiante_2\Desktop/piso.bmp';
    end;
    figura.LoadFromFile(archbmp);
    pant.Draw(xr,yr,figura);

    ///pant.TextOut(xr,yr,inttostr(cod));

  end;

  procedure Cjuego.DibujarPlano(Pant :  Tcanvas);
  var
   fi,co:integer;
  begin
    for FI := 1 to Nf do
      begin
        for Co := 1 to Nc do
          begin
            dibujarpieza(fi,co,pant);
          end;
      end;


  end;

  procedure Cjuego.MoverDerecha(Pant: TCanvas);
  begin

    if escamino(by,bx+1) then
    begin
    M[by,bx]:=camino;
    dibujarPieza(by,bx,pant);
    inc(bx);
    m[by,bx]:=2; //Bicho = 2
    dibujarPieza(by,bx,pant);
    end;
  end;

    procedure Cjuego.MoverIzquierda(Pant: TCanvas);
  begin
    if escamino(by,bx-1) then
    begin
    M[by,bx]:=camino;
    dibujarPieza(by,bx,pant);
    bx:=bx-1;
    m[by,bx]:=2; //Bicho = 2
    dibujarPieza(by,bx,pant);
    end;
  end;

  procedure Cjuego.MoverArriba(Pant: TCanvas);
  begin
    if escamino(by-1,bx) then
    begin
    M[by,bx]:=camino;
    dibujarPieza(by,bx,pant);
    by:=by-1;
    m[by,bx]:=2; //Bicho = 2
    dibujarPieza(by,bx,pant);
    end;
  end;

    procedure Cjuego.MoverAbajo(Pant: TCanvas);
  begin
    if escamino(by+1,bx) then
    begin
    M[by,bx]:=camino;
    dibujarPieza(by,bx,pant);
    by:=by+1;
    m[by,bx]:=2; //Bicho = 2
    dibujarPieza(by,bx,pant);
    end;
  end;

  function Cjuego.escamino(f,c : integer): boolean;
  begin
    escamino:=m[f,c] =0;
  end;

end.
