unit CalculationBaseClass;

interface

uses Classes, SysUtils;

type
//  наследовать от TPersistant,
//  зарегистрировать класс (конструктор\деструктор) дочерних классов.
//  К модулю с расчетом не должен быть подключен класс с расчетами.
//  По имени класса создать экземпляр. 1 переменная для создания класса
//  (в ней объект)

  CalculationBase = class(TPersistent)
  public
    //procedure Assign(Source: TPersistent); override;
    constructor Create(aV, bV: Double); overload;
    function Operation: Double; virtual;
  protected
    a, b: Double;
    property AValue: Double read a write a;
    property BValue: Double read b write b;


  end;

implementation
  constructor CalculationBase.Create(aV: Double; bV: Double);
  begin

    a:= aV;
    b:= bV;
  end;

function CalculationBase.Operation: Double;
begin

end;

end.


