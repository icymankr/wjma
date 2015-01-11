unit ErrorCodes;

interface

uses
  SysUtils;

Const
  SE0001 : String = '아이디 또는 암호가 맞지 않습니다.';
  SI0002 : String = '정말로 데이터를 삭제하시겠습니까?';

Function  SE0003(Param1:String):String;

implementation

Function  SE0003(Param1:String):String;
Begin
 Result:= Format('필수항목이 누락되었습니다. (%s)', [Param1]);
End;

end.
