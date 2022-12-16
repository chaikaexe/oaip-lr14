program z1;
var f1, f2: file of char; c:char; s:string;
begin
  assign(f1, 'e:1.txt');
  assign(f2, 'e:11.txt');
  rewrite(f1);
  var n:=readinteger('введите кол-во символов для записи');
  writeln('введите символы');
  for var i:=1 to n+1 do
    begin
    readln(c);
    write(f1,c);
    end;
    close(f1);
    rewrite(f2);
    reset(f1);
    while not eof(f1) do
    begin
      if c=' ' then exit;
      read(f1,c);
      write(f2,c);
    end;
    close(f1);
    close(f2);
end.