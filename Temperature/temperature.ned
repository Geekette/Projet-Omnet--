//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU Lesser General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
// 
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU Lesser General Public License for more details.
// 
// You should have received a copy of the GNU Lesser General Public License
// along with this program.  If not, see http://www.gnu.org/licenses/.
//

package temp_rature;

simple Sonde
{
    parameters:
        int temp;
        string nom;
    gates:
        input in;
        output out;
}

simple S1 extends Sonde
{
    parameters:
        temp = 12;
        nom = "Sonde jardin";
}

simple S2 extends Sonde
{
    parameters:
        temp = 43;
        nom = "Sonde cuisine";
}

simple S3 extends Sonde
{
    parameters:
        temp = 32;
        nom = "Sonde salon";
}

simple S4 extends Sonde
{
    parameters:
        temp = 8;
        nom = "Sonde voiture";
}

simple S5 extends Sonde
{
    parameters:
        temp = 12;
        nom = "Sonde moto";
}

simple Serveur
{
    parameters:
        int temp = 0;
    gates:
        input in;
        output out;
}
//
// TODO auto-generated type
//

network Temperature
{
    submodules:
        sonde1: S1 {
            @display("p=87,157");
        }
        sonde2: S2 {
            @display("p=141,157");
        }
        sonde3: S3 {
            @display("p=141,34");
        }
        sonde4: S4 {
            @display("p=87,34");
        }
        sonde5: S5 {
            @display("p=30,30");
        }
        serveur: Serveur {
            @display("p=30,157");
        }
    connections:
        serveur.out --> {  delay = 25ms; } --> sonde1.in;
        sonde1.out --> {  delay = 25ms; } --> sonde2.in;
        sonde2.out --> {  delay = 25ms; } --> sonde3.in;
        sonde3.out --> {  delay = 25ms; } --> sonde4.in;
        sonde4.out --> {  delay = 25ms; } --> sonde5.in;
        sonde5.out --> {  delay = 25ms; } --> serveur.in;
}
