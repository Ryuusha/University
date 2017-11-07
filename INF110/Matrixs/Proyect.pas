unit Proyect;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,UJuego;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
  private
    { Private declarations }
  public
     J : Cjuego;
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
 j:=Cjuego.crear;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  j.cargar;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
   j.dibujarplano(canvas);
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  j.MoverDerecha(canvas);
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
 j.MoverIzquierda(canvas);
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
 j.MoverAbajo(canvas);
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
 j.MoverArriba(canvas);
end;

end.
