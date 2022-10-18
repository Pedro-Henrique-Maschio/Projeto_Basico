unit GeradorIni;

interface
uses IniFiles;
  procedure SetValorIni(pLocal,pSessao,pSubsessao,pValor: string);
  function  GetValorIni(pLocal,pSessao,pSubsessao: string): string;

implementation
  procedure SetValorIni(pLocal,pSessao,pSubsessao,pValor: string);
  var
    vArquivo : TIniFile;
  begin
    vArquivo:= TIniFile.Create(pLocal);
    vArquivo.writestring(pSessao,pSubsessao,pValor);
    vArquivo.free;
  end;

  function  GetValorIni(pLocal,pSessao,pSubsessao: string): string;
  var
    vArquivo : TIniFile;
  begin
    vArquivo:= TIniFile.Create(pLocal);
    Result:= vArquivo.ReadString(pSessao,pSubsessao,'');
    vArquivo.free;
  end;
end.
