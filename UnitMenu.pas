{
   UnitArchivos.u

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

unit UnitMenu;

Interface

	uses crt,sysutils,UnitArchivos;

	Procedure OpcionUno(Opcion:integer);
	Procedure OpcionDos(Opcion:integer);
	Procedure OpcionTres(Opcion:integer);
	Procedure OpcionCuatro(Opcion:integer);

implementation

	Procedure OpcionUno(Opcion:integer);
	var NombreDelArchivoA:string;

	begin
		WriteLn('Ingrese el nombre de su archivo:');
		ReadLn(NombreDelArchivoA);
		FileExists(NombreDelArchivoA);
			if FileExists(NombreDelArchivoA+'.txt') then
				writeLn('Disculpe, ya existe otro archivo con ese nombre.')
				else
				begin
					CrearArchivo(NombreDelArchivoA);
					if FileExists(NombreDelArchivoA+'.txt') then
						writeLn('El archivo se creo correctamente.')
						else
							writeLn('¡ERROR! El archivo NO se creo correctamente!')
				end;
				WriteLn('Oprima "enter" para finalizar.');
				readkey;
				end;


				Procedure OpcionDos(Opcion:integer);
				var NombreDelArchivoA:string;

				begin
					WriteLn('Ingrese el nombre de su archivo:');
					ReadLn(NombreDelArchivoA);
					FileExists(NombreDelArchivoA);
					if FileExists(NombreDelArchivoA+'.txt') then
				  	writeLn('El fichero existe.')
				    else
				    	writeLn('El fichero no existe.');
					WriteLn('Oprima "enter" para finalizar.');
					Readkey;
				end;


				Procedure OpcionTres(Opcion:integer);
				var NombreDelArchivoA:string;

				begin
					WriteLn('Ingrese el nombre de su archivo:');
					ReadLn(NombreDelArchivoA);
					FileExists(NombreDelArchivoA);
					if FileExists(NombreDelArchivoA+'.txt') then
						LeerArchivoCompleto(NombreDelArchivoA)
					else
						writeLn('El archivo no existe.');
					WriteLn('Oprima "enter" para finalizar.');
					Readkey;
				end;


				Procedure OpcionCuatro(Opcion:integer);
				var NombreDelArchivoA:string;
						LineaA:string;

				begin
					WriteLn('Ingrese el nombre de su archivo:');
					ReadLn(NombreDelArchivoA);
					FileExists(NombreDelArchivoA);
					if FileExists(NombreDelArchivoA+'.txt') then
						begin
							WriteLn('Ingrese la linea que decea leer:');
							ReadLn(LineaA);
							LeerLineaDeArchivo(LineaA,NombreDelArchivoA);
						end
						else
							begin
								writeLn('El archivo no existe.');
							end;
					WriteLn('Oprima "enter" para finalizar.');
					Readkey;
				end;

begin
end.
