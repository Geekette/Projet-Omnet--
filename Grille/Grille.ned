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

package grille;

simple Node
{
    parameters:
        int posX;
        int posY;
    gates:
        input iNorth;
        input iEast;
        input iWest;
        input iSouth;
        output oNorth;
        output oEast;
        output oWest;
        output oSouth;
}


//Rendre la grille gŽnŽrique en taille
simple Node11 extends Node{posX = 1;posY = 1;}
simple Node12 extends Node{posX = 1;posY = 2;}
simple Node13 extends Node{posX = 1;posY = 3;}
simple Node21 extends Node{posX = 2;posY = 1;}
simple Node22 extends Node{posX = 2;posY = 2;}
simple Node23 extends Node{posX = 2;posY = 3;}
simple Node31 extends Node{posX = 3;posY = 1;}
simple Node32 extends Node{posX = 3;posY = 2;}
simple Node33 extends Node{posX = 3;posY = 3;}

network Grille
{
    submodules:
        noeud1: Node11 {
            @display("p=106,62");
        }
        noeud2: Node12 {
            @display("p=232,62");
        }
        noeud3: Node13 {
            @display("p=358,62");
        }
        noeud4: Node21 {
            @display("p=106,176");
        }
        noeud5: Node22 {
            @display("p=232,176");
        }
        noeud6: Node23 {
            @display("p=358,176");
        }
        noeud7: Node31 {
            @display("p=106,287");
        }
        noeud8: Node32 {
            @display("p=232,287");
        }
        noeud9: Node33 {
            @display("p=358,287");
        }
    connections:
        noeud1.oSouth --> {  delay = 25ms; } --> noeud4.iNorth;
        noeud1.iSouth <-- {  delay = 25ms; } <-- noeud4.oNorth;
        noeud1.oEast --> {  delay = 25ms; } --> noeud2.iWest;
        noeud1.iEast <-- {  delay = 25ms; } <-- noeud2.oWest;
        noeud1.oSouth --> {  delay = 25ms; } --> noeud4.iNorth;
        noeud1.iSouth <-- {  delay = 25ms; } <-- noeud4.oNorth;
        noeud1.oWest --> {  delay = 25ms; } --> noeud3.iEast;
        noeud1.iWest <-- {  delay = 25ms; } <-- noeud3.oEast;
        noeud1.oNorth --> {  delay = 25ms; } --> noeud7.iSouth;
        noeud1.iNorth <-- {  delay = 25ms; } <-- noeud7.oSouth;

        noeud2.oEast --> {  delay = 25ms; } --> noeud3.iWest;
        noeud2.iEast <-- {  delay = 25ms; } <-- noeud3.oWest;
        noeud2.oSouth --> {  delay = 25ms; } --> noeud5.iNorth;
        noeud2.iSouth <-- {  delay = 25ms; } <-- noeud5.oNorth;
        noeud2.oNorth --> {  delay = 25ms; } --> noeud8.iSouth;
        noeud2.iNorth <-- {  delay = 25ms; } <-- noeud8.oSouth;

        noeud3.oSouth --> {  delay = 25ms; } --> noeud6.iNorth;
        noeud3.iSouth <-- {  delay = 25ms; } <-- noeud6.oNorth;
        noeud3.oNorth --> {  delay = 25ms; } --> noeud9.iSouth;
        noeud3.iNorth <-- {  delay = 25ms; } <-- noeud9.oSouth;

        noeud4.oEast --> {  delay = 25ms; } --> noeud5.iWest;
        noeud4.iEast <-- {  delay = 25ms; } <-- noeud5.oWest;
        noeud4.oSouth --> {  delay = 25ms; } --> noeud7.iNorth;
        noeud4.iSouth <-- {  delay = 25ms; } <-- noeud7.oNorth;
        noeud4.oWest --> {  delay = 25ms; } --> noeud6.iEast;
        noeud4.iWest <-- {  delay = 25ms; } <-- noeud6.oEast;

        noeud5.oEast --> {  delay = 25ms; } --> noeud6.iWest;
        noeud5.iEast <-- {  delay = 25ms; } <-- noeud6.oWest;
        noeud5.oSouth --> {  delay = 25ms; } --> noeud8.iNorth;
        noeud5.iSouth <-- {  delay = 25ms; } <-- noeud8.oNorth;

        noeud6.oSouth --> {  delay = 25ms; } --> noeud9.iNorth;
        noeud6.iSouth <-- {  delay = 25ms; } <-- noeud9.oNorth;

        noeud7.oEast --> {  delay = 25ms; } --> noeud8.iWest;
        noeud7.iEast <-- {  delay = 25ms; } <-- noeud8.oWest;

        noeud8.oEast --> {  delay = 25ms; } --> noeud9.iWest;
        noeud8.iEast <-- {  delay = 25ms; } <-- noeud9.oWest;

        noeud9.oEast --> {  delay = 25ms; } --> noeud7.iWest;
        noeud9.iEast <-- {  delay = 25ms; } <-- noeud7.oWest;
}
