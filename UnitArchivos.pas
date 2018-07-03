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

unit UnitArchivos;

Interface

	uses crt,sysutils;

	Procedure CrearArchivo(NombreDelArchivo:string);
{	Procedure EliminarArchivo(NombreDelArchivo:string);}
	Procedure EscribirArchivo(NombreDelArchivo:string);
	Procedure VerificarArchivo(NombreDelArchivo:string);

	//var //vars de la interface.

implementation

	Procedure CrearArchivo(NombreDelArchivo:string); //Antes de llamar a esto, llamar a verificar, sino puede reescribir un archivo.

		var Archivo:text;

			begin
				assign(Archivo,NombreDelArchivo+'.TXT' );
				rewrite(Archivo);
				close(Archivo);
			end;

{	Procedure EliminarArchivo(NombreDelArchivo:string);
	var Aux:text;

	begin
		Aux:=(NombreDelArchivo+'.txt');
		Erase (Aux);
	end;
}
	Procedure EscribirArchivo(NombreDelArchivo:string);

	begin

	end;

	Procedure VerificarArchivo(NombreDelArchivo:string); //Verificacion si el archivo se creo correctamente.

	begin

    if FileExists(NombreDelArchivo) then
        writeLn('El archivo se creo correctamente!')
    else
				HighVideo;
        writeLn('ERROR! El archivo no se pudo crear!');
		end;

BEGIN
END.
