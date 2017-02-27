{********************************************************************}
{ THTMLPopup component                                               }
{ for Delphi & C++Builder                                            }
{                                                                    }
{ written by TMS Software                                            }
{            copyright � 2001 - 2012                                 }
{            Email : info@tmssoftware.com                            }
{            Web : http://www.tmssoftware.com                        }
{********************************************************************}

unit htmlpopupregde;

interface

{$I TMSDEFS.INC}

uses
  Classes, HTMLPopup, HTMLDE, DesignIntf, DesignEditors;


procedure Register;

implementation

procedure Register;
begin
  RegisterPropertyEditor(TypeInfo(TStringList), THTMLPopup, 'Text', THTMLTextProperty);
end;



end.

