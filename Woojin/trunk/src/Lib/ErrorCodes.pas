unit ErrorCodes;

interface

uses
  SysUtils;

Const
  SE0001 : String = '���̵� �Ǵ� ��ȣ�� ���� �ʽ��ϴ�.';
  SI0002 : String = '������ �����͸� �����Ͻðڽ��ϱ�?';

Function  SE0003(Param1:String):String;

implementation

Function  SE0003(Param1:String):String;
Begin
 Result:= Format('�ʼ��׸��� �����Ǿ����ϴ�. (%s)', [Param1]);
End;

end.
