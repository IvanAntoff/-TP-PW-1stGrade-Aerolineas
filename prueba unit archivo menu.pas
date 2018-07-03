{
   prueba unit archivo.pas

   Copyright 2018 Heimer <Heimer@THEBEAST>

   This program is free software; you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation; either version 2 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program; if not, write to the Free Software
   Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
   MA 02110-1301, USA.


}
program untitled;

uses crt,sysutils,UnitArchivos,UnitMenu;

var
	OpcionA:integer;
	Salir:Char;

BEGIN
	Salir:=('n');
	while (Salir<>'s') or (Salir<>'S') do
	begin
		clrscr;
		WriteLn('Opcion 1: Crear archivo.');
		WriteLn('Opcion 2: Verificar existencia de archivo.');
		WriteLn('Opcion 3: Leer un archivo completo.');
		WriteLn('Opcion 4: Leer una linea de un archivo.');
		Write('Opcion ');
		Read(OpcionA);
		Case OpcionA of
			1: OpcionUno(OpcionA);
			2: OpcionDos(OpcionA);
			3: OpcionTres(OpcionA);
			4: OpcionCuatro(OpcionA);
		end;
		WriteLn('Si decea continuar precione "Enter".');
		WriteLn('Si decea finalizar precione "S":');
		ReadLN(Salir)
	end;
END.
