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
#include <Sonde.h>
#include <string>
#include <string.h>
#include <iostream>
#include <sstream>



using namespace std;

Define_Module(Sonde);

Sonde::Sonde() {
    // TODO Auto-generated constructor stub

}

void Sonde::initialize(){

}

void Sonde::handleMessage(cMessage *msg){
    string recue = msg->getFullName();
    int temp = (rand()%25) + 1;
    int temp_recue ;
    string truc = "22";
    istringstream(recue.substr(recue.find(':')+1,recue.length()-recue.find(':'))) >> temp_recue;
    if(temp < temp_recue){
        send(msg, "out");
    }else{
        char reponse[256] = "";
        stringstream out;
        string temp_s;
        out << temp;
        temp_s = out.str();
        strcat(reponse, par("nom").stringValue());
        strcat(reponse,":");
        strcat(reponse, temp_s.c_str());
        cMessage *answer = new cMessage(reponse);
        send(answer, "out");
    }
}


Sonde::~Sonde() {
    // TODO Auto-generated destructor stub
}

