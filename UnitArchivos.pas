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
	{Procedure EliminarArchivo(NombreDelArchivo:string);}
	{Procedure EscribirArchivo(NombreDelArchivo:string);}
	Procedure LeerArchivoCompleto(NombreDelArchivo:string);
	Procedure LeerLineaDeArchivo(Linea:string;NombreDelArchivo:string);
	function FileExists(NombreDelArchivo: String): boolean;

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
		Procedure LeerArchivoCompleto(NombreDelArchivo:string);
		var	Archivo:text;
				Linea:string;

		begin
			assign(Archivo,NombreDelArchivo+'.txt');
			reset(Archivo);
			while not eof(Archivo) do					// Hasta que el archivo no termine.
			begin
					readLn(Archivo,Linea);			// Leemos una linea.
					writeLn(Linea);							// Mostramos la linea leida.
			end;
			close(Archivo);
		end;


		Procedure LeerLineaDeArchivo(Linea:string;NombreDelArchivo:string);
		var Archivo:text;

		begin
			assign(Archivo,NombreDelArchivo+'.txt');
			reset(Archivo);
			readLn(Archivo,Linea);			// Leemos una linea.
			writeLn(Linea);							// Mostramos la linea leida.
			close(Archivo);
		end;


		function FileExists(NombreDelArchivo: String): boolean;
		var Archivo:text;

			begin
				assign(Archivo,NombreDelArchivo);
    		{$I-}
    		reset(Archivo);
    		{$I+}
    		if (IOResult = 0) then
    		begin
        	close(Archivo);
        	FileExists:=true;
    		end
    			else
        		FileExists:=false;
					end;
BEGIN
END.
