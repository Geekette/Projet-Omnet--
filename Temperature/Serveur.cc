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
#include <omnetpp.h>
#include <Serveur.h>


using namespace std;

Define_Module(Serveur)

Serveur::Serveur() {
    // TODO Auto-generated constructor stub
}

void Serveur::initialize(){
    cMessage *msg = new cMessage("server:0");
    cout << msg << endl;
    send(msg, "out");
}

void Serveur::handleMessage(cMessage *msg){
    EV << msg->getDisplayString() << endl;
}

Serveur::~Serveur() {
    // TODO Auto-generated destructor stub
}

