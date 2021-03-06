unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, CalculationBaseClass,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client;

type
  MyClass = class of CalculationBase;
  TForm1 = class(TForm)
    val_1B, val_2B, val_3B, val_4B, val_5B, val_6B, val_7B, val_8B, val_9B, val_0B: TButton;
    point: TButton;
    equals: TButton;
    Sum: TButton;
    Sub: TButton;
    Multiply: TButton;
    Divide: TButton;
    Edit1: TEdit;
    ClearB: TButton;
    procedure OperationClick(Sender: TObject);
    procedure valueButtonClick(Sender: TObject);
    procedure equalsClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ClearBClick(Sender: TObject);
    procedure pointClick(Sender: TObject);
    procedure SubClick(Sender: TObject);
  private
    procedure PressNum(currButton: TButton);
    procedure PressOperation(currButton: TButton);
    procedure SetOperationActive();
  end;

var
  Form1: TForm1;
  currVal1, currVal2 : Double;
  isOperationActive: Boolean;
  currOperation: char;
  pressedButton: string;
  OPersistent : TPersistent;

implementation

{$R *.dfm}

procedure TForm1.OperationClick(Sender: TObject);
begin
  PressOperation(Sender as TButton);
end;

procedure TForm1.pointClick(Sender: TObject);
begin
    var i, count: integer;
    count:= 0;
    for i := 1 to Length(Edit1.Text) do
      if Edit1.Text[i] = ',' then inc(count);
    if count < 1 then
    PressNum(Sender as TButton);
end;

procedure TForm1.PressNum(currButton: TButton);
begin
    Edit1.Text:= Edit1.Text + currButton.Caption;
    if Edit1.Text<> '-' then begin
    if isOperationActive = false then
    begin
    currVal1:= StrToFloat(Edit1.Text);
    end
    else if isOperationActive then
    currVal2:= StrToFloat(Edit1.Text);
    end;
end;

procedure TForm1.SetOperationActive;
begin
    isOperationActive := not  isOperationActive;
end;

procedure TForm1.PressOperation(currButton: TButton);
begin
    var operation: char;
    operation:= currButton.Caption[1];
    SetOperationActive();
    currOperation:= operation;
    Edit1.Text:= '';
    pressedButton:= currButton.Name;
end;

procedure TForm1.valueButtonClick(Sender: TObject);
begin
    PressNum(Sender as TButton);
end;

procedure TForm1.ClearBClick(Sender: TObject);
begin
    Edit1.Text:= '';
    isOperationActive:= false;
end;

procedure TForm1.equalsClick(Sender: TObject);
var
// psql ??????? ??? ??????? ?????? (??? ?????? ??? ?????????? ????????) ?????????? ?????? (mysql)
// heidySQL ??? sql.
// HTTP ???????. ???? HTTP ?????? ? ???? Client (???????? ? Delphi)
// ????????? ?????????? (???? ??? ????? ID ??????) (?????????? ???????)
// ????????? ?????? ??? ????????????? ?? (??? ???????) ?????? ???????? ??????? ? ??????
cClass: TPersistentClass;
begin
      cClass := GetClass('T'+pressedButton);
      SetOperationActive();
      if cClass <> nil then
      with MyClass(cClass).Create(currVal1, currVal2)  do
        begin
          Edit1.Text:= Operation().ToString();
          currVal1:= Operation();
        end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
    isOperationActive:= false;
end;

procedure TForm1.SubClick(Sender: TObject);
begin
    var i, count: integer;
    var flag: boolean;
    count:= 0;
    flag:= false;
    if (Length(Edit1.Text)>0) or ((Edit1.Text <> '') and (Edit1.Text[1] = '-'))
    then flag:= true;
    if not flag then begin
      PressNum(Sender as TButton);
    end
    else begin
      PressOperation(Sender as TButton);
    end;
end;
end.
end.
