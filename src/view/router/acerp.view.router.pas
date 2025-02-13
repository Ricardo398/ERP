unit acerp.view.router;

interface

type
    TRouter = class
    private
      constructor Create;
      destructor Destroy; override;
    public
      class function New: TRouter;
    end;

 var
  Router: Trouter;

implementation

uses
  Router4D;

{ TRouter }

constructor TRouter.Create;
begin
  TRouter4D
    .Switch
    .Router('Home',);
end;

destructor TRouter.Destroy;
begin

  inherited;
end;

class function TRouter.New: TRouter;
begin
  Result := Self.Create;
end;

initialization
  Router := Trouter.New;

finalization
  Router.Free;

end.
