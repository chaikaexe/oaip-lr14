program z3;
var inf,outf,outf1:file of integer; r:integer;
begin
  assign(inf,'e:3.txt');
  rewrite(inf);
  for var i:=1 to 100 do
    begin 
    r:=i;
    write(inf,r);
    end;
  close(inf);
  assign(outf,'e:33.txt');
  assign(outf1,'e:333.txt');
  rewrite(outf1);
  rewrite(outf);
  reset(inf);
  while not eof(inf) do begin
    read(inf,r);
    if r mod 2 = 0 then write(outf1,r)
    else write(outf,r);
  end;
  reset(outf);
  reset(outf1);
  println('Чёт:');
  while not eof(outf1) do begin
    read(outf1,r);
    print(r);
  end;
  println();
  println('Нечёт:');
  while not eof(outf) do begin
    read(outf,r);
    print(r);
  end;
  close(inf);
  close(outf);
  close(outf1);
end.