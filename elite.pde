run:
PShape shipShape;
int shipIndex = 0;
float AngleSpeed = 0.001;

void setup(){
    size(800, 400, P3D);
    
    frameRate(30);
    smooth();
    
    //Spoof mousePressed event to get first ship:
    //mousePressed();
}

void setShipIndex(int _shipIndex){
    shipIndex = _shipIndex;
}

void draw(){
  background(0);

  camera(0.0, 0.0, 2200.0 - (mouseX * 3.5), 0.0, 0.0, 0.0, 0.0, 1.0, 0.0);

  switch(shipIndex){
    case 0:
        drawCORIOLIS();
    break;
    case 1:
        drawNEARCORIOLIS();
    break;
    case 2:
        drawDODO();
    break;
    case 3:
        drawNEARDODO();
    break;
    case 4:
        drawNEARDODO();
    break;
    case 5:
        drawMISSILE();
    break;
    case 6:
        drawTUNNEL();
    break;
    case 7:
        drawTUNNEL2();
    break;
    case 8:
        drawFARTUNNEL2();
    break;
    case 9:
        drawTUNNEL3();
    break;
    case 10:
        drawFARTUNNEL3();
    break;
    case 11:
        drawTUNNEL4();
    break;
    case 12:
        drawFARTUNNEL4();
    break;
    case 13:
        drawFARCANNISTER();
    break;
    case 14:
        drawCANNISTER();
    break;
    case 15:
        drawDOBOX();
    break;
    case 16:
        drawFARDOBOX();
    break;
    case 17:
        drawFARSHEET();
    break;
    case 18:
        drawSHEET();
    break;
    case 19:
        drawFARRADIOCAN();
    break;
    case 20:
        drawRADIOCAN();
    break;
    case 21:
        drawFRAGMENT();
    break;
    case 22:
        drawHARLEQUIN();
    break;
    case 23:
        drawFARASTEROID();
    break;
    case 24:
        drawASTEROID();
    break;
    case 25:
        drawGENESIS();
    break;
    case 26:
        drawPYRAMID();
    break;
    case 27:
        drawADDER();
    break;
    case 28:
        drawFARANACONDA();
    break;
    case 29:
        drawANACONDA();
    break;
    case 30:
        drawOLDASP();
    break;
    case 31:
        drawFARASP();
    break;
    case 32:
        drawASP();
    break;
    case 33:
        drawFARBOA();
    break;
    case 34:
        drawBOA();
    break;
    case 35:
        drawBUSHMASTER();
    break;
    case 36:
        drawFARCAIMAN();
    break;
    case 37:
        drawCAIMAN();
    break;
    case 38:
        drawFARCOBRAMK1();
    break;
    case 39:
        drawCOBRAMK1();
    break;
    case 40:
        drawFARCOBRA();
    break;
    case 41:
        drawCOBRA();
    break;
    case 42:
        drawCOBRA();
    break;
    case 43:
        drawFARCONSTRICTOR();
    break;
    case 44:
        drawCONSTRICTOR();
    break;
    case 45:
        drawFARESCAPEPOD();
    break;
    case 46:
        drawESCAPEPOD();
    break;
    case 47:
        drawFARFERDELANCE();
    break;
    case 48:
        drawFERDELANCE();
    break;
    case 49:
        drawHAWK();
    break;
    case 50:
        drawHOGNOSE();
    break;
    case 51:
        drawFARMAMBA();
    break;
    case 52:
        drawMAMBA();
    break;
    case 53:
        drawFARMOCCASIN();
    break;
    case 54:
        drawMOCCASIN();
    break;
    case 55:
        drawFARGECKO();
    break;
    case 56:
        drawGECKO();
    break;
    case 57:
        drawKRAIT();
    break;
    case 58:
        drawFARMORAY();
    break;
    case 59:
        drawMORAY();
    break;
    case 60:
        drawFARORBITSHUTTLE();
    break;
    case 61:
        drawORBITSHUTTLE();
    break;
    case 62:
        drawFARPYTHON();
    break;
    case 63:
        drawPYTHON();
    break;
    case 64:
        drawFARRACER();
    break;
    case 65:
        drawRACER();
    break;
    case 66:
        drawFARREMLOCK();
    break;
    case 67:
        drawREMLOCK();
    break;
    case 68:
        drawFARSIDEWINDER();
    break;
    case 69:
        drawSIDEWINDER();
    break;
    case 70:
        drawFARTHARGON();
    break;
    case 71:
        drawTHARGON();
    break;
    case 72:
        drawTHARGOID();
    break;
    case 73:
        drawTRANSPORTER();
    break;
    case 74:
        drawFARURUTU();
    break;
    case 75:
        drawURUTU();
    break;
    case 76:
        drawFARVIPER();
    break;
    case 77:
        drawVIPER();
    break;
    case 78:
        drawWORM();
    break;
    case 79:
        drawZARCH();
    break;
  }
}

void functionTest(){
   background(155); 
}

void mousePressed(){
  
  shipIndex++;
  
  if(shipIndex == 80){
    shipIndex = 0;
  }
}

//Object name: CORIOLIS
PVector[] CORIOLISpoints = new PVector[]{
new PVector(-500,750,500),
new PVector(500,750,500),
new PVector(500,750,-500),
new PVector(-500,750,-500),
new PVector(0,0,-1000),
new PVector(-1000,0,0),
new PVector(0,0,1000),
new PVector(1000,0,0),
new PVector(-500,-750,-500),
new PVector(-500,-750,500),
new PVector(500,-750,500),
new PVector(500,-750,-500),
new PVector(-150,750,-50),
new PVector(-150,750,50),
new PVector(150,750,-50),
new PVector(150,750,50)
};

void drawCORIOLIS(){
pushMatrix();
rotateX(frameCount*PI/280);
rotateY(frameCount*PI/170);
rotateZ(frameCount*PI/90);
beginShape(TRIANGLES);
fill(0);
stroke(255);
vertex(CORIOLISpoints[0].x, CORIOLISpoints[0].y, CORIOLISpoints[0].z);
vertex(CORIOLISpoints[3].x, CORIOLISpoints[3].y, CORIOLISpoints[3].z);
vertex(CORIOLISpoints[2].x, CORIOLISpoints[2].y, CORIOLISpoints[2].z);

vertex(CORIOLISpoints[2].x, CORIOLISpoints[2].y, CORIOLISpoints[2].z);
vertex(CORIOLISpoints[1].x, CORIOLISpoints[1].y, CORIOLISpoints[1].z);
vertex(CORIOLISpoints[0].x, CORIOLISpoints[0].y, CORIOLISpoints[0].z);

vertex(CORIOLISpoints[15].x, CORIOLISpoints[15].y, CORIOLISpoints[15].z);
vertex(CORIOLISpoints[13].x, CORIOLISpoints[13].y, CORIOLISpoints[13].z);
vertex(CORIOLISpoints[12].x, CORIOLISpoints[12].y, CORIOLISpoints[12].z);

vertex(CORIOLISpoints[12].x, CORIOLISpoints[12].y, CORIOLISpoints[12].z);
vertex(CORIOLISpoints[14].x, CORIOLISpoints[14].y, CORIOLISpoints[14].z);
vertex(CORIOLISpoints[15].x, CORIOLISpoints[15].y, CORIOLISpoints[15].z);

vertex(CORIOLISpoints[1].x, CORIOLISpoints[1].y, CORIOLISpoints[1].z);
vertex(CORIOLISpoints[2].x, CORIOLISpoints[2].y, CORIOLISpoints[2].z);
vertex(CORIOLISpoints[7].x, CORIOLISpoints[7].y, CORIOLISpoints[7].z);

vertex(CORIOLISpoints[3].x, CORIOLISpoints[3].y, CORIOLISpoints[3].z);
vertex(CORIOLISpoints[4].x, CORIOLISpoints[4].y, CORIOLISpoints[4].z);
vertex(CORIOLISpoints[2].x, CORIOLISpoints[2].y, CORIOLISpoints[2].z);

vertex(CORIOLISpoints[0].x, CORIOLISpoints[0].y, CORIOLISpoints[0].z);
vertex(CORIOLISpoints[5].x, CORIOLISpoints[5].y, CORIOLISpoints[5].z);
vertex(CORIOLISpoints[3].x, CORIOLISpoints[3].y, CORIOLISpoints[3].z);

vertex(CORIOLISpoints[6].x, CORIOLISpoints[6].y, CORIOLISpoints[6].z);
vertex(CORIOLISpoints[0].x, CORIOLISpoints[0].y, CORIOLISpoints[0].z);
vertex(CORIOLISpoints[1].x, CORIOLISpoints[1].y, CORIOLISpoints[1].z);

vertex(CORIOLISpoints[2].x, CORIOLISpoints[2].y, CORIOLISpoints[2].z);
vertex(CORIOLISpoints[4].x, CORIOLISpoints[4].y, CORIOLISpoints[4].z);
vertex(CORIOLISpoints[11].x, CORIOLISpoints[11].y, CORIOLISpoints[11].z);

vertex(CORIOLISpoints[11].x, CORIOLISpoints[11].y, CORIOLISpoints[11].z);
vertex(CORIOLISpoints[7].x, CORIOLISpoints[7].y, CORIOLISpoints[7].z);
vertex(CORIOLISpoints[2].x, CORIOLISpoints[2].y, CORIOLISpoints[2].z);

vertex(CORIOLISpoints[1].x, CORIOLISpoints[1].y, CORIOLISpoints[1].z);
vertex(CORIOLISpoints[7].x, CORIOLISpoints[7].y, CORIOLISpoints[7].z);
vertex(CORIOLISpoints[10].x, CORIOLISpoints[10].y, CORIOLISpoints[10].z);

vertex(CORIOLISpoints[10].x, CORIOLISpoints[10].y, CORIOLISpoints[10].z);
vertex(CORIOLISpoints[6].x, CORIOLISpoints[6].y, CORIOLISpoints[6].z);
vertex(CORIOLISpoints[1].x, CORIOLISpoints[1].y, CORIOLISpoints[1].z);

vertex(CORIOLISpoints[0].x, CORIOLISpoints[0].y, CORIOLISpoints[0].z);
vertex(CORIOLISpoints[6].x, CORIOLISpoints[6].y, CORIOLISpoints[6].z);
vertex(CORIOLISpoints[9].x, CORIOLISpoints[9].y, CORIOLISpoints[9].z);

vertex(CORIOLISpoints[9].x, CORIOLISpoints[9].y, CORIOLISpoints[9].z);
vertex(CORIOLISpoints[5].x, CORIOLISpoints[5].y, CORIOLISpoints[5].z);
vertex(CORIOLISpoints[0].x, CORIOLISpoints[0].y, CORIOLISpoints[0].z);

vertex(CORIOLISpoints[3].x, CORIOLISpoints[3].y, CORIOLISpoints[3].z);
vertex(CORIOLISpoints[5].x, CORIOLISpoints[5].y, CORIOLISpoints[5].z);
vertex(CORIOLISpoints[8].x, CORIOLISpoints[8].y, CORIOLISpoints[8].z);

vertex(CORIOLISpoints[8].x, CORIOLISpoints[8].y, CORIOLISpoints[8].z);
vertex(CORIOLISpoints[4].x, CORIOLISpoints[4].y, CORIOLISpoints[4].z);
vertex(CORIOLISpoints[3].x, CORIOLISpoints[3].y, CORIOLISpoints[3].z);

vertex(CORIOLISpoints[10].x, CORIOLISpoints[10].y, CORIOLISpoints[10].z);
vertex(CORIOLISpoints[11].x, CORIOLISpoints[11].y, CORIOLISpoints[11].z);
vertex(CORIOLISpoints[8].x, CORIOLISpoints[8].y, CORIOLISpoints[8].z);

vertex(CORIOLISpoints[8].x, CORIOLISpoints[8].y, CORIOLISpoints[8].z);
vertex(CORIOLISpoints[9].x, CORIOLISpoints[9].y, CORIOLISpoints[9].z);
vertex(CORIOLISpoints[10].x, CORIOLISpoints[10].y, CORIOLISpoints[10].z);

vertex(CORIOLISpoints[9].x, CORIOLISpoints[9].y, CORIOLISpoints[9].z);
vertex(CORIOLISpoints[8].x, CORIOLISpoints[8].y, CORIOLISpoints[8].z);
vertex(CORIOLISpoints[5].x, CORIOLISpoints[5].y, CORIOLISpoints[5].z);

vertex(CORIOLISpoints[7].x, CORIOLISpoints[7].y, CORIOLISpoints[7].z);
vertex(CORIOLISpoints[11].x, CORIOLISpoints[11].y, CORIOLISpoints[11].z);
vertex(CORIOLISpoints[10].x, CORIOLISpoints[10].y, CORIOLISpoints[10].z);

vertex(CORIOLISpoints[6].x, CORIOLISpoints[6].y, CORIOLISpoints[6].z);
vertex(CORIOLISpoints[10].x, CORIOLISpoints[10].y, CORIOLISpoints[10].z);
vertex(CORIOLISpoints[9].x, CORIOLISpoints[9].y, CORIOLISpoints[9].z);

vertex(CORIOLISpoints[11].x, CORIOLISpoints[11].y, CORIOLISpoints[11].z);
vertex(CORIOLISpoints[4].x, CORIOLISpoints[4].y, CORIOLISpoints[4].z);
vertex(CORIOLISpoints[8].x, CORIOLISpoints[8].y, CORIOLISpoints[8].z);
endShape();
popMatrix();
    
}
//----------------------------------------------------------------

//Object name: NEARCORIOLIS
PVector[] NEARCORIOLISpoints = new PVector[]{
new PVector(-7,748,48),
new PVector(-7,714,48),
new PVector(7,748,48),
new PVector(7,714,48),
new PVector(-93,682,-48),
new PVector(-68,707,-48),
new PVector(-43,707,-48),
new PVector(-43,682,-48),
new PVector(-18,707,-48),
new PVector(6,707,-48),
new PVector(0,682,-48),
new PVector(25,707,-48),
new PVector(50,707,-48),
new PVector(43,682,-48),
new PVector(68,707,-48),
new PVector(93,707,-48),
new PVector(-68,682,-48),
new PVector(-18,682,-48),
new PVector(25,682,-48),
new PVector(68,682,-48),
new PVector(750,750,0),
new PVector(750,-750,0),
new PVector(750,0,750),
new PVector(750,0,-750),
new PVector(-750,750,0),
new PVector(-750,-750,0),
new PVector(-750,0,-750),
new PVector(-750,0,750),
new PVector(0,-750,-750),
new PVector(0,750,-750),
new PVector(0,-750,750),
new PVector(0,750,750),
new PVector(150,750,50),
new PVector(-150,750,50),
new PVector(150,750,-50),
new PVector(-150,750,-50)
};

void drawNEARCORIOLIS(){
pushMatrix();
rotateX(frameCount*PI/280);
rotateY(frameCount*PI/170);
rotateZ(frameCount*PI/90);
beginShape(TRIANGLES);
fill(0);
stroke(255);
vertex(NEARCORIOLISpoints[0].x, NEARCORIOLISpoints[0].y, NEARCORIOLISpoints[0].z);
vertex(NEARCORIOLISpoints[1].x, NEARCORIOLISpoints[1].y, NEARCORIOLISpoints[1].z);
vertex(NEARCORIOLISpoints[2].x, NEARCORIOLISpoints[2].y, NEARCORIOLISpoints[2].z);

vertex(NEARCORIOLISpoints[1].x, NEARCORIOLISpoints[1].y, NEARCORIOLISpoints[1].z);
vertex(NEARCORIOLISpoints[3].x, NEARCORIOLISpoints[3].y, NEARCORIOLISpoints[3].z);
vertex(NEARCORIOLISpoints[2].x, NEARCORIOLISpoints[2].y, NEARCORIOLISpoints[2].z);

vertex(NEARCORIOLISpoints[4].x, NEARCORIOLISpoints[4].y, NEARCORIOLISpoints[4].z);
vertex(NEARCORIOLISpoints[5].x, NEARCORIOLISpoints[5].y, NEARCORIOLISpoints[5].z);
vertex(NEARCORIOLISpoints[6].x, NEARCORIOLISpoints[6].y, NEARCORIOLISpoints[6].z);

vertex(NEARCORIOLISpoints[7].x, NEARCORIOLISpoints[7].y, NEARCORIOLISpoints[7].z);
vertex(NEARCORIOLISpoints[8].x, NEARCORIOLISpoints[8].y, NEARCORIOLISpoints[8].z);
vertex(NEARCORIOLISpoints[9].x, NEARCORIOLISpoints[9].y, NEARCORIOLISpoints[9].z);

vertex(NEARCORIOLISpoints[10].x, NEARCORIOLISpoints[10].y, NEARCORIOLISpoints[10].z);
vertex(NEARCORIOLISpoints[11].x, NEARCORIOLISpoints[11].y, NEARCORIOLISpoints[11].z);
vertex(NEARCORIOLISpoints[12].x, NEARCORIOLISpoints[12].y, NEARCORIOLISpoints[12].z);

vertex(NEARCORIOLISpoints[13].x, NEARCORIOLISpoints[13].y, NEARCORIOLISpoints[13].z);
vertex(NEARCORIOLISpoints[14].x, NEARCORIOLISpoints[14].y, NEARCORIOLISpoints[14].z);
vertex(NEARCORIOLISpoints[15].x, NEARCORIOLISpoints[15].y, NEARCORIOLISpoints[15].z);

vertex(NEARCORIOLISpoints[6].x, NEARCORIOLISpoints[6].y, NEARCORIOLISpoints[6].z);
vertex(NEARCORIOLISpoints[16].x, NEARCORIOLISpoints[16].y, NEARCORIOLISpoints[16].z);
vertex(NEARCORIOLISpoints[4].x, NEARCORIOLISpoints[4].y, NEARCORIOLISpoints[4].z);

vertex(NEARCORIOLISpoints[9].x, NEARCORIOLISpoints[9].y, NEARCORIOLISpoints[9].z);
vertex(NEARCORIOLISpoints[17].x, NEARCORIOLISpoints[17].y, NEARCORIOLISpoints[17].z);
vertex(NEARCORIOLISpoints[7].x, NEARCORIOLISpoints[7].y, NEARCORIOLISpoints[7].z);

vertex(NEARCORIOLISpoints[12].x, NEARCORIOLISpoints[12].y, NEARCORIOLISpoints[12].z);
vertex(NEARCORIOLISpoints[18].x, NEARCORIOLISpoints[18].y, NEARCORIOLISpoints[18].z);
vertex(NEARCORIOLISpoints[10].x, NEARCORIOLISpoints[10].y, NEARCORIOLISpoints[10].z);

vertex(NEARCORIOLISpoints[15].x, NEARCORIOLISpoints[15].y, NEARCORIOLISpoints[15].z);
vertex(NEARCORIOLISpoints[19].x, NEARCORIOLISpoints[19].y, NEARCORIOLISpoints[19].z);
vertex(NEARCORIOLISpoints[13].x, NEARCORIOLISpoints[13].y, NEARCORIOLISpoints[13].z);

vertex(NEARCORIOLISpoints[20].x, NEARCORIOLISpoints[20].y, NEARCORIOLISpoints[20].z);
vertex(NEARCORIOLISpoints[21].x, NEARCORIOLISpoints[21].y, NEARCORIOLISpoints[21].z);
vertex(NEARCORIOLISpoints[22].x, NEARCORIOLISpoints[22].y, NEARCORIOLISpoints[22].z);

vertex(NEARCORIOLISpoints[23].x, NEARCORIOLISpoints[23].y, NEARCORIOLISpoints[23].z);
vertex(NEARCORIOLISpoints[21].x, NEARCORIOLISpoints[21].y, NEARCORIOLISpoints[21].z);
vertex(NEARCORIOLISpoints[20].x, NEARCORIOLISpoints[20].y, NEARCORIOLISpoints[20].z);

vertex(NEARCORIOLISpoints[24].x, NEARCORIOLISpoints[24].y, NEARCORIOLISpoints[24].z);
vertex(NEARCORIOLISpoints[25].x, NEARCORIOLISpoints[25].y, NEARCORIOLISpoints[25].z);
vertex(NEARCORIOLISpoints[26].x, NEARCORIOLISpoints[26].y, NEARCORIOLISpoints[26].z);

vertex(NEARCORIOLISpoints[27].x, NEARCORIOLISpoints[27].y, NEARCORIOLISpoints[27].z);
vertex(NEARCORIOLISpoints[25].x, NEARCORIOLISpoints[25].y, NEARCORIOLISpoints[25].z);
vertex(NEARCORIOLISpoints[24].x, NEARCORIOLISpoints[24].y, NEARCORIOLISpoints[24].z);

vertex(NEARCORIOLISpoints[28].x, NEARCORIOLISpoints[28].y, NEARCORIOLISpoints[28].z);
vertex(NEARCORIOLISpoints[23].x, NEARCORIOLISpoints[23].y, NEARCORIOLISpoints[23].z);
vertex(NEARCORIOLISpoints[26].x, NEARCORIOLISpoints[26].y, NEARCORIOLISpoints[26].z);

vertex(NEARCORIOLISpoints[26].x, NEARCORIOLISpoints[26].y, NEARCORIOLISpoints[26].z);
vertex(NEARCORIOLISpoints[23].x, NEARCORIOLISpoints[23].y, NEARCORIOLISpoints[23].z);
vertex(NEARCORIOLISpoints[29].x, NEARCORIOLISpoints[29].y, NEARCORIOLISpoints[29].z);

vertex(NEARCORIOLISpoints[22].x, NEARCORIOLISpoints[22].y, NEARCORIOLISpoints[22].z);
vertex(NEARCORIOLISpoints[30].x, NEARCORIOLISpoints[30].y, NEARCORIOLISpoints[30].z);
vertex(NEARCORIOLISpoints[27].x, NEARCORIOLISpoints[27].y, NEARCORIOLISpoints[27].z);

vertex(NEARCORIOLISpoints[27].x, NEARCORIOLISpoints[27].y, NEARCORIOLISpoints[27].z);
vertex(NEARCORIOLISpoints[31].x, NEARCORIOLISpoints[31].y, NEARCORIOLISpoints[31].z);
vertex(NEARCORIOLISpoints[22].x, NEARCORIOLISpoints[22].y, NEARCORIOLISpoints[22].z);

vertex(NEARCORIOLISpoints[30].x, NEARCORIOLISpoints[30].y, NEARCORIOLISpoints[30].z);
vertex(NEARCORIOLISpoints[21].x, NEARCORIOLISpoints[21].y, NEARCORIOLISpoints[21].z);
vertex(NEARCORIOLISpoints[25].x, NEARCORIOLISpoints[25].y, NEARCORIOLISpoints[25].z);

vertex(NEARCORIOLISpoints[21].x, NEARCORIOLISpoints[21].y, NEARCORIOLISpoints[21].z);
vertex(NEARCORIOLISpoints[28].x, NEARCORIOLISpoints[28].y, NEARCORIOLISpoints[28].z);
vertex(NEARCORIOLISpoints[25].x, NEARCORIOLISpoints[25].y, NEARCORIOLISpoints[25].z);

vertex(NEARCORIOLISpoints[34].x, NEARCORIOLISpoints[34].y, NEARCORIOLISpoints[34].z);
vertex(NEARCORIOLISpoints[20].x, NEARCORIOLISpoints[20].y, NEARCORIOLISpoints[20].z);
vertex(NEARCORIOLISpoints[32].x, NEARCORIOLISpoints[32].y, NEARCORIOLISpoints[32].z);

vertex(NEARCORIOLISpoints[24].x, NEARCORIOLISpoints[24].y, NEARCORIOLISpoints[24].z);
vertex(NEARCORIOLISpoints[35].x, NEARCORIOLISpoints[35].y, NEARCORIOLISpoints[35].z);
vertex(NEARCORIOLISpoints[33].x, NEARCORIOLISpoints[33].y, NEARCORIOLISpoints[33].z);

vertex(NEARCORIOLISpoints[31].x, NEARCORIOLISpoints[31].y, NEARCORIOLISpoints[31].z);
vertex(NEARCORIOLISpoints[24].x, NEARCORIOLISpoints[24].y, NEARCORIOLISpoints[24].z);
vertex(NEARCORIOLISpoints[33].x, NEARCORIOLISpoints[33].y, NEARCORIOLISpoints[33].z);

vertex(NEARCORIOLISpoints[31].x, NEARCORIOLISpoints[31].y, NEARCORIOLISpoints[31].z);
vertex(NEARCORIOLISpoints[32].x, NEARCORIOLISpoints[32].y, NEARCORIOLISpoints[32].z);
vertex(NEARCORIOLISpoints[20].x, NEARCORIOLISpoints[20].y, NEARCORIOLISpoints[20].z);

vertex(NEARCORIOLISpoints[34].x, NEARCORIOLISpoints[34].y, NEARCORIOLISpoints[34].z);
vertex(NEARCORIOLISpoints[29].x, NEARCORIOLISpoints[29].y, NEARCORIOLISpoints[29].z);
vertex(NEARCORIOLISpoints[20].x, NEARCORIOLISpoints[20].y, NEARCORIOLISpoints[20].z);

vertex(NEARCORIOLISpoints[35].x, NEARCORIOLISpoints[35].y, NEARCORIOLISpoints[35].z);
vertex(NEARCORIOLISpoints[24].x, NEARCORIOLISpoints[24].y, NEARCORIOLISpoints[24].z);
vertex(NEARCORIOLISpoints[29].x, NEARCORIOLISpoints[29].y, NEARCORIOLISpoints[29].z);

vertex(NEARCORIOLISpoints[21].x, NEARCORIOLISpoints[21].y, NEARCORIOLISpoints[21].z);
vertex(NEARCORIOLISpoints[30].x, NEARCORIOLISpoints[30].y, NEARCORIOLISpoints[30].z);
vertex(NEARCORIOLISpoints[22].x, NEARCORIOLISpoints[22].y, NEARCORIOLISpoints[22].z);

vertex(NEARCORIOLISpoints[27].x, NEARCORIOLISpoints[27].y, NEARCORIOLISpoints[27].z);
vertex(NEARCORIOLISpoints[30].x, NEARCORIOLISpoints[30].y, NEARCORIOLISpoints[30].z);
vertex(NEARCORIOLISpoints[25].x, NEARCORIOLISpoints[25].y, NEARCORIOLISpoints[25].z);

vertex(NEARCORIOLISpoints[24].x, NEARCORIOLISpoints[24].y, NEARCORIOLISpoints[24].z);
vertex(NEARCORIOLISpoints[31].x, NEARCORIOLISpoints[31].y, NEARCORIOLISpoints[31].z);
vertex(NEARCORIOLISpoints[27].x, NEARCORIOLISpoints[27].y, NEARCORIOLISpoints[27].z);

vertex(NEARCORIOLISpoints[22].x, NEARCORIOLISpoints[22].y, NEARCORIOLISpoints[22].z);
vertex(NEARCORIOLISpoints[31].x, NEARCORIOLISpoints[31].y, NEARCORIOLISpoints[31].z);
vertex(NEARCORIOLISpoints[20].x, NEARCORIOLISpoints[20].y, NEARCORIOLISpoints[20].z);

vertex(NEARCORIOLISpoints[25].x, NEARCORIOLISpoints[25].y, NEARCORIOLISpoints[25].z);
vertex(NEARCORIOLISpoints[28].x, NEARCORIOLISpoints[28].y, NEARCORIOLISpoints[28].z);
vertex(NEARCORIOLISpoints[26].x, NEARCORIOLISpoints[26].y, NEARCORIOLISpoints[26].z);

vertex(NEARCORIOLISpoints[20].x, NEARCORIOLISpoints[20].y, NEARCORIOLISpoints[20].z);
vertex(NEARCORIOLISpoints[29].x, NEARCORIOLISpoints[29].y, NEARCORIOLISpoints[29].z);
vertex(NEARCORIOLISpoints[23].x, NEARCORIOLISpoints[23].y, NEARCORIOLISpoints[23].z);

vertex(NEARCORIOLISpoints[28].x, NEARCORIOLISpoints[28].y, NEARCORIOLISpoints[28].z);
vertex(NEARCORIOLISpoints[21].x, NEARCORIOLISpoints[21].y, NEARCORIOLISpoints[21].z);
vertex(NEARCORIOLISpoints[23].x, NEARCORIOLISpoints[23].y, NEARCORIOLISpoints[23].z);

vertex(NEARCORIOLISpoints[29].x, NEARCORIOLISpoints[29].y, NEARCORIOLISpoints[29].z);
vertex(NEARCORIOLISpoints[24].x, NEARCORIOLISpoints[24].y, NEARCORIOLISpoints[24].z);
vertex(NEARCORIOLISpoints[26].x, NEARCORIOLISpoints[26].y, NEARCORIOLISpoints[26].z);

vertex(NEARCORIOLISpoints[32].x, NEARCORIOLISpoints[32].y, NEARCORIOLISpoints[32].z);
vertex(NEARCORIOLISpoints[31].x, NEARCORIOLISpoints[31].y, NEARCORIOLISpoints[31].z);
vertex(NEARCORIOLISpoints[33].x, NEARCORIOLISpoints[33].y, NEARCORIOLISpoints[33].z);

vertex(NEARCORIOLISpoints[34].x, NEARCORIOLISpoints[34].y, NEARCORIOLISpoints[34].z);
vertex(NEARCORIOLISpoints[35].x, NEARCORIOLISpoints[35].y, NEARCORIOLISpoints[35].z);
vertex(NEARCORIOLISpoints[29].x, NEARCORIOLISpoints[29].y, NEARCORIOLISpoints[29].z);
endShape();
popMatrix();
    
}
//----------------------------------------------------------------

//Object name: DODO
PVector[] DODOpoints = new PVector[]{
new PVector(-4,714,624),
new PVector(565,714,213),
new PVector(349,714,-456),
new PVector(-355,714,-456),
new PVector(-574,714,213),
new PVector(526,174,-726),
new PVector(-529,174,-726),
new PVector(-859,174,276),
new PVector(-4,174,894),
new PVector(850,174,276),
new PVector(-358,-717,510),
new PVector(-577,-717,-159),
new PVector(-10,-717,-573),
new PVector(559,-717,-159),
new PVector(343,-717,510),
new PVector(7,-177,-894),
new PVector(859,-177,-276),
new PVector(538,-177,729),
new PVector(-517,-177,726),
new PVector(-844,-177,-276),
new PVector(-532,177,-726),
new PVector(148,697,50),
new PVector(148,697,-50),
new PVector(-151,697,-50),
new PVector(-151,697,50)
};

void drawDODO(){
pushMatrix();
rotateX(frameCount*PI/280);
rotateY(frameCount*PI/170);
rotateZ(frameCount*PI/90);
beginShape(TRIANGLES);
fill(0);
stroke(255);
vertex(DODOpoints[2].x, DODOpoints[2].y, DODOpoints[2].z);
vertex(DODOpoints[1].x, DODOpoints[1].y, DODOpoints[1].z);
vertex(DODOpoints[0].x, DODOpoints[0].y, DODOpoints[0].z);

vertex(DODOpoints[0].x, DODOpoints[0].y, DODOpoints[0].z);
vertex(DODOpoints[3].x, DODOpoints[3].y, DODOpoints[3].z);
vertex(DODOpoints[2].x, DODOpoints[2].y, DODOpoints[2].z);

vertex(DODOpoints[4].x, DODOpoints[4].y, DODOpoints[4].z);
vertex(DODOpoints[3].x, DODOpoints[3].y, DODOpoints[3].z);
vertex(DODOpoints[0].x, DODOpoints[0].y, DODOpoints[0].z);

vertex(DODOpoints[3].x, DODOpoints[3].y, DODOpoints[3].z);
vertex(DODOpoints[6].x, DODOpoints[6].y, DODOpoints[6].z);
vertex(DODOpoints[5].x, DODOpoints[5].y, DODOpoints[5].z);

vertex(DODOpoints[2].x, DODOpoints[2].y, DODOpoints[2].z);
vertex(DODOpoints[3].x, DODOpoints[3].y, DODOpoints[3].z);
vertex(DODOpoints[5].x, DODOpoints[5].y, DODOpoints[5].z);

vertex(DODOpoints[5].x, DODOpoints[5].y, DODOpoints[5].z);
vertex(DODOpoints[6].x, DODOpoints[6].y, DODOpoints[6].z);
vertex(DODOpoints[15].x, DODOpoints[15].y, DODOpoints[15].z);

vertex(DODOpoints[3].x, DODOpoints[3].y, DODOpoints[3].z);
vertex(DODOpoints[4].x, DODOpoints[4].y, DODOpoints[4].z);
vertex(DODOpoints[7].x, DODOpoints[7].y, DODOpoints[7].z);

vertex(DODOpoints[7].x, DODOpoints[7].y, DODOpoints[7].z);
vertex(DODOpoints[6].x, DODOpoints[6].y, DODOpoints[6].z);
vertex(DODOpoints[3].x, DODOpoints[3].y, DODOpoints[3].z);

vertex(DODOpoints[19].x, DODOpoints[19].y, DODOpoints[19].z);
vertex(DODOpoints[6].x, DODOpoints[6].y, DODOpoints[6].z);
vertex(DODOpoints[7].x, DODOpoints[7].y, DODOpoints[7].z);

vertex(DODOpoints[4].x, DODOpoints[4].y, DODOpoints[4].z);
vertex(DODOpoints[0].x, DODOpoints[0].y, DODOpoints[0].z);
vertex(DODOpoints[7].x, DODOpoints[7].y, DODOpoints[7].z);

vertex(DODOpoints[7].x, DODOpoints[7].y, DODOpoints[7].z);
vertex(DODOpoints[0].x, DODOpoints[0].y, DODOpoints[0].z);
vertex(DODOpoints[8].x, DODOpoints[8].y, DODOpoints[8].z);

vertex(DODOpoints[18].x, DODOpoints[18].y, DODOpoints[18].z);
vertex(DODOpoints[7].x, DODOpoints[7].y, DODOpoints[7].z);
vertex(DODOpoints[8].x, DODOpoints[8].y, DODOpoints[8].z);

vertex(DODOpoints[1].x, DODOpoints[1].y, DODOpoints[1].z);
vertex(DODOpoints[2].x, DODOpoints[2].y, DODOpoints[2].z);
vertex(DODOpoints[5].x, DODOpoints[5].y, DODOpoints[5].z);

vertex(DODOpoints[5].x, DODOpoints[5].y, DODOpoints[5].z);
vertex(DODOpoints[9].x, DODOpoints[9].y, DODOpoints[9].z);
vertex(DODOpoints[1].x, DODOpoints[1].y, DODOpoints[1].z);

vertex(DODOpoints[9].x, DODOpoints[9].y, DODOpoints[9].z);
vertex(DODOpoints[5].x, DODOpoints[5].y, DODOpoints[5].z);
vertex(DODOpoints[16].x, DODOpoints[16].y, DODOpoints[16].z);

vertex(DODOpoints[8].x, DODOpoints[8].y, DODOpoints[8].z);
vertex(DODOpoints[0].x, DODOpoints[0].y, DODOpoints[0].z);
vertex(DODOpoints[1].x, DODOpoints[1].y, DODOpoints[1].z);

vertex(DODOpoints[1].x, DODOpoints[1].y, DODOpoints[1].z);
vertex(DODOpoints[9].x, DODOpoints[9].y, DODOpoints[9].z);
vertex(DODOpoints[8].x, DODOpoints[8].y, DODOpoints[8].z);

vertex(DODOpoints[17].x, DODOpoints[17].y, DODOpoints[17].z);
vertex(DODOpoints[8].x, DODOpoints[8].y, DODOpoints[8].z);
vertex(DODOpoints[9].x, DODOpoints[9].y, DODOpoints[9].z);

vertex(DODOpoints[12].x, DODOpoints[12].y, DODOpoints[12].z);
vertex(DODOpoints[11].x, DODOpoints[11].y, DODOpoints[11].z);
vertex(DODOpoints[10].x, DODOpoints[10].y, DODOpoints[10].z);

vertex(DODOpoints[10].x, DODOpoints[10].y, DODOpoints[10].z);
vertex(DODOpoints[13].x, DODOpoints[13].y, DODOpoints[13].z);
vertex(DODOpoints[12].x, DODOpoints[12].y, DODOpoints[12].z);

vertex(DODOpoints[14].x, DODOpoints[14].y, DODOpoints[14].z);
vertex(DODOpoints[13].x, DODOpoints[13].y, DODOpoints[13].z);
vertex(DODOpoints[10].x, DODOpoints[10].y, DODOpoints[10].z);

vertex(DODOpoints[13].x, DODOpoints[13].y, DODOpoints[13].z);
vertex(DODOpoints[16].x, DODOpoints[16].y, DODOpoints[16].z);
vertex(DODOpoints[15].x, DODOpoints[15].y, DODOpoints[15].z);

vertex(DODOpoints[12].x, DODOpoints[12].y, DODOpoints[12].z);
vertex(DODOpoints[13].x, DODOpoints[13].y, DODOpoints[13].z);
vertex(DODOpoints[15].x, DODOpoints[15].y, DODOpoints[15].z);

vertex(DODOpoints[5].x, DODOpoints[5].y, DODOpoints[5].z);
vertex(DODOpoints[15].x, DODOpoints[15].y, DODOpoints[15].z);
vertex(DODOpoints[16].x, DODOpoints[16].y, DODOpoints[16].z);

vertex(DODOpoints[13].x, DODOpoints[13].y, DODOpoints[13].z);
vertex(DODOpoints[14].x, DODOpoints[14].y, DODOpoints[14].z);
vertex(DODOpoints[17].x, DODOpoints[17].y, DODOpoints[17].z);

vertex(DODOpoints[17].x, DODOpoints[17].y, DODOpoints[17].z);
vertex(DODOpoints[16].x, DODOpoints[16].y, DODOpoints[16].z);
vertex(DODOpoints[13].x, DODOpoints[13].y, DODOpoints[13].z);

vertex(DODOpoints[9].x, DODOpoints[9].y, DODOpoints[9].z);
vertex(DODOpoints[16].x, DODOpoints[16].y, DODOpoints[16].z);
vertex(DODOpoints[17].x, DODOpoints[17].y, DODOpoints[17].z);

vertex(DODOpoints[14].x, DODOpoints[14].y, DODOpoints[14].z);
vertex(DODOpoints[10].x, DODOpoints[10].y, DODOpoints[10].z);
vertex(DODOpoints[17].x, DODOpoints[17].y, DODOpoints[17].z);

vertex(DODOpoints[17].x, DODOpoints[17].y, DODOpoints[17].z);
vertex(DODOpoints[10].x, DODOpoints[10].y, DODOpoints[10].z);
vertex(DODOpoints[18].x, DODOpoints[18].y, DODOpoints[18].z);

vertex(DODOpoints[17].x, DODOpoints[17].y, DODOpoints[17].z);
vertex(DODOpoints[18].x, DODOpoints[18].y, DODOpoints[18].z);
vertex(DODOpoints[8].x, DODOpoints[8].y, DODOpoints[8].z);

vertex(DODOpoints[11].x, DODOpoints[11].y, DODOpoints[11].z);
vertex(DODOpoints[12].x, DODOpoints[12].y, DODOpoints[12].z);
vertex(DODOpoints[15].x, DODOpoints[15].y, DODOpoints[15].z);

vertex(DODOpoints[15].x, DODOpoints[15].y, DODOpoints[15].z);
vertex(DODOpoints[19].x, DODOpoints[19].y, DODOpoints[19].z);
vertex(DODOpoints[11].x, DODOpoints[11].y, DODOpoints[11].z);

vertex(DODOpoints[19].x, DODOpoints[19].y, DODOpoints[19].z);
vertex(DODOpoints[15].x, DODOpoints[15].y, DODOpoints[15].z);
vertex(DODOpoints[20].x, DODOpoints[20].y, DODOpoints[20].z);

vertex(DODOpoints[18].x, DODOpoints[18].y, DODOpoints[18].z);
vertex(DODOpoints[10].x, DODOpoints[10].y, DODOpoints[10].z);
vertex(DODOpoints[11].x, DODOpoints[11].y, DODOpoints[11].z);

vertex(DODOpoints[11].x, DODOpoints[11].y, DODOpoints[11].z);
vertex(DODOpoints[19].x, DODOpoints[19].y, DODOpoints[19].z);
vertex(DODOpoints[18].x, DODOpoints[18].y, DODOpoints[18].z);

vertex(DODOpoints[7].x, DODOpoints[7].y, DODOpoints[7].z);
vertex(DODOpoints[18].x, DODOpoints[18].y, DODOpoints[18].z);
vertex(DODOpoints[19].x, DODOpoints[19].y, DODOpoints[19].z);

vertex(DODOpoints[23].x, DODOpoints[23].y, DODOpoints[23].z);
vertex(DODOpoints[22].x, DODOpoints[22].y, DODOpoints[22].z);
vertex(DODOpoints[21].x, DODOpoints[21].y, DODOpoints[21].z);

vertex(DODOpoints[21].x, DODOpoints[21].y, DODOpoints[21].z);
vertex(DODOpoints[24].x, DODOpoints[24].y, DODOpoints[24].z);
vertex(DODOpoints[23].x, DODOpoints[23].y, DODOpoints[23].z);
endShape();
popMatrix();
    
}
//----------------------------------------------------------------

//Object name: NEARDODO
PVector[] NEARDODOpoints = new PVector[]{
new PVector(-7,714,48),
new PVector(-7,680,48),
new PVector(6,714,48),
new PVector(6,680,48),
new PVector(-93,648,-48),
new PVector(-68,673,-48),
new PVector(-43,673,-48),
new PVector(-43,648,-48),
new PVector(-18,673,-48),
new PVector(5,673,-48),
new PVector(0,648,-48),
new PVector(24,673,-48),
new PVector(49,673,-48),
new PVector(42,648,-48),
new PVector(67,673,-48),
new PVector(92,673,-48),
new PVector(-68,648,-48),
new PVector(-18,648,-48),
new PVector(24,648,-48),
new PVector(67,648,-48),
new PVector(-355,715,-456),
new PVector(-529,175,-726),
new PVector(526,175,-726),
new PVector(349,715,-456),
new PVector(-574,715,213),
new PVector(-859,175,276),
new PVector(-4,715,624),
new PVector(-4,175,894),
new PVector(565,715,213),
new PVector(850,175,276),
new PVector(-10,-715,-573),
new PVector(-577,-715,-159),
new PVector(-358,-715,510),
new PVector(559,-715,-159),
new PVector(343,-715,510),
new PVector(859,-175,-276),
new PVector(7,-175,-894),
new PVector(538,-175,729),
new PVector(-517,-175,726),
new PVector(-844,-175,-276),
new PVector(-532,178,-726),
new PVector(-151,715,-50),
new PVector(148,715,-50),
new PVector(148,715,50),
new PVector(-151,715,50)
};

void drawNEARDODO(){
pushMatrix();
rotateX(frameCount*PI/280);
rotateY(frameCount*PI/170);
rotateZ(frameCount*PI/90);
beginShape(TRIANGLES);
fill(0);
stroke(255);
vertex(NEARDODOpoints[0].x, NEARDODOpoints[0].y, NEARDODOpoints[0].z);
vertex(NEARDODOpoints[1].x, NEARDODOpoints[1].y, NEARDODOpoints[1].z);
vertex(NEARDODOpoints[2].x, NEARDODOpoints[2].y, NEARDODOpoints[2].z);

vertex(NEARDODOpoints[1].x, NEARDODOpoints[1].y, NEARDODOpoints[1].z);
vertex(NEARDODOpoints[3].x, NEARDODOpoints[3].y, NEARDODOpoints[3].z);
vertex(NEARDODOpoints[2].x, NEARDODOpoints[2].y, NEARDODOpoints[2].z);

vertex(NEARDODOpoints[4].x, NEARDODOpoints[4].y, NEARDODOpoints[4].z);
vertex(NEARDODOpoints[5].x, NEARDODOpoints[5].y, NEARDODOpoints[5].z);
vertex(NEARDODOpoints[6].x, NEARDODOpoints[6].y, NEARDODOpoints[6].z);

vertex(NEARDODOpoints[7].x, NEARDODOpoints[7].y, NEARDODOpoints[7].z);
vertex(NEARDODOpoints[8].x, NEARDODOpoints[8].y, NEARDODOpoints[8].z);
vertex(NEARDODOpoints[9].x, NEARDODOpoints[9].y, NEARDODOpoints[9].z);

vertex(NEARDODOpoints[10].x, NEARDODOpoints[10].y, NEARDODOpoints[10].z);
vertex(NEARDODOpoints[11].x, NEARDODOpoints[11].y, NEARDODOpoints[11].z);
vertex(NEARDODOpoints[12].x, NEARDODOpoints[12].y, NEARDODOpoints[12].z);

vertex(NEARDODOpoints[13].x, NEARDODOpoints[13].y, NEARDODOpoints[13].z);
vertex(NEARDODOpoints[14].x, NEARDODOpoints[14].y, NEARDODOpoints[14].z);
vertex(NEARDODOpoints[15].x, NEARDODOpoints[15].y, NEARDODOpoints[15].z);

vertex(NEARDODOpoints[6].x, NEARDODOpoints[6].y, NEARDODOpoints[6].z);
vertex(NEARDODOpoints[16].x, NEARDODOpoints[16].y, NEARDODOpoints[16].z);
vertex(NEARDODOpoints[4].x, NEARDODOpoints[4].y, NEARDODOpoints[4].z);

vertex(NEARDODOpoints[9].x, NEARDODOpoints[9].y, NEARDODOpoints[9].z);
vertex(NEARDODOpoints[17].x, NEARDODOpoints[17].y, NEARDODOpoints[17].z);
vertex(NEARDODOpoints[7].x, NEARDODOpoints[7].y, NEARDODOpoints[7].z);

vertex(NEARDODOpoints[12].x, NEARDODOpoints[12].y, NEARDODOpoints[12].z);
vertex(NEARDODOpoints[18].x, NEARDODOpoints[18].y, NEARDODOpoints[18].z);
vertex(NEARDODOpoints[10].x, NEARDODOpoints[10].y, NEARDODOpoints[10].z);

vertex(NEARDODOpoints[15].x, NEARDODOpoints[15].y, NEARDODOpoints[15].z);
vertex(NEARDODOpoints[19].x, NEARDODOpoints[19].y, NEARDODOpoints[19].z);
vertex(NEARDODOpoints[13].x, NEARDODOpoints[13].y, NEARDODOpoints[13].z);

vertex(NEARDODOpoints[20].x, NEARDODOpoints[20].y, NEARDODOpoints[20].z);
vertex(NEARDODOpoints[21].x, NEARDODOpoints[21].y, NEARDODOpoints[21].z);
vertex(NEARDODOpoints[22].x, NEARDODOpoints[22].y, NEARDODOpoints[22].z);

vertex(NEARDODOpoints[23].x, NEARDODOpoints[23].y, NEARDODOpoints[23].z);
vertex(NEARDODOpoints[20].x, NEARDODOpoints[20].y, NEARDODOpoints[20].z);
vertex(NEARDODOpoints[22].x, NEARDODOpoints[22].y, NEARDODOpoints[22].z);

vertex(NEARDODOpoints[20].x, NEARDODOpoints[20].y, NEARDODOpoints[20].z);
vertex(NEARDODOpoints[24].x, NEARDODOpoints[24].y, NEARDODOpoints[24].z);
vertex(NEARDODOpoints[25].x, NEARDODOpoints[25].y, NEARDODOpoints[25].z);

vertex(NEARDODOpoints[25].x, NEARDODOpoints[25].y, NEARDODOpoints[25].z);
vertex(NEARDODOpoints[21].x, NEARDODOpoints[21].y, NEARDODOpoints[21].z);
vertex(NEARDODOpoints[20].x, NEARDODOpoints[20].y, NEARDODOpoints[20].z);

vertex(NEARDODOpoints[24].x, NEARDODOpoints[24].y, NEARDODOpoints[24].z);
vertex(NEARDODOpoints[26].x, NEARDODOpoints[26].y, NEARDODOpoints[26].z);
vertex(NEARDODOpoints[25].x, NEARDODOpoints[25].y, NEARDODOpoints[25].z);

vertex(NEARDODOpoints[25].x, NEARDODOpoints[25].y, NEARDODOpoints[25].z);
vertex(NEARDODOpoints[26].x, NEARDODOpoints[26].y, NEARDODOpoints[26].z);
vertex(NEARDODOpoints[27].x, NEARDODOpoints[27].y, NEARDODOpoints[27].z);

vertex(NEARDODOpoints[28].x, NEARDODOpoints[28].y, NEARDODOpoints[28].z);
vertex(NEARDODOpoints[23].x, NEARDODOpoints[23].y, NEARDODOpoints[23].z);
vertex(NEARDODOpoints[22].x, NEARDODOpoints[22].y, NEARDODOpoints[22].z);

vertex(NEARDODOpoints[22].x, NEARDODOpoints[22].y, NEARDODOpoints[22].z);
vertex(NEARDODOpoints[29].x, NEARDODOpoints[29].y, NEARDODOpoints[29].z);
vertex(NEARDODOpoints[28].x, NEARDODOpoints[28].y, NEARDODOpoints[28].z);

vertex(NEARDODOpoints[27].x, NEARDODOpoints[27].y, NEARDODOpoints[27].z);
vertex(NEARDODOpoints[26].x, NEARDODOpoints[26].y, NEARDODOpoints[26].z);
vertex(NEARDODOpoints[28].x, NEARDODOpoints[28].y, NEARDODOpoints[28].z);

vertex(NEARDODOpoints[28].x, NEARDODOpoints[28].y, NEARDODOpoints[28].z);
vertex(NEARDODOpoints[29].x, NEARDODOpoints[29].y, NEARDODOpoints[29].z);
vertex(NEARDODOpoints[27].x, NEARDODOpoints[27].y, NEARDODOpoints[27].z);

vertex(NEARDODOpoints[32].x, NEARDODOpoints[32].y, NEARDODOpoints[32].z);
vertex(NEARDODOpoints[33].x, NEARDODOpoints[33].y, NEARDODOpoints[33].z);
vertex(NEARDODOpoints[30].x, NEARDODOpoints[30].y, NEARDODOpoints[30].z);

vertex(NEARDODOpoints[30].x, NEARDODOpoints[30].y, NEARDODOpoints[30].z);
vertex(NEARDODOpoints[33].x, NEARDODOpoints[33].y, NEARDODOpoints[33].z);
vertex(NEARDODOpoints[36].x, NEARDODOpoints[36].y, NEARDODOpoints[36].z);

vertex(NEARDODOpoints[33].x, NEARDODOpoints[33].y, NEARDODOpoints[33].z);
vertex(NEARDODOpoints[34].x, NEARDODOpoints[34].y, NEARDODOpoints[34].z);
vertex(NEARDODOpoints[37].x, NEARDODOpoints[37].y, NEARDODOpoints[37].z);

vertex(NEARDODOpoints[37].x, NEARDODOpoints[37].y, NEARDODOpoints[37].z);
vertex(NEARDODOpoints[35].x, NEARDODOpoints[35].y, NEARDODOpoints[35].z);
vertex(NEARDODOpoints[33].x, NEARDODOpoints[33].y, NEARDODOpoints[33].z);

vertex(NEARDODOpoints[34].x, NEARDODOpoints[34].y, NEARDODOpoints[34].z);
vertex(NEARDODOpoints[32].x, NEARDODOpoints[32].y, NEARDODOpoints[32].z);
vertex(NEARDODOpoints[37].x, NEARDODOpoints[37].y, NEARDODOpoints[37].z);

vertex(NEARDODOpoints[37].x, NEARDODOpoints[37].y, NEARDODOpoints[37].z);
vertex(NEARDODOpoints[32].x, NEARDODOpoints[32].y, NEARDODOpoints[32].z);
vertex(NEARDODOpoints[38].x, NEARDODOpoints[38].y, NEARDODOpoints[38].z);

vertex(NEARDODOpoints[31].x, NEARDODOpoints[31].y, NEARDODOpoints[31].z);
vertex(NEARDODOpoints[30].x, NEARDODOpoints[30].y, NEARDODOpoints[30].z);
vertex(NEARDODOpoints[36].x, NEARDODOpoints[36].y, NEARDODOpoints[36].z);

vertex(NEARDODOpoints[31].x, NEARDODOpoints[31].y, NEARDODOpoints[31].z);
vertex(NEARDODOpoints[39].x, NEARDODOpoints[39].y, NEARDODOpoints[39].z);
vertex(NEARDODOpoints[38].x, NEARDODOpoints[38].y, NEARDODOpoints[38].z);

vertex(NEARDODOpoints[37].x, NEARDODOpoints[37].y, NEARDODOpoints[37].z);
vertex(NEARDODOpoints[38].x, NEARDODOpoints[38].y, NEARDODOpoints[38].z);
vertex(NEARDODOpoints[27].x, NEARDODOpoints[27].y, NEARDODOpoints[27].z);

vertex(NEARDODOpoints[25].x, NEARDODOpoints[25].y, NEARDODOpoints[25].z);
vertex(NEARDODOpoints[38].x, NEARDODOpoints[38].y, NEARDODOpoints[38].z);
vertex(NEARDODOpoints[39].x, NEARDODOpoints[39].y, NEARDODOpoints[39].z);

vertex(NEARDODOpoints[39].x, NEARDODOpoints[39].y, NEARDODOpoints[39].z);
vertex(NEARDODOpoints[36].x, NEARDODOpoints[36].y, NEARDODOpoints[36].z);
vertex(NEARDODOpoints[40].x, NEARDODOpoints[40].y, NEARDODOpoints[40].z);

vertex(NEARDODOpoints[22].x, NEARDODOpoints[22].y, NEARDODOpoints[22].z);
vertex(NEARDODOpoints[36].x, NEARDODOpoints[36].y, NEARDODOpoints[36].z);
vertex(NEARDODOpoints[35].x, NEARDODOpoints[35].y, NEARDODOpoints[35].z);

vertex(NEARDODOpoints[29].x, NEARDODOpoints[29].y, NEARDODOpoints[29].z);
vertex(NEARDODOpoints[22].x, NEARDODOpoints[22].y, NEARDODOpoints[22].z);
vertex(NEARDODOpoints[35].x, NEARDODOpoints[35].y, NEARDODOpoints[35].z);

vertex(NEARDODOpoints[38].x, NEARDODOpoints[38].y, NEARDODOpoints[38].z);
vertex(NEARDODOpoints[25].x, NEARDODOpoints[25].y, NEARDODOpoints[25].z);
vertex(NEARDODOpoints[27].x, NEARDODOpoints[27].y, NEARDODOpoints[27].z);

vertex(NEARDODOpoints[44].x, NEARDODOpoints[44].y, NEARDODOpoints[44].z);
vertex(NEARDODOpoints[43].x, NEARDODOpoints[43].y, NEARDODOpoints[43].z);
vertex(NEARDODOpoints[26].x, NEARDODOpoints[26].y, NEARDODOpoints[26].z);

vertex(NEARDODOpoints[26].x, NEARDODOpoints[26].y, NEARDODOpoints[26].z);
vertex(NEARDODOpoints[24].x, NEARDODOpoints[24].y, NEARDODOpoints[24].z);
vertex(NEARDODOpoints[44].x, NEARDODOpoints[44].y, NEARDODOpoints[44].z);

vertex(NEARDODOpoints[43].x, NEARDODOpoints[43].y, NEARDODOpoints[43].z);
vertex(NEARDODOpoints[23].x, NEARDODOpoints[23].y, NEARDODOpoints[23].z);
vertex(NEARDODOpoints[28].x, NEARDODOpoints[28].y, NEARDODOpoints[28].z);

vertex(NEARDODOpoints[30].x, NEARDODOpoints[30].y, NEARDODOpoints[30].z);
vertex(NEARDODOpoints[31].x, NEARDODOpoints[31].y, NEARDODOpoints[31].z);
vertex(NEARDODOpoints[32].x, NEARDODOpoints[32].y, NEARDODOpoints[32].z);

vertex(NEARDODOpoints[34].x, NEARDODOpoints[34].y, NEARDODOpoints[34].z);
vertex(NEARDODOpoints[33].x, NEARDODOpoints[33].y, NEARDODOpoints[33].z);
vertex(NEARDODOpoints[32].x, NEARDODOpoints[32].y, NEARDODOpoints[32].z);

vertex(NEARDODOpoints[33].x, NEARDODOpoints[33].y, NEARDODOpoints[33].z);
vertex(NEARDODOpoints[35].x, NEARDODOpoints[35].y, NEARDODOpoints[35].z);
vertex(NEARDODOpoints[36].x, NEARDODOpoints[36].y, NEARDODOpoints[36].z);

vertex(NEARDODOpoints[36].x, NEARDODOpoints[36].y, NEARDODOpoints[36].z);
vertex(NEARDODOpoints[39].x, NEARDODOpoints[39].y, NEARDODOpoints[39].z);
vertex(NEARDODOpoints[31].x, NEARDODOpoints[31].y, NEARDODOpoints[31].z);

vertex(NEARDODOpoints[38].x, NEARDODOpoints[38].y, NEARDODOpoints[38].z);
vertex(NEARDODOpoints[32].x, NEARDODOpoints[32].y, NEARDODOpoints[32].z);
vertex(NEARDODOpoints[31].x, NEARDODOpoints[31].y, NEARDODOpoints[31].z);

vertex(NEARDODOpoints[29].x, NEARDODOpoints[29].y, NEARDODOpoints[29].z);
vertex(NEARDODOpoints[35].x, NEARDODOpoints[35].y, NEARDODOpoints[35].z);
vertex(NEARDODOpoints[37].x, NEARDODOpoints[37].y, NEARDODOpoints[37].z);

vertex(NEARDODOpoints[37].x, NEARDODOpoints[37].y, NEARDODOpoints[37].z);
vertex(NEARDODOpoints[27].x, NEARDODOpoints[27].y, NEARDODOpoints[27].z);
vertex(NEARDODOpoints[29].x, NEARDODOpoints[29].y, NEARDODOpoints[29].z);

vertex(NEARDODOpoints[39].x, NEARDODOpoints[39].y, NEARDODOpoints[39].z);
vertex(NEARDODOpoints[21].x, NEARDODOpoints[21].y, NEARDODOpoints[21].z);
vertex(NEARDODOpoints[25].x, NEARDODOpoints[25].y, NEARDODOpoints[25].z);

vertex(NEARDODOpoints[22].x, NEARDODOpoints[22].y, NEARDODOpoints[22].z);
vertex(NEARDODOpoints[21].x, NEARDODOpoints[21].y, NEARDODOpoints[21].z);
vertex(NEARDODOpoints[36].x, NEARDODOpoints[36].y, NEARDODOpoints[36].z);

vertex(NEARDODOpoints[41].x, NEARDODOpoints[41].y, NEARDODOpoints[41].z);
vertex(NEARDODOpoints[42].x, NEARDODOpoints[42].y, NEARDODOpoints[42].z);
vertex(NEARDODOpoints[43].x, NEARDODOpoints[43].y, NEARDODOpoints[43].z);

vertex(NEARDODOpoints[43].x, NEARDODOpoints[43].y, NEARDODOpoints[43].z);
vertex(NEARDODOpoints[44].x, NEARDODOpoints[44].y, NEARDODOpoints[44].z);
vertex(NEARDODOpoints[41].x, NEARDODOpoints[41].y, NEARDODOpoints[41].z);

vertex(NEARDODOpoints[43].x, NEARDODOpoints[43].y, NEARDODOpoints[43].z);
vertex(NEARDODOpoints[42].x, NEARDODOpoints[42].y, NEARDODOpoints[42].z);
vertex(NEARDODOpoints[23].x, NEARDODOpoints[23].y, NEARDODOpoints[23].z);

vertex(NEARDODOpoints[44].x, NEARDODOpoints[44].y, NEARDODOpoints[44].z);
vertex(NEARDODOpoints[20].x, NEARDODOpoints[20].y, NEARDODOpoints[20].z);
vertex(NEARDODOpoints[41].x, NEARDODOpoints[41].y, NEARDODOpoints[41].z);

vertex(NEARDODOpoints[41].x, NEARDODOpoints[41].y, NEARDODOpoints[41].z);
vertex(NEARDODOpoints[20].x, NEARDODOpoints[20].y, NEARDODOpoints[20].z);
vertex(NEARDODOpoints[42].x, NEARDODOpoints[42].y, NEARDODOpoints[42].z);

vertex(NEARDODOpoints[42].x, NEARDODOpoints[42].y, NEARDODOpoints[42].z);
vertex(NEARDODOpoints[20].x, NEARDODOpoints[20].y, NEARDODOpoints[20].z);
vertex(NEARDODOpoints[23].x, NEARDODOpoints[23].y, NEARDODOpoints[23].z);

vertex(NEARDODOpoints[26].x, NEARDODOpoints[26].y, NEARDODOpoints[26].z);
vertex(NEARDODOpoints[43].x, NEARDODOpoints[43].y, NEARDODOpoints[43].z);
vertex(NEARDODOpoints[28].x, NEARDODOpoints[28].y, NEARDODOpoints[28].z);

vertex(NEARDODOpoints[44].x, NEARDODOpoints[44].y, NEARDODOpoints[44].z);
vertex(NEARDODOpoints[24].x, NEARDODOpoints[24].y, NEARDODOpoints[24].z);
vertex(NEARDODOpoints[20].x, NEARDODOpoints[20].y, NEARDODOpoints[20].z);
endShape();
popMatrix();
    
}
//----------------------------------------------------------------
void drawNEARDODO(){
pushMatrix();
rotateX(frameCount*PI/280);
rotateY(frameCount*PI/170);
rotateZ(frameCount*PI/90);
beginShape(TRIANGLES);
fill(0);
stroke(255);
vertex(NEARDODOpoints[0].x, NEARDODOpoints[0].y, NEARDODOpoints[0].z);
vertex(NEARDODOpoints[1].x, NEARDODOpoints[1].y, NEARDODOpoints[1].z);
vertex(NEARDODOpoints[2].x, NEARDODOpoints[2].y, NEARDODOpoints[2].z);

vertex(NEARDODOpoints[2].x, NEARDODOpoints[2].y, NEARDODOpoints[2].z);
vertex(NEARDODOpoints[3].x, NEARDODOpoints[3].y, NEARDODOpoints[3].z);
vertex(NEARDODOpoints[0].x, NEARDODOpoints[0].y, NEARDODOpoints[0].z);

vertex(NEARDODOpoints[0].x, NEARDODOpoints[0].y, NEARDODOpoints[0].z);
vertex(NEARDODOpoints[3].x, NEARDODOpoints[3].y, NEARDODOpoints[3].z);
vertex(NEARDODOpoints[4].x, NEARDODOpoints[4].y, NEARDODOpoints[4].z);

vertex(NEARDODOpoints[21].x, NEARDODOpoints[21].y, NEARDODOpoints[21].z);
vertex(NEARDODOpoints[22].x, NEARDODOpoints[22].y, NEARDODOpoints[22].z);
vertex(NEARDODOpoints[23].x, NEARDODOpoints[23].y, NEARDODOpoints[23].z);

vertex(NEARDODOpoints[23].x, NEARDODOpoints[23].y, NEARDODOpoints[23].z);
vertex(NEARDODOpoints[24].x, NEARDODOpoints[24].y, NEARDODOpoints[24].z);
vertex(NEARDODOpoints[21].x, NEARDODOpoints[21].y, NEARDODOpoints[21].z);

vertex(NEARDODOpoints[5].x, NEARDODOpoints[5].y, NEARDODOpoints[5].z);
vertex(NEARDODOpoints[6].x, NEARDODOpoints[6].y, NEARDODOpoints[6].z);
vertex(NEARDODOpoints[3].x, NEARDODOpoints[3].y, NEARDODOpoints[3].z);

vertex(NEARDODOpoints[5].x, NEARDODOpoints[5].y, NEARDODOpoints[5].z);
vertex(NEARDODOpoints[3].x, NEARDODOpoints[3].y, NEARDODOpoints[3].z);
vertex(NEARDODOpoints[2].x, NEARDODOpoints[2].y, NEARDODOpoints[2].z);

vertex(NEARDODOpoints[15].x, NEARDODOpoints[15].y, NEARDODOpoints[15].z);
vertex(NEARDODOpoints[6].x, NEARDODOpoints[6].y, NEARDODOpoints[6].z);
vertex(NEARDODOpoints[5].x, NEARDODOpoints[5].y, NEARDODOpoints[5].z);

vertex(NEARDODOpoints[7].x, NEARDODOpoints[7].y, NEARDODOpoints[7].z);
vertex(NEARDODOpoints[4].x, NEARDODOpoints[4].y, NEARDODOpoints[4].z);
vertex(NEARDODOpoints[3].x, NEARDODOpoints[3].y, NEARDODOpoints[3].z);

vertex(NEARDODOpoints[3].x, NEARDODOpoints[3].y, NEARDODOpoints[3].z);
vertex(NEARDODOpoints[6].x, NEARDODOpoints[6].y, NEARDODOpoints[6].z);
vertex(NEARDODOpoints[7].x, NEARDODOpoints[7].y, NEARDODOpoints[7].z);

vertex(NEARDODOpoints[7].x, NEARDODOpoints[7].y, NEARDODOpoints[7].z);
vertex(NEARDODOpoints[6].x, NEARDODOpoints[6].y, NEARDODOpoints[6].z);
vertex(NEARDODOpoints[19].x, NEARDODOpoints[19].y, NEARDODOpoints[19].z);

vertex(NEARDODOpoints[7].x, NEARDODOpoints[7].y, NEARDODOpoints[7].z);
vertex(NEARDODOpoints[0].x, NEARDODOpoints[0].y, NEARDODOpoints[0].z);
vertex(NEARDODOpoints[4].x, NEARDODOpoints[4].y, NEARDODOpoints[4].z);

vertex(NEARDODOpoints[8].x, NEARDODOpoints[8].y, NEARDODOpoints[8].z);
vertex(NEARDODOpoints[0].x, NEARDODOpoints[0].y, NEARDODOpoints[0].z);
vertex(NEARDODOpoints[7].x, NEARDODOpoints[7].y, NEARDODOpoints[7].z);

vertex(NEARDODOpoints[8].x, NEARDODOpoints[8].y, NEARDODOpoints[8].z);
vertex(NEARDODOpoints[7].x, NEARDODOpoints[7].y, NEARDODOpoints[7].z);
vertex(NEARDODOpoints[18].x, NEARDODOpoints[18].y, NEARDODOpoints[18].z);

vertex(NEARDODOpoints[5].x, NEARDODOpoints[5].y, NEARDODOpoints[5].z);
vertex(NEARDODOpoints[2].x, NEARDODOpoints[2].y, NEARDODOpoints[2].z);
vertex(NEARDODOpoints[1].x, NEARDODOpoints[1].y, NEARDODOpoints[1].z);

vertex(NEARDODOpoints[1].x, NEARDODOpoints[1].y, NEARDODOpoints[1].z);
vertex(NEARDODOpoints[9].x, NEARDODOpoints[9].y, NEARDODOpoints[9].z);
vertex(NEARDODOpoints[5].x, NEARDODOpoints[5].y, NEARDODOpoints[5].z);

vertex(NEARDODOpoints[16].x, NEARDODOpoints[16].y, NEARDODOpoints[16].z);
vertex(NEARDODOpoints[5].x, NEARDODOpoints[5].y, NEARDODOpoints[5].z);
vertex(NEARDODOpoints[9].x, NEARDODOpoints[9].y, NEARDODOpoints[9].z);

vertex(NEARDODOpoints[1].x, NEARDODOpoints[1].y, NEARDODOpoints[1].z);
vertex(NEARDODOpoints[0].x, NEARDODOpoints[0].y, NEARDODOpoints[0].z);
vertex(NEARDODOpoints[8].x, NEARDODOpoints[8].y, NEARDODOpoints[8].z);

vertex(NEARDODOpoints[8].x, NEARDODOpoints[8].y, NEARDODOpoints[8].z);
vertex(NEARDODOpoints[9].x, NEARDODOpoints[9].y, NEARDODOpoints[9].z);
vertex(NEARDODOpoints[1].x, NEARDODOpoints[1].y, NEARDODOpoints[1].z);

vertex(NEARDODOpoints[9].x, NEARDODOpoints[9].y, NEARDODOpoints[9].z);
vertex(NEARDODOpoints[8].x, NEARDODOpoints[8].y, NEARDODOpoints[8].z);
vertex(NEARDODOpoints[17].x, NEARDODOpoints[17].y, NEARDODOpoints[17].z);

vertex(NEARDODOpoints[10].x, NEARDODOpoints[10].y, NEARDODOpoints[10].z);
vertex(NEARDODOpoints[11].x, NEARDODOpoints[11].y, NEARDODOpoints[11].z);
vertex(NEARDODOpoints[12].x, NEARDODOpoints[12].y, NEARDODOpoints[12].z);

vertex(NEARDODOpoints[12].x, NEARDODOpoints[12].y, NEARDODOpoints[12].z);
vertex(NEARDODOpoints[13].x, NEARDODOpoints[13].y, NEARDODOpoints[13].z);
vertex(NEARDODOpoints[10].x, NEARDODOpoints[10].y, NEARDODOpoints[10].z);

vertex(NEARDODOpoints[10].x, NEARDODOpoints[10].y, NEARDODOpoints[10].z);
vertex(NEARDODOpoints[13].x, NEARDODOpoints[13].y, NEARDODOpoints[13].z);
vertex(NEARDODOpoints[14].x, NEARDODOpoints[14].y, NEARDODOpoints[14].z);

vertex(NEARDODOpoints[15].x, NEARDODOpoints[15].y, NEARDODOpoints[15].z);
vertex(NEARDODOpoints[16].x, NEARDODOpoints[16].y, NEARDODOpoints[16].z);
vertex(NEARDODOpoints[13].x, NEARDODOpoints[13].y, NEARDODOpoints[13].z);

vertex(NEARDODOpoints[15].x, NEARDODOpoints[15].y, NEARDODOpoints[15].z);
vertex(NEARDODOpoints[13].x, NEARDODOpoints[13].y, NEARDODOpoints[13].z);
vertex(NEARDODOpoints[12].x, NEARDODOpoints[12].y, NEARDODOpoints[12].z);

vertex(NEARDODOpoints[16].x, NEARDODOpoints[16].y, NEARDODOpoints[16].z);
vertex(NEARDODOpoints[15].x, NEARDODOpoints[15].y, NEARDODOpoints[15].z);
vertex(NEARDODOpoints[5].x, NEARDODOpoints[5].y, NEARDODOpoints[5].z);

vertex(NEARDODOpoints[17].x, NEARDODOpoints[17].y, NEARDODOpoints[17].z);
vertex(NEARDODOpoints[14].x, NEARDODOpoints[14].y, NEARDODOpoints[14].z);
vertex(NEARDODOpoints[13].x, NEARDODOpoints[13].y, NEARDODOpoints[13].z);

vertex(NEARDODOpoints[13].x, NEARDODOpoints[13].y, NEARDODOpoints[13].z);
vertex(NEARDODOpoints[16].x, NEARDODOpoints[16].y, NEARDODOpoints[16].z);
vertex(NEARDODOpoints[17].x, NEARDODOpoints[17].y, NEARDODOpoints[17].z);

vertex(NEARDODOpoints[17].x, NEARDODOpoints[17].y, NEARDODOpoints[17].z);
vertex(NEARDODOpoints[16].x, NEARDODOpoints[16].y, NEARDODOpoints[16].z);
vertex(NEARDODOpoints[9].x, NEARDODOpoints[9].y, NEARDODOpoints[9].z);

vertex(NEARDODOpoints[17].x, NEARDODOpoints[17].y, NEARDODOpoints[17].z);
vertex(NEARDODOpoints[10].x, NEARDODOpoints[10].y, NEARDODOpoints[10].z);
vertex(NEARDODOpoints[14].x, NEARDODOpoints[14].y, NEARDODOpoints[14].z);

vertex(NEARDODOpoints[18].x, NEARDODOpoints[18].y, NEARDODOpoints[18].z);
vertex(NEARDODOpoints[10].x, NEARDODOpoints[10].y, NEARDODOpoints[10].z);
vertex(NEARDODOpoints[17].x, NEARDODOpoints[17].y, NEARDODOpoints[17].z);

vertex(NEARDODOpoints[8].x, NEARDODOpoints[8].y, NEARDODOpoints[8].z);
vertex(NEARDODOpoints[18].x, NEARDODOpoints[18].y, NEARDODOpoints[18].z);
vertex(NEARDODOpoints[17].x, NEARDODOpoints[17].y, NEARDODOpoints[17].z);

vertex(NEARDODOpoints[15].x, NEARDODOpoints[15].y, NEARDODOpoints[15].z);
vertex(NEARDODOpoints[12].x, NEARDODOpoints[12].y, NEARDODOpoints[12].z);
vertex(NEARDODOpoints[11].x, NEARDODOpoints[11].y, NEARDODOpoints[11].z);

vertex(NEARDODOpoints[11].x, NEARDODOpoints[11].y, NEARDODOpoints[11].z);
vertex(NEARDODOpoints[19].x, NEARDODOpoints[19].y, NEARDODOpoints[19].z);
vertex(NEARDODOpoints[15].x, NEARDODOpoints[15].y, NEARDODOpoints[15].z);

vertex(NEARDODOpoints[20].x, NEARDODOpoints[20].y, NEARDODOpoints[20].z);
vertex(NEARDODOpoints[15].x, NEARDODOpoints[15].y, NEARDODOpoints[15].z);
vertex(NEARDODOpoints[19].x, NEARDODOpoints[19].y, NEARDODOpoints[19].z);

vertex(NEARDODOpoints[11].x, NEARDODOpoints[11].y, NEARDODOpoints[11].z);
vertex(NEARDODOpoints[10].x, NEARDODOpoints[10].y, NEARDODOpoints[10].z);
vertex(NEARDODOpoints[18].x, NEARDODOpoints[18].y, NEARDODOpoints[18].z);

vertex(NEARDODOpoints[18].x, NEARDODOpoints[18].y, NEARDODOpoints[18].z);
vertex(NEARDODOpoints[19].x, NEARDODOpoints[19].y, NEARDODOpoints[19].z);
vertex(NEARDODOpoints[11].x, NEARDODOpoints[11].y, NEARDODOpoints[11].z);

vertex(NEARDODOpoints[19].x, NEARDODOpoints[19].y, NEARDODOpoints[19].z);
vertex(NEARDODOpoints[18].x, NEARDODOpoints[18].y, NEARDODOpoints[18].z);
vertex(NEARDODOpoints[7].x, NEARDODOpoints[7].y, NEARDODOpoints[7].z);
endShape();
popMatrix();
    
}
//----------------------------------------------------------------

//Object name: MISSILEpoints
PVector[] MISSILEpoints = new PVector[]{
new PVector(0,0,40),
new PVector(6,6,30),
new PVector(-6,6,30),
new PVector(-6,-6,30),
new PVector(6,-6,30),
new PVector(6,6,-60),
new PVector(-6,6,-60),
new PVector(-6,-6,-60),
new PVector(6,-6,-60),
new PVector(0,-6,0),
new PVector(0,-6,-60),
new PVector(0,-15,-50),
new PVector(0,6,0),
new PVector(0,15,-50),
new PVector(0,6,-60)
};

void drawMISSILE(){
pushMatrix();
rotateX(frameCount*PI/280);
rotateY(frameCount*PI/170);
rotateZ(frameCount*PI/90);
beginShape(TRIANGLES);
fill(0);
stroke(255);
vertex(MISSILEpoints[5].x, MISSILEpoints[5].y, MISSILEpoints[5].z);
vertex(MISSILEpoints[1].x, MISSILEpoints[1].y, MISSILEpoints[1].z);
vertex(MISSILEpoints[2].x, MISSILEpoints[2].y, MISSILEpoints[2].z);

vertex(MISSILEpoints[2].x, MISSILEpoints[2].y, MISSILEpoints[2].z);
vertex(MISSILEpoints[6].x, MISSILEpoints[6].y, MISSILEpoints[6].z);
vertex(MISSILEpoints[5].x, MISSILEpoints[5].y, MISSILEpoints[5].z);

vertex(MISSILEpoints[13].x, MISSILEpoints[13].y, MISSILEpoints[13].z);
vertex(MISSILEpoints[12].x, MISSILEpoints[12].y, MISSILEpoints[12].z);
vertex(MISSILEpoints[14].x, MISSILEpoints[14].y, MISSILEpoints[14].z);

vertex(MISSILEpoints[14].x, MISSILEpoints[14].y, MISSILEpoints[14].z);
vertex(MISSILEpoints[12].x, MISSILEpoints[12].y, MISSILEpoints[12].z);
vertex(MISSILEpoints[13].x, MISSILEpoints[13].y, MISSILEpoints[13].z);

vertex(MISSILEpoints[7].x, MISSILEpoints[7].y, MISSILEpoints[7].z);
vertex(MISSILEpoints[3].x, MISSILEpoints[3].y, MISSILEpoints[3].z);
vertex(MISSILEpoints[4].x, MISSILEpoints[4].y, MISSILEpoints[4].z);

vertex(MISSILEpoints[4].x, MISSILEpoints[4].y, MISSILEpoints[4].z);
vertex(MISSILEpoints[8].x, MISSILEpoints[8].y, MISSILEpoints[8].z);
vertex(MISSILEpoints[7].x, MISSILEpoints[7].y, MISSILEpoints[7].z);

vertex(MISSILEpoints[10].x, MISSILEpoints[10].y, MISSILEpoints[10].z);
vertex(MISSILEpoints[9].x, MISSILEpoints[9].y, MISSILEpoints[9].z);
vertex(MISSILEpoints[11].x, MISSILEpoints[11].y, MISSILEpoints[11].z);

vertex(MISSILEpoints[11].x, MISSILEpoints[11].y, MISSILEpoints[11].z);
vertex(MISSILEpoints[9].x, MISSILEpoints[9].y, MISSILEpoints[9].z);
vertex(MISSILEpoints[10].x, MISSILEpoints[10].y, MISSILEpoints[10].z);

vertex(MISSILEpoints[5].x, MISSILEpoints[5].y, MISSILEpoints[5].z);
vertex(MISSILEpoints[8].x, MISSILEpoints[8].y, MISSILEpoints[8].z);
vertex(MISSILEpoints[4].x, MISSILEpoints[4].y, MISSILEpoints[4].z);

vertex(MISSILEpoints[4].x, MISSILEpoints[4].y, MISSILEpoints[4].z);
vertex(MISSILEpoints[1].x, MISSILEpoints[1].y, MISSILEpoints[1].z);
vertex(MISSILEpoints[5].x, MISSILEpoints[5].y, MISSILEpoints[5].z);

vertex(MISSILEpoints[6].x, MISSILEpoints[6].y, MISSILEpoints[6].z);
vertex(MISSILEpoints[7].x, MISSILEpoints[7].y, MISSILEpoints[7].z);
vertex(MISSILEpoints[8].x, MISSILEpoints[8].y, MISSILEpoints[8].z);

vertex(MISSILEpoints[8].x, MISSILEpoints[8].y, MISSILEpoints[8].z);
vertex(MISSILEpoints[5].x, MISSILEpoints[5].y, MISSILEpoints[5].z);
vertex(MISSILEpoints[6].x, MISSILEpoints[6].y, MISSILEpoints[6].z);

vertex(MISSILEpoints[6].x, MISSILEpoints[6].y, MISSILEpoints[6].z);
vertex(MISSILEpoints[2].x, MISSILEpoints[2].y, MISSILEpoints[2].z);
vertex(MISSILEpoints[3].x, MISSILEpoints[3].y, MISSILEpoints[3].z);

vertex(MISSILEpoints[3].x, MISSILEpoints[3].y, MISSILEpoints[3].z);
vertex(MISSILEpoints[7].x, MISSILEpoints[7].y, MISSILEpoints[7].z);
vertex(MISSILEpoints[6].x, MISSILEpoints[6].y, MISSILEpoints[6].z);

vertex(MISSILEpoints[2].x, MISSILEpoints[2].y, MISSILEpoints[2].z);
vertex(MISSILEpoints[0].x, MISSILEpoints[0].y, MISSILEpoints[0].z);
vertex(MISSILEpoints[3].x, MISSILEpoints[3].y, MISSILEpoints[3].z);

vertex(MISSILEpoints[1].x, MISSILEpoints[1].y, MISSILEpoints[1].z);
vertex(MISSILEpoints[0].x, MISSILEpoints[0].y, MISSILEpoints[0].z);
vertex(MISSILEpoints[2].x, MISSILEpoints[2].y, MISSILEpoints[2].z);

vertex(MISSILEpoints[3].x, MISSILEpoints[3].y, MISSILEpoints[3].z);
vertex(MISSILEpoints[0].x, MISSILEpoints[0].y, MISSILEpoints[0].z);
vertex(MISSILEpoints[4].x, MISSILEpoints[4].y, MISSILEpoints[4].z);

vertex(MISSILEpoints[1].x, MISSILEpoints[1].y, MISSILEpoints[1].z);
vertex(MISSILEpoints[4].x, MISSILEpoints[4].y, MISSILEpoints[4].z);
vertex(MISSILEpoints[0].x, MISSILEpoints[0].y, MISSILEpoints[0].z);
endShape();
popMatrix();
    
}
//----------------------------------------------------------------

//Object name: TUNNELpoints
PVector[] TUNNELpoints = new PVector[]{
new PVector(-30,190,70),
new PVector(-30,190,-70),
new PVector(30,190,-70),
new PVector(30,190,70),
new PVector(-200,200,-200),
new PVector(-200,200,200),
new PVector(-200,-200,200),
new PVector(-200,-200,-200),
new PVector(200,-200,200),
new PVector(200,-200,-200),
new PVector(200,200,-200),
new PVector(200,200,200),
new PVector(-70,-190,-70),
new PVector(0,-190,80),
new PVector(70,-190,-70),
new PVector(-400,200,-200),
new PVector(-400,-200,-200),
new PVector(400,200,-200),
new PVector(400,-200,-200)
};

void drawTUNNEL(){
pushMatrix();
rotateX(frameCount*PI/280);
rotateY(frameCount*PI/170);
rotateZ(frameCount*PI/90);
beginShape(TRIANGLES);
fill(0);
stroke(255);
vertex(TUNNELpoints[6].x, TUNNELpoints[6].y, TUNNELpoints[6].z);
vertex(TUNNELpoints[5].x, TUNNELpoints[5].y, TUNNELpoints[5].z);
vertex(TUNNELpoints[4].x, TUNNELpoints[4].y, TUNNELpoints[4].z);

vertex(TUNNELpoints[4].x, TUNNELpoints[4].y, TUNNELpoints[4].z);
vertex(TUNNELpoints[7].x, TUNNELpoints[7].y, TUNNELpoints[7].z);
vertex(TUNNELpoints[6].x, TUNNELpoints[6].y, TUNNELpoints[6].z);

vertex(TUNNELpoints[8].x, TUNNELpoints[8].y, TUNNELpoints[8].z);
vertex(TUNNELpoints[9].x, TUNNELpoints[9].y, TUNNELpoints[9].z);
vertex(TUNNELpoints[10].x, TUNNELpoints[10].y, TUNNELpoints[10].z);

vertex(TUNNELpoints[11].x, TUNNELpoints[11].y, TUNNELpoints[11].z);
vertex(TUNNELpoints[8].x, TUNNELpoints[8].y, TUNNELpoints[8].z);
vertex(TUNNELpoints[10].x, TUNNELpoints[10].y, TUNNELpoints[10].z);

vertex(TUNNELpoints[1].x, TUNNELpoints[1].y, TUNNELpoints[1].z);
vertex(TUNNELpoints[0].x, TUNNELpoints[0].y, TUNNELpoints[0].z);
vertex(TUNNELpoints[2].x, TUNNELpoints[2].y, TUNNELpoints[2].z);

vertex(TUNNELpoints[0].x, TUNNELpoints[0].y, TUNNELpoints[0].z);
vertex(TUNNELpoints[3].x, TUNNELpoints[3].y, TUNNELpoints[3].z);
vertex(TUNNELpoints[2].x, TUNNELpoints[2].y, TUNNELpoints[2].z);

vertex(TUNNELpoints[14].x, TUNNELpoints[14].y, TUNNELpoints[14].z);
vertex(TUNNELpoints[13].x, TUNNELpoints[13].y, TUNNELpoints[13].z);
vertex(TUNNELpoints[12].x, TUNNELpoints[12].y, TUNNELpoints[12].z);

vertex(TUNNELpoints[4].x, TUNNELpoints[4].y, TUNNELpoints[4].z);
vertex(TUNNELpoints[15].x, TUNNELpoints[15].y, TUNNELpoints[15].z);
vertex(TUNNELpoints[7].x, TUNNELpoints[7].y, TUNNELpoints[7].z);

vertex(TUNNELpoints[15].x, TUNNELpoints[15].y, TUNNELpoints[15].z);
vertex(TUNNELpoints[16].x, TUNNELpoints[16].y, TUNNELpoints[16].z);
vertex(TUNNELpoints[7].x, TUNNELpoints[7].y, TUNNELpoints[7].z);

vertex(TUNNELpoints[9].x, TUNNELpoints[9].y, TUNNELpoints[9].z);
vertex(TUNNELpoints[17].x, TUNNELpoints[17].y, TUNNELpoints[17].z);
vertex(TUNNELpoints[10].x, TUNNELpoints[10].y, TUNNELpoints[10].z);

vertex(TUNNELpoints[9].x, TUNNELpoints[9].y, TUNNELpoints[9].z);
vertex(TUNNELpoints[18].x, TUNNELpoints[18].y, TUNNELpoints[18].z);
vertex(TUNNELpoints[17].x, TUNNELpoints[17].y, TUNNELpoints[17].z);
endShape();
popMatrix();
    
}
//----------------------------------------------------------------

//Object name: TUNNEL2points
PVector[] TUNNEL2points = new PVector[]{
new PVector(-30,190,70),
new PVector(-30,190,-70),
new PVector(30,190,-70),
new PVector(30,190,70),
new PVector(-400,200,200),
new PVector(-400,-200,200),
new PVector(400,-200,200),
new PVector(400,200,200),
new PVector(-70,-190,-70),
new PVector(0,-190,80),
new PVector(70,-190,-70),
new PVector(-400,200,0),
new PVector(-400,-200,0),
new PVector(400,200,0),
new PVector(400,-200,0)
};

void drawTUNNEL2(){
pushMatrix();
rotateX(frameCount*PI/280);
rotateY(frameCount*PI/170);
rotateZ(frameCount*PI/90);
beginShape(TRIANGLES);
fill(0);
stroke(255);
vertex(TUNNEL2points[1].x, TUNNEL2points[1].y, TUNNEL2points[1].z);
vertex(TUNNEL2points[0].x, TUNNEL2points[0].y, TUNNEL2points[0].z);
vertex(TUNNEL2points[2].x, TUNNEL2points[2].y, TUNNEL2points[2].z);

vertex(TUNNEL2points[0].x, TUNNEL2points[0].y, TUNNEL2points[0].z);
vertex(TUNNEL2points[3].x, TUNNEL2points[3].y, TUNNEL2points[3].z);
vertex(TUNNEL2points[2].x, TUNNEL2points[2].y, TUNNEL2points[2].z);

vertex(TUNNEL2points[10].x, TUNNEL2points[10].y, TUNNEL2points[10].z);
vertex(TUNNEL2points[9].x, TUNNEL2points[9].y, TUNNEL2points[9].z);
vertex(TUNNEL2points[8].x, TUNNEL2points[8].y, TUNNEL2points[8].z);

vertex(TUNNEL2points[5].x, TUNNEL2points[5].y, TUNNEL2points[5].z);
vertex(TUNNEL2points[4].x, TUNNEL2points[4].y, TUNNEL2points[4].z);
vertex(TUNNEL2points[11].x, TUNNEL2points[11].y, TUNNEL2points[11].z);

vertex(TUNNEL2points[5].x, TUNNEL2points[5].y, TUNNEL2points[5].z);
vertex(TUNNEL2points[11].x, TUNNEL2points[11].y, TUNNEL2points[11].z);
vertex(TUNNEL2points[12].x, TUNNEL2points[12].y, TUNNEL2points[12].z);

vertex(TUNNEL2points[13].x, TUNNEL2points[13].y, TUNNEL2points[13].z);
vertex(TUNNEL2points[7].x, TUNNEL2points[7].y, TUNNEL2points[7].z);
vertex(TUNNEL2points[6].x, TUNNEL2points[6].y, TUNNEL2points[6].z);

vertex(TUNNEL2points[6].x, TUNNEL2points[6].y, TUNNEL2points[6].z);
vertex(TUNNEL2points[14].x, TUNNEL2points[14].y, TUNNEL2points[14].z);
vertex(TUNNEL2points[13].x, TUNNEL2points[13].y, TUNNEL2points[13].z);
endShape();
popMatrix();
    
}
//----------------------------------------------------------------

//Object name: FARTUNNEL2points
PVector[] FARTUNNEL2points = new PVector[]{
new PVector(-30,190,70),
new PVector(-30,190,-70),
new PVector(30,190,-70),
new PVector(30,190,70),
new PVector(-70,-190,-70),
new PVector(0,-190,80),
new PVector(70,-190,-70)
};

void drawFARTUNNEL2(){
pushMatrix();
rotateX(frameCount*PI/280);
rotateY(frameCount*PI/170);
rotateZ(frameCount*PI/90);
beginShape(TRIANGLES);
fill(0);
stroke(255);
vertex(FARTUNNEL2points[1].x, FARTUNNEL2points[1].y, FARTUNNEL2points[1].z);
vertex(FARTUNNEL2points[0].x, FARTUNNEL2points[0].y, FARTUNNEL2points[0].z);
vertex(FARTUNNEL2points[2].x, FARTUNNEL2points[2].y, FARTUNNEL2points[2].z);

vertex(FARTUNNEL2points[0].x, FARTUNNEL2points[0].y, FARTUNNEL2points[0].z);
vertex(FARTUNNEL2points[3].x, FARTUNNEL2points[3].y, FARTUNNEL2points[3].z);
vertex(FARTUNNEL2points[2].x, FARTUNNEL2points[2].y, FARTUNNEL2points[2].z);

vertex(FARTUNNEL2points[6].x, FARTUNNEL2points[6].y, FARTUNNEL2points[6].z);
vertex(FARTUNNEL2points[5].x, FARTUNNEL2points[5].y, FARTUNNEL2points[5].z);
vertex(FARTUNNEL2points[4].x, FARTUNNEL2points[4].y, FARTUNNEL2points[4].z);
endShape();
popMatrix();
    
}
//----------------------------------------------------------------

//Object name: TUNNEL3points
PVector[] TUNNEL3points = new PVector[]{
new PVector(-30,190,70),
new PVector(-30,190,-70),
new PVector(30,190,-70),
new PVector(30,190,70),
new PVector(-400,200,200),
new PVector(-400,-200,200),
new PVector(400,-200,200),
new PVector(400,200,200),
new PVector(-275,-200,200),
new PVector(-75,-200,200),
new PVector(100,-200,200),
new PVector(-400,200,0),
new PVector(-400,-200,0),
new PVector(400,200,0),
new PVector(400,-200,0),
new PVector(-375,-200,200),
new PVector(-275,-200,100),
new PVector(-175,-200,100),
new PVector(-175,-200,200),
new PVector(-75,-200,100),
new PVector(25,-200,100),
new PVector(0,-200,200),
new PVector(100,-200,100),
new PVector(200,-200,100),
new PVector(175,-200,200),
new PVector(275,-200,100),
new PVector(375,-200,100),
new PVector(275,-200,200)
};

void drawTUNNEL3(){
pushMatrix();
rotateX(frameCount*PI/280);
rotateY(frameCount*PI/170);
rotateZ(frameCount*PI/90);
beginShape(TRIANGLES);
fill(0);
stroke(255);
vertex(TUNNEL3points[1].x, TUNNEL3points[1].y, TUNNEL3points[1].z);
vertex(TUNNEL3points[0].x, TUNNEL3points[0].y, TUNNEL3points[0].z);
vertex(TUNNEL3points[2].x, TUNNEL3points[2].y, TUNNEL3points[2].z);

vertex(TUNNEL3points[0].x, TUNNEL3points[0].y, TUNNEL3points[0].z);
vertex(TUNNEL3points[3].x, TUNNEL3points[3].y, TUNNEL3points[3].z);
vertex(TUNNEL3points[2].x, TUNNEL3points[2].y, TUNNEL3points[2].z);

vertex(TUNNEL3points[5].x, TUNNEL3points[5].y, TUNNEL3points[5].z);
vertex(TUNNEL3points[4].x, TUNNEL3points[4].y, TUNNEL3points[4].z);
vertex(TUNNEL3points[11].x, TUNNEL3points[11].y, TUNNEL3points[11].z);

vertex(TUNNEL3points[5].x, TUNNEL3points[5].y, TUNNEL3points[5].z);
vertex(TUNNEL3points[11].x, TUNNEL3points[11].y, TUNNEL3points[11].z);
vertex(TUNNEL3points[12].x, TUNNEL3points[12].y, TUNNEL3points[12].z);

vertex(TUNNEL3points[13].x, TUNNEL3points[13].y, TUNNEL3points[13].z);
vertex(TUNNEL3points[7].x, TUNNEL3points[7].y, TUNNEL3points[7].z);
vertex(TUNNEL3points[6].x, TUNNEL3points[6].y, TUNNEL3points[6].z);

vertex(TUNNEL3points[6].x, TUNNEL3points[6].y, TUNNEL3points[6].z);
vertex(TUNNEL3points[14].x, TUNNEL3points[14].y, TUNNEL3points[14].z);
vertex(TUNNEL3points[13].x, TUNNEL3points[13].y, TUNNEL3points[13].z);

vertex(TUNNEL3points[15].x, TUNNEL3points[15].y, TUNNEL3points[15].z);
vertex(TUNNEL3points[16].x, TUNNEL3points[16].y, TUNNEL3points[16].z);
vertex(TUNNEL3points[17].x, TUNNEL3points[17].y, TUNNEL3points[17].z);

vertex(TUNNEL3points[18].x, TUNNEL3points[18].y, TUNNEL3points[18].z);
vertex(TUNNEL3points[19].x, TUNNEL3points[19].y, TUNNEL3points[19].z);
vertex(TUNNEL3points[20].x, TUNNEL3points[20].y, TUNNEL3points[20].z);

vertex(TUNNEL3points[21].x, TUNNEL3points[21].y, TUNNEL3points[21].z);
vertex(TUNNEL3points[22].x, TUNNEL3points[22].y, TUNNEL3points[22].z);
vertex(TUNNEL3points[23].x, TUNNEL3points[23].y, TUNNEL3points[23].z);

vertex(TUNNEL3points[24].x, TUNNEL3points[24].y, TUNNEL3points[24].z);
vertex(TUNNEL3points[25].x, TUNNEL3points[25].y, TUNNEL3points[25].z);
vertex(TUNNEL3points[26].x, TUNNEL3points[26].y, TUNNEL3points[26].z);

vertex(TUNNEL3points[17].x, TUNNEL3points[17].y, TUNNEL3points[17].z);
vertex(TUNNEL3points[8].x, TUNNEL3points[8].y, TUNNEL3points[8].z);
vertex(TUNNEL3points[15].x, TUNNEL3points[15].y, TUNNEL3points[15].z);

vertex(TUNNEL3points[20].x, TUNNEL3points[20].y, TUNNEL3points[20].z);
vertex(TUNNEL3points[9].x, TUNNEL3points[9].y, TUNNEL3points[9].z);
vertex(TUNNEL3points[18].x, TUNNEL3points[18].y, TUNNEL3points[18].z);

vertex(TUNNEL3points[23].x, TUNNEL3points[23].y, TUNNEL3points[23].z);
vertex(TUNNEL3points[10].x, TUNNEL3points[10].y, TUNNEL3points[10].z);
vertex(TUNNEL3points[21].x, TUNNEL3points[21].y, TUNNEL3points[21].z);

vertex(TUNNEL3points[26].x, TUNNEL3points[26].y, TUNNEL3points[26].z);
vertex(TUNNEL3points[27].x, TUNNEL3points[27].y, TUNNEL3points[27].z);
vertex(TUNNEL3points[24].x, TUNNEL3points[24].y, TUNNEL3points[24].z);
endShape();
popMatrix();
    
}
//----------------------------------------------------------------

//Object name: FARTUNNEL3points
PVector[] FARTUNNEL3points = new PVector[]{
new PVector(-30,190,70),
new PVector(-30,190,-70),
new PVector(30,190,-70),
new PVector(30,190,70),
new PVector(-275,-200,200),
new PVector(-75,-200,200),
new PVector(100,-200,200),
new PVector(-375,-200,200),
new PVector(-275,-200,100),
new PVector(-175,-200,100),
new PVector(-175,-200,200),
new PVector(-75,-200,100),
new PVector(25,-200,100),
new PVector(0,-200,200),
new PVector(100,-200,100),
new PVector(200,-200,100),
new PVector(175,-200,200),
new PVector(275,-200,100),
new PVector(375,-200,100),
new PVector(275,-200,200)
};

void drawFARTUNNEL3(){
pushMatrix();
rotateX(frameCount*PI/280);
rotateY(frameCount*PI/170);
rotateZ(frameCount*PI/90);
beginShape(TRIANGLES);
fill(0);
stroke(255);
vertex(FARTUNNEL3points[1].x, FARTUNNEL3points[1].y, FARTUNNEL3points[1].z);
vertex(FARTUNNEL3points[0].x, FARTUNNEL3points[0].y, FARTUNNEL3points[0].z);
vertex(FARTUNNEL3points[2].x, FARTUNNEL3points[2].y, FARTUNNEL3points[2].z);

vertex(FARTUNNEL3points[0].x, FARTUNNEL3points[0].y, FARTUNNEL3points[0].z);
vertex(FARTUNNEL3points[3].x, FARTUNNEL3points[3].y, FARTUNNEL3points[3].z);
vertex(FARTUNNEL3points[2].x, FARTUNNEL3points[2].y, FARTUNNEL3points[2].z);

vertex(FARTUNNEL3points[7].x, FARTUNNEL3points[7].y, FARTUNNEL3points[7].z);
vertex(FARTUNNEL3points[8].x, FARTUNNEL3points[8].y, FARTUNNEL3points[8].z);
vertex(FARTUNNEL3points[9].x, FARTUNNEL3points[9].y, FARTUNNEL3points[9].z);

vertex(FARTUNNEL3points[10].x, FARTUNNEL3points[10].y, FARTUNNEL3points[10].z);
vertex(FARTUNNEL3points[11].x, FARTUNNEL3points[11].y, FARTUNNEL3points[11].z);
vertex(FARTUNNEL3points[12].x, FARTUNNEL3points[12].y, FARTUNNEL3points[12].z);

vertex(FARTUNNEL3points[13].x, FARTUNNEL3points[13].y, FARTUNNEL3points[13].z);
vertex(FARTUNNEL3points[14].x, FARTUNNEL3points[14].y, FARTUNNEL3points[14].z);
vertex(FARTUNNEL3points[15].x, FARTUNNEL3points[15].y, FARTUNNEL3points[15].z);

vertex(FARTUNNEL3points[16].x, FARTUNNEL3points[16].y, FARTUNNEL3points[16].z);
vertex(FARTUNNEL3points[17].x, FARTUNNEL3points[17].y, FARTUNNEL3points[17].z);
vertex(FARTUNNEL3points[18].x, FARTUNNEL3points[18].y, FARTUNNEL3points[18].z);

vertex(FARTUNNEL3points[9].x, FARTUNNEL3points[9].y, FARTUNNEL3points[9].z);
vertex(FARTUNNEL3points[4].x, FARTUNNEL3points[4].y, FARTUNNEL3points[4].z);
vertex(FARTUNNEL3points[7].x, FARTUNNEL3points[7].y, FARTUNNEL3points[7].z);

vertex(FARTUNNEL3points[12].x, FARTUNNEL3points[12].y, FARTUNNEL3points[12].z);
vertex(FARTUNNEL3points[5].x, FARTUNNEL3points[5].y, FARTUNNEL3points[5].z);
vertex(FARTUNNEL3points[10].x, FARTUNNEL3points[10].y, FARTUNNEL3points[10].z);

vertex(FARTUNNEL3points[15].x, FARTUNNEL3points[15].y, FARTUNNEL3points[15].z);
vertex(FARTUNNEL3points[6].x, FARTUNNEL3points[6].y, FARTUNNEL3points[6].z);
vertex(FARTUNNEL3points[13].x, FARTUNNEL3points[13].y, FARTUNNEL3points[13].z);

vertex(FARTUNNEL3points[18].x, FARTUNNEL3points[18].y, FARTUNNEL3points[18].z);
vertex(FARTUNNEL3points[19].x, FARTUNNEL3points[19].y, FARTUNNEL3points[19].z);
vertex(FARTUNNEL3points[16].x, FARTUNNEL3points[16].y, FARTUNNEL3points[16].z);
endShape();
popMatrix();
    
}
//----------------------------------------------------------------

//Object name: TUNNEL4points
PVector[] TUNNEL4points = new PVector[]{
new PVector(-400,175,-200),
new PVector(-400,-225,-200),
new PVector(400,175,-200),
new PVector(400,-225,-200),
new PVector(-400,175,200),
new PVector(-400,-225,200),
new PVector(400,-225,200),
new PVector(400,175,200)
};

void drawTUNNEL4(){
pushMatrix();
rotateX(frameCount*PI/280);
rotateY(frameCount*PI/170);
rotateZ(frameCount*PI/90);
beginShape(TRIANGLES);
fill(0);
stroke(255);
vertex(TUNNEL4points[4].x, TUNNEL4points[4].y, TUNNEL4points[4].z);
vertex(TUNNEL4points[5].x, TUNNEL4points[5].y, TUNNEL4points[5].z);
vertex(TUNNEL4points[6].x, TUNNEL4points[6].y, TUNNEL4points[6].z);

vertex(TUNNEL4points[6].x, TUNNEL4points[6].y, TUNNEL4points[6].z);
vertex(TUNNEL4points[7].x, TUNNEL4points[7].y, TUNNEL4points[7].z);
vertex(TUNNEL4points[4].x, TUNNEL4points[4].y, TUNNEL4points[4].z);

vertex(TUNNEL4points[4].x, TUNNEL4points[4].y, TUNNEL4points[4].z);
vertex(TUNNEL4points[0].x, TUNNEL4points[0].y, TUNNEL4points[0].z);
vertex(TUNNEL4points[1].x, TUNNEL4points[1].y, TUNNEL4points[1].z);

vertex(TUNNEL4points[1].x, TUNNEL4points[1].y, TUNNEL4points[1].z);
vertex(TUNNEL4points[5].x, TUNNEL4points[5].y, TUNNEL4points[5].z);
vertex(TUNNEL4points[4].x, TUNNEL4points[4].y, TUNNEL4points[4].z);

vertex(TUNNEL4points[7].x, TUNNEL4points[7].y, TUNNEL4points[7].z);
vertex(TUNNEL4points[6].x, TUNNEL4points[6].y, TUNNEL4points[6].z);
vertex(TUNNEL4points[3].x, TUNNEL4points[3].y, TUNNEL4points[3].z);

vertex(TUNNEL4points[3].x, TUNNEL4points[3].y, TUNNEL4points[3].z);
vertex(TUNNEL4points[2].x, TUNNEL4points[2].y, TUNNEL4points[2].z);
vertex(TUNNEL4points[7].x, TUNNEL4points[7].y, TUNNEL4points[7].z);
endShape();
popMatrix();
    
}
//----------------------------------------------------------------

//Object name: FARTUNNEL4points
PVector[] FARTUNNEL4points = new PVector[]{
new PVector(-400,175,0),
new PVector(-400,-225,0),
new PVector(400,175,0),
new PVector(400,-225,0),
new PVector(-400,175,200),
new PVector(-400,-225,200),
new PVector(400,-225,200),
new PVector(400,175,200)
};

void drawFARTUNNEL4(){
pushMatrix();
rotateX(frameCount*PI/280);
rotateY(frameCount*PI/170);
rotateZ(frameCount*PI/90);
beginShape(TRIANGLES);
fill(0);
stroke(255);
vertex(FARTUNNEL4points[4].x, FARTUNNEL4points[4].y, FARTUNNEL4points[4].z);
vertex(FARTUNNEL4points[5].x, FARTUNNEL4points[5].y, FARTUNNEL4points[5].z);
vertex(FARTUNNEL4points[6].x, FARTUNNEL4points[6].y, FARTUNNEL4points[6].z);

vertex(FARTUNNEL4points[6].x, FARTUNNEL4points[6].y, FARTUNNEL4points[6].z);
vertex(FARTUNNEL4points[7].x, FARTUNNEL4points[7].y, FARTUNNEL4points[7].z);
vertex(FARTUNNEL4points[4].x, FARTUNNEL4points[4].y, FARTUNNEL4points[4].z);

vertex(FARTUNNEL4points[4].x, FARTUNNEL4points[4].y, FARTUNNEL4points[4].z);
vertex(FARTUNNEL4points[0].x, FARTUNNEL4points[0].y, FARTUNNEL4points[0].z);
vertex(FARTUNNEL4points[1].x, FARTUNNEL4points[1].y, FARTUNNEL4points[1].z);

vertex(FARTUNNEL4points[1].x, FARTUNNEL4points[1].y, FARTUNNEL4points[1].z);
vertex(FARTUNNEL4points[5].x, FARTUNNEL4points[5].y, FARTUNNEL4points[5].z);
vertex(FARTUNNEL4points[4].x, FARTUNNEL4points[4].y, FARTUNNEL4points[4].z);

vertex(FARTUNNEL4points[7].x, FARTUNNEL4points[7].y, FARTUNNEL4points[7].z);
vertex(FARTUNNEL4points[6].x, FARTUNNEL4points[6].y, FARTUNNEL4points[6].z);
vertex(FARTUNNEL4points[3].x, FARTUNNEL4points[3].y, FARTUNNEL4points[3].z);

vertex(FARTUNNEL4points[3].x, FARTUNNEL4points[3].y, FARTUNNEL4points[3].z);
vertex(FARTUNNEL4points[2].x, FARTUNNEL4points[2].y, FARTUNNEL4points[2].z);
vertex(FARTUNNEL4points[7].x, FARTUNNEL4points[7].y, FARTUNNEL4points[7].z);
endShape();
popMatrix();
    
}
//----------------------------------------------------------------

//Object name: FARCANNISTERpoints
PVector[] FARCANNISTERpoints = new PVector[]{
new PVector(16,8,-30),
new PVector(-16,8,-30),
new PVector(-10,-8,-30),
new PVector(10,-8,-30),
new PVector(-10,-8,30),
new PVector(-16,8,30),
new PVector(16,8,30),
new PVector(10,-8,30)
};

void drawFARCANNISTER(){
pushMatrix();
rotateX(frameCount*PI/280);
rotateY(frameCount*PI/170);
rotateZ(frameCount*PI/90);
beginShape(TRIANGLES);
fill(0);
stroke(255);
vertex(FARCANNISTERpoints[5].x, FARCANNISTERpoints[5].y, FARCANNISTERpoints[5].z);
vertex(FARCANNISTERpoints[0].x, FARCANNISTERpoints[0].y, FARCANNISTERpoints[0].z);
vertex(FARCANNISTERpoints[6].x, FARCANNISTERpoints[6].y, FARCANNISTERpoints[6].z);

vertex(FARCANNISTERpoints[5].x, FARCANNISTERpoints[5].y, FARCANNISTERpoints[5].z);
vertex(FARCANNISTERpoints[1].x, FARCANNISTERpoints[1].y, FARCANNISTERpoints[1].z);
vertex(FARCANNISTERpoints[0].x, FARCANNISTERpoints[0].y, FARCANNISTERpoints[0].z);

vertex(FARCANNISTERpoints[1].x, FARCANNISTERpoints[1].y, FARCANNISTERpoints[1].z);
vertex(FARCANNISTERpoints[5].x, FARCANNISTERpoints[5].y, FARCANNISTERpoints[5].z);
vertex(FARCANNISTERpoints[2].x, FARCANNISTERpoints[2].y, FARCANNISTERpoints[2].z);

vertex(FARCANNISTERpoints[4].x, FARCANNISTERpoints[4].y, FARCANNISTERpoints[4].z);
vertex(FARCANNISTERpoints[2].x, FARCANNISTERpoints[2].y, FARCANNISTERpoints[2].z);
vertex(FARCANNISTERpoints[5].x, FARCANNISTERpoints[5].y, FARCANNISTERpoints[5].z);

vertex(FARCANNISTERpoints[7].x, FARCANNISTERpoints[7].y, FARCANNISTERpoints[7].z);
vertex(FARCANNISTERpoints[2].x, FARCANNISTERpoints[2].y, FARCANNISTERpoints[2].z);
vertex(FARCANNISTERpoints[4].x, FARCANNISTERpoints[4].y, FARCANNISTERpoints[4].z);

vertex(FARCANNISTERpoints[3].x, FARCANNISTERpoints[3].y, FARCANNISTERpoints[3].z);
vertex(FARCANNISTERpoints[2].x, FARCANNISTERpoints[2].y, FARCANNISTERpoints[2].z);
vertex(FARCANNISTERpoints[7].x, FARCANNISTERpoints[7].y, FARCANNISTERpoints[7].z);

vertex(FARCANNISTERpoints[3].x, FARCANNISTERpoints[3].y, FARCANNISTERpoints[3].z);
vertex(FARCANNISTERpoints[7].x, FARCANNISTERpoints[7].y, FARCANNISTERpoints[7].z);
vertex(FARCANNISTERpoints[6].x, FARCANNISTERpoints[6].y, FARCANNISTERpoints[6].z);

vertex(FARCANNISTERpoints[6].x, FARCANNISTERpoints[6].y, FARCANNISTERpoints[6].z);
vertex(FARCANNISTERpoints[0].x, FARCANNISTERpoints[0].y, FARCANNISTERpoints[0].z);
vertex(FARCANNISTERpoints[3].x, FARCANNISTERpoints[3].y, FARCANNISTERpoints[3].z);

vertex(FARCANNISTERpoints[1].x, FARCANNISTERpoints[1].y, FARCANNISTERpoints[1].z);
vertex(FARCANNISTERpoints[2].x, FARCANNISTERpoints[2].y, FARCANNISTERpoints[2].z);
vertex(FARCANNISTERpoints[3].x, FARCANNISTERpoints[3].y, FARCANNISTERpoints[3].z);

vertex(FARCANNISTERpoints[1].x, FARCANNISTERpoints[1].y, FARCANNISTERpoints[1].z);
vertex(FARCANNISTERpoints[3].x, FARCANNISTERpoints[3].y, FARCANNISTERpoints[3].z);
vertex(FARCANNISTERpoints[0].x, FARCANNISTERpoints[0].y, FARCANNISTERpoints[0].z);

vertex(FARCANNISTERpoints[6].x, FARCANNISTERpoints[6].y, FARCANNISTERpoints[6].z);
vertex(FARCANNISTERpoints[7].x, FARCANNISTERpoints[7].y, FARCANNISTERpoints[7].z);
vertex(FARCANNISTERpoints[5].x, FARCANNISTERpoints[5].y, FARCANNISTERpoints[5].z);

vertex(FARCANNISTERpoints[7].x, FARCANNISTERpoints[7].y, FARCANNISTERpoints[7].z);
vertex(FARCANNISTERpoints[4].x, FARCANNISTERpoints[4].y, FARCANNISTERpoints[4].z);
vertex(FARCANNISTERpoints[5].x, FARCANNISTERpoints[5].y, FARCANNISTERpoints[5].z);
endShape();
popMatrix();
    
}
//----------------------------------------------------------------

//Object name: CANNISTERpoints
PVector[] CANNISTERpoints = new PVector[]{
new PVector(0,12,-30),
new PVector(-16,4,-30),
new PVector(-10,-12,-30),
new PVector(10,-12,-30),
new PVector(16,4,-30),
new PVector(-10,-12,30),
new PVector(-16,4,30),
new PVector(0,12,30),
new PVector(10,-12,30),
new PVector(16,4,30)
};

void drawCANNISTER(){
pushMatrix();
rotateX(frameCount*PI/280);
rotateY(frameCount*PI/170);
rotateZ(frameCount*PI/90);
beginShape(TRIANGLES);
fill(0);
stroke(255);
vertex(CANNISTERpoints[0].x, CANNISTERpoints[0].y, CANNISTERpoints[0].z);
vertex(CANNISTERpoints[1].x, CANNISTERpoints[1].y, CANNISTERpoints[1].z);
vertex(CANNISTERpoints[2].x, CANNISTERpoints[2].y, CANNISTERpoints[2].z);

vertex(CANNISTERpoints[0].x, CANNISTERpoints[0].y, CANNISTERpoints[0].z);
vertex(CANNISTERpoints[2].x, CANNISTERpoints[2].y, CANNISTERpoints[2].z);
vertex(CANNISTERpoints[3].x, CANNISTERpoints[3].y, CANNISTERpoints[3].z);

vertex(CANNISTERpoints[0].x, CANNISTERpoints[0].y, CANNISTERpoints[0].z);
vertex(CANNISTERpoints[3].x, CANNISTERpoints[3].y, CANNISTERpoints[3].z);
vertex(CANNISTERpoints[4].x, CANNISTERpoints[4].y, CANNISTERpoints[4].z);

vertex(CANNISTERpoints[5].x, CANNISTERpoints[5].y, CANNISTERpoints[5].z);
vertex(CANNISTERpoints[6].x, CANNISTERpoints[6].y, CANNISTERpoints[6].z);
vertex(CANNISTERpoints[7].x, CANNISTERpoints[7].y, CANNISTERpoints[7].z);

vertex(CANNISTERpoints[8].x, CANNISTERpoints[8].y, CANNISTERpoints[8].z);
vertex(CANNISTERpoints[5].x, CANNISTERpoints[5].y, CANNISTERpoints[5].z);
vertex(CANNISTERpoints[7].x, CANNISTERpoints[7].y, CANNISTERpoints[7].z);

vertex(CANNISTERpoints[9].x, CANNISTERpoints[9].y, CANNISTERpoints[9].z);
vertex(CANNISTERpoints[8].x, CANNISTERpoints[8].y, CANNISTERpoints[8].z);
vertex(CANNISTERpoints[7].x, CANNISTERpoints[7].y, CANNISTERpoints[7].z);

vertex(CANNISTERpoints[6].x, CANNISTERpoints[6].y, CANNISTERpoints[6].z);
vertex(CANNISTERpoints[0].x, CANNISTERpoints[0].y, CANNISTERpoints[0].z);
vertex(CANNISTERpoints[7].x, CANNISTERpoints[7].y, CANNISTERpoints[7].z);

vertex(CANNISTERpoints[6].x, CANNISTERpoints[6].y, CANNISTERpoints[6].z);
vertex(CANNISTERpoints[1].x, CANNISTERpoints[1].y, CANNISTERpoints[1].z);
vertex(CANNISTERpoints[0].x, CANNISTERpoints[0].y, CANNISTERpoints[0].z);

vertex(CANNISTERpoints[1].x, CANNISTERpoints[1].y, CANNISTERpoints[1].z);
vertex(CANNISTERpoints[6].x, CANNISTERpoints[6].y, CANNISTERpoints[6].z);
vertex(CANNISTERpoints[2].x, CANNISTERpoints[2].y, CANNISTERpoints[2].z);

vertex(CANNISTERpoints[5].x, CANNISTERpoints[5].y, CANNISTERpoints[5].z);
vertex(CANNISTERpoints[2].x, CANNISTERpoints[2].y, CANNISTERpoints[2].z);
vertex(CANNISTERpoints[6].x, CANNISTERpoints[6].y, CANNISTERpoints[6].z);

vertex(CANNISTERpoints[8].x, CANNISTERpoints[8].y, CANNISTERpoints[8].z);
vertex(CANNISTERpoints[2].x, CANNISTERpoints[2].y, CANNISTERpoints[2].z);
vertex(CANNISTERpoints[5].x, CANNISTERpoints[5].y, CANNISTERpoints[5].z);

vertex(CANNISTERpoints[3].x, CANNISTERpoints[3].y, CANNISTERpoints[3].z);
vertex(CANNISTERpoints[2].x, CANNISTERpoints[2].y, CANNISTERpoints[2].z);
vertex(CANNISTERpoints[8].x, CANNISTERpoints[8].y, CANNISTERpoints[8].z);

vertex(CANNISTERpoints[3].x, CANNISTERpoints[3].y, CANNISTERpoints[3].z);
vertex(CANNISTERpoints[8].x, CANNISTERpoints[8].y, CANNISTERpoints[8].z);
vertex(CANNISTERpoints[9].x, CANNISTERpoints[9].y, CANNISTERpoints[9].z);

vertex(CANNISTERpoints[9].x, CANNISTERpoints[9].y, CANNISTERpoints[9].z);
vertex(CANNISTERpoints[4].x, CANNISTERpoints[4].y, CANNISTERpoints[4].z);
vertex(CANNISTERpoints[3].x, CANNISTERpoints[3].y, CANNISTERpoints[3].z);

vertex(CANNISTERpoints[9].x, CANNISTERpoints[9].y, CANNISTERpoints[9].z);
vertex(CANNISTERpoints[7].x, CANNISTERpoints[7].y, CANNISTERpoints[7].z);
vertex(CANNISTERpoints[0].x, CANNISTERpoints[0].y, CANNISTERpoints[0].z);

vertex(CANNISTERpoints[0].x, CANNISTERpoints[0].y, CANNISTERpoints[0].z);
vertex(CANNISTERpoints[4].x, CANNISTERpoints[4].y, CANNISTERpoints[4].z);
vertex(CANNISTERpoints[9].x, CANNISTERpoints[9].y, CANNISTERpoints[9].z);
endShape();
popMatrix();
    
}
//----------------------------------------------------------------

//Object name: DOBOXpoints
PVector[] DOBOXpoints = new PVector[]{
new PVector(-20,10,20),
new PVector(20,10,20),
new PVector(20,10,-20),
new PVector(-20,10,-20),
new PVector(-20,-10,20),
new PVector(20,-10,20),
new PVector(20,-10,-20),
new PVector(-20,-10,-20),
new PVector(0,0,0)
};

void drawDOBOX(){
pushMatrix();
rotateX(frameCount*PI/280);
rotateY(frameCount*PI/170);
rotateZ(frameCount*PI/90);
beginShape(TRIANGLES);
fill(0);
stroke(255);
vertex(DOBOXpoints[0].x, DOBOXpoints[0].y, DOBOXpoints[0].z);
vertex(DOBOXpoints[8].x, DOBOXpoints[8].y, DOBOXpoints[8].z);
vertex(DOBOXpoints[1].x, DOBOXpoints[1].y, DOBOXpoints[1].z);

vertex(DOBOXpoints[1].x, DOBOXpoints[1].y, DOBOXpoints[1].z);
vertex(DOBOXpoints[8].x, DOBOXpoints[8].y, DOBOXpoints[8].z);
vertex(DOBOXpoints[2].x, DOBOXpoints[2].y, DOBOXpoints[2].z);

vertex(DOBOXpoints[2].x, DOBOXpoints[2].y, DOBOXpoints[2].z);
vertex(DOBOXpoints[8].x, DOBOXpoints[8].y, DOBOXpoints[8].z);
vertex(DOBOXpoints[3].x, DOBOXpoints[3].y, DOBOXpoints[3].z);

vertex(DOBOXpoints[3].x, DOBOXpoints[3].y, DOBOXpoints[3].z);
vertex(DOBOXpoints[8].x, DOBOXpoints[8].y, DOBOXpoints[8].z);
vertex(DOBOXpoints[0].x, DOBOXpoints[0].y, DOBOXpoints[0].z);

vertex(DOBOXpoints[5].x, DOBOXpoints[5].y, DOBOXpoints[5].z);
vertex(DOBOXpoints[8].x, DOBOXpoints[8].y, DOBOXpoints[8].z);
vertex(DOBOXpoints[4].x, DOBOXpoints[4].y, DOBOXpoints[4].z);

vertex(DOBOXpoints[4].x, DOBOXpoints[4].y, DOBOXpoints[4].z);
vertex(DOBOXpoints[8].x, DOBOXpoints[8].y, DOBOXpoints[8].z);
vertex(DOBOXpoints[7].x, DOBOXpoints[7].y, DOBOXpoints[7].z);

vertex(DOBOXpoints[7].x, DOBOXpoints[7].y, DOBOXpoints[7].z);
vertex(DOBOXpoints[8].x, DOBOXpoints[8].y, DOBOXpoints[8].z);
vertex(DOBOXpoints[6].x, DOBOXpoints[6].y, DOBOXpoints[6].z);

vertex(DOBOXpoints[6].x, DOBOXpoints[6].y, DOBOXpoints[6].z);
vertex(DOBOXpoints[8].x, DOBOXpoints[8].y, DOBOXpoints[8].z);
vertex(DOBOXpoints[5].x, DOBOXpoints[5].y, DOBOXpoints[5].z);

vertex(DOBOXpoints[3].x, DOBOXpoints[3].y, DOBOXpoints[3].z);
vertex(DOBOXpoints[7].x, DOBOXpoints[7].y, DOBOXpoints[7].z);
vertex(DOBOXpoints[6].x, DOBOXpoints[6].y, DOBOXpoints[6].z);

vertex(DOBOXpoints[6].x, DOBOXpoints[6].y, DOBOXpoints[6].z);
vertex(DOBOXpoints[2].x, DOBOXpoints[2].y, DOBOXpoints[2].z);
vertex(DOBOXpoints[3].x, DOBOXpoints[3].y, DOBOXpoints[3].z);

vertex(DOBOXpoints[2].x, DOBOXpoints[2].y, DOBOXpoints[2].z);
vertex(DOBOXpoints[6].x, DOBOXpoints[6].y, DOBOXpoints[6].z);
vertex(DOBOXpoints[5].x, DOBOXpoints[5].y, DOBOXpoints[5].z);

vertex(DOBOXpoints[5].x, DOBOXpoints[5].y, DOBOXpoints[5].z);
vertex(DOBOXpoints[1].x, DOBOXpoints[1].y, DOBOXpoints[1].z);
vertex(DOBOXpoints[2].x, DOBOXpoints[2].y, DOBOXpoints[2].z);

vertex(DOBOXpoints[4].x, DOBOXpoints[4].y, DOBOXpoints[4].z);
vertex(DOBOXpoints[0].x, DOBOXpoints[0].y, DOBOXpoints[0].z);
vertex(DOBOXpoints[1].x, DOBOXpoints[1].y, DOBOXpoints[1].z);

vertex(DOBOXpoints[1].x, DOBOXpoints[1].y, DOBOXpoints[1].z);
vertex(DOBOXpoints[5].x, DOBOXpoints[5].y, DOBOXpoints[5].z);
vertex(DOBOXpoints[4].x, DOBOXpoints[4].y, DOBOXpoints[4].z);

vertex(DOBOXpoints[0].x, DOBOXpoints[0].y, DOBOXpoints[0].z);
vertex(DOBOXpoints[4].x, DOBOXpoints[4].y, DOBOXpoints[4].z);
vertex(DOBOXpoints[7].x, DOBOXpoints[7].y, DOBOXpoints[7].z);

vertex(DOBOXpoints[7].x, DOBOXpoints[7].y, DOBOXpoints[7].z);
vertex(DOBOXpoints[3].x, DOBOXpoints[3].y, DOBOXpoints[3].z);
vertex(DOBOXpoints[0].x, DOBOXpoints[0].y, DOBOXpoints[0].z);
endShape();
popMatrix();
    
}
//----------------------------------------------------------------

//Object name: FARDOBOXpoints
PVector[] FARDOBOXpoints = new PVector[]{
new PVector(-20,10,20),
new PVector(20,10,20),
new PVector(20,10,-20),
new PVector(-20,10,-20),
new PVector(-20,-10,20),
new PVector(20,-10,20),
new PVector(20,-10,-20),
new PVector(-20,-10,-20)
};

void drawFARDOBOX(){
pushMatrix();
rotateX(frameCount*PI/280);
rotateY(frameCount*PI/170);
rotateZ(frameCount*PI/90);
beginShape(TRIANGLES);
fill(0);
stroke(255);
vertex(FARDOBOXpoints[0].x, FARDOBOXpoints[0].y, FARDOBOXpoints[0].z);
vertex(FARDOBOXpoints[2].x, FARDOBOXpoints[2].y, FARDOBOXpoints[2].z);
vertex(FARDOBOXpoints[1].x, FARDOBOXpoints[1].y, FARDOBOXpoints[1].z);

vertex(FARDOBOXpoints[0].x, FARDOBOXpoints[0].y, FARDOBOXpoints[0].z);
vertex(FARDOBOXpoints[3].x, FARDOBOXpoints[3].y, FARDOBOXpoints[3].z);
vertex(FARDOBOXpoints[2].x, FARDOBOXpoints[2].y, FARDOBOXpoints[2].z);

vertex(FARDOBOXpoints[5].x, FARDOBOXpoints[5].y, FARDOBOXpoints[5].z);
vertex(FARDOBOXpoints[7].x, FARDOBOXpoints[7].y, FARDOBOXpoints[7].z);
vertex(FARDOBOXpoints[4].x, FARDOBOXpoints[4].y, FARDOBOXpoints[4].z);

vertex(FARDOBOXpoints[7].x, FARDOBOXpoints[7].y, FARDOBOXpoints[7].z);
vertex(FARDOBOXpoints[5].x, FARDOBOXpoints[5].y, FARDOBOXpoints[5].z);
vertex(FARDOBOXpoints[6].x, FARDOBOXpoints[6].y, FARDOBOXpoints[6].z);

vertex(FARDOBOXpoints[3].x, FARDOBOXpoints[3].y, FARDOBOXpoints[3].z);
vertex(FARDOBOXpoints[7].x, FARDOBOXpoints[7].y, FARDOBOXpoints[7].z);
vertex(FARDOBOXpoints[6].x, FARDOBOXpoints[6].y, FARDOBOXpoints[6].z);

vertex(FARDOBOXpoints[6].x, FARDOBOXpoints[6].y, FARDOBOXpoints[6].z);
vertex(FARDOBOXpoints[2].x, FARDOBOXpoints[2].y, FARDOBOXpoints[2].z);
vertex(FARDOBOXpoints[3].x, FARDOBOXpoints[3].y, FARDOBOXpoints[3].z);

vertex(FARDOBOXpoints[2].x, FARDOBOXpoints[2].y, FARDOBOXpoints[2].z);
vertex(FARDOBOXpoints[6].x, FARDOBOXpoints[6].y, FARDOBOXpoints[6].z);
vertex(FARDOBOXpoints[5].x, FARDOBOXpoints[5].y, FARDOBOXpoints[5].z);

vertex(FARDOBOXpoints[5].x, FARDOBOXpoints[5].y, FARDOBOXpoints[5].z);
vertex(FARDOBOXpoints[1].x, FARDOBOXpoints[1].y, FARDOBOXpoints[1].z);
vertex(FARDOBOXpoints[2].x, FARDOBOXpoints[2].y, FARDOBOXpoints[2].z);

vertex(FARDOBOXpoints[4].x, FARDOBOXpoints[4].y, FARDOBOXpoints[4].z);
vertex(FARDOBOXpoints[0].x, FARDOBOXpoints[0].y, FARDOBOXpoints[0].z);
vertex(FARDOBOXpoints[1].x, FARDOBOXpoints[1].y, FARDOBOXpoints[1].z);

vertex(FARDOBOXpoints[1].x, FARDOBOXpoints[1].y, FARDOBOXpoints[1].z);
vertex(FARDOBOXpoints[5].x, FARDOBOXpoints[5].y, FARDOBOXpoints[5].z);
vertex(FARDOBOXpoints[4].x, FARDOBOXpoints[4].y, FARDOBOXpoints[4].z);

vertex(FARDOBOXpoints[0].x, FARDOBOXpoints[0].y, FARDOBOXpoints[0].z);
vertex(FARDOBOXpoints[4].x, FARDOBOXpoints[4].y, FARDOBOXpoints[4].z);
vertex(FARDOBOXpoints[7].x, FARDOBOXpoints[7].y, FARDOBOXpoints[7].z);

vertex(FARDOBOXpoints[7].x, FARDOBOXpoints[7].y, FARDOBOXpoints[7].z);
vertex(FARDOBOXpoints[3].x, FARDOBOXpoints[3].y, FARDOBOXpoints[3].z);
vertex(FARDOBOXpoints[0].x, FARDOBOXpoints[0].y, FARDOBOXpoints[0].z);
endShape();
popMatrix();
    
}
//----------------------------------------------------------------

//Object name: FARSHEETpoints
PVector[] FARSHEETpoints = new PVector[]{
new PVector(-20,-20,0),
new PVector(20,-20,0),
new PVector(20,20,0)
};

void drawFARSHEET(){
pushMatrix();
rotateX(frameCount*PI/280);
rotateY(frameCount*PI/170);
rotateZ(frameCount*PI/90);
beginShape(TRIANGLES);
fill(0);
stroke(255);
vertex(FARSHEETpoints[0].x, FARSHEETpoints[0].y, FARSHEETpoints[0].z);
vertex(FARSHEETpoints[1].x, FARSHEETpoints[1].y, FARSHEETpoints[1].z);
vertex(FARSHEETpoints[2].x, FARSHEETpoints[2].y, FARSHEETpoints[2].z);

vertex(FARSHEETpoints[2].x, FARSHEETpoints[2].y, FARSHEETpoints[2].z);
vertex(FARSHEETpoints[1].x, FARSHEETpoints[1].y, FARSHEETpoints[1].z);
vertex(FARSHEETpoints[0].x, FARSHEETpoints[0].y, FARSHEETpoints[0].z);
endShape();
popMatrix();
    
}
//----------------------------------------------------------------

//Object name: SHEETpoints
PVector[] SHEETpoints = new PVector[]{
new PVector(-20,-20,0),
new PVector(20,-20,0),
new PVector(20,20,0),
new PVector(-20,20,0)
};

void drawSHEET(){
pushMatrix();
rotateX(frameCount*PI/280);
rotateY(frameCount*PI/170);
rotateZ(frameCount*PI/90);
beginShape(TRIANGLES);
fill(0);
stroke(255);
vertex(SHEETpoints[0].x, SHEETpoints[0].y, SHEETpoints[0].z);
vertex(SHEETpoints[1].x, SHEETpoints[1].y, SHEETpoints[1].z);
vertex(SHEETpoints[2].x, SHEETpoints[2].y, SHEETpoints[2].z);

vertex(SHEETpoints[0].x, SHEETpoints[0].y, SHEETpoints[0].z);
vertex(SHEETpoints[2].x, SHEETpoints[2].y, SHEETpoints[2].z);
vertex(SHEETpoints[3].x, SHEETpoints[3].y, SHEETpoints[3].z);

vertex(SHEETpoints[2].x, SHEETpoints[2].y, SHEETpoints[2].z);
vertex(SHEETpoints[1].x, SHEETpoints[1].y, SHEETpoints[1].z);
vertex(SHEETpoints[0].x, SHEETpoints[0].y, SHEETpoints[0].z);

vertex(SHEETpoints[3].x, SHEETpoints[3].y, SHEETpoints[3].z);
vertex(SHEETpoints[2].x, SHEETpoints[2].y, SHEETpoints[2].z);
vertex(SHEETpoints[0].x, SHEETpoints[0].y, SHEETpoints[0].z);
endShape();
popMatrix();
    
}
//----------------------------------------------------------------

//Object name: FARRADIOCANpoints
PVector[] FARRADIOCANpoints = new PVector[]{
new PVector(16,8,-30),
new PVector(-16,8,-30),
new PVector(-10,-8,-30),
new PVector(10,-8,-30),
new PVector(-10,-8,30),
new PVector(-16,8,30),
new PVector(16,8,30),
new PVector(10,-8,30),
new PVector(0,5,-30),
new PVector(-6,-4,-30),
new PVector(4,-4,-30)
};

void drawFARRADIOCAN(){
pushMatrix();
rotateX(frameCount*PI/280);
rotateY(frameCount*PI/170);
rotateZ(frameCount*PI/90);
beginShape(TRIANGLES);
fill(0);
stroke(255);
vertex(FARRADIOCANpoints[5].x, FARRADIOCANpoints[5].y, FARRADIOCANpoints[5].z);
vertex(FARRADIOCANpoints[0].x, FARRADIOCANpoints[0].y, FARRADIOCANpoints[0].z);
vertex(FARRADIOCANpoints[6].x, FARRADIOCANpoints[6].y, FARRADIOCANpoints[6].z);

vertex(FARRADIOCANpoints[5].x, FARRADIOCANpoints[5].y, FARRADIOCANpoints[5].z);
vertex(FARRADIOCANpoints[1].x, FARRADIOCANpoints[1].y, FARRADIOCANpoints[1].z);
vertex(FARRADIOCANpoints[0].x, FARRADIOCANpoints[0].y, FARRADIOCANpoints[0].z);

vertex(FARRADIOCANpoints[1].x, FARRADIOCANpoints[1].y, FARRADIOCANpoints[1].z);
vertex(FARRADIOCANpoints[5].x, FARRADIOCANpoints[5].y, FARRADIOCANpoints[5].z);
vertex(FARRADIOCANpoints[2].x, FARRADIOCANpoints[2].y, FARRADIOCANpoints[2].z);

vertex(FARRADIOCANpoints[4].x, FARRADIOCANpoints[4].y, FARRADIOCANpoints[4].z);
vertex(FARRADIOCANpoints[2].x, FARRADIOCANpoints[2].y, FARRADIOCANpoints[2].z);
vertex(FARRADIOCANpoints[5].x, FARRADIOCANpoints[5].y, FARRADIOCANpoints[5].z);

vertex(FARRADIOCANpoints[7].x, FARRADIOCANpoints[7].y, FARRADIOCANpoints[7].z);
vertex(FARRADIOCANpoints[2].x, FARRADIOCANpoints[2].y, FARRADIOCANpoints[2].z);
vertex(FARRADIOCANpoints[4].x, FARRADIOCANpoints[4].y, FARRADIOCANpoints[4].z);

vertex(FARRADIOCANpoints[3].x, FARRADIOCANpoints[3].y, FARRADIOCANpoints[3].z);
vertex(FARRADIOCANpoints[2].x, FARRADIOCANpoints[2].y, FARRADIOCANpoints[2].z);
vertex(FARRADIOCANpoints[7].x, FARRADIOCANpoints[7].y, FARRADIOCANpoints[7].z);

vertex(FARRADIOCANpoints[3].x, FARRADIOCANpoints[3].y, FARRADIOCANpoints[3].z);
vertex(FARRADIOCANpoints[7].x, FARRADIOCANpoints[7].y, FARRADIOCANpoints[7].z);
vertex(FARRADIOCANpoints[6].x, FARRADIOCANpoints[6].y, FARRADIOCANpoints[6].z);

vertex(FARRADIOCANpoints[6].x, FARRADIOCANpoints[6].y, FARRADIOCANpoints[6].z);
vertex(FARRADIOCANpoints[0].x, FARRADIOCANpoints[0].y, FARRADIOCANpoints[0].z);
vertex(FARRADIOCANpoints[3].x, FARRADIOCANpoints[3].y, FARRADIOCANpoints[3].z);

vertex(FARRADIOCANpoints[1].x, FARRADIOCANpoints[1].y, FARRADIOCANpoints[1].z);
vertex(FARRADIOCANpoints[2].x, FARRADIOCANpoints[2].y, FARRADIOCANpoints[2].z);
vertex(FARRADIOCANpoints[3].x, FARRADIOCANpoints[3].y, FARRADIOCANpoints[3].z);

vertex(FARRADIOCANpoints[1].x, FARRADIOCANpoints[1].y, FARRADIOCANpoints[1].z);
vertex(FARRADIOCANpoints[3].x, FARRADIOCANpoints[3].y, FARRADIOCANpoints[3].z);
vertex(FARRADIOCANpoints[0].x, FARRADIOCANpoints[0].y, FARRADIOCANpoints[0].z);

vertex(FARRADIOCANpoints[8].x, FARRADIOCANpoints[8].y, FARRADIOCANpoints[8].z);
vertex(FARRADIOCANpoints[9].x, FARRADIOCANpoints[9].y, FARRADIOCANpoints[9].z);
vertex(FARRADIOCANpoints[10].x, FARRADIOCANpoints[10].y, FARRADIOCANpoints[10].z);

vertex(FARRADIOCANpoints[6].x, FARRADIOCANpoints[6].y, FARRADIOCANpoints[6].z);
vertex(FARRADIOCANpoints[7].x, FARRADIOCANpoints[7].y, FARRADIOCANpoints[7].z);
vertex(FARRADIOCANpoints[5].x, FARRADIOCANpoints[5].y, FARRADIOCANpoints[5].z);

vertex(FARRADIOCANpoints[7].x, FARRADIOCANpoints[7].y, FARRADIOCANpoints[7].z);
vertex(FARRADIOCANpoints[4].x, FARRADIOCANpoints[4].y, FARRADIOCANpoints[4].z);
vertex(FARRADIOCANpoints[5].x, FARRADIOCANpoints[5].y, FARRADIOCANpoints[5].z);
endShape();
popMatrix();
    
}
//----------------------------------------------------------------

//Object name: RADIOCANpoints
PVector[] RADIOCANpoints = new PVector[]{
new PVector(0,12,-30),
new PVector(-16,4,-30),
new PVector(-10,-12,-30),
new PVector(10,-12,-30),
new PVector(16,4,-30),
new PVector(-10,-12,30),
new PVector(-16,4,30),
new PVector(0,12,30),
new PVector(10,-12,30),
new PVector(16,4,30),
new PVector(-4,5,-30),
new PVector(4,5,-30),
new PVector(0,-2,-30),
new PVector(9,-2,-30),
new PVector(4,-9,-30),
new PVector(-9,-2,-30),
new PVector(-4,-9,-30)
};

void drawRADIOCAN(){
pushMatrix();
rotateX(frameCount*PI/280);
rotateY(frameCount*PI/170);
rotateZ(frameCount*PI/90);
beginShape(TRIANGLES);
fill(0);
stroke(255);
vertex(RADIOCANpoints[0].x, RADIOCANpoints[0].y, RADIOCANpoints[0].z);
vertex(RADIOCANpoints[1].x, RADIOCANpoints[1].y, RADIOCANpoints[1].z);
vertex(RADIOCANpoints[2].x, RADIOCANpoints[2].y, RADIOCANpoints[2].z);

vertex(RADIOCANpoints[0].x, RADIOCANpoints[0].y, RADIOCANpoints[0].z);
vertex(RADIOCANpoints[2].x, RADIOCANpoints[2].y, RADIOCANpoints[2].z);
vertex(RADIOCANpoints[3].x, RADIOCANpoints[3].y, RADIOCANpoints[3].z);

vertex(RADIOCANpoints[0].x, RADIOCANpoints[0].y, RADIOCANpoints[0].z);
vertex(RADIOCANpoints[3].x, RADIOCANpoints[3].y, RADIOCANpoints[3].z);
vertex(RADIOCANpoints[4].x, RADIOCANpoints[4].y, RADIOCANpoints[4].z);

vertex(RADIOCANpoints[12].x, RADIOCANpoints[12].y, RADIOCANpoints[12].z);
vertex(RADIOCANpoints[11].x, RADIOCANpoints[11].y, RADIOCANpoints[11].z);
vertex(RADIOCANpoints[10].x, RADIOCANpoints[10].y, RADIOCANpoints[10].z);

vertex(RADIOCANpoints[14].x, RADIOCANpoints[14].y, RADIOCANpoints[14].z);
vertex(RADIOCANpoints[13].x, RADIOCANpoints[13].y, RADIOCANpoints[13].z);
vertex(RADIOCANpoints[12].x, RADIOCANpoints[12].y, RADIOCANpoints[12].z);

vertex(RADIOCANpoints[12].x, RADIOCANpoints[12].y, RADIOCANpoints[12].z);
vertex(RADIOCANpoints[15].x, RADIOCANpoints[15].y, RADIOCANpoints[15].z);
vertex(RADIOCANpoints[16].x, RADIOCANpoints[16].y, RADIOCANpoints[16].z);

vertex(RADIOCANpoints[5].x, RADIOCANpoints[5].y, RADIOCANpoints[5].z);
vertex(RADIOCANpoints[6].x, RADIOCANpoints[6].y, RADIOCANpoints[6].z);
vertex(RADIOCANpoints[7].x, RADIOCANpoints[7].y, RADIOCANpoints[7].z);

vertex(RADIOCANpoints[8].x, RADIOCANpoints[8].y, RADIOCANpoints[8].z);
vertex(RADIOCANpoints[5].x, RADIOCANpoints[5].y, RADIOCANpoints[5].z);
vertex(RADIOCANpoints[7].x, RADIOCANpoints[7].y, RADIOCANpoints[7].z);

vertex(RADIOCANpoints[9].x, RADIOCANpoints[9].y, RADIOCANpoints[9].z);
vertex(RADIOCANpoints[8].x, RADIOCANpoints[8].y, RADIOCANpoints[8].z);
vertex(RADIOCANpoints[7].x, RADIOCANpoints[7].y, RADIOCANpoints[7].z);

vertex(RADIOCANpoints[6].x, RADIOCANpoints[6].y, RADIOCANpoints[6].z);
vertex(RADIOCANpoints[0].x, RADIOCANpoints[0].y, RADIOCANpoints[0].z);
vertex(RADIOCANpoints[7].x, RADIOCANpoints[7].y, RADIOCANpoints[7].z);

vertex(RADIOCANpoints[6].x, RADIOCANpoints[6].y, RADIOCANpoints[6].z);
vertex(RADIOCANpoints[1].x, RADIOCANpoints[1].y, RADIOCANpoints[1].z);
vertex(RADIOCANpoints[0].x, RADIOCANpoints[0].y, RADIOCANpoints[0].z);

vertex(RADIOCANpoints[1].x, RADIOCANpoints[1].y, RADIOCANpoints[1].z);
vertex(RADIOCANpoints[6].x, RADIOCANpoints[6].y, RADIOCANpoints[6].z);
vertex(RADIOCANpoints[2].x, RADIOCANpoints[2].y, RADIOCANpoints[2].z);

vertex(RADIOCANpoints[5].x, RADIOCANpoints[5].y, RADIOCANpoints[5].z);
vertex(RADIOCANpoints[2].x, RADIOCANpoints[2].y, RADIOCANpoints[2].z);
vertex(RADIOCANpoints[6].x, RADIOCANpoints[6].y, RADIOCANpoints[6].z);

vertex(RADIOCANpoints[8].x, RADIOCANpoints[8].y, RADIOCANpoints[8].z);
vertex(RADIOCANpoints[2].x, RADIOCANpoints[2].y, RADIOCANpoints[2].z);
vertex(RADIOCANpoints[5].x, RADIOCANpoints[5].y, RADIOCANpoints[5].z);

vertex(RADIOCANpoints[3].x, RADIOCANpoints[3].y, RADIOCANpoints[3].z);
vertex(RADIOCANpoints[2].x, RADIOCANpoints[2].y, RADIOCANpoints[2].z);
vertex(RADIOCANpoints[8].x, RADIOCANpoints[8].y, RADIOCANpoints[8].z);

vertex(RADIOCANpoints[3].x, RADIOCANpoints[3].y, RADIOCANpoints[3].z);
vertex(RADIOCANpoints[8].x, RADIOCANpoints[8].y, RADIOCANpoints[8].z);
vertex(RADIOCANpoints[9].x, RADIOCANpoints[9].y, RADIOCANpoints[9].z);

vertex(RADIOCANpoints[9].x, RADIOCANpoints[9].y, RADIOCANpoints[9].z);
vertex(RADIOCANpoints[4].x, RADIOCANpoints[4].y, RADIOCANpoints[4].z);
vertex(RADIOCANpoints[3].x, RADIOCANpoints[3].y, RADIOCANpoints[3].z);

vertex(RADIOCANpoints[9].x, RADIOCANpoints[9].y, RADIOCANpoints[9].z);
vertex(RADIOCANpoints[7].x, RADIOCANpoints[7].y, RADIOCANpoints[7].z);
vertex(RADIOCANpoints[0].x, RADIOCANpoints[0].y, RADIOCANpoints[0].z);

vertex(RADIOCANpoints[0].x, RADIOCANpoints[0].y, RADIOCANpoints[0].z);
vertex(RADIOCANpoints[4].x, RADIOCANpoints[4].y, RADIOCANpoints[4].z);
vertex(RADIOCANpoints[9].x, RADIOCANpoints[9].y, RADIOCANpoints[9].z);
endShape();
popMatrix();
    
}
//----------------------------------------------------------------

//Object name: FRAGMENTpoints
PVector[] FRAGMENTpoints = new PVector[]{
new PVector(5,-30,-55),
new PVector(45,-10,-5),
new PVector(-15,0,55),
new PVector(-45,20,-25),
new PVector(5,30,-25)
};

void drawFRAGMENT(){
pushMatrix();
rotateX(frameCount*PI/280);
rotateY(frameCount*PI/170);
rotateZ(frameCount*PI/90);
beginShape(TRIANGLES);
fill(0);
stroke(255);
vertex(FRAGMENTpoints[2].x, FRAGMENTpoints[2].y, FRAGMENTpoints[2].z);
vertex(FRAGMENTpoints[1].x, FRAGMENTpoints[1].y, FRAGMENTpoints[1].z);
vertex(FRAGMENTpoints[0].x, FRAGMENTpoints[0].y, FRAGMENTpoints[0].z);

vertex(FRAGMENTpoints[0].x, FRAGMENTpoints[0].y, FRAGMENTpoints[0].z);
vertex(FRAGMENTpoints[3].x, FRAGMENTpoints[3].y, FRAGMENTpoints[3].z);
vertex(FRAGMENTpoints[2].x, FRAGMENTpoints[2].y, FRAGMENTpoints[2].z);

vertex(FRAGMENTpoints[4].x, FRAGMENTpoints[4].y, FRAGMENTpoints[4].z);
vertex(FRAGMENTpoints[1].x, FRAGMENTpoints[1].y, FRAGMENTpoints[1].z);
vertex(FRAGMENTpoints[2].x, FRAGMENTpoints[2].y, FRAGMENTpoints[2].z);

vertex(FRAGMENTpoints[4].x, FRAGMENTpoints[4].y, FRAGMENTpoints[4].z);
vertex(FRAGMENTpoints[3].x, FRAGMENTpoints[3].y, FRAGMENTpoints[3].z);
vertex(FRAGMENTpoints[0].x, FRAGMENTpoints[0].y, FRAGMENTpoints[0].z);

vertex(FRAGMENTpoints[4].x, FRAGMENTpoints[4].y, FRAGMENTpoints[4].z);
vertex(FRAGMENTpoints[0].x, FRAGMENTpoints[0].y, FRAGMENTpoints[0].z);
vertex(FRAGMENTpoints[1].x, FRAGMENTpoints[1].y, FRAGMENTpoints[1].z);

vertex(FRAGMENTpoints[2].x, FRAGMENTpoints[2].y, FRAGMENTpoints[2].z);
vertex(FRAGMENTpoints[3].x, FRAGMENTpoints[3].y, FRAGMENTpoints[3].z);
vertex(FRAGMENTpoints[4].x, FRAGMENTpoints[4].y, FRAGMENTpoints[4].z);
endShape();
popMatrix();
    
}
//----------------------------------------------------------------

//Object name: HARLEQUINpoints
PVector[] HARLEQUINpoints = new PVector[]{
new PVector(-15,155,5),
new PVector(159,-25,5),
new PVector(109,-25,155),
new PVector(-41,-155,5),
new PVector(-159,-25,107),
new PVector(-121,15,-75),
new PVector(79,-55,-155)
};

void drawHARLEQUIN(){
pushMatrix();
rotateX(frameCount*PI/280);
rotateY(frameCount*PI/170);
rotateZ(frameCount*PI/90);
beginShape(TRIANGLES);
fill(0);
stroke(255);
vertex(HARLEQUINpoints[0].x, HARLEQUINpoints[0].y, HARLEQUINpoints[0].z);
vertex(HARLEQUINpoints[1].x, HARLEQUINpoints[1].y, HARLEQUINpoints[1].z);
vertex(HARLEQUINpoints[2].x, HARLEQUINpoints[2].y, HARLEQUINpoints[2].z);

vertex(HARLEQUINpoints[1].x, HARLEQUINpoints[1].y, HARLEQUINpoints[1].z);
vertex(HARLEQUINpoints[3].x, HARLEQUINpoints[3].y, HARLEQUINpoints[3].z);
vertex(HARLEQUINpoints[2].x, HARLEQUINpoints[2].y, HARLEQUINpoints[2].z);

vertex(HARLEQUINpoints[0].x, HARLEQUINpoints[0].y, HARLEQUINpoints[0].z);
vertex(HARLEQUINpoints[2].x, HARLEQUINpoints[2].y, HARLEQUINpoints[2].z);
vertex(HARLEQUINpoints[4].x, HARLEQUINpoints[4].y, HARLEQUINpoints[4].z);

vertex(HARLEQUINpoints[3].x, HARLEQUINpoints[3].y, HARLEQUINpoints[3].z);
vertex(HARLEQUINpoints[4].x, HARLEQUINpoints[4].y, HARLEQUINpoints[4].z);
vertex(HARLEQUINpoints[2].x, HARLEQUINpoints[2].y, HARLEQUINpoints[2].z);

vertex(HARLEQUINpoints[0].x, HARLEQUINpoints[0].y, HARLEQUINpoints[0].z);
vertex(HARLEQUINpoints[4].x, HARLEQUINpoints[4].y, HARLEQUINpoints[4].z);
vertex(HARLEQUINpoints[5].x, HARLEQUINpoints[5].y, HARLEQUINpoints[5].z);

vertex(HARLEQUINpoints[4].x, HARLEQUINpoints[4].y, HARLEQUINpoints[4].z);
vertex(HARLEQUINpoints[3].x, HARLEQUINpoints[3].y, HARLEQUINpoints[3].z);
vertex(HARLEQUINpoints[5].x, HARLEQUINpoints[5].y, HARLEQUINpoints[5].z);

vertex(HARLEQUINpoints[0].x, HARLEQUINpoints[0].y, HARLEQUINpoints[0].z);
vertex(HARLEQUINpoints[5].x, HARLEQUINpoints[5].y, HARLEQUINpoints[5].z);
vertex(HARLEQUINpoints[6].x, HARLEQUINpoints[6].y, HARLEQUINpoints[6].z);

vertex(HARLEQUINpoints[5].x, HARLEQUINpoints[5].y, HARLEQUINpoints[5].z);
vertex(HARLEQUINpoints[3].x, HARLEQUINpoints[3].y, HARLEQUINpoints[3].z);
vertex(HARLEQUINpoints[6].x, HARLEQUINpoints[6].y, HARLEQUINpoints[6].z);

vertex(HARLEQUINpoints[0].x, HARLEQUINpoints[0].y, HARLEQUINpoints[0].z);
vertex(HARLEQUINpoints[6].x, HARLEQUINpoints[6].y, HARLEQUINpoints[6].z);
vertex(HARLEQUINpoints[1].x, HARLEQUINpoints[1].y, HARLEQUINpoints[1].z);

vertex(HARLEQUINpoints[6].x, HARLEQUINpoints[6].y, HARLEQUINpoints[6].z);
vertex(HARLEQUINpoints[3].x, HARLEQUINpoints[3].y, HARLEQUINpoints[3].z);
vertex(HARLEQUINpoints[1].x, HARLEQUINpoints[1].y, HARLEQUINpoints[1].z);
endShape();
popMatrix();
    
}
//----------------------------------------------------------------

//Object name: FARASTEROIDpoints
PVector[] FARASTEROIDpoints = new PVector[]{
new PVector(5,155,20),
new PVector(139,-25,140),
new PVector(-21,-155,20),
new PVector(-139,-25,122),
new PVector(-101,15,-60),
new PVector(99,-55,-140)
};

void drawFARASTEROID(){
pushMatrix();
rotateX(frameCount*PI/280);
rotateY(frameCount*PI/170);
rotateZ(frameCount*PI/90);
beginShape(TRIANGLES);
fill(0);
stroke(255);
vertex(FARASTEROIDpoints[0].x, FARASTEROIDpoints[0].y, FARASTEROIDpoints[0].z);
vertex(FARASTEROIDpoints[1].x, FARASTEROIDpoints[1].y, FARASTEROIDpoints[1].z);
vertex(FARASTEROIDpoints[3].x, FARASTEROIDpoints[3].y, FARASTEROIDpoints[3].z);

vertex(FARASTEROIDpoints[0].x, FARASTEROIDpoints[0].y, FARASTEROIDpoints[0].z);
vertex(FARASTEROIDpoints[5].x, FARASTEROIDpoints[5].y, FARASTEROIDpoints[5].z);
vertex(FARASTEROIDpoints[1].x, FARASTEROIDpoints[1].y, FARASTEROIDpoints[1].z);

vertex(FARASTEROIDpoints[5].x, FARASTEROIDpoints[5].y, FARASTEROIDpoints[5].z);
vertex(FARASTEROIDpoints[2].x, FARASTEROIDpoints[2].y, FARASTEROIDpoints[2].z);
vertex(FARASTEROIDpoints[1].x, FARASTEROIDpoints[1].y, FARASTEROIDpoints[1].z);

vertex(FARASTEROIDpoints[2].x, FARASTEROIDpoints[2].y, FARASTEROIDpoints[2].z);
vertex(FARASTEROIDpoints[3].x, FARASTEROIDpoints[3].y, FARASTEROIDpoints[3].z);
vertex(FARASTEROIDpoints[1].x, FARASTEROIDpoints[1].y, FARASTEROIDpoints[1].z);

vertex(FARASTEROIDpoints[0].x, FARASTEROIDpoints[0].y, FARASTEROIDpoints[0].z);
vertex(FARASTEROIDpoints[3].x, FARASTEROIDpoints[3].y, FARASTEROIDpoints[3].z);
vertex(FARASTEROIDpoints[4].x, FARASTEROIDpoints[4].y, FARASTEROIDpoints[4].z);

vertex(FARASTEROIDpoints[3].x, FARASTEROIDpoints[3].y, FARASTEROIDpoints[3].z);
vertex(FARASTEROIDpoints[2].x, FARASTEROIDpoints[2].y, FARASTEROIDpoints[2].z);
vertex(FARASTEROIDpoints[4].x, FARASTEROIDpoints[4].y, FARASTEROIDpoints[4].z);

vertex(FARASTEROIDpoints[0].x, FARASTEROIDpoints[0].y, FARASTEROIDpoints[0].z);
vertex(FARASTEROIDpoints[4].x, FARASTEROIDpoints[4].y, FARASTEROIDpoints[4].z);
vertex(FARASTEROIDpoints[5].x, FARASTEROIDpoints[5].y, FARASTEROIDpoints[5].z);

vertex(FARASTEROIDpoints[4].x, FARASTEROIDpoints[4].y, FARASTEROIDpoints[4].z);
vertex(FARASTEROIDpoints[2].x, FARASTEROIDpoints[2].y, FARASTEROIDpoints[2].z);
vertex(FARASTEROIDpoints[5].x, FARASTEROIDpoints[5].y, FARASTEROIDpoints[5].z);
endShape();
popMatrix();
    
}
//----------------------------------------------------------------

//Object name: ASTEROIDpoints
PVector[] ASTEROIDpoints = new PVector[]{
new PVector(-15,155,5),
new PVector(159,-25,5),
new PVector(109,-25,155),
new PVector(-41,-155,5),
new PVector(-159,-25,107),
new PVector(-121,15,-75),
new PVector(79,-55,-155)
};

void drawASTEROID(){
pushMatrix();
rotateX(frameCount*PI/280);
rotateY(frameCount*PI/170);
rotateZ(frameCount*PI/90);
beginShape(TRIANGLES);
fill(0);
stroke(255);
vertex(ASTEROIDpoints[0].x, ASTEROIDpoints[0].y, ASTEROIDpoints[0].z);
vertex(ASTEROIDpoints[1].x, ASTEROIDpoints[1].y, ASTEROIDpoints[1].z);
vertex(ASTEROIDpoints[2].x, ASTEROIDpoints[2].y, ASTEROIDpoints[2].z);

vertex(ASTEROIDpoints[1].x, ASTEROIDpoints[1].y, ASTEROIDpoints[1].z);
vertex(ASTEROIDpoints[3].x, ASTEROIDpoints[3].y, ASTEROIDpoints[3].z);
vertex(ASTEROIDpoints[2].x, ASTEROIDpoints[2].y, ASTEROIDpoints[2].z);

vertex(ASTEROIDpoints[0].x, ASTEROIDpoints[0].y, ASTEROIDpoints[0].z);
vertex(ASTEROIDpoints[2].x, ASTEROIDpoints[2].y, ASTEROIDpoints[2].z);
vertex(ASTEROIDpoints[4].x, ASTEROIDpoints[4].y, ASTEROIDpoints[4].z);

vertex(ASTEROIDpoints[3].x, ASTEROIDpoints[3].y, ASTEROIDpoints[3].z);
vertex(ASTEROIDpoints[4].x, ASTEROIDpoints[4].y, ASTEROIDpoints[4].z);
vertex(ASTEROIDpoints[2].x, ASTEROIDpoints[2].y, ASTEROIDpoints[2].z);

vertex(ASTEROIDpoints[0].x, ASTEROIDpoints[0].y, ASTEROIDpoints[0].z);
vertex(ASTEROIDpoints[4].x, ASTEROIDpoints[4].y, ASTEROIDpoints[4].z);
vertex(ASTEROIDpoints[5].x, ASTEROIDpoints[5].y, ASTEROIDpoints[5].z);

vertex(ASTEROIDpoints[4].x, ASTEROIDpoints[4].y, ASTEROIDpoints[4].z);
vertex(ASTEROIDpoints[3].x, ASTEROIDpoints[3].y, ASTEROIDpoints[3].z);
vertex(ASTEROIDpoints[5].x, ASTEROIDpoints[5].y, ASTEROIDpoints[5].z);

vertex(ASTEROIDpoints[0].x, ASTEROIDpoints[0].y, ASTEROIDpoints[0].z);
vertex(ASTEROIDpoints[5].x, ASTEROIDpoints[5].y, ASTEROIDpoints[5].z);
vertex(ASTEROIDpoints[6].x, ASTEROIDpoints[6].y, ASTEROIDpoints[6].z);

vertex(ASTEROIDpoints[5].x, ASTEROIDpoints[5].y, ASTEROIDpoints[5].z);
vertex(ASTEROIDpoints[3].x, ASTEROIDpoints[3].y, ASTEROIDpoints[3].z);
vertex(ASTEROIDpoints[6].x, ASTEROIDpoints[6].y, ASTEROIDpoints[6].z);

vertex(ASTEROIDpoints[0].x, ASTEROIDpoints[0].y, ASTEROIDpoints[0].z);
vertex(ASTEROIDpoints[6].x, ASTEROIDpoints[6].y, ASTEROIDpoints[6].z);
vertex(ASTEROIDpoints[1].x, ASTEROIDpoints[1].y, ASTEROIDpoints[1].z);

vertex(ASTEROIDpoints[6].x, ASTEROIDpoints[6].y, ASTEROIDpoints[6].z);
vertex(ASTEROIDpoints[3].x, ASTEROIDpoints[3].y, ASTEROIDpoints[3].z);
vertex(ASTEROIDpoints[1].x, ASTEROIDpoints[1].y, ASTEROIDpoints[1].z);
endShape();
popMatrix();
    
}
//----------------------------------------------------------------

//Object name: GENESISpoints
PVector[] GENESISpoints = new PVector[]{
new PVector(-3,30,0),
new PVector(26,0,0),
new PVector(6,0,28),
new PVector(-3,-30,0),
new PVector(-27,0,17),
new PVector(-27,0,-17),
new PVector(6,0,-28)
};

void drawGENESIS(){
pushMatrix();
rotateX(frameCount*PI/280);
rotateY(frameCount*PI/170);
rotateZ(frameCount*PI/90);
beginShape(TRIANGLES);
fill(0);
stroke(255);
vertex(GENESISpoints[2].x, GENESISpoints[2].y, GENESISpoints[2].z);
vertex(GENESISpoints[1].x, GENESISpoints[1].y, GENESISpoints[1].z);
vertex(GENESISpoints[0].x, GENESISpoints[0].y, GENESISpoints[0].z);

vertex(GENESISpoints[2].x, GENESISpoints[2].y, GENESISpoints[2].z);
vertex(GENESISpoints[3].x, GENESISpoints[3].y, GENESISpoints[3].z);
vertex(GENESISpoints[1].x, GENESISpoints[1].y, GENESISpoints[1].z);

vertex(GENESISpoints[4].x, GENESISpoints[4].y, GENESISpoints[4].z);
vertex(GENESISpoints[2].x, GENESISpoints[2].y, GENESISpoints[2].z);
vertex(GENESISpoints[0].x, GENESISpoints[0].y, GENESISpoints[0].z);

vertex(GENESISpoints[5].x, GENESISpoints[5].y, GENESISpoints[5].z);
vertex(GENESISpoints[4].x, GENESISpoints[4].y, GENESISpoints[4].z);
vertex(GENESISpoints[0].x, GENESISpoints[0].y, GENESISpoints[0].z);

vertex(GENESISpoints[5].x, GENESISpoints[5].y, GENESISpoints[5].z);
vertex(GENESISpoints[3].x, GENESISpoints[3].y, GENESISpoints[3].z);
vertex(GENESISpoints[4].x, GENESISpoints[4].y, GENESISpoints[4].z);

vertex(GENESISpoints[6].x, GENESISpoints[6].y, GENESISpoints[6].z);
vertex(GENESISpoints[5].x, GENESISpoints[5].y, GENESISpoints[5].z);
vertex(GENESISpoints[0].x, GENESISpoints[0].y, GENESISpoints[0].z);

vertex(GENESISpoints[6].x, GENESISpoints[6].y, GENESISpoints[6].z);
vertex(GENESISpoints[3].x, GENESISpoints[3].y, GENESISpoints[3].z);
vertex(GENESISpoints[5].x, GENESISpoints[5].y, GENESISpoints[5].z);

vertex(GENESISpoints[1].x, GENESISpoints[1].y, GENESISpoints[1].z);
vertex(GENESISpoints[6].x, GENESISpoints[6].y, GENESISpoints[6].z);
vertex(GENESISpoints[0].x, GENESISpoints[0].y, GENESISpoints[0].z);

vertex(GENESISpoints[1].x, GENESISpoints[1].y, GENESISpoints[1].z);
vertex(GENESISpoints[3].x, GENESISpoints[3].y, GENESISpoints[3].z);
vertex(GENESISpoints[6].x, GENESISpoints[6].y, GENESISpoints[6].z);

vertex(GENESISpoints[2].x, GENESISpoints[2].y, GENESISpoints[2].z);
vertex(GENESISpoints[4].x, GENESISpoints[4].y, GENESISpoints[4].z);
vertex(GENESISpoints[3].x, GENESISpoints[3].y, GENESISpoints[3].z);
endShape();
popMatrix();
    
}
//----------------------------------------------------------------

//Object name: PYRAMIDpoints
PVector[] PYRAMIDpoints = new PVector[]{
new PVector(-30,-30,-30),
new PVector(30,-30,-30),
new PVector(0,-30,30),
new PVector(0,30,0)
};

void drawPYRAMID(){
pushMatrix();
rotateX(frameCount*PI/280);
rotateY(frameCount*PI/170);
rotateZ(frameCount*PI/90);
beginShape(TRIANGLES);
fill(0);
stroke(255);
vertex(PYRAMIDpoints[0].x, PYRAMIDpoints[0].y, PYRAMIDpoints[0].z);
vertex(PYRAMIDpoints[1].x, PYRAMIDpoints[1].y, PYRAMIDpoints[1].z);
vertex(PYRAMIDpoints[3].x, PYRAMIDpoints[3].y, PYRAMIDpoints[3].z);

vertex(PYRAMIDpoints[3].x, PYRAMIDpoints[3].y, PYRAMIDpoints[3].z);
vertex(PYRAMIDpoints[1].x, PYRAMIDpoints[1].y, PYRAMIDpoints[1].z);
vertex(PYRAMIDpoints[2].x, PYRAMIDpoints[2].y, PYRAMIDpoints[2].z);

vertex(PYRAMIDpoints[3].x, PYRAMIDpoints[3].y, PYRAMIDpoints[3].z);
vertex(PYRAMIDpoints[2].x, PYRAMIDpoints[2].y, PYRAMIDpoints[2].z);
vertex(PYRAMIDpoints[0].x, PYRAMIDpoints[0].y, PYRAMIDpoints[0].z);

vertex(PYRAMIDpoints[1].x, PYRAMIDpoints[1].y, PYRAMIDpoints[1].z);
vertex(PYRAMIDpoints[0].x, PYRAMIDpoints[0].y, PYRAMIDpoints[0].z);
vertex(PYRAMIDpoints[2].x, PYRAMIDpoints[2].y, PYRAMIDpoints[2].z);
endShape();
popMatrix();
    
}
//----------------------------------------------------------------

//Object name: ADDERpoints
PVector[] ADDERpoints = new PVector[]{
new PVector(-70,0,-110),
new PVector(-70,0,-70),
new PVector(-50,19,-110),
new PVector(-50,19,10),
new PVector(70,19,10),
new PVector(70,19,-110),
new PVector(90,0,-70),
new PVector(90,0,-110),
new PVector(-50,0,90),
new PVector(70,0,90),
new PVector(70,-20,-110),
new PVector(70,-20,10),
new PVector(-50,-20,-110),
new PVector(-50,-20,10),
new PVector(-25,7,60),
new PVector(-25,12,40),
new PVector(45,12,40),
new PVector(45,7,60),
new PVector(-15,9,-110),
new PVector(35,9,-110),
new PVector(35,-15,-110),
new PVector(-15,-15,-110),
new PVector(18,20,-29),
new PVector(18,20,-89),
new PVector(38,20,-69),
new PVector(8,20,-29),
new PVector(8,20,-89),
new PVector(-12,20,-69)
};

void drawADDER(){
pushMatrix();
rotateX(frameCount*PI/280);
rotateY(frameCount*PI/170);
rotateZ(frameCount*PI/90);
beginShape(TRIANGLES);
fill(0);
stroke(255);
vertex(ADDERpoints[2].x, ADDERpoints[2].y, ADDERpoints[2].z);
vertex(ADDERpoints[1].x, ADDERpoints[1].y, ADDERpoints[1].z);
vertex(ADDERpoints[0].x, ADDERpoints[0].y, ADDERpoints[0].z);

vertex(ADDERpoints[2].x, ADDERpoints[2].y, ADDERpoints[2].z);
vertex(ADDERpoints[3].x, ADDERpoints[3].y, ADDERpoints[3].z);
vertex(ADDERpoints[1].x, ADDERpoints[1].y, ADDERpoints[1].z);

vertex(ADDERpoints[4].x, ADDERpoints[4].y, ADDERpoints[4].z);
vertex(ADDERpoints[3].x, ADDERpoints[3].y, ADDERpoints[3].z);
vertex(ADDERpoints[2].x, ADDERpoints[2].y, ADDERpoints[2].z);

vertex(ADDERpoints[4].x, ADDERpoints[4].y, ADDERpoints[4].z);
vertex(ADDERpoints[2].x, ADDERpoints[2].y, ADDERpoints[2].z);
vertex(ADDERpoints[5].x, ADDERpoints[5].y, ADDERpoints[5].z);

vertex(ADDERpoints[22].x, ADDERpoints[22].y, ADDERpoints[22].z);
vertex(ADDERpoints[23].x, ADDERpoints[23].y, ADDERpoints[23].z);
vertex(ADDERpoints[24].x, ADDERpoints[24].y, ADDERpoints[24].z);

vertex(ADDERpoints[27].x, ADDERpoints[27].y, ADDERpoints[27].z);
vertex(ADDERpoints[26].x, ADDERpoints[26].y, ADDERpoints[26].z);
vertex(ADDERpoints[25].x, ADDERpoints[25].y, ADDERpoints[25].z);

vertex(ADDERpoints[5].x, ADDERpoints[5].y, ADDERpoints[5].z);
vertex(ADDERpoints[6].x, ADDERpoints[6].y, ADDERpoints[6].z);
vertex(ADDERpoints[4].x, ADDERpoints[4].y, ADDERpoints[4].z);

vertex(ADDERpoints[6].x, ADDERpoints[6].y, ADDERpoints[6].z);
vertex(ADDERpoints[5].x, ADDERpoints[5].y, ADDERpoints[5].z);
vertex(ADDERpoints[7].x, ADDERpoints[7].y, ADDERpoints[7].z);

vertex(ADDERpoints[3].x, ADDERpoints[3].y, ADDERpoints[3].z);
vertex(ADDERpoints[8].x, ADDERpoints[8].y, ADDERpoints[8].z);
vertex(ADDERpoints[1].x, ADDERpoints[1].y, ADDERpoints[1].z);

vertex(ADDERpoints[4].x, ADDERpoints[4].y, ADDERpoints[4].z);
vertex(ADDERpoints[6].x, ADDERpoints[6].y, ADDERpoints[6].z);
vertex(ADDERpoints[9].x, ADDERpoints[9].y, ADDERpoints[9].z);

vertex(ADDERpoints[3].x, ADDERpoints[3].y, ADDERpoints[3].z);
vertex(ADDERpoints[9].x, ADDERpoints[9].y, ADDERpoints[9].z);
vertex(ADDERpoints[8].x, ADDERpoints[8].y, ADDERpoints[8].z);

vertex(ADDERpoints[3].x, ADDERpoints[3].y, ADDERpoints[3].z);
vertex(ADDERpoints[4].x, ADDERpoints[4].y, ADDERpoints[4].z);
vertex(ADDERpoints[9].x, ADDERpoints[9].y, ADDERpoints[9].z);

vertex(ADDERpoints[7].x, ADDERpoints[7].y, ADDERpoints[7].z);
vertex(ADDERpoints[10].x, ADDERpoints[10].y, ADDERpoints[10].z);
vertex(ADDERpoints[6].x, ADDERpoints[6].y, ADDERpoints[6].z);

vertex(ADDERpoints[10].x, ADDERpoints[10].y, ADDERpoints[10].z);
vertex(ADDERpoints[11].x, ADDERpoints[11].y, ADDERpoints[11].z);
vertex(ADDERpoints[6].x, ADDERpoints[6].y, ADDERpoints[6].z);

vertex(ADDERpoints[6].x, ADDERpoints[6].y, ADDERpoints[6].z);
vertex(ADDERpoints[11].x, ADDERpoints[11].y, ADDERpoints[11].z);
vertex(ADDERpoints[9].x, ADDERpoints[9].y, ADDERpoints[9].z);

vertex(ADDERpoints[1].x, ADDERpoints[1].y, ADDERpoints[1].z);
vertex(ADDERpoints[12].x, ADDERpoints[12].y, ADDERpoints[12].z);
vertex(ADDERpoints[0].x, ADDERpoints[0].y, ADDERpoints[0].z);

vertex(ADDERpoints[13].x, ADDERpoints[13].y, ADDERpoints[13].z);
vertex(ADDERpoints[12].x, ADDERpoints[12].y, ADDERpoints[12].z);
vertex(ADDERpoints[1].x, ADDERpoints[1].y, ADDERpoints[1].z);

vertex(ADDERpoints[8].x, ADDERpoints[8].y, ADDERpoints[8].z);
vertex(ADDERpoints[13].x, ADDERpoints[13].y, ADDERpoints[13].z);
vertex(ADDERpoints[1].x, ADDERpoints[1].y, ADDERpoints[1].z);

vertex(ADDERpoints[12].x, ADDERpoints[12].y, ADDERpoints[12].z);
vertex(ADDERpoints[13].x, ADDERpoints[13].y, ADDERpoints[13].z);
vertex(ADDERpoints[11].x, ADDERpoints[11].y, ADDERpoints[11].z);

vertex(ADDERpoints[10].x, ADDERpoints[10].y, ADDERpoints[10].z);
vertex(ADDERpoints[12].x, ADDERpoints[12].y, ADDERpoints[12].z);
vertex(ADDERpoints[11].x, ADDERpoints[11].y, ADDERpoints[11].z);

vertex(ADDERpoints[11].x, ADDERpoints[11].y, ADDERpoints[11].z);
vertex(ADDERpoints[13].x, ADDERpoints[13].y, ADDERpoints[13].z);
vertex(ADDERpoints[9].x, ADDERpoints[9].y, ADDERpoints[9].z);

vertex(ADDERpoints[13].x, ADDERpoints[13].y, ADDERpoints[13].z);
vertex(ADDERpoints[8].x, ADDERpoints[8].y, ADDERpoints[8].z);
vertex(ADDERpoints[9].x, ADDERpoints[9].y, ADDERpoints[9].z);

vertex(ADDERpoints[14].x, ADDERpoints[14].y, ADDERpoints[14].z);
vertex(ADDERpoints[15].x, ADDERpoints[15].y, ADDERpoints[15].z);
vertex(ADDERpoints[16].x, ADDERpoints[16].y, ADDERpoints[16].z);

vertex(ADDERpoints[16].x, ADDERpoints[16].y, ADDERpoints[16].z);
vertex(ADDERpoints[17].x, ADDERpoints[17].y, ADDERpoints[17].z);
vertex(ADDERpoints[14].x, ADDERpoints[14].y, ADDERpoints[14].z);

vertex(ADDERpoints[0].x, ADDERpoints[0].y, ADDERpoints[0].z);
vertex(ADDERpoints[12].x, ADDERpoints[12].y, ADDERpoints[12].z);
vertex(ADDERpoints[2].x, ADDERpoints[2].y, ADDERpoints[2].z);

vertex(ADDERpoints[2].x, ADDERpoints[2].y, ADDERpoints[2].z);
vertex(ADDERpoints[12].x, ADDERpoints[12].y, ADDERpoints[12].z);
vertex(ADDERpoints[10].x, ADDERpoints[10].y, ADDERpoints[10].z);

vertex(ADDERpoints[10].x, ADDERpoints[10].y, ADDERpoints[10].z);
vertex(ADDERpoints[5].x, ADDERpoints[5].y, ADDERpoints[5].z);
vertex(ADDERpoints[2].x, ADDERpoints[2].y, ADDERpoints[2].z);

vertex(ADDERpoints[5].x, ADDERpoints[5].y, ADDERpoints[5].z);
vertex(ADDERpoints[10].x, ADDERpoints[10].y, ADDERpoints[10].z);
vertex(ADDERpoints[7].x, ADDERpoints[7].y, ADDERpoints[7].z);

vertex(ADDERpoints[20].x, ADDERpoints[20].y, ADDERpoints[20].z);
vertex(ADDERpoints[19].x, ADDERpoints[19].y, ADDERpoints[19].z);
vertex(ADDERpoints[18].x, ADDERpoints[18].y, ADDERpoints[18].z);

vertex(ADDERpoints[20].x, ADDERpoints[20].y, ADDERpoints[20].z);
vertex(ADDERpoints[18].x, ADDERpoints[18].y, ADDERpoints[18].z);
vertex(ADDERpoints[21].x, ADDERpoints[21].y, ADDERpoints[21].z);
endShape();
popMatrix();
    
}
//----------------------------------------------------------------

//Object name: FARANACONDApoints
PVector[] FARANACONDApoints = new PVector[]{
new PVector(0,-25,175),
new PVector(-70,-75,-145),
new PVector(70,-75,-145),
new PVector(110,-35,-95),
new PVector(-110,-35,-95),
new PVector(-60,35,-115),
new PVector(60,35,-115),
new PVector(0,15,-175),
new PVector(0,-15,-165),
new PVector(-30,-54,-152),
new PVector(30,-54,-152)
};

void drawFARANACONDA(){
pushMatrix();
rotateX(frameCount*PI/280);
rotateY(frameCount*PI/170);
rotateZ(frameCount*PI/90);
beginShape(TRIANGLES);
fill(0);
stroke(255);
vertex(FARANACONDApoints[2].x, FARANACONDApoints[2].y, FARANACONDApoints[2].z);
vertex(FARANACONDApoints[1].x, FARANACONDApoints[1].y, FARANACONDApoints[1].z);
vertex(FARANACONDApoints[0].x, FARANACONDApoints[0].y, FARANACONDApoints[0].z);

vertex(FARANACONDApoints[0].x, FARANACONDApoints[0].y, FARANACONDApoints[0].z);
vertex(FARANACONDApoints[3].x, FARANACONDApoints[3].y, FARANACONDApoints[3].z);
vertex(FARANACONDApoints[2].x, FARANACONDApoints[2].y, FARANACONDApoints[2].z);

vertex(FARANACONDApoints[1].x, FARANACONDApoints[1].y, FARANACONDApoints[1].z);
vertex(FARANACONDApoints[4].x, FARANACONDApoints[4].y, FARANACONDApoints[4].z);
vertex(FARANACONDApoints[0].x, FARANACONDApoints[0].y, FARANACONDApoints[0].z);

vertex(FARANACONDApoints[0].x, FARANACONDApoints[0].y, FARANACONDApoints[0].z);
vertex(FARANACONDApoints[5].x, FARANACONDApoints[5].y, FARANACONDApoints[5].z);
vertex(FARANACONDApoints[6].x, FARANACONDApoints[6].y, FARANACONDApoints[6].z);

vertex(FARANACONDApoints[0].x, FARANACONDApoints[0].y, FARANACONDApoints[0].z);
vertex(FARANACONDApoints[6].x, FARANACONDApoints[6].y, FARANACONDApoints[6].z);
vertex(FARANACONDApoints[3].x, FARANACONDApoints[3].y, FARANACONDApoints[3].z);

vertex(FARANACONDApoints[5].x, FARANACONDApoints[5].y, FARANACONDApoints[5].z);
vertex(FARANACONDApoints[7].x, FARANACONDApoints[7].y, FARANACONDApoints[7].z);
vertex(FARANACONDApoints[6].x, FARANACONDApoints[6].y, FARANACONDApoints[6].z);

vertex(FARANACONDApoints[7].x, FARANACONDApoints[7].y, FARANACONDApoints[7].z);
vertex(FARANACONDApoints[1].x, FARANACONDApoints[1].y, FARANACONDApoints[1].z);
vertex(FARANACONDApoints[2].x, FARANACONDApoints[2].y, FARANACONDApoints[2].z);

vertex(FARANACONDApoints[8].x, FARANACONDApoints[8].y, FARANACONDApoints[8].z);
vertex(FARANACONDApoints[9].x, FARANACONDApoints[9].y, FARANACONDApoints[9].z);
vertex(FARANACONDApoints[10].x, FARANACONDApoints[10].y, FARANACONDApoints[10].z);

vertex(FARANACONDApoints[6].x, FARANACONDApoints[6].y, FARANACONDApoints[6].z);
vertex(FARANACONDApoints[7].x, FARANACONDApoints[7].y, FARANACONDApoints[7].z);
vertex(FARANACONDApoints[2].x, FARANACONDApoints[2].y, FARANACONDApoints[2].z);

vertex(FARANACONDApoints[3].x, FARANACONDApoints[3].y, FARANACONDApoints[3].z);
vertex(FARANACONDApoints[6].x, FARANACONDApoints[6].y, FARANACONDApoints[6].z);
vertex(FARANACONDApoints[2].x, FARANACONDApoints[2].y, FARANACONDApoints[2].z);

vertex(FARANACONDApoints[4].x, FARANACONDApoints[4].y, FARANACONDApoints[4].z);
vertex(FARANACONDApoints[5].x, FARANACONDApoints[5].y, FARANACONDApoints[5].z);
vertex(FARANACONDApoints[0].x, FARANACONDApoints[0].y, FARANACONDApoints[0].z);

vertex(FARANACONDApoints[1].x, FARANACONDApoints[1].y, FARANACONDApoints[1].z);
vertex(FARANACONDApoints[7].x, FARANACONDApoints[7].y, FARANACONDApoints[7].z);
vertex(FARANACONDApoints[5].x, FARANACONDApoints[5].y, FARANACONDApoints[5].z);

vertex(FARANACONDApoints[5].x, FARANACONDApoints[5].y, FARANACONDApoints[5].z);
vertex(FARANACONDApoints[4].x, FARANACONDApoints[4].y, FARANACONDApoints[4].z);
vertex(FARANACONDApoints[1].x, FARANACONDApoints[1].y, FARANACONDApoints[1].z);
endShape();
popMatrix();
    
}
//----------------------------------------------------------------

//Object name: ANACONDApoints
PVector[] ANACONDApoints = new PVector[]{
new PVector(0,-25,175),
new PVector(-70,-75,-145),
new PVector(70,-75,-145),
new PVector(110,-35,-95),
new PVector(-110,-35,-95),
new PVector(-60,35,-115),
new PVector(60,35,-115),
new PVector(0,15,-175),
new PVector(0,-15,-165),
new PVector(-30,-51,-153),
new PVector(30,-51,-153),
new PVector(-17,-6,83),
new PVector(18,-6,83),
new PVector(20,-4,74),
new PVector(-20,-4,74),
new PVector(-18,-6,83),
new PVector(16,-8,94),
new PVector(14,-10,103),
new PVector(-14,-10,103),
new PVector(-16,-8,94)
};

void drawANACONDA(){
pushMatrix();
rotateX(frameCount*PI/280);
rotateY(frameCount*PI/170);
rotateZ(frameCount*PI/90);
beginShape(TRIANGLES);
fill(0);
stroke(255);
vertex(ANACONDApoints[2].x, ANACONDApoints[2].y, ANACONDApoints[2].z);
vertex(ANACONDApoints[1].x, ANACONDApoints[1].y, ANACONDApoints[1].z);
vertex(ANACONDApoints[0].x, ANACONDApoints[0].y, ANACONDApoints[0].z);

vertex(ANACONDApoints[0].x, ANACONDApoints[0].y, ANACONDApoints[0].z);
vertex(ANACONDApoints[3].x, ANACONDApoints[3].y, ANACONDApoints[3].z);
vertex(ANACONDApoints[2].x, ANACONDApoints[2].y, ANACONDApoints[2].z);

vertex(ANACONDApoints[1].x, ANACONDApoints[1].y, ANACONDApoints[1].z);
vertex(ANACONDApoints[4].x, ANACONDApoints[4].y, ANACONDApoints[4].z);
vertex(ANACONDApoints[0].x, ANACONDApoints[0].y, ANACONDApoints[0].z);

vertex(ANACONDApoints[0].x, ANACONDApoints[0].y, ANACONDApoints[0].z);
vertex(ANACONDApoints[5].x, ANACONDApoints[5].y, ANACONDApoints[5].z);
vertex(ANACONDApoints[6].x, ANACONDApoints[6].y, ANACONDApoints[6].z);

vertex(ANACONDApoints[0].x, ANACONDApoints[0].y, ANACONDApoints[0].z);
vertex(ANACONDApoints[6].x, ANACONDApoints[6].y, ANACONDApoints[6].z);
vertex(ANACONDApoints[3].x, ANACONDApoints[3].y, ANACONDApoints[3].z);

vertex(ANACONDApoints[5].x, ANACONDApoints[5].y, ANACONDApoints[5].z);
vertex(ANACONDApoints[7].x, ANACONDApoints[7].y, ANACONDApoints[7].z);
vertex(ANACONDApoints[6].x, ANACONDApoints[6].y, ANACONDApoints[6].z);

vertex(ANACONDApoints[7].x, ANACONDApoints[7].y, ANACONDApoints[7].z);
vertex(ANACONDApoints[1].x, ANACONDApoints[1].y, ANACONDApoints[1].z);
vertex(ANACONDApoints[2].x, ANACONDApoints[2].y, ANACONDApoints[2].z);

vertex(ANACONDApoints[8].x, ANACONDApoints[8].y, ANACONDApoints[8].z);
vertex(ANACONDApoints[9].x, ANACONDApoints[9].y, ANACONDApoints[9].z);
vertex(ANACONDApoints[10].x, ANACONDApoints[10].y, ANACONDApoints[10].z);

vertex(ANACONDApoints[6].x, ANACONDApoints[6].y, ANACONDApoints[6].z);
vertex(ANACONDApoints[7].x, ANACONDApoints[7].y, ANACONDApoints[7].z);
vertex(ANACONDApoints[2].x, ANACONDApoints[2].y, ANACONDApoints[2].z);

vertex(ANACONDApoints[3].x, ANACONDApoints[3].y, ANACONDApoints[3].z);
vertex(ANACONDApoints[6].x, ANACONDApoints[6].y, ANACONDApoints[6].z);
vertex(ANACONDApoints[2].x, ANACONDApoints[2].y, ANACONDApoints[2].z);

vertex(ANACONDApoints[4].x, ANACONDApoints[4].y, ANACONDApoints[4].z);
vertex(ANACONDApoints[5].x, ANACONDApoints[5].y, ANACONDApoints[5].z);
vertex(ANACONDApoints[0].x, ANACONDApoints[0].y, ANACONDApoints[0].z);

vertex(ANACONDApoints[1].x, ANACONDApoints[1].y, ANACONDApoints[1].z);
vertex(ANACONDApoints[7].x, ANACONDApoints[7].y, ANACONDApoints[7].z);
vertex(ANACONDApoints[5].x, ANACONDApoints[5].y, ANACONDApoints[5].z);

vertex(ANACONDApoints[5].x, ANACONDApoints[5].y, ANACONDApoints[5].z);
vertex(ANACONDApoints[4].x, ANACONDApoints[4].y, ANACONDApoints[4].z);
vertex(ANACONDApoints[1].x, ANACONDApoints[1].y, ANACONDApoints[1].z);

vertex(ANACONDApoints[13].x, ANACONDApoints[13].y, ANACONDApoints[13].z);
vertex(ANACONDApoints[12].x, ANACONDApoints[12].y, ANACONDApoints[12].z);
vertex(ANACONDApoints[11].x, ANACONDApoints[11].y, ANACONDApoints[11].z);

vertex(ANACONDApoints[15].x, ANACONDApoints[15].y, ANACONDApoints[15].z);
vertex(ANACONDApoints[14].x, ANACONDApoints[14].y, ANACONDApoints[14].z);
vertex(ANACONDApoints[13].x, ANACONDApoints[13].y, ANACONDApoints[13].z);

vertex(ANACONDApoints[16].x, ANACONDApoints[16].y, ANACONDApoints[16].z);
vertex(ANACONDApoints[17].x, ANACONDApoints[17].y, ANACONDApoints[17].z);
vertex(ANACONDApoints[18].x, ANACONDApoints[18].y, ANACONDApoints[18].z);

vertex(ANACONDApoints[18].x, ANACONDApoints[18].y, ANACONDApoints[18].z);
vertex(ANACONDApoints[19].x, ANACONDApoints[19].y, ANACONDApoints[19].z);
vertex(ANACONDApoints[16].x, ANACONDApoints[16].y, ANACONDApoints[16].z);
endShape();
popMatrix();
    
}
//----------------------------------------------------------------

//Object name: OLDASPpoints
PVector[] OLDASPpoints = new PVector[]{
new PVector(-50,-27,-75),
new PVector(10,-7,-75),
new PVector(10,-47,-75),
new PVector(70,-27,-75),
new PVector(10,-7,-5),
new PVector(-50,-17,15),
new PVector(70,-37,15),
new PVector(10,-17,-75),
new PVector(-50,-37,15),
new PVector(-90,-27,5),
new PVector(70,-17,15),
new PVector(-10,-27,-75),
new PVector(110,-27,5),
new PVector(-30,-27,75),
new PVector(50,-27,75),
new PVector(10,-37,-75),
new PVector(30,-27,-75)
};

void drawOLDASP(){
pushMatrix();
rotateX(frameCount*PI/280);
rotateY(frameCount*PI/170);
rotateZ(frameCount*PI/90);
beginShape(TRIANGLES);
fill(0);
stroke(255);
vertex(OLDASPpoints[2].x, OLDASPpoints[2].y, OLDASPpoints[2].z);
vertex(OLDASPpoints[1].x, OLDASPpoints[1].y, OLDASPpoints[1].z);
vertex(OLDASPpoints[0].x, OLDASPpoints[0].y, OLDASPpoints[0].z);

vertex(OLDASPpoints[3].x, OLDASPpoints[3].y, OLDASPpoints[3].z);
vertex(OLDASPpoints[1].x, OLDASPpoints[1].y, OLDASPpoints[1].z);
vertex(OLDASPpoints[2].x, OLDASPpoints[2].y, OLDASPpoints[2].z);

vertex(OLDASPpoints[7].x, OLDASPpoints[7].y, OLDASPpoints[7].z);
vertex(OLDASPpoints[11].x, OLDASPpoints[11].y, OLDASPpoints[11].z);
vertex(OLDASPpoints[15].x, OLDASPpoints[15].y, OLDASPpoints[15].z);

vertex(OLDASPpoints[16].x, OLDASPpoints[16].y, OLDASPpoints[16].z);
vertex(OLDASPpoints[7].x, OLDASPpoints[7].y, OLDASPpoints[7].z);
vertex(OLDASPpoints[15].x, OLDASPpoints[15].y, OLDASPpoints[15].z);

vertex(OLDASPpoints[0].x, OLDASPpoints[0].y, OLDASPpoints[0].z);
vertex(OLDASPpoints[1].x, OLDASPpoints[1].y, OLDASPpoints[1].z);
vertex(OLDASPpoints[4].x, OLDASPpoints[4].y, OLDASPpoints[4].z);

vertex(OLDASPpoints[4].x, OLDASPpoints[4].y, OLDASPpoints[4].z);
vertex(OLDASPpoints[5].x, OLDASPpoints[5].y, OLDASPpoints[5].z);
vertex(OLDASPpoints[0].x, OLDASPpoints[0].y, OLDASPpoints[0].z);

vertex(OLDASPpoints[5].x, OLDASPpoints[5].y, OLDASPpoints[5].z);
vertex(OLDASPpoints[9].x, OLDASPpoints[9].y, OLDASPpoints[9].z);
vertex(OLDASPpoints[0].x, OLDASPpoints[0].y, OLDASPpoints[0].z);

vertex(OLDASPpoints[3].x, OLDASPpoints[3].y, OLDASPpoints[3].z);
vertex(OLDASPpoints[4].x, OLDASPpoints[4].y, OLDASPpoints[4].z);
vertex(OLDASPpoints[1].x, OLDASPpoints[1].y, OLDASPpoints[1].z);

vertex(OLDASPpoints[3].x, OLDASPpoints[3].y, OLDASPpoints[3].z);
vertex(OLDASPpoints[10].x, OLDASPpoints[10].y, OLDASPpoints[10].z);
vertex(OLDASPpoints[4].x, OLDASPpoints[4].y, OLDASPpoints[4].z);

vertex(OLDASPpoints[12].x, OLDASPpoints[12].y, OLDASPpoints[12].z);
vertex(OLDASPpoints[10].x, OLDASPpoints[10].y, OLDASPpoints[10].z);
vertex(OLDASPpoints[3].x, OLDASPpoints[3].y, OLDASPpoints[3].z);

vertex(OLDASPpoints[4].x, OLDASPpoints[4].y, OLDASPpoints[4].z);
vertex(OLDASPpoints[13].x, OLDASPpoints[13].y, OLDASPpoints[13].z);
vertex(OLDASPpoints[5].x, OLDASPpoints[5].y, OLDASPpoints[5].z);

vertex(OLDASPpoints[14].x, OLDASPpoints[14].y, OLDASPpoints[14].z);
vertex(OLDASPpoints[13].x, OLDASPpoints[13].y, OLDASPpoints[13].z);
vertex(OLDASPpoints[4].x, OLDASPpoints[4].y, OLDASPpoints[4].z);

vertex(OLDASPpoints[14].x, OLDASPpoints[14].y, OLDASPpoints[14].z);
vertex(OLDASPpoints[4].x, OLDASPpoints[4].y, OLDASPpoints[4].z);
vertex(OLDASPpoints[10].x, OLDASPpoints[10].y, OLDASPpoints[10].z);

vertex(OLDASPpoints[5].x, OLDASPpoints[5].y, OLDASPpoints[5].z);
vertex(OLDASPpoints[13].x, OLDASPpoints[13].y, OLDASPpoints[13].z);
vertex(OLDASPpoints[9].x, OLDASPpoints[9].y, OLDASPpoints[9].z);

vertex(OLDASPpoints[10].x, OLDASPpoints[10].y, OLDASPpoints[10].z);
vertex(OLDASPpoints[12].x, OLDASPpoints[12].y, OLDASPpoints[12].z);
vertex(OLDASPpoints[14].x, OLDASPpoints[14].y, OLDASPpoints[14].z);

vertex(OLDASPpoints[8].x, OLDASPpoints[8].y, OLDASPpoints[8].z);
vertex(OLDASPpoints[6].x, OLDASPpoints[6].y, OLDASPpoints[6].z);
vertex(OLDASPpoints[2].x, OLDASPpoints[2].y, OLDASPpoints[2].z);

vertex(OLDASPpoints[8].x, OLDASPpoints[8].y, OLDASPpoints[8].z);
vertex(OLDASPpoints[13].x, OLDASPpoints[13].y, OLDASPpoints[13].z);
vertex(OLDASPpoints[6].x, OLDASPpoints[6].y, OLDASPpoints[6].z);

vertex(OLDASPpoints[13].x, OLDASPpoints[13].y, OLDASPpoints[13].z);
vertex(OLDASPpoints[14].x, OLDASPpoints[14].y, OLDASPpoints[14].z);
vertex(OLDASPpoints[6].x, OLDASPpoints[6].y, OLDASPpoints[6].z);

vertex(OLDASPpoints[8].x, OLDASPpoints[8].y, OLDASPpoints[8].z);
vertex(OLDASPpoints[9].x, OLDASPpoints[9].y, OLDASPpoints[9].z);
vertex(OLDASPpoints[13].x, OLDASPpoints[13].y, OLDASPpoints[13].z);

vertex(OLDASPpoints[14].x, OLDASPpoints[14].y, OLDASPpoints[14].z);
vertex(OLDASPpoints[12].x, OLDASPpoints[12].y, OLDASPpoints[12].z);
vertex(OLDASPpoints[6].x, OLDASPpoints[6].y, OLDASPpoints[6].z);

vertex(OLDASPpoints[2].x, OLDASPpoints[2].y, OLDASPpoints[2].z);
vertex(OLDASPpoints[6].x, OLDASPpoints[6].y, OLDASPpoints[6].z);
vertex(OLDASPpoints[12].x, OLDASPpoints[12].y, OLDASPpoints[12].z);

vertex(OLDASPpoints[12].x, OLDASPpoints[12].y, OLDASPpoints[12].z);
vertex(OLDASPpoints[3].x, OLDASPpoints[3].y, OLDASPpoints[3].z);
vertex(OLDASPpoints[2].x, OLDASPpoints[2].y, OLDASPpoints[2].z);

vertex(OLDASPpoints[9].x, OLDASPpoints[9].y, OLDASPpoints[9].z);
vertex(OLDASPpoints[8].x, OLDASPpoints[8].y, OLDASPpoints[8].z);
vertex(OLDASPpoints[2].x, OLDASPpoints[2].y, OLDASPpoints[2].z);

vertex(OLDASPpoints[2].x, OLDASPpoints[2].y, OLDASPpoints[2].z);
vertex(OLDASPpoints[0].x, OLDASPpoints[0].y, OLDASPpoints[0].z);
vertex(OLDASPpoints[9].x, OLDASPpoints[9].y, OLDASPpoints[9].z);
endShape();
popMatrix();
    
}
//----------------------------------------------------------------

//Object name: FARASPpoints
PVector[] FARASPpoints = new PVector[]{
new PVector(116,-10,18),
new PVector(50,-10,100),
new PVector(90,16,30),
new PVector(-50,-10,100),
new PVector(-116,-10,18),
new PVector(-90,16,30),
new PVector(70,-10,-100),
new PVector(100,-30,40),
new PVector(-98,-30,40),
new PVector(-70,-10,-100),
new PVector(0,30,-8),
new PVector(0,20,-100)
};

void drawFARASP(){
pushMatrix();
rotateX(frameCount*PI/280);
rotateY(frameCount*PI/170);
rotateZ(frameCount*PI/90);
beginShape(TRIANGLES);
fill(0);
stroke(255);
vertex(FARASPpoints[0].x, FARASPpoints[0].y, FARASPpoints[0].z);
vertex(FARASPpoints[1].x, FARASPpoints[1].y, FARASPpoints[1].z);
vertex(FARASPpoints[2].x, FARASPpoints[2].y, FARASPpoints[2].z);

vertex(FARASPpoints[3].x, FARASPpoints[3].y, FARASPpoints[3].z);
vertex(FARASPpoints[4].x, FARASPpoints[4].y, FARASPpoints[4].z);
vertex(FARASPpoints[5].x, FARASPpoints[5].y, FARASPpoints[5].z);

vertex(FARASPpoints[2].x, FARASPpoints[2].y, FARASPpoints[2].z);
vertex(FARASPpoints[6].x, FARASPpoints[6].y, FARASPpoints[6].z);
vertex(FARASPpoints[0].x, FARASPpoints[0].y, FARASPpoints[0].z);

vertex(FARASPpoints[7].x, FARASPpoints[7].y, FARASPpoints[7].z);
vertex(FARASPpoints[0].x, FARASPpoints[0].y, FARASPpoints[0].z);
vertex(FARASPpoints[6].x, FARASPpoints[6].y, FARASPpoints[6].z);

vertex(FARASPpoints[8].x, FARASPpoints[8].y, FARASPpoints[8].z);
vertex(FARASPpoints[3].x, FARASPpoints[3].y, FARASPpoints[3].z);
vertex(FARASPpoints[1].x, FARASPpoints[1].y, FARASPpoints[1].z);

vertex(FARASPpoints[7].x, FARASPpoints[7].y, FARASPpoints[7].z);
vertex(FARASPpoints[8].x, FARASPpoints[8].y, FARASPpoints[8].z);
vertex(FARASPpoints[1].x, FARASPpoints[1].y, FARASPpoints[1].z);

vertex(FARASPpoints[1].x, FARASPpoints[1].y, FARASPpoints[1].z);
vertex(FARASPpoints[0].x, FARASPpoints[0].y, FARASPpoints[0].z);
vertex(FARASPpoints[7].x, FARASPpoints[7].y, FARASPpoints[7].z);

vertex(FARASPpoints[8].x, FARASPpoints[8].y, FARASPpoints[8].z);
vertex(FARASPpoints[4].x, FARASPpoints[4].y, FARASPpoints[4].z);
vertex(FARASPpoints[3].x, FARASPpoints[3].y, FARASPpoints[3].z);

vertex(FARASPpoints[7].x, FARASPpoints[7].y, FARASPpoints[7].z);
vertex(FARASPpoints[9].x, FARASPpoints[9].y, FARASPpoints[9].z);
vertex(FARASPpoints[8].x, FARASPpoints[8].y, FARASPpoints[8].z);

vertex(FARASPpoints[7].x, FARASPpoints[7].y, FARASPpoints[7].z);
vertex(FARASPpoints[6].x, FARASPpoints[6].y, FARASPpoints[6].z);
vertex(FARASPpoints[9].x, FARASPpoints[9].y, FARASPpoints[9].z);

vertex(FARASPpoints[6].x, FARASPpoints[6].y, FARASPpoints[6].z);
vertex(FARASPpoints[2].x, FARASPpoints[2].y, FARASPpoints[2].z);
vertex(FARASPpoints[10].x, FARASPpoints[10].y, FARASPpoints[10].z);

vertex(FARASPpoints[5].x, FARASPpoints[5].y, FARASPpoints[5].z);
vertex(FARASPpoints[9].x, FARASPpoints[9].y, FARASPpoints[9].z);
vertex(FARASPpoints[10].x, FARASPpoints[10].y, FARASPpoints[10].z);

vertex(FARASPpoints[11].x, FARASPpoints[11].y, FARASPpoints[11].z);
vertex(FARASPpoints[6].x, FARASPpoints[6].y, FARASPpoints[6].z);
vertex(FARASPpoints[10].x, FARASPpoints[10].y, FARASPpoints[10].z);

vertex(FARASPpoints[11].x, FARASPpoints[11].y, FARASPpoints[11].z);
vertex(FARASPpoints[10].x, FARASPpoints[10].y, FARASPpoints[10].z);
vertex(FARASPpoints[9].x, FARASPpoints[9].y, FARASPpoints[9].z);

vertex(FARASPpoints[2].x, FARASPpoints[2].y, FARASPpoints[2].z);
vertex(FARASPpoints[1].x, FARASPpoints[1].y, FARASPpoints[1].z);
vertex(FARASPpoints[10].x, FARASPpoints[10].y, FARASPpoints[10].z);

vertex(FARASPpoints[1].x, FARASPpoints[1].y, FARASPpoints[1].z);
vertex(FARASPpoints[3].x, FARASPpoints[3].y, FARASPpoints[3].z);
vertex(FARASPpoints[10].x, FARASPpoints[10].y, FARASPpoints[10].z);

vertex(FARASPpoints[3].x, FARASPpoints[3].y, FARASPpoints[3].z);
vertex(FARASPpoints[5].x, FARASPpoints[5].y, FARASPpoints[5].z);
vertex(FARASPpoints[10].x, FARASPpoints[10].y, FARASPpoints[10].z);

vertex(FARASPpoints[6].x, FARASPpoints[6].y, FARASPpoints[6].z);
vertex(FARASPpoints[11].x, FARASPpoints[11].y, FARASPpoints[11].z);
vertex(FARASPpoints[9].x, FARASPpoints[9].y, FARASPpoints[9].z);

vertex(FARASPpoints[9].x, FARASPpoints[9].y, FARASPpoints[9].z);
vertex(FARASPpoints[5].x, FARASPpoints[5].y, FARASPpoints[5].z);
vertex(FARASPpoints[4].x, FARASPpoints[4].y, FARASPpoints[4].z);

vertex(FARASPpoints[8].x, FARASPpoints[8].y, FARASPpoints[8].z);
vertex(FARASPpoints[9].x, FARASPpoints[9].y, FARASPpoints[9].z);
vertex(FARASPpoints[4].x, FARASPpoints[4].y, FARASPpoints[4].z);
endShape();
popMatrix();
    
}
//----------------------------------------------------------------

//Object name: ASPpoints
PVector[] ASPpoints = new PVector[]{
new PVector(105,-10,15),
new PVector(39,-10,97),
new PVector(79,16,27),
new PVector(-60,-10,97),
new PVector(-126,-10,15),
new PVector(-100,16,27),
new PVector(59,-10,-103),
new PVector(89,-30,37),
new PVector(-108,-30,37),
new PVector(-80,-10,-103),
new PVector(-10,30,-11),
new PVector(-10,20,-103),
new PVector(-30,-10,-103),
new PVector(9,-10,-103),
new PVector(-30,-14,85),
new PVector(-35,-26,49),
new PVector(-25,-26,49),
new PVector(12,-26,49),
new PVector(2,-26,49),
new PVector(7,-14,85)
};

void drawASP(){
pushMatrix();
rotateX(frameCount*PI/280);
rotateY(frameCount*PI/170);
rotateZ(frameCount*PI/90);
beginShape(TRIANGLES);
fill(0);
stroke(255);
vertex(ASPpoints[7].x, ASPpoints[7].y, ASPpoints[7].z);
vertex(ASPpoints[0].x, ASPpoints[0].y, ASPpoints[0].z);
vertex(ASPpoints[6].x, ASPpoints[6].y, ASPpoints[6].z);

vertex(ASPpoints[8].x, ASPpoints[8].y, ASPpoints[8].z);
vertex(ASPpoints[3].x, ASPpoints[3].y, ASPpoints[3].z);
vertex(ASPpoints[1].x, ASPpoints[1].y, ASPpoints[1].z);

vertex(ASPpoints[7].x, ASPpoints[7].y, ASPpoints[7].z);
vertex(ASPpoints[8].x, ASPpoints[8].y, ASPpoints[8].z);
vertex(ASPpoints[1].x, ASPpoints[1].y, ASPpoints[1].z);

vertex(ASPpoints[16].x, ASPpoints[16].y, ASPpoints[16].z);
vertex(ASPpoints[15].x, ASPpoints[15].y, ASPpoints[15].z);
vertex(ASPpoints[14].x, ASPpoints[14].y, ASPpoints[14].z);

vertex(ASPpoints[17].x, ASPpoints[17].y, ASPpoints[17].z);
vertex(ASPpoints[18].x, ASPpoints[18].y, ASPpoints[18].z);
vertex(ASPpoints[19].x, ASPpoints[19].y, ASPpoints[19].z);

vertex(ASPpoints[7].x, ASPpoints[7].y, ASPpoints[7].z);
vertex(ASPpoints[9].x, ASPpoints[9].y, ASPpoints[9].z);
vertex(ASPpoints[8].x, ASPpoints[8].y, ASPpoints[8].z);

vertex(ASPpoints[7].x, ASPpoints[7].y, ASPpoints[7].z);
vertex(ASPpoints[6].x, ASPpoints[6].y, ASPpoints[6].z);
vertex(ASPpoints[9].x, ASPpoints[9].y, ASPpoints[9].z);

vertex(ASPpoints[6].x, ASPpoints[6].y, ASPpoints[6].z);
vertex(ASPpoints[2].x, ASPpoints[2].y, ASPpoints[2].z);
vertex(ASPpoints[10].x, ASPpoints[10].y, ASPpoints[10].z);

vertex(ASPpoints[5].x, ASPpoints[5].y, ASPpoints[5].z);
vertex(ASPpoints[9].x, ASPpoints[9].y, ASPpoints[9].z);
vertex(ASPpoints[10].x, ASPpoints[10].y, ASPpoints[10].z);

vertex(ASPpoints[11].x, ASPpoints[11].y, ASPpoints[11].z);
vertex(ASPpoints[6].x, ASPpoints[6].y, ASPpoints[6].z);
vertex(ASPpoints[10].x, ASPpoints[10].y, ASPpoints[10].z);

vertex(ASPpoints[11].x, ASPpoints[11].y, ASPpoints[11].z);
vertex(ASPpoints[10].x, ASPpoints[10].y, ASPpoints[10].z);
vertex(ASPpoints[9].x, ASPpoints[9].y, ASPpoints[9].z);

vertex(ASPpoints[2].x, ASPpoints[2].y, ASPpoints[2].z);
vertex(ASPpoints[1].x, ASPpoints[1].y, ASPpoints[1].z);
vertex(ASPpoints[10].x, ASPpoints[10].y, ASPpoints[10].z);

vertex(ASPpoints[1].x, ASPpoints[1].y, ASPpoints[1].z);
vertex(ASPpoints[3].x, ASPpoints[3].y, ASPpoints[3].z);
vertex(ASPpoints[10].x, ASPpoints[10].y, ASPpoints[10].z);

vertex(ASPpoints[3].x, ASPpoints[3].y, ASPpoints[3].z);
vertex(ASPpoints[5].x, ASPpoints[5].y, ASPpoints[5].z);
vertex(ASPpoints[10].x, ASPpoints[10].y, ASPpoints[10].z);

vertex(ASPpoints[11].x, ASPpoints[11].y, ASPpoints[11].z);
vertex(ASPpoints[12].x, ASPpoints[12].y, ASPpoints[12].z);
vertex(ASPpoints[13].x, ASPpoints[13].y, ASPpoints[13].z);

vertex(ASPpoints[11].x, ASPpoints[11].y, ASPpoints[11].z);
vertex(ASPpoints[9].x, ASPpoints[9].y, ASPpoints[9].z);
vertex(ASPpoints[12].x, ASPpoints[12].y, ASPpoints[12].z);

vertex(ASPpoints[6].x, ASPpoints[6].y, ASPpoints[6].z);
vertex(ASPpoints[11].x, ASPpoints[11].y, ASPpoints[11].z);
vertex(ASPpoints[13].x, ASPpoints[13].y, ASPpoints[13].z);

vertex(ASPpoints[9].x, ASPpoints[9].y, ASPpoints[9].z);
vertex(ASPpoints[5].x, ASPpoints[5].y, ASPpoints[5].z);
vertex(ASPpoints[4].x, ASPpoints[4].y, ASPpoints[4].z);

vertex(ASPpoints[8].x, ASPpoints[8].y, ASPpoints[8].z);
vertex(ASPpoints[9].x, ASPpoints[9].y, ASPpoints[9].z);
vertex(ASPpoints[4].x, ASPpoints[4].y, ASPpoints[4].z);

vertex(ASPpoints[3].x, ASPpoints[3].y, ASPpoints[3].z);
vertex(ASPpoints[8].x, ASPpoints[8].y, ASPpoints[8].z);
vertex(ASPpoints[4].x, ASPpoints[4].y, ASPpoints[4].z);

vertex(ASPpoints[4].x, ASPpoints[4].y, ASPpoints[4].z);
vertex(ASPpoints[5].x, ASPpoints[5].y, ASPpoints[5].z);
vertex(ASPpoints[3].x, ASPpoints[3].y, ASPpoints[3].z);

vertex(ASPpoints[1].x, ASPpoints[1].y, ASPpoints[1].z);
vertex(ASPpoints[2].x, ASPpoints[2].y, ASPpoints[2].z);
vertex(ASPpoints[0].x, ASPpoints[0].y, ASPpoints[0].z);

vertex(ASPpoints[0].x, ASPpoints[0].y, ASPpoints[0].z);
vertex(ASPpoints[7].x, ASPpoints[7].y, ASPpoints[7].z);
vertex(ASPpoints[1].x, ASPpoints[1].y, ASPpoints[1].z);

vertex(ASPpoints[0].x, ASPpoints[0].y, ASPpoints[0].z);
vertex(ASPpoints[2].x, ASPpoints[2].y, ASPpoints[2].z);
vertex(ASPpoints[6].x, ASPpoints[6].y, ASPpoints[6].z);
endShape();
popMatrix();
    
}
//----------------------------------------------------------------

//Object name: FARBOApoints
PVector[] FARBOApoints = new PVector[]{
new PVector(46,3,-114),
new PVector(0,-46,-67),
new PVector(0,4,114),
new PVector(44,46,-87),
new PVector(-44,46,-87),
new PVector(-46,3,-114),
new PVector(0,16,-105),
new PVector(14,39,-92),
new PVector(-12,39,-92)
};

void drawFARBOA(){
pushMatrix();
rotateX(frameCount*PI/280);
rotateY(frameCount*PI/170);
rotateZ(frameCount*PI/90);
beginShape(TRIANGLES);
fill(0);
stroke(255);
vertex(FARBOApoints[0].x, FARBOApoints[0].y, FARBOApoints[0].z);
vertex(FARBOApoints[1].x, FARBOApoints[1].y, FARBOApoints[1].z);
vertex(FARBOApoints[2].x, FARBOApoints[2].y, FARBOApoints[2].z);

vertex(FARBOApoints[3].x, FARBOApoints[3].y, FARBOApoints[3].z);
vertex(FARBOApoints[0].x, FARBOApoints[0].y, FARBOApoints[0].z);
vertex(FARBOApoints[2].x, FARBOApoints[2].y, FARBOApoints[2].z);

vertex(FARBOApoints[4].x, FARBOApoints[4].y, FARBOApoints[4].z);
vertex(FARBOApoints[3].x, FARBOApoints[3].y, FARBOApoints[3].z);
vertex(FARBOApoints[2].x, FARBOApoints[2].y, FARBOApoints[2].z);

vertex(FARBOApoints[5].x, FARBOApoints[5].y, FARBOApoints[5].z);
vertex(FARBOApoints[4].x, FARBOApoints[4].y, FARBOApoints[4].z);
vertex(FARBOApoints[2].x, FARBOApoints[2].y, FARBOApoints[2].z);

vertex(FARBOApoints[1].x, FARBOApoints[1].y, FARBOApoints[1].z);
vertex(FARBOApoints[5].x, FARBOApoints[5].y, FARBOApoints[5].z);
vertex(FARBOApoints[2].x, FARBOApoints[2].y, FARBOApoints[2].z);

vertex(FARBOApoints[3].x, FARBOApoints[3].y, FARBOApoints[3].z);
vertex(FARBOApoints[4].x, FARBOApoints[4].y, FARBOApoints[4].z);
vertex(FARBOApoints[5].x, FARBOApoints[5].y, FARBOApoints[5].z);

vertex(FARBOApoints[3].x, FARBOApoints[3].y, FARBOApoints[3].z);
vertex(FARBOApoints[5].x, FARBOApoints[5].y, FARBOApoints[5].z);
vertex(FARBOApoints[0].x, FARBOApoints[0].y, FARBOApoints[0].z);

vertex(FARBOApoints[1].x, FARBOApoints[1].y, FARBOApoints[1].z);
vertex(FARBOApoints[0].x, FARBOApoints[0].y, FARBOApoints[0].z);
vertex(FARBOApoints[5].x, FARBOApoints[5].y, FARBOApoints[5].z);

vertex(FARBOApoints[6].x, FARBOApoints[6].y, FARBOApoints[6].z);
vertex(FARBOApoints[7].x, FARBOApoints[7].y, FARBOApoints[7].z);
vertex(FARBOApoints[8].x, FARBOApoints[8].y, FARBOApoints[8].z);
endShape();
popMatrix();
    
}
//----------------------------------------------------------------

//Object name: BOApoints
PVector[] BOApoints = new PVector[]{
new PVector(46,3,-114),
new PVector(0,-46,-67),
new PVector(0,4,114),
new PVector(44,46,-87),
new PVector(-44,46,-87),
new PVector(-46,3,-114),
new PVector(0,16,-105),
new PVector(14,39,-92),
new PVector(-12,39,-92),
new PVector(10,38,-51),
new PVector(21,38,-51),
new PVector(0,18,40),
new PVector(-20,38,-52),
new PVector(-9,38,-52)
};

void drawBOA(){
pushMatrix();
rotateX(frameCount*PI/280);
rotateY(frameCount*PI/170);
rotateZ(frameCount*PI/90);
beginShape(TRIANGLES);
fill(0);
stroke(255);
vertex(BOApoints[0].x, BOApoints[0].y, BOApoints[0].z);
vertex(BOApoints[1].x, BOApoints[1].y, BOApoints[1].z);
vertex(BOApoints[2].x, BOApoints[2].y, BOApoints[2].z);

vertex(BOApoints[3].x, BOApoints[3].y, BOApoints[3].z);
vertex(BOApoints[0].x, BOApoints[0].y, BOApoints[0].z);
vertex(BOApoints[2].x, BOApoints[2].y, BOApoints[2].z);

vertex(BOApoints[4].x, BOApoints[4].y, BOApoints[4].z);
vertex(BOApoints[3].x, BOApoints[3].y, BOApoints[3].z);
vertex(BOApoints[2].x, BOApoints[2].y, BOApoints[2].z);

vertex(BOApoints[5].x, BOApoints[5].y, BOApoints[5].z);
vertex(BOApoints[4].x, BOApoints[4].y, BOApoints[4].z);
vertex(BOApoints[2].x, BOApoints[2].y, BOApoints[2].z);

vertex(BOApoints[1].x, BOApoints[1].y, BOApoints[1].z);
vertex(BOApoints[5].x, BOApoints[5].y, BOApoints[5].z);
vertex(BOApoints[2].x, BOApoints[2].y, BOApoints[2].z);

vertex(BOApoints[3].x, BOApoints[3].y, BOApoints[3].z);
vertex(BOApoints[4].x, BOApoints[4].y, BOApoints[4].z);
vertex(BOApoints[5].x, BOApoints[5].y, BOApoints[5].z);

vertex(BOApoints[3].x, BOApoints[3].y, BOApoints[3].z);
vertex(BOApoints[5].x, BOApoints[5].y, BOApoints[5].z);
vertex(BOApoints[0].x, BOApoints[0].y, BOApoints[0].z);

vertex(BOApoints[1].x, BOApoints[1].y, BOApoints[1].z);
vertex(BOApoints[0].x, BOApoints[0].y, BOApoints[0].z);
vertex(BOApoints[5].x, BOApoints[5].y, BOApoints[5].z);

vertex(BOApoints[6].x, BOApoints[6].y, BOApoints[6].z);
vertex(BOApoints[7].x, BOApoints[7].y, BOApoints[7].z);
vertex(BOApoints[8].x, BOApoints[8].y, BOApoints[8].z);

vertex(BOApoints[9].x, BOApoints[9].y, BOApoints[9].z);
vertex(BOApoints[10].x, BOApoints[10].y, BOApoints[10].z);
vertex(BOApoints[11].x, BOApoints[11].y, BOApoints[11].z);

vertex(BOApoints[12].x, BOApoints[12].y, BOApoints[12].z);
vertex(BOApoints[13].x, BOApoints[13].y, BOApoints[13].z);
vertex(BOApoints[11].x, BOApoints[11].y, BOApoints[11].z);
endShape();
popMatrix();
    
}
//----------------------------------------------------------------

//Object name: BUSHMASTERpoints
PVector[] BUSHMASTERpoints = new PVector[]{
new PVector(100,-20,30),
new PVector(-100,-20,30),
new PVector(0,-20,130),
new PVector(100,-20,-90),
new PVector(-100,-20,-90),
new PVector(40,-20,-130),
new PVector(-40,-20,-130),
new PVector(40,20,-130),
new PVector(40,20,-10),
new PVector(-40,20,-130),
new PVector(-40,20,-10),
new PVector(0,-20,130),
new PVector(-40,-20,30),
new PVector(-50,-20,-90),
new PVector(-30,-20,-90),
new PVector(40,-20,30),
new PVector(30,-20,-90),
new PVector(50,-20,-90),
new PVector(-30,0,-130),
new PVector(-10,10,-130),
new PVector(-10,-10,-130),
new PVector(10,10,-130),
new PVector(10,-10,-130),
new PVector(30,0,-130)
};

void drawBUSHMASTER(){
pushMatrix();
rotateX(frameCount*PI/280);
rotateY(frameCount*PI/170);
rotateZ(frameCount*PI/90);
beginShape(TRIANGLES);
fill(0);
stroke(255);
vertex(BUSHMASTERpoints[0].x, BUSHMASTERpoints[0].y, BUSHMASTERpoints[0].z);
vertex(BUSHMASTERpoints[1].x, BUSHMASTERpoints[1].y, BUSHMASTERpoints[1].z);
vertex(BUSHMASTERpoints[2].x, BUSHMASTERpoints[2].y, BUSHMASTERpoints[2].z);

vertex(BUSHMASTERpoints[0].x, BUSHMASTERpoints[0].y, BUSHMASTERpoints[0].z);
vertex(BUSHMASTERpoints[3].x, BUSHMASTERpoints[3].y, BUSHMASTERpoints[3].z);
vertex(BUSHMASTERpoints[1].x, BUSHMASTERpoints[1].y, BUSHMASTERpoints[1].z);

vertex(BUSHMASTERpoints[3].x, BUSHMASTERpoints[3].y, BUSHMASTERpoints[3].z);
vertex(BUSHMASTERpoints[4].x, BUSHMASTERpoints[4].y, BUSHMASTERpoints[4].z);
vertex(BUSHMASTERpoints[1].x, BUSHMASTERpoints[1].y, BUSHMASTERpoints[1].z);

vertex(BUSHMASTERpoints[3].x, BUSHMASTERpoints[3].y, BUSHMASTERpoints[3].z);
vertex(BUSHMASTERpoints[5].x, BUSHMASTERpoints[5].y, BUSHMASTERpoints[5].z);
vertex(BUSHMASTERpoints[6].x, BUSHMASTERpoints[6].y, BUSHMASTERpoints[6].z);

vertex(BUSHMASTERpoints[6].x, BUSHMASTERpoints[6].y, BUSHMASTERpoints[6].z);
vertex(BUSHMASTERpoints[4].x, BUSHMASTERpoints[4].y, BUSHMASTERpoints[4].z);
vertex(BUSHMASTERpoints[3].x, BUSHMASTERpoints[3].y, BUSHMASTERpoints[3].z);

vertex(BUSHMASTERpoints[14].x, BUSHMASTERpoints[14].y, BUSHMASTERpoints[14].z);
vertex(BUSHMASTERpoints[13].x, BUSHMASTERpoints[13].y, BUSHMASTERpoints[13].z);
vertex(BUSHMASTERpoints[12].x, BUSHMASTERpoints[12].y, BUSHMASTERpoints[12].z);

vertex(BUSHMASTERpoints[17].x, BUSHMASTERpoints[17].y, BUSHMASTERpoints[17].z);
vertex(BUSHMASTERpoints[16].x, BUSHMASTERpoints[16].y, BUSHMASTERpoints[16].z);
vertex(BUSHMASTERpoints[15].x, BUSHMASTERpoints[15].y, BUSHMASTERpoints[15].z);

vertex(BUSHMASTERpoints[5].x, BUSHMASTERpoints[5].y, BUSHMASTERpoints[5].z);
vertex(BUSHMASTERpoints[3].x, BUSHMASTERpoints[3].y, BUSHMASTERpoints[3].z);
vertex(BUSHMASTERpoints[7].x, BUSHMASTERpoints[7].y, BUSHMASTERpoints[7].z);

vertex(BUSHMASTERpoints[8].x, BUSHMASTERpoints[8].y, BUSHMASTERpoints[8].z);
vertex(BUSHMASTERpoints[9].x, BUSHMASTERpoints[9].y, BUSHMASTERpoints[9].z);
vertex(BUSHMASTERpoints[7].x, BUSHMASTERpoints[7].y, BUSHMASTERpoints[7].z);

vertex(BUSHMASTERpoints[10].x, BUSHMASTERpoints[10].y, BUSHMASTERpoints[10].z);
vertex(BUSHMASTERpoints[9].x, BUSHMASTERpoints[9].y, BUSHMASTERpoints[9].z);
vertex(BUSHMASTERpoints[8].x, BUSHMASTERpoints[8].y, BUSHMASTERpoints[8].z);

vertex(BUSHMASTERpoints[2].x, BUSHMASTERpoints[2].y, BUSHMASTERpoints[2].z);
vertex(BUSHMASTERpoints[10].x, BUSHMASTERpoints[10].y, BUSHMASTERpoints[10].z);
vertex(BUSHMASTERpoints[8].x, BUSHMASTERpoints[8].y, BUSHMASTERpoints[8].z);

vertex(BUSHMASTERpoints[10].x, BUSHMASTERpoints[10].y, BUSHMASTERpoints[10].z);
vertex(BUSHMASTERpoints[2].x, BUSHMASTERpoints[2].y, BUSHMASTERpoints[2].z);
vertex(BUSHMASTERpoints[1].x, BUSHMASTERpoints[1].y, BUSHMASTERpoints[1].z);

vertex(BUSHMASTERpoints[8].x, BUSHMASTERpoints[8].y, BUSHMASTERpoints[8].z);
vertex(BUSHMASTERpoints[0].x, BUSHMASTERpoints[0].y, BUSHMASTERpoints[0].z);
vertex(BUSHMASTERpoints[11].x, BUSHMASTERpoints[11].y, BUSHMASTERpoints[11].z);

vertex(BUSHMASTERpoints[8].x, BUSHMASTERpoints[8].y, BUSHMASTERpoints[8].z);
vertex(BUSHMASTERpoints[7].x, BUSHMASTERpoints[7].y, BUSHMASTERpoints[7].z);
vertex(BUSHMASTERpoints[0].x, BUSHMASTERpoints[0].y, BUSHMASTERpoints[0].z);

vertex(BUSHMASTERpoints[7].x, BUSHMASTERpoints[7].y, BUSHMASTERpoints[7].z);
vertex(BUSHMASTERpoints[3].x, BUSHMASTERpoints[3].y, BUSHMASTERpoints[3].z);
vertex(BUSHMASTERpoints[0].x, BUSHMASTERpoints[0].y, BUSHMASTERpoints[0].z);

vertex(BUSHMASTERpoints[10].x, BUSHMASTERpoints[10].y, BUSHMASTERpoints[10].z);
vertex(BUSHMASTERpoints[1].x, BUSHMASTERpoints[1].y, BUSHMASTERpoints[1].z);
vertex(BUSHMASTERpoints[9].x, BUSHMASTERpoints[9].y, BUSHMASTERpoints[9].z);

vertex(BUSHMASTERpoints[1].x, BUSHMASTERpoints[1].y, BUSHMASTERpoints[1].z);
vertex(BUSHMASTERpoints[4].x, BUSHMASTERpoints[4].y, BUSHMASTERpoints[4].z);
vertex(BUSHMASTERpoints[9].x, BUSHMASTERpoints[9].y, BUSHMASTERpoints[9].z);

vertex(BUSHMASTERpoints[5].x, BUSHMASTERpoints[5].y, BUSHMASTERpoints[5].z);
vertex(BUSHMASTERpoints[7].x, BUSHMASTERpoints[7].y, BUSHMASTERpoints[7].z);
vertex(BUSHMASTERpoints[9].x, BUSHMASTERpoints[9].y, BUSHMASTERpoints[9].z);

vertex(BUSHMASTERpoints[9].x, BUSHMASTERpoints[9].y, BUSHMASTERpoints[9].z);
vertex(BUSHMASTERpoints[6].x, BUSHMASTERpoints[6].y, BUSHMASTERpoints[6].z);
vertex(BUSHMASTERpoints[5].x, BUSHMASTERpoints[5].y, BUSHMASTERpoints[5].z);

vertex(BUSHMASTERpoints[20].x, BUSHMASTERpoints[20].y, BUSHMASTERpoints[20].z);
vertex(BUSHMASTERpoints[19].x, BUSHMASTERpoints[19].y, BUSHMASTERpoints[19].z);
vertex(BUSHMASTERpoints[18].x, BUSHMASTERpoints[18].y, BUSHMASTERpoints[18].z);

vertex(BUSHMASTERpoints[21].x, BUSHMASTERpoints[21].y, BUSHMASTERpoints[21].z);
vertex(BUSHMASTERpoints[22].x, BUSHMASTERpoints[22].y, BUSHMASTERpoints[22].z);
vertex(BUSHMASTERpoints[23].x, BUSHMASTERpoints[23].y, BUSHMASTERpoints[23].z);

vertex(BUSHMASTERpoints[6].x, BUSHMASTERpoints[6].y, BUSHMASTERpoints[6].z);
vertex(BUSHMASTERpoints[9].x, BUSHMASTERpoints[9].y, BUSHMASTERpoints[9].z);
vertex(BUSHMASTERpoints[4].x, BUSHMASTERpoints[4].y, BUSHMASTERpoints[4].z);
endShape();
popMatrix();
    
}
//----------------------------------------------------------------

//Object name: FARCAIMANpoints
PVector[] FARCAIMANpoints = new PVector[]{
new PVector(-40,-30,40),
new PVector(-120,-30,-120),
new PVector(0,10,-120),
new PVector(120,-30,-120),
new PVector(40,-30,40),
new PVector(0,30,40),
new PVector(0,-30,120),
new PVector(52,-22,-120),
new PVector(0,-6,-120),
new PVector(-52,-22,-120)
};

void drawFARCAIMAN(){
pushMatrix();
rotateX(frameCount*PI/280);
rotateY(frameCount*PI/170);
rotateZ(frameCount*PI/90);
beginShape(TRIANGLES);
fill(0);
stroke(255);
vertex(FARCAIMANpoints[0].x, FARCAIMANpoints[0].y, FARCAIMANpoints[0].z);
vertex(FARCAIMANpoints[1].x, FARCAIMANpoints[1].y, FARCAIMANpoints[1].z);
vertex(FARCAIMANpoints[2].x, FARCAIMANpoints[2].y, FARCAIMANpoints[2].z);

vertex(FARCAIMANpoints[2].x, FARCAIMANpoints[2].y, FARCAIMANpoints[2].z);
vertex(FARCAIMANpoints[3].x, FARCAIMANpoints[3].y, FARCAIMANpoints[3].z);
vertex(FARCAIMANpoints[4].x, FARCAIMANpoints[4].y, FARCAIMANpoints[4].z);

vertex(FARCAIMANpoints[2].x, FARCAIMANpoints[2].y, FARCAIMANpoints[2].z);
vertex(FARCAIMANpoints[5].x, FARCAIMANpoints[5].y, FARCAIMANpoints[5].z);
vertex(FARCAIMANpoints[0].x, FARCAIMANpoints[0].y, FARCAIMANpoints[0].z);

vertex(FARCAIMANpoints[2].x, FARCAIMANpoints[2].y, FARCAIMANpoints[2].z);
vertex(FARCAIMANpoints[4].x, FARCAIMANpoints[4].y, FARCAIMANpoints[4].z);
vertex(FARCAIMANpoints[5].x, FARCAIMANpoints[5].y, FARCAIMANpoints[5].z);

vertex(FARCAIMANpoints[6].x, FARCAIMANpoints[6].y, FARCAIMANpoints[6].z);
vertex(FARCAIMANpoints[0].x, FARCAIMANpoints[0].y, FARCAIMANpoints[0].z);
vertex(FARCAIMANpoints[5].x, FARCAIMANpoints[5].y, FARCAIMANpoints[5].z);

vertex(FARCAIMANpoints[5].x, FARCAIMANpoints[5].y, FARCAIMANpoints[5].z);
vertex(FARCAIMANpoints[4].x, FARCAIMANpoints[4].y, FARCAIMANpoints[4].z);
vertex(FARCAIMANpoints[6].x, FARCAIMANpoints[6].y, FARCAIMANpoints[6].z);

vertex(FARCAIMANpoints[3].x, FARCAIMANpoints[3].y, FARCAIMANpoints[3].z);
vertex(FARCAIMANpoints[2].x, FARCAIMANpoints[2].y, FARCAIMANpoints[2].z);
vertex(FARCAIMANpoints[1].x, FARCAIMANpoints[1].y, FARCAIMANpoints[1].z);

vertex(FARCAIMANpoints[7].x, FARCAIMANpoints[7].y, FARCAIMANpoints[7].z);
vertex(FARCAIMANpoints[8].x, FARCAIMANpoints[8].y, FARCAIMANpoints[8].z);
vertex(FARCAIMANpoints[9].x, FARCAIMANpoints[9].y, FARCAIMANpoints[9].z);

vertex(FARCAIMANpoints[1].x, FARCAIMANpoints[1].y, FARCAIMANpoints[1].z);
vertex(FARCAIMANpoints[6].x, FARCAIMANpoints[6].y, FARCAIMANpoints[6].z);
vertex(FARCAIMANpoints[3].x, FARCAIMANpoints[3].y, FARCAIMANpoints[3].z);
endShape();
popMatrix();
    
}
//----------------------------------------------------------------

//Object name: CAIMANpoints
PVector[] CAIMANpoints = new PVector[]{
new PVector(-40,-30,40),
new PVector(-120,-30,-120),
new PVector(0,10,-120),
new PVector(120,-30,-120),
new PVector(40,-30,40),
new PVector(0,30,40),
new PVector(0,-30,120),
new PVector(8,-6,-120),
new PVector(8,-22,-120),
new PVector(52,-22,-120),
new PVector(-8,-22,-120),
new PVector(-8,-6,-120),
new PVector(-52,-22,-120),
new PVector(8,2,52),
new PVector(16,-14,52),
new PVector(8,-14,76),
new PVector(-8,-14,76),
new PVector(-16,-14,52),
new PVector(-8,2,52)
};

void drawCAIMAN(){
pushMatrix();
rotateX(frameCount*PI/280);
rotateY(frameCount*PI/170);
rotateZ(frameCount*PI/90);
beginShape(TRIANGLES);
fill(0);
stroke(255);
vertex(CAIMANpoints[0].x, CAIMANpoints[0].y, CAIMANpoints[0].z);
vertex(CAIMANpoints[1].x, CAIMANpoints[1].y, CAIMANpoints[1].z);
vertex(CAIMANpoints[2].x, CAIMANpoints[2].y, CAIMANpoints[2].z);

vertex(CAIMANpoints[2].x, CAIMANpoints[2].y, CAIMANpoints[2].z);
vertex(CAIMANpoints[3].x, CAIMANpoints[3].y, CAIMANpoints[3].z);
vertex(CAIMANpoints[4].x, CAIMANpoints[4].y, CAIMANpoints[4].z);

vertex(CAIMANpoints[2].x, CAIMANpoints[2].y, CAIMANpoints[2].z);
vertex(CAIMANpoints[5].x, CAIMANpoints[5].y, CAIMANpoints[5].z);
vertex(CAIMANpoints[0].x, CAIMANpoints[0].y, CAIMANpoints[0].z);

vertex(CAIMANpoints[2].x, CAIMANpoints[2].y, CAIMANpoints[2].z);
vertex(CAIMANpoints[4].x, CAIMANpoints[4].y, CAIMANpoints[4].z);
vertex(CAIMANpoints[5].x, CAIMANpoints[5].y, CAIMANpoints[5].z);

vertex(CAIMANpoints[6].x, CAIMANpoints[6].y, CAIMANpoints[6].z);
vertex(CAIMANpoints[0].x, CAIMANpoints[0].y, CAIMANpoints[0].z);
vertex(CAIMANpoints[5].x, CAIMANpoints[5].y, CAIMANpoints[5].z);

vertex(CAIMANpoints[5].x, CAIMANpoints[5].y, CAIMANpoints[5].z);
vertex(CAIMANpoints[4].x, CAIMANpoints[4].y, CAIMANpoints[4].z);
vertex(CAIMANpoints[6].x, CAIMANpoints[6].y, CAIMANpoints[6].z);

vertex(CAIMANpoints[3].x, CAIMANpoints[3].y, CAIMANpoints[3].z);
vertex(CAIMANpoints[2].x, CAIMANpoints[2].y, CAIMANpoints[2].z);
vertex(CAIMANpoints[1].x, CAIMANpoints[1].y, CAIMANpoints[1].z);

vertex(CAIMANpoints[7].x, CAIMANpoints[7].y, CAIMANpoints[7].z);
vertex(CAIMANpoints[8].x, CAIMANpoints[8].y, CAIMANpoints[8].z);
vertex(CAIMANpoints[9].x, CAIMANpoints[9].y, CAIMANpoints[9].z);

vertex(CAIMANpoints[10].x, CAIMANpoints[10].y, CAIMANpoints[10].z);
vertex(CAIMANpoints[11].x, CAIMANpoints[11].y, CAIMANpoints[11].z);
vertex(CAIMANpoints[12].x, CAIMANpoints[12].y, CAIMANpoints[12].z);

vertex(CAIMANpoints[1].x, CAIMANpoints[1].y, CAIMANpoints[1].z);
vertex(CAIMANpoints[6].x, CAIMANpoints[6].y, CAIMANpoints[6].z);
vertex(CAIMANpoints[3].x, CAIMANpoints[3].y, CAIMANpoints[3].z);

vertex(CAIMANpoints[13].x, CAIMANpoints[13].y, CAIMANpoints[13].z);
vertex(CAIMANpoints[14].x, CAIMANpoints[14].y, CAIMANpoints[14].z);
vertex(CAIMANpoints[15].x, CAIMANpoints[15].y, CAIMANpoints[15].z);

vertex(CAIMANpoints[16].x, CAIMANpoints[16].y, CAIMANpoints[16].z);
vertex(CAIMANpoints[17].x, CAIMANpoints[17].y, CAIMANpoints[17].z);
vertex(CAIMANpoints[18].x, CAIMANpoints[18].y, CAIMANpoints[18].z);
endShape();
popMatrix();
    
}
//----------------------------------------------------------------

//Object name: FARCOBRAMK1points
PVector[] FARCOBRAMK1points = new PVector[]{
new PVector(46,-6,78),
new PVector(-43,-6,78),
new PVector(1,25,-12),
new PVector(-88,10,-78),
new PVector(94,10,-78),
new PVector(-130,-6,30),
new PVector(133,-6,30),
new PVector(127,-6,-57),
new PVector(-133,-6,-57),
new PVector(94,-25,-77),
new PVector(-88,-25,-78),
new PVector(1,1,-78),
new PVector(46,-15,-78),
new PVector(61,0,-78),
new PVector(-61,0,-78),
new PVector(-46,-15,-78)
};

void drawFARCOBRAMK1(){
pushMatrix();
rotateX(frameCount*PI/280);
rotateY(frameCount*PI/170);
rotateZ(frameCount*PI/90);
beginShape(TRIANGLES);
fill(0);
stroke(255);
vertex(FARCOBRAMK1points[0].x, FARCOBRAMK1points[0].y, FARCOBRAMK1points[0].z);
vertex(FARCOBRAMK1points[1].x, FARCOBRAMK1points[1].y, FARCOBRAMK1points[1].z);
vertex(FARCOBRAMK1points[2].x, FARCOBRAMK1points[2].y, FARCOBRAMK1points[2].z);

vertex(FARCOBRAMK1points[2].x, FARCOBRAMK1points[2].y, FARCOBRAMK1points[2].z);
vertex(FARCOBRAMK1points[3].x, FARCOBRAMK1points[3].y, FARCOBRAMK1points[3].z);
vertex(FARCOBRAMK1points[4].x, FARCOBRAMK1points[4].y, FARCOBRAMK1points[4].z);

vertex(FARCOBRAMK1points[0].x, FARCOBRAMK1points[0].y, FARCOBRAMK1points[0].z);
vertex(FARCOBRAMK1points[2].x, FARCOBRAMK1points[2].y, FARCOBRAMK1points[2].z);
vertex(FARCOBRAMK1points[4].x, FARCOBRAMK1points[4].y, FARCOBRAMK1points[4].z);

vertex(FARCOBRAMK1points[2].x, FARCOBRAMK1points[2].y, FARCOBRAMK1points[2].z);
vertex(FARCOBRAMK1points[1].x, FARCOBRAMK1points[1].y, FARCOBRAMK1points[1].z);
vertex(FARCOBRAMK1points[3].x, FARCOBRAMK1points[3].y, FARCOBRAMK1points[3].z);

vertex(FARCOBRAMK1points[5].x, FARCOBRAMK1points[5].y, FARCOBRAMK1points[5].z);
vertex(FARCOBRAMK1points[3].x, FARCOBRAMK1points[3].y, FARCOBRAMK1points[3].z);
vertex(FARCOBRAMK1points[1].x, FARCOBRAMK1points[1].y, FARCOBRAMK1points[1].z);

vertex(FARCOBRAMK1points[6].x, FARCOBRAMK1points[6].y, FARCOBRAMK1points[6].z);
vertex(FARCOBRAMK1points[0].x, FARCOBRAMK1points[0].y, FARCOBRAMK1points[0].z);
vertex(FARCOBRAMK1points[4].x, FARCOBRAMK1points[4].y, FARCOBRAMK1points[4].z);

vertex(FARCOBRAMK1points[6].x, FARCOBRAMK1points[6].y, FARCOBRAMK1points[6].z);
vertex(FARCOBRAMK1points[4].x, FARCOBRAMK1points[4].y, FARCOBRAMK1points[4].z);
vertex(FARCOBRAMK1points[7].x, FARCOBRAMK1points[7].y, FARCOBRAMK1points[7].z);

vertex(FARCOBRAMK1points[8].x, FARCOBRAMK1points[8].y, FARCOBRAMK1points[8].z);
vertex(FARCOBRAMK1points[3].x, FARCOBRAMK1points[3].y, FARCOBRAMK1points[3].z);
vertex(FARCOBRAMK1points[5].x, FARCOBRAMK1points[5].y, FARCOBRAMK1points[5].z);

vertex(FARCOBRAMK1points[6].x, FARCOBRAMK1points[6].y, FARCOBRAMK1points[6].z);
vertex(FARCOBRAMK1points[7].x, FARCOBRAMK1points[7].y, FARCOBRAMK1points[7].z);
vertex(FARCOBRAMK1points[9].x, FARCOBRAMK1points[9].y, FARCOBRAMK1points[9].z);

vertex(FARCOBRAMK1points[10].x, FARCOBRAMK1points[10].y, FARCOBRAMK1points[10].z);
vertex(FARCOBRAMK1points[8].x, FARCOBRAMK1points[8].y, FARCOBRAMK1points[8].z);
vertex(FARCOBRAMK1points[5].x, FARCOBRAMK1points[5].y, FARCOBRAMK1points[5].z);

vertex(FARCOBRAMK1points[10].x, FARCOBRAMK1points[10].y, FARCOBRAMK1points[10].z);
vertex(FARCOBRAMK1points[3].x, FARCOBRAMK1points[3].y, FARCOBRAMK1points[3].z);
vertex(FARCOBRAMK1points[8].x, FARCOBRAMK1points[8].y, FARCOBRAMK1points[8].z);

vertex(FARCOBRAMK1points[4].x, FARCOBRAMK1points[4].y, FARCOBRAMK1points[4].z);
vertex(FARCOBRAMK1points[9].x, FARCOBRAMK1points[9].y, FARCOBRAMK1points[9].z);
vertex(FARCOBRAMK1points[7].x, FARCOBRAMK1points[7].y, FARCOBRAMK1points[7].z);

vertex(FARCOBRAMK1points[4].x, FARCOBRAMK1points[4].y, FARCOBRAMK1points[4].z);
vertex(FARCOBRAMK1points[3].x, FARCOBRAMK1points[3].y, FARCOBRAMK1points[3].z);
vertex(FARCOBRAMK1points[9].x, FARCOBRAMK1points[9].y, FARCOBRAMK1points[9].z);

vertex(FARCOBRAMK1points[9].x, FARCOBRAMK1points[9].y, FARCOBRAMK1points[9].z);
vertex(FARCOBRAMK1points[3].x, FARCOBRAMK1points[3].y, FARCOBRAMK1points[3].z);
vertex(FARCOBRAMK1points[10].x, FARCOBRAMK1points[10].y, FARCOBRAMK1points[10].z);

vertex(FARCOBRAMK1points[0].x, FARCOBRAMK1points[0].y, FARCOBRAMK1points[0].z);
vertex(FARCOBRAMK1points[10].x, FARCOBRAMK1points[10].y, FARCOBRAMK1points[10].z);
vertex(FARCOBRAMK1points[1].x, FARCOBRAMK1points[1].y, FARCOBRAMK1points[1].z);

vertex(FARCOBRAMK1points[0].x, FARCOBRAMK1points[0].y, FARCOBRAMK1points[0].z);
vertex(FARCOBRAMK1points[9].x, FARCOBRAMK1points[9].y, FARCOBRAMK1points[9].z);
vertex(FARCOBRAMK1points[10].x, FARCOBRAMK1points[10].y, FARCOBRAMK1points[10].z);

vertex(FARCOBRAMK1points[10].x, FARCOBRAMK1points[10].y, FARCOBRAMK1points[10].z);
vertex(FARCOBRAMK1points[5].x, FARCOBRAMK1points[5].y, FARCOBRAMK1points[5].z);
vertex(FARCOBRAMK1points[1].x, FARCOBRAMK1points[1].y, FARCOBRAMK1points[1].z);

vertex(FARCOBRAMK1points[0].x, FARCOBRAMK1points[0].y, FARCOBRAMK1points[0].z);
vertex(FARCOBRAMK1points[6].x, FARCOBRAMK1points[6].y, FARCOBRAMK1points[6].z);
vertex(FARCOBRAMK1points[9].x, FARCOBRAMK1points[9].y, FARCOBRAMK1points[9].z);

vertex(FARCOBRAMK1points[11].x, FARCOBRAMK1points[11].y, FARCOBRAMK1points[11].z);
vertex(FARCOBRAMK1points[12].x, FARCOBRAMK1points[12].y, FARCOBRAMK1points[12].z);
vertex(FARCOBRAMK1points[13].x, FARCOBRAMK1points[13].y, FARCOBRAMK1points[13].z);

vertex(FARCOBRAMK1points[11].x, FARCOBRAMK1points[11].y, FARCOBRAMK1points[11].z);
vertex(FARCOBRAMK1points[14].x, FARCOBRAMK1points[14].y, FARCOBRAMK1points[14].z);
vertex(FARCOBRAMK1points[15].x, FARCOBRAMK1points[15].y, FARCOBRAMK1points[15].z);
endShape();
popMatrix();
    
}
//----------------------------------------------------------------

//Object name: COBRAMK1points
PVector[] COBRAMK1points = new PVector[]{
new PVector(46,-6,78),
new PVector(-43,-6,78),
new PVector(1,25,-12),
new PVector(-88,10,-78),
new PVector(94,10,-78),
new PVector(-130,-6,30),
new PVector(133,-6,30),
new PVector(127,-6,-57),
new PVector(-133,-6,-57),
new PVector(94,-25,-77),
new PVector(-88,-25,-78),
new PVector(-25,3,47),
new PVector(29,3,47),
new PVector(29,0,60),
new PVector(-25,0,60),
new PVector(1,1,-78),
new PVector(46,-15,-78),
new PVector(61,0,-78),
new PVector(-61,0,-78),
new PVector(-46,-15,-78)
};

void drawCOBRAMK1(){
pushMatrix();
rotateX(frameCount*PI/280);
rotateY(frameCount*PI/170);
rotateZ(frameCount*PI/90);
beginShape(TRIANGLES);
fill(0);
stroke(255);
vertex(COBRAMK1points[0].x, COBRAMK1points[0].y, COBRAMK1points[0].z);
vertex(COBRAMK1points[1].x, COBRAMK1points[1].y, COBRAMK1points[1].z);
vertex(COBRAMK1points[2].x, COBRAMK1points[2].y, COBRAMK1points[2].z);

vertex(COBRAMK1points[2].x, COBRAMK1points[2].y, COBRAMK1points[2].z);
vertex(COBRAMK1points[3].x, COBRAMK1points[3].y, COBRAMK1points[3].z);
vertex(COBRAMK1points[4].x, COBRAMK1points[4].y, COBRAMK1points[4].z);

vertex(COBRAMK1points[0].x, COBRAMK1points[0].y, COBRAMK1points[0].z);
vertex(COBRAMK1points[2].x, COBRAMK1points[2].y, COBRAMK1points[2].z);
vertex(COBRAMK1points[4].x, COBRAMK1points[4].y, COBRAMK1points[4].z);

vertex(COBRAMK1points[2].x, COBRAMK1points[2].y, COBRAMK1points[2].z);
vertex(COBRAMK1points[1].x, COBRAMK1points[1].y, COBRAMK1points[1].z);
vertex(COBRAMK1points[3].x, COBRAMK1points[3].y, COBRAMK1points[3].z);

vertex(COBRAMK1points[5].x, COBRAMK1points[5].y, COBRAMK1points[5].z);
vertex(COBRAMK1points[3].x, COBRAMK1points[3].y, COBRAMK1points[3].z);
vertex(COBRAMK1points[1].x, COBRAMK1points[1].y, COBRAMK1points[1].z);

vertex(COBRAMK1points[6].x, COBRAMK1points[6].y, COBRAMK1points[6].z);
vertex(COBRAMK1points[0].x, COBRAMK1points[0].y, COBRAMK1points[0].z);
vertex(COBRAMK1points[4].x, COBRAMK1points[4].y, COBRAMK1points[4].z);

vertex(COBRAMK1points[6].x, COBRAMK1points[6].y, COBRAMK1points[6].z);
vertex(COBRAMK1points[4].x, COBRAMK1points[4].y, COBRAMK1points[4].z);
vertex(COBRAMK1points[7].x, COBRAMK1points[7].y, COBRAMK1points[7].z);

vertex(COBRAMK1points[8].x, COBRAMK1points[8].y, COBRAMK1points[8].z);
vertex(COBRAMK1points[3].x, COBRAMK1points[3].y, COBRAMK1points[3].z);
vertex(COBRAMK1points[5].x, COBRAMK1points[5].y, COBRAMK1points[5].z);

vertex(COBRAMK1points[6].x, COBRAMK1points[6].y, COBRAMK1points[6].z);
vertex(COBRAMK1points[7].x, COBRAMK1points[7].y, COBRAMK1points[7].z);
vertex(COBRAMK1points[9].x, COBRAMK1points[9].y, COBRAMK1points[9].z);

vertex(COBRAMK1points[10].x, COBRAMK1points[10].y, COBRAMK1points[10].z);
vertex(COBRAMK1points[8].x, COBRAMK1points[8].y, COBRAMK1points[8].z);
vertex(COBRAMK1points[5].x, COBRAMK1points[5].y, COBRAMK1points[5].z);

vertex(COBRAMK1points[10].x, COBRAMK1points[10].y, COBRAMK1points[10].z);
vertex(COBRAMK1points[3].x, COBRAMK1points[3].y, COBRAMK1points[3].z);
vertex(COBRAMK1points[8].x, COBRAMK1points[8].y, COBRAMK1points[8].z);

vertex(COBRAMK1points[4].x, COBRAMK1points[4].y, COBRAMK1points[4].z);
vertex(COBRAMK1points[9].x, COBRAMK1points[9].y, COBRAMK1points[9].z);
vertex(COBRAMK1points[7].x, COBRAMK1points[7].y, COBRAMK1points[7].z);

vertex(COBRAMK1points[4].x, COBRAMK1points[4].y, COBRAMK1points[4].z);
vertex(COBRAMK1points[3].x, COBRAMK1points[3].y, COBRAMK1points[3].z);
vertex(COBRAMK1points[9].x, COBRAMK1points[9].y, COBRAMK1points[9].z);

vertex(COBRAMK1points[9].x, COBRAMK1points[9].y, COBRAMK1points[9].z);
vertex(COBRAMK1points[3].x, COBRAMK1points[3].y, COBRAMK1points[3].z);
vertex(COBRAMK1points[10].x, COBRAMK1points[10].y, COBRAMK1points[10].z);

vertex(COBRAMK1points[0].x, COBRAMK1points[0].y, COBRAMK1points[0].z);
vertex(COBRAMK1points[10].x, COBRAMK1points[10].y, COBRAMK1points[10].z);
vertex(COBRAMK1points[1].x, COBRAMK1points[1].y, COBRAMK1points[1].z);

vertex(COBRAMK1points[0].x, COBRAMK1points[0].y, COBRAMK1points[0].z);
vertex(COBRAMK1points[9].x, COBRAMK1points[9].y, COBRAMK1points[9].z);
vertex(COBRAMK1points[10].x, COBRAMK1points[10].y, COBRAMK1points[10].z);

vertex(COBRAMK1points[10].x, COBRAMK1points[10].y, COBRAMK1points[10].z);
vertex(COBRAMK1points[5].x, COBRAMK1points[5].y, COBRAMK1points[5].z);
vertex(COBRAMK1points[1].x, COBRAMK1points[1].y, COBRAMK1points[1].z);

vertex(COBRAMK1points[0].x, COBRAMK1points[0].y, COBRAMK1points[0].z);
vertex(COBRAMK1points[6].x, COBRAMK1points[6].y, COBRAMK1points[6].z);
vertex(COBRAMK1points[9].x, COBRAMK1points[9].y, COBRAMK1points[9].z);

vertex(COBRAMK1points[11].x, COBRAMK1points[11].y, COBRAMK1points[11].z);
vertex(COBRAMK1points[12].x, COBRAMK1points[12].y, COBRAMK1points[12].z);
vertex(COBRAMK1points[13].x, COBRAMK1points[13].y, COBRAMK1points[13].z);

vertex(COBRAMK1points[13].x, COBRAMK1points[13].y, COBRAMK1points[13].z);
vertex(COBRAMK1points[14].x, COBRAMK1points[14].y, COBRAMK1points[14].z);
vertex(COBRAMK1points[11].x, COBRAMK1points[11].y, COBRAMK1points[11].z);

vertex(COBRAMK1points[15].x, COBRAMK1points[15].y, COBRAMK1points[15].z);
vertex(COBRAMK1points[16].x, COBRAMK1points[16].y, COBRAMK1points[16].z);
vertex(COBRAMK1points[17].x, COBRAMK1points[17].y, COBRAMK1points[17].z);

vertex(COBRAMK1points[15].x, COBRAMK1points[15].y, COBRAMK1points[15].z);
vertex(COBRAMK1points[18].x, COBRAMK1points[18].y, COBRAMK1points[18].z);
vertex(COBRAMK1points[19].x, COBRAMK1points[19].y, COBRAMK1points[19].z);
endShape();
popMatrix();
    
}
//----------------------------------------------------------------

//Object name: FARCOBRApoints
PVector[] FARCOBRApoints = new PVector[]{
new PVector(0,15,10),
new PVector(80,5,-45),
new PVector(25,-5,45),
new PVector(-25,-5,45),
new PVector(-80,5,-45),
new PVector(0,15,-45),
new PVector(95,-5,-45),
new PVector(-95,-5,-45),
new PVector(-25,-15,-45),
new PVector(25,-15,-45),
new PVector(-5,5,-45),
new PVector(-5,-10,-45),
new PVector(-30,0,-45),
new PVector(5,5,-45),
new PVector(5,-10,-45),
new PVector(30,0,-45)
};

void drawFARCOBRA(){
pushMatrix();
rotateX(frameCount*PI/280);
rotateY(frameCount*PI/170);
rotateZ(frameCount*PI/90);
beginShape(TRIANGLES);
fill(0);
stroke(255);
vertex(FARCOBRApoints[0].x, FARCOBRApoints[0].y, FARCOBRApoints[0].z);
vertex(FARCOBRApoints[1].x, FARCOBRApoints[1].y, FARCOBRApoints[1].z);
vertex(FARCOBRApoints[2].x, FARCOBRApoints[2].y, FARCOBRApoints[2].z);

vertex(FARCOBRApoints[0].x, FARCOBRApoints[0].y, FARCOBRApoints[0].z);
vertex(FARCOBRApoints[3].x, FARCOBRApoints[3].y, FARCOBRApoints[3].z);
vertex(FARCOBRApoints[4].x, FARCOBRApoints[4].y, FARCOBRApoints[4].z);

vertex(FARCOBRApoints[0].x, FARCOBRApoints[0].y, FARCOBRApoints[0].z);
vertex(FARCOBRApoints[5].x, FARCOBRApoints[5].y, FARCOBRApoints[5].z);
vertex(FARCOBRApoints[1].x, FARCOBRApoints[1].y, FARCOBRApoints[1].z);

vertex(FARCOBRApoints[0].x, FARCOBRApoints[0].y, FARCOBRApoints[0].z);
vertex(FARCOBRApoints[4].x, FARCOBRApoints[4].y, FARCOBRApoints[4].z);
vertex(FARCOBRApoints[5].x, FARCOBRApoints[5].y, FARCOBRApoints[5].z);

vertex(FARCOBRApoints[2].x, FARCOBRApoints[2].y, FARCOBRApoints[2].z);
vertex(FARCOBRApoints[1].x, FARCOBRApoints[1].y, FARCOBRApoints[1].z);
vertex(FARCOBRApoints[6].x, FARCOBRApoints[6].y, FARCOBRApoints[6].z);

vertex(FARCOBRApoints[3].x, FARCOBRApoints[3].y, FARCOBRApoints[3].z);
vertex(FARCOBRApoints[7].x, FARCOBRApoints[7].y, FARCOBRApoints[7].z);
vertex(FARCOBRApoints[4].x, FARCOBRApoints[4].y, FARCOBRApoints[4].z);

vertex(FARCOBRApoints[2].x, FARCOBRApoints[2].y, FARCOBRApoints[2].z);
vertex(FARCOBRApoints[3].x, FARCOBRApoints[3].y, FARCOBRApoints[3].z);
vertex(FARCOBRApoints[0].x, FARCOBRApoints[0].y, FARCOBRApoints[0].z);

vertex(FARCOBRApoints[4].x, FARCOBRApoints[4].y, FARCOBRApoints[4].z);
vertex(FARCOBRApoints[7].x, FARCOBRApoints[7].y, FARCOBRApoints[7].z);
vertex(FARCOBRApoints[8].x, FARCOBRApoints[8].y, FARCOBRApoints[8].z);

vertex(FARCOBRApoints[1].x, FARCOBRApoints[1].y, FARCOBRApoints[1].z);
vertex(FARCOBRApoints[9].x, FARCOBRApoints[9].y, FARCOBRApoints[9].z);
vertex(FARCOBRApoints[6].x, FARCOBRApoints[6].y, FARCOBRApoints[6].z);

vertex(FARCOBRApoints[5].x, FARCOBRApoints[5].y, FARCOBRApoints[5].z);
vertex(FARCOBRApoints[4].x, FARCOBRApoints[4].y, FARCOBRApoints[4].z);
vertex(FARCOBRApoints[8].x, FARCOBRApoints[8].y, FARCOBRApoints[8].z);

vertex(FARCOBRApoints[5].x, FARCOBRApoints[5].y, FARCOBRApoints[5].z);
vertex(FARCOBRApoints[8].x, FARCOBRApoints[8].y, FARCOBRApoints[8].z);
vertex(FARCOBRApoints[9].x, FARCOBRApoints[9].y, FARCOBRApoints[9].z);

vertex(FARCOBRApoints[1].x, FARCOBRApoints[1].y, FARCOBRApoints[1].z);
vertex(FARCOBRApoints[5].x, FARCOBRApoints[5].y, FARCOBRApoints[5].z);
vertex(FARCOBRApoints[9].x, FARCOBRApoints[9].y, FARCOBRApoints[9].z);

vertex(FARCOBRApoints[12].x, FARCOBRApoints[12].y, FARCOBRApoints[12].z);
vertex(FARCOBRApoints[11].x, FARCOBRApoints[11].y, FARCOBRApoints[11].z);
vertex(FARCOBRApoints[10].x, FARCOBRApoints[10].y, FARCOBRApoints[10].z);

vertex(FARCOBRApoints[13].x, FARCOBRApoints[13].y, FARCOBRApoints[13].z);
vertex(FARCOBRApoints[14].x, FARCOBRApoints[14].y, FARCOBRApoints[14].z);
vertex(FARCOBRApoints[15].x, FARCOBRApoints[15].y, FARCOBRApoints[15].z);

vertex(FARCOBRApoints[2].x, FARCOBRApoints[2].y, FARCOBRApoints[2].z);
vertex(FARCOBRApoints[9].x, FARCOBRApoints[9].y, FARCOBRApoints[9].z);
vertex(FARCOBRApoints[8].x, FARCOBRApoints[8].y, FARCOBRApoints[8].z);

vertex(FARCOBRApoints[8].x, FARCOBRApoints[8].y, FARCOBRApoints[8].z);
vertex(FARCOBRApoints[3].x, FARCOBRApoints[3].y, FARCOBRApoints[3].z);
vertex(FARCOBRApoints[2].x, FARCOBRApoints[2].y, FARCOBRApoints[2].z);

vertex(FARCOBRApoints[6].x, FARCOBRApoints[6].y, FARCOBRApoints[6].z);
vertex(FARCOBRApoints[9].x, FARCOBRApoints[9].y, FARCOBRApoints[9].z);
vertex(FARCOBRApoints[2].x, FARCOBRApoints[2].y, FARCOBRApoints[2].z);

vertex(FARCOBRApoints[3].x, FARCOBRApoints[3].y, FARCOBRApoints[3].z);
vertex(FARCOBRApoints[8].x, FARCOBRApoints[8].y, FARCOBRApoints[8].z);
vertex(FARCOBRApoints[7].x, FARCOBRApoints[7].y, FARCOBRApoints[7].z);
endShape();
popMatrix();
    
}
//----------------------------------------------------------------

//Object name: COBRApoints
PVector[] COBRApoints = new PVector[]{
new PVector(0,15,10),
new PVector(80,5,-45),
new PVector(25,-5,45),
new PVector(-25,-5,45),
new PVector(-80,5,-45),
new PVector(0,15,-45),
new PVector(95,-5,-25),
new PVector(-95,-5,-25),
new PVector(95,-5,-45),
new PVector(-95,-5,-45),
new PVector(-25,-15,-45),
new PVector(25,-15,-45),
new PVector(-60,-5,-45),
new PVector(-60,5,-45),
new PVector(-75,0,-45),
new PVector(60,5,-45),
new PVector(75,0,-45),
new PVector(60,-5,-45),
new PVector(-5,5,-45),
new PVector(-5,-10,-45),
new PVector(-30,0,-45),
new PVector(-30,-5,-45),
new PVector(5,5,-45),
new PVector(5,-10,-45),
new PVector(30,0,-45),
new PVector(30,-5,-45)
};

void drawCOBRA(){
pushMatrix();
rotateX(frameCount*PI/280);
rotateY(frameCount*PI/170);
rotateZ(frameCount*PI/90);
beginShape(TRIANGLES);
fill(0);
stroke(255);
vertex(COBRApoints[0].x, COBRApoints[0].y, COBRApoints[0].z);
vertex(COBRApoints[1].x, COBRApoints[1].y, COBRApoints[1].z);
vertex(COBRApoints[2].x, COBRApoints[2].y, COBRApoints[2].z);

vertex(COBRApoints[0].x, COBRApoints[0].y, COBRApoints[0].z);
vertex(COBRApoints[3].x, COBRApoints[3].y, COBRApoints[3].z);
vertex(COBRApoints[4].x, COBRApoints[4].y, COBRApoints[4].z);

vertex(COBRApoints[0].x, COBRApoints[0].y, COBRApoints[0].z);
vertex(COBRApoints[5].x, COBRApoints[5].y, COBRApoints[5].z);
vertex(COBRApoints[1].x, COBRApoints[1].y, COBRApoints[1].z);

vertex(COBRApoints[0].x, COBRApoints[0].y, COBRApoints[0].z);
vertex(COBRApoints[4].x, COBRApoints[4].y, COBRApoints[4].z);
vertex(COBRApoints[5].x, COBRApoints[5].y, COBRApoints[5].z);

vertex(COBRApoints[2].x, COBRApoints[2].y, COBRApoints[2].z);
vertex(COBRApoints[1].x, COBRApoints[1].y, COBRApoints[1].z);
vertex(COBRApoints[6].x, COBRApoints[6].y, COBRApoints[6].z);

vertex(COBRApoints[3].x, COBRApoints[3].y, COBRApoints[3].z);
vertex(COBRApoints[7].x, COBRApoints[7].y, COBRApoints[7].z);
vertex(COBRApoints[4].x, COBRApoints[4].y, COBRApoints[4].z);

vertex(COBRApoints[1].x, COBRApoints[1].y, COBRApoints[1].z);
vertex(COBRApoints[8].x, COBRApoints[8].y, COBRApoints[8].z);
vertex(COBRApoints[6].x, COBRApoints[6].y, COBRApoints[6].z);

vertex(COBRApoints[4].x, COBRApoints[4].y, COBRApoints[4].z);
vertex(COBRApoints[7].x, COBRApoints[7].y, COBRApoints[7].z);
vertex(COBRApoints[9].x, COBRApoints[9].y, COBRApoints[9].z);

vertex(COBRApoints[2].x, COBRApoints[2].y, COBRApoints[2].z);
vertex(COBRApoints[3].x, COBRApoints[3].y, COBRApoints[3].z);
vertex(COBRApoints[0].x, COBRApoints[0].y, COBRApoints[0].z);

vertex(COBRApoints[4].x, COBRApoints[4].y, COBRApoints[4].z);
vertex(COBRApoints[9].x, COBRApoints[9].y, COBRApoints[9].z);
vertex(COBRApoints[10].x, COBRApoints[10].y, COBRApoints[10].z);

vertex(COBRApoints[1].x, COBRApoints[1].y, COBRApoints[1].z);
vertex(COBRApoints[11].x, COBRApoints[11].y, COBRApoints[11].z);
vertex(COBRApoints[8].x, COBRApoints[8].y, COBRApoints[8].z);

vertex(COBRApoints[5].x, COBRApoints[5].y, COBRApoints[5].z);
vertex(COBRApoints[4].x, COBRApoints[4].y, COBRApoints[4].z);
vertex(COBRApoints[10].x, COBRApoints[10].y, COBRApoints[10].z);

vertex(COBRApoints[5].x, COBRApoints[5].y, COBRApoints[5].z);
vertex(COBRApoints[10].x, COBRApoints[10].y, COBRApoints[10].z);
vertex(COBRApoints[11].x, COBRApoints[11].y, COBRApoints[11].z);

vertex(COBRApoints[1].x, COBRApoints[1].y, COBRApoints[1].z);
vertex(COBRApoints[5].x, COBRApoints[5].y, COBRApoints[5].z);
vertex(COBRApoints[11].x, COBRApoints[11].y, COBRApoints[11].z);

vertex(COBRApoints[12].x, COBRApoints[12].y, COBRApoints[12].z);
vertex(COBRApoints[13].x, COBRApoints[13].y, COBRApoints[13].z);
vertex(COBRApoints[14].x, COBRApoints[14].y, COBRApoints[14].z);

vertex(COBRApoints[17].x, COBRApoints[17].y, COBRApoints[17].z);
vertex(COBRApoints[16].x, COBRApoints[16].y, COBRApoints[16].z);
vertex(COBRApoints[15].x, COBRApoints[15].y, COBRApoints[15].z);

vertex(COBRApoints[20].x, COBRApoints[20].y, COBRApoints[20].z);
vertex(COBRApoints[19].x, COBRApoints[19].y, COBRApoints[19].z);
vertex(COBRApoints[18].x, COBRApoints[18].y, COBRApoints[18].z);

vertex(COBRApoints[20].x, COBRApoints[20].y, COBRApoints[20].z);
vertex(COBRApoints[21].x, COBRApoints[21].y, COBRApoints[21].z);
vertex(COBRApoints[19].x, COBRApoints[19].y, COBRApoints[19].z);

vertex(COBRApoints[22].x, COBRApoints[22].y, COBRApoints[22].z);
vertex(COBRApoints[23].x, COBRApoints[23].y, COBRApoints[23].z);
vertex(COBRApoints[24].x, COBRApoints[24].y, COBRApoints[24].z);

vertex(COBRApoints[23].x, COBRApoints[23].y, COBRApoints[23].z);
vertex(COBRApoints[25].x, COBRApoints[25].y, COBRApoints[25].z);
vertex(COBRApoints[24].x, COBRApoints[24].y, COBRApoints[24].z);

vertex(COBRApoints[2].x, COBRApoints[2].y, COBRApoints[2].z);
vertex(COBRApoints[11].x, COBRApoints[11].y, COBRApoints[11].z);
vertex(COBRApoints[10].x, COBRApoints[10].y, COBRApoints[10].z);

vertex(COBRApoints[10].x, COBRApoints[10].y, COBRApoints[10].z);
vertex(COBRApoints[3].x, COBRApoints[3].y, COBRApoints[3].z);
vertex(COBRApoints[2].x, COBRApoints[2].y, COBRApoints[2].z);

vertex(COBRApoints[8].x, COBRApoints[8].y, COBRApoints[8].z);
vertex(COBRApoints[11].x, COBRApoints[11].y, COBRApoints[11].z);
vertex(COBRApoints[2].x, COBRApoints[2].y, COBRApoints[2].z);

vertex(COBRApoints[2].x, COBRApoints[2].y, COBRApoints[2].z);
vertex(COBRApoints[6].x, COBRApoints[6].y, COBRApoints[6].z);
vertex(COBRApoints[8].x, COBRApoints[8].y, COBRApoints[8].z);

vertex(COBRApoints[3].x, COBRApoints[3].y, COBRApoints[3].z);
vertex(COBRApoints[9].x, COBRApoints[9].y, COBRApoints[9].z);
vertex(COBRApoints[7].x, COBRApoints[7].y, COBRApoints[7].z);

vertex(COBRApoints[3].x, COBRApoints[3].y, COBRApoints[3].z);
vertex(COBRApoints[10].x, COBRApoints[10].y, COBRApoints[10].z);
vertex(COBRApoints[9].x, COBRApoints[9].y, COBRApoints[9].z);
endShape();
popMatrix();
    
}
//----------------------------------------------------------------
void drawCOBRA(){
pushMatrix();
rotateX(frameCount*PI/280);
rotateY(frameCount*PI/170);
rotateZ(frameCount*PI/90);
beginShape(TRIANGLES);
fill(0);
stroke(255);
vertex(COBRApoints[0].x, COBRApoints[0].y, COBRApoints[0].z);
vertex(COBRApoints[1].x, COBRApoints[1].y, COBRApoints[1].z);
vertex(COBRApoints[2].x, COBRApoints[2].y, COBRApoints[2].z);

vertex(COBRApoints[0].x, COBRApoints[0].y, COBRApoints[0].z);
vertex(COBRApoints[3].x, COBRApoints[3].y, COBRApoints[3].z);
vertex(COBRApoints[4].x, COBRApoints[4].y, COBRApoints[4].z);

vertex(COBRApoints[0].x, COBRApoints[0].y, COBRApoints[0].z);
vertex(COBRApoints[5].x, COBRApoints[5].y, COBRApoints[5].z);
vertex(COBRApoints[1].x, COBRApoints[1].y, COBRApoints[1].z);

vertex(COBRApoints[0].x, COBRApoints[0].y, COBRApoints[0].z);
vertex(COBRApoints[4].x, COBRApoints[4].y, COBRApoints[4].z);
vertex(COBRApoints[5].x, COBRApoints[5].y, COBRApoints[5].z);

vertex(COBRApoints[2].x, COBRApoints[2].y, COBRApoints[2].z);
vertex(COBRApoints[1].x, COBRApoints[1].y, COBRApoints[1].z);
vertex(COBRApoints[6].x, COBRApoints[6].y, COBRApoints[6].z);

vertex(COBRApoints[3].x, COBRApoints[3].y, COBRApoints[3].z);
vertex(COBRApoints[7].x, COBRApoints[7].y, COBRApoints[7].z);
vertex(COBRApoints[4].x, COBRApoints[4].y, COBRApoints[4].z);

vertex(COBRApoints[1].x, COBRApoints[1].y, COBRApoints[1].z);
vertex(COBRApoints[8].x, COBRApoints[8].y, COBRApoints[8].z);
vertex(COBRApoints[6].x, COBRApoints[6].y, COBRApoints[6].z);

vertex(COBRApoints[4].x, COBRApoints[4].y, COBRApoints[4].z);
vertex(COBRApoints[7].x, COBRApoints[7].y, COBRApoints[7].z);
vertex(COBRApoints[9].x, COBRApoints[9].y, COBRApoints[9].z);

vertex(COBRApoints[2].x, COBRApoints[2].y, COBRApoints[2].z);
vertex(COBRApoints[3].x, COBRApoints[3].y, COBRApoints[3].z);
vertex(COBRApoints[0].x, COBRApoints[0].y, COBRApoints[0].z);

vertex(COBRApoints[4].x, COBRApoints[4].y, COBRApoints[4].z);
vertex(COBRApoints[9].x, COBRApoints[9].y, COBRApoints[9].z);
vertex(COBRApoints[10].x, COBRApoints[10].y, COBRApoints[10].z);

vertex(COBRApoints[1].x, COBRApoints[1].y, COBRApoints[1].z);
vertex(COBRApoints[11].x, COBRApoints[11].y, COBRApoints[11].z);
vertex(COBRApoints[8].x, COBRApoints[8].y, COBRApoints[8].z);

vertex(COBRApoints[5].x, COBRApoints[5].y, COBRApoints[5].z);
vertex(COBRApoints[4].x, COBRApoints[4].y, COBRApoints[4].z);
vertex(COBRApoints[10].x, COBRApoints[10].y, COBRApoints[10].z);

vertex(COBRApoints[5].x, COBRApoints[5].y, COBRApoints[5].z);
vertex(COBRApoints[10].x, COBRApoints[10].y, COBRApoints[10].z);
vertex(COBRApoints[11].x, COBRApoints[11].y, COBRApoints[11].z);

vertex(COBRApoints[1].x, COBRApoints[1].y, COBRApoints[1].z);
vertex(COBRApoints[5].x, COBRApoints[5].y, COBRApoints[5].z);
vertex(COBRApoints[11].x, COBRApoints[11].y, COBRApoints[11].z);

vertex(COBRApoints[12].x, COBRApoints[12].y, COBRApoints[12].z);
vertex(COBRApoints[13].x, COBRApoints[13].y, COBRApoints[13].z);
vertex(COBRApoints[14].x, COBRApoints[14].y, COBRApoints[14].z);

vertex(COBRApoints[17].x, COBRApoints[17].y, COBRApoints[17].z);
vertex(COBRApoints[16].x, COBRApoints[16].y, COBRApoints[16].z);
vertex(COBRApoints[15].x, COBRApoints[15].y, COBRApoints[15].z);

vertex(COBRApoints[20].x, COBRApoints[20].y, COBRApoints[20].z);
vertex(COBRApoints[19].x, COBRApoints[19].y, COBRApoints[19].z);
vertex(COBRApoints[18].x, COBRApoints[18].y, COBRApoints[18].z);

vertex(COBRApoints[20].x, COBRApoints[20].y, COBRApoints[20].z);
vertex(COBRApoints[21].x, COBRApoints[21].y, COBRApoints[21].z);
vertex(COBRApoints[19].x, COBRApoints[19].y, COBRApoints[19].z);

vertex(COBRApoints[22].x, COBRApoints[22].y, COBRApoints[22].z);
vertex(COBRApoints[23].x, COBRApoints[23].y, COBRApoints[23].z);
vertex(COBRApoints[24].x, COBRApoints[24].y, COBRApoints[24].z);

vertex(COBRApoints[23].x, COBRApoints[23].y, COBRApoints[23].z);
vertex(COBRApoints[25].x, COBRApoints[25].y, COBRApoints[25].z);
vertex(COBRApoints[24].x, COBRApoints[24].y, COBRApoints[24].z);

vertex(COBRApoints[2].x, COBRApoints[2].y, COBRApoints[2].z);
vertex(COBRApoints[11].x, COBRApoints[11].y, COBRApoints[11].z);
vertex(COBRApoints[10].x, COBRApoints[10].y, COBRApoints[10].z);

vertex(COBRApoints[10].x, COBRApoints[10].y, COBRApoints[10].z);
vertex(COBRApoints[3].x, COBRApoints[3].y, COBRApoints[3].z);
vertex(COBRApoints[2].x, COBRApoints[2].y, COBRApoints[2].z);

vertex(COBRApoints[8].x, COBRApoints[8].y, COBRApoints[8].z);
vertex(COBRApoints[11].x, COBRApoints[11].y, COBRApoints[11].z);
vertex(COBRApoints[2].x, COBRApoints[2].y, COBRApoints[2].z);

vertex(COBRApoints[2].x, COBRApoints[2].y, COBRApoints[2].z);
vertex(COBRApoints[6].x, COBRApoints[6].y, COBRApoints[6].z);
vertex(COBRApoints[8].x, COBRApoints[8].y, COBRApoints[8].z);

vertex(COBRApoints[3].x, COBRApoints[3].y, COBRApoints[3].z);
vertex(COBRApoints[9].x, COBRApoints[9].y, COBRApoints[9].z);
vertex(COBRApoints[7].x, COBRApoints[7].y, COBRApoints[7].z);

vertex(COBRApoints[3].x, COBRApoints[3].y, COBRApoints[3].z);
vertex(COBRApoints[10].x, COBRApoints[10].y, COBRApoints[10].z);
vertex(COBRApoints[9].x, COBRApoints[9].y, COBRApoints[9].z);
endShape();
popMatrix();
    
}
//----------------------------------------------------------------

//Object name: FARCONSTRICTORpoints
PVector[] FARCONSTRICTORpoints = new PVector[]{
new PVector(-37,-12,45),
new PVector(-52,-12,25),
new PVector(2,-12,45),
new PVector(-52,-12,-45),
new PVector(17,-12,25),
new PVector(17,-12,-45),
new PVector(-37,2,-45),
new PVector(-37,2,15),
new PVector(-17,2,30),
new PVector(2,2,-45),
new PVector(2,2,15),
new PVector(-32,-2,-45),
new PVector(-37,-7,-45),
new PVector(-2,-2,-45),
new PVector(2,-7,-45)
};

void drawFARCONSTRICTOR(){
pushMatrix();
rotateX(frameCount*PI/280);
rotateY(frameCount*PI/170);
rotateZ(frameCount*PI/90);
beginShape(TRIANGLES);
fill(0);
stroke(255);
vertex(FARCONSTRICTORpoints[3].x, FARCONSTRICTORpoints[3].y, FARCONSTRICTORpoints[3].z);
vertex(FARCONSTRICTORpoints[1].x, FARCONSTRICTORpoints[1].y, FARCONSTRICTORpoints[1].z);
vertex(FARCONSTRICTORpoints[0].x, FARCONSTRICTORpoints[0].y, FARCONSTRICTORpoints[0].z);

vertex(FARCONSTRICTORpoints[3].x, FARCONSTRICTORpoints[3].y, FARCONSTRICTORpoints[3].z);
vertex(FARCONSTRICTORpoints[0].x, FARCONSTRICTORpoints[0].y, FARCONSTRICTORpoints[0].z);
vertex(FARCONSTRICTORpoints[2].x, FARCONSTRICTORpoints[2].y, FARCONSTRICTORpoints[2].z);

vertex(FARCONSTRICTORpoints[3].x, FARCONSTRICTORpoints[3].y, FARCONSTRICTORpoints[3].z);
vertex(FARCONSTRICTORpoints[2].x, FARCONSTRICTORpoints[2].y, FARCONSTRICTORpoints[2].z);
vertex(FARCONSTRICTORpoints[5].x, FARCONSTRICTORpoints[5].y, FARCONSTRICTORpoints[5].z);

vertex(FARCONSTRICTORpoints[5].x, FARCONSTRICTORpoints[5].y, FARCONSTRICTORpoints[5].z);
vertex(FARCONSTRICTORpoints[2].x, FARCONSTRICTORpoints[2].y, FARCONSTRICTORpoints[2].z);
vertex(FARCONSTRICTORpoints[4].x, FARCONSTRICTORpoints[4].y, FARCONSTRICTORpoints[4].z);

vertex(FARCONSTRICTORpoints[8].x, FARCONSTRICTORpoints[8].y, FARCONSTRICTORpoints[8].z);
vertex(FARCONSTRICTORpoints[7].x, FARCONSTRICTORpoints[7].y, FARCONSTRICTORpoints[7].z);
vertex(FARCONSTRICTORpoints[6].x, FARCONSTRICTORpoints[6].y, FARCONSTRICTORpoints[6].z);

vertex(FARCONSTRICTORpoints[6].x, FARCONSTRICTORpoints[6].y, FARCONSTRICTORpoints[6].z);
vertex(FARCONSTRICTORpoints[9].x, FARCONSTRICTORpoints[9].y, FARCONSTRICTORpoints[9].z);
vertex(FARCONSTRICTORpoints[8].x, FARCONSTRICTORpoints[8].y, FARCONSTRICTORpoints[8].z);

vertex(FARCONSTRICTORpoints[9].x, FARCONSTRICTORpoints[9].y, FARCONSTRICTORpoints[9].z);
vertex(FARCONSTRICTORpoints[10].x, FARCONSTRICTORpoints[10].y, FARCONSTRICTORpoints[10].z);
vertex(FARCONSTRICTORpoints[8].x, FARCONSTRICTORpoints[8].y, FARCONSTRICTORpoints[8].z);

vertex(FARCONSTRICTORpoints[5].x, FARCONSTRICTORpoints[5].y, FARCONSTRICTORpoints[5].z);
vertex(FARCONSTRICTORpoints[6].x, FARCONSTRICTORpoints[6].y, FARCONSTRICTORpoints[6].z);
vertex(FARCONSTRICTORpoints[3].x, FARCONSTRICTORpoints[3].y, FARCONSTRICTORpoints[3].z);

vertex(FARCONSTRICTORpoints[5].x, FARCONSTRICTORpoints[5].y, FARCONSTRICTORpoints[5].z);
vertex(FARCONSTRICTORpoints[9].x, FARCONSTRICTORpoints[9].y, FARCONSTRICTORpoints[9].z);
vertex(FARCONSTRICTORpoints[6].x, FARCONSTRICTORpoints[6].y, FARCONSTRICTORpoints[6].z);

vertex(FARCONSTRICTORpoints[11].x, FARCONSTRICTORpoints[11].y, FARCONSTRICTORpoints[11].z);
vertex(FARCONSTRICTORpoints[12].x, FARCONSTRICTORpoints[12].y, FARCONSTRICTORpoints[12].z);
vertex(FARCONSTRICTORpoints[14].x, FARCONSTRICTORpoints[14].y, FARCONSTRICTORpoints[14].z);

vertex(FARCONSTRICTORpoints[13].x, FARCONSTRICTORpoints[13].y, FARCONSTRICTORpoints[13].z);
vertex(FARCONSTRICTORpoints[11].x, FARCONSTRICTORpoints[11].y, FARCONSTRICTORpoints[11].z);
vertex(FARCONSTRICTORpoints[14].x, FARCONSTRICTORpoints[14].y, FARCONSTRICTORpoints[14].z);

vertex(FARCONSTRICTORpoints[2].x, FARCONSTRICTORpoints[2].y, FARCONSTRICTORpoints[2].z);
vertex(FARCONSTRICTORpoints[0].x, FARCONSTRICTORpoints[0].y, FARCONSTRICTORpoints[0].z);
vertex(FARCONSTRICTORpoints[8].x, FARCONSTRICTORpoints[8].y, FARCONSTRICTORpoints[8].z);

vertex(FARCONSTRICTORpoints[4].x, FARCONSTRICTORpoints[4].y, FARCONSTRICTORpoints[4].z);
vertex(FARCONSTRICTORpoints[10].x, FARCONSTRICTORpoints[10].y, FARCONSTRICTORpoints[10].z);
vertex(FARCONSTRICTORpoints[9].x, FARCONSTRICTORpoints[9].y, FARCONSTRICTORpoints[9].z);

vertex(FARCONSTRICTORpoints[9].x, FARCONSTRICTORpoints[9].y, FARCONSTRICTORpoints[9].z);
vertex(FARCONSTRICTORpoints[5].x, FARCONSTRICTORpoints[5].y, FARCONSTRICTORpoints[5].z);
vertex(FARCONSTRICTORpoints[4].x, FARCONSTRICTORpoints[4].y, FARCONSTRICTORpoints[4].z);

vertex(FARCONSTRICTORpoints[6].x, FARCONSTRICTORpoints[6].y, FARCONSTRICTORpoints[6].z);
vertex(FARCONSTRICTORpoints[7].x, FARCONSTRICTORpoints[7].y, FARCONSTRICTORpoints[7].z);
vertex(FARCONSTRICTORpoints[1].x, FARCONSTRICTORpoints[1].y, FARCONSTRICTORpoints[1].z);

vertex(FARCONSTRICTORpoints[1].x, FARCONSTRICTORpoints[1].y, FARCONSTRICTORpoints[1].z);
vertex(FARCONSTRICTORpoints[3].x, FARCONSTRICTORpoints[3].y, FARCONSTRICTORpoints[3].z);
vertex(FARCONSTRICTORpoints[6].x, FARCONSTRICTORpoints[6].y, FARCONSTRICTORpoints[6].z);

vertex(FARCONSTRICTORpoints[2].x, FARCONSTRICTORpoints[2].y, FARCONSTRICTORpoints[2].z);
vertex(FARCONSTRICTORpoints[8].x, FARCONSTRICTORpoints[8].y, FARCONSTRICTORpoints[8].z);
vertex(FARCONSTRICTORpoints[10].x, FARCONSTRICTORpoints[10].y, FARCONSTRICTORpoints[10].z);

vertex(FARCONSTRICTORpoints[10].x, FARCONSTRICTORpoints[10].y, FARCONSTRICTORpoints[10].z);
vertex(FARCONSTRICTORpoints[4].x, FARCONSTRICTORpoints[4].y, FARCONSTRICTORpoints[4].z);
vertex(FARCONSTRICTORpoints[2].x, FARCONSTRICTORpoints[2].y, FARCONSTRICTORpoints[2].z);

vertex(FARCONSTRICTORpoints[7].x, FARCONSTRICTORpoints[7].y, FARCONSTRICTORpoints[7].z);
vertex(FARCONSTRICTORpoints[8].x, FARCONSTRICTORpoints[8].y, FARCONSTRICTORpoints[8].z);
vertex(FARCONSTRICTORpoints[0].x, FARCONSTRICTORpoints[0].y, FARCONSTRICTORpoints[0].z);

vertex(FARCONSTRICTORpoints[0].x, FARCONSTRICTORpoints[0].y, FARCONSTRICTORpoints[0].z);
vertex(FARCONSTRICTORpoints[1].x, FARCONSTRICTORpoints[1].y, FARCONSTRICTORpoints[1].z);
vertex(FARCONSTRICTORpoints[7].x, FARCONSTRICTORpoints[7].y, FARCONSTRICTORpoints[7].z);
endShape();
popMatrix();
    
}
//----------------------------------------------------------------

//Object name: CONSTRICTORpoints
PVector[] CONSTRICTORpoints = new PVector[]{
new PVector(-37,-12,45),
new PVector(-52,-12,25),
new PVector(2,-12,45),
new PVector(-52,-12,-45),
new PVector(17,-12,25),
new PVector(17,-12,-45),
new PVector(-37,2,-45),
new PVector(-37,2,15),
new PVector(-27,2,30),
new PVector(-7,2,30),
new PVector(2,2,-45),
new PVector(2,2,15),
new PVector(-32,-2,-45),
new PVector(-37,-7,-45),
new PVector(-2,-2,-45),
new PVector(2,-7,-45),
new PVector(-32,-12,-35),
new PVector(-27,-12,-35),
new PVector(-27,-12,20),
new PVector(-7,-12,20),
new PVector(-7,-12,-35),
new PVector(-2,-12,-35),
new PVector(-17,2,25),
new PVector(-27,2,5),
new PVector(-7,2,5),
new PVector(-27,2,-25),
new PVector(-17,2,15),
new PVector(-7,2,-25)
};

void drawCONSTRICTOR(){
pushMatrix();
rotateX(frameCount*PI/280);
rotateY(frameCount*PI/170);
rotateZ(frameCount*PI/90);
beginShape(TRIANGLES);
fill(0);
stroke(255);
vertex(CONSTRICTORpoints[3].x, CONSTRICTORpoints[3].y, CONSTRICTORpoints[3].z);
vertex(CONSTRICTORpoints[1].x, CONSTRICTORpoints[1].y, CONSTRICTORpoints[1].z);
vertex(CONSTRICTORpoints[0].x, CONSTRICTORpoints[0].y, CONSTRICTORpoints[0].z);

vertex(CONSTRICTORpoints[3].x, CONSTRICTORpoints[3].y, CONSTRICTORpoints[3].z);
vertex(CONSTRICTORpoints[0].x, CONSTRICTORpoints[0].y, CONSTRICTORpoints[0].z);
vertex(CONSTRICTORpoints[2].x, CONSTRICTORpoints[2].y, CONSTRICTORpoints[2].z);

vertex(CONSTRICTORpoints[3].x, CONSTRICTORpoints[3].y, CONSTRICTORpoints[3].z);
vertex(CONSTRICTORpoints[2].x, CONSTRICTORpoints[2].y, CONSTRICTORpoints[2].z);
vertex(CONSTRICTORpoints[5].x, CONSTRICTORpoints[5].y, CONSTRICTORpoints[5].z);

vertex(CONSTRICTORpoints[5].x, CONSTRICTORpoints[5].y, CONSTRICTORpoints[5].z);
vertex(CONSTRICTORpoints[2].x, CONSTRICTORpoints[2].y, CONSTRICTORpoints[2].z);
vertex(CONSTRICTORpoints[4].x, CONSTRICTORpoints[4].y, CONSTRICTORpoints[4].z);

vertex(CONSTRICTORpoints[18].x, CONSTRICTORpoints[18].y, CONSTRICTORpoints[18].z);
vertex(CONSTRICTORpoints[17].x, CONSTRICTORpoints[17].y, CONSTRICTORpoints[17].z);
vertex(CONSTRICTORpoints[16].x, CONSTRICTORpoints[16].y, CONSTRICTORpoints[16].z);

vertex(CONSTRICTORpoints[21].x, CONSTRICTORpoints[21].y, CONSTRICTORpoints[21].z);
vertex(CONSTRICTORpoints[20].x, CONSTRICTORpoints[20].y, CONSTRICTORpoints[20].z);
vertex(CONSTRICTORpoints[19].x, CONSTRICTORpoints[19].y, CONSTRICTORpoints[19].z);

vertex(CONSTRICTORpoints[8].x, CONSTRICTORpoints[8].y, CONSTRICTORpoints[8].z);
vertex(CONSTRICTORpoints[7].x, CONSTRICTORpoints[7].y, CONSTRICTORpoints[7].z);
vertex(CONSTRICTORpoints[6].x, CONSTRICTORpoints[6].y, CONSTRICTORpoints[6].z);

vertex(CONSTRICTORpoints[6].x, CONSTRICTORpoints[6].y, CONSTRICTORpoints[6].z);
vertex(CONSTRICTORpoints[9].x, CONSTRICTORpoints[9].y, CONSTRICTORpoints[9].z);
vertex(CONSTRICTORpoints[8].x, CONSTRICTORpoints[8].y, CONSTRICTORpoints[8].z);

vertex(CONSTRICTORpoints[6].x, CONSTRICTORpoints[6].y, CONSTRICTORpoints[6].z);
vertex(CONSTRICTORpoints[10].x, CONSTRICTORpoints[10].y, CONSTRICTORpoints[10].z);
vertex(CONSTRICTORpoints[9].x, CONSTRICTORpoints[9].y, CONSTRICTORpoints[9].z);

vertex(CONSTRICTORpoints[10].x, CONSTRICTORpoints[10].y, CONSTRICTORpoints[10].z);
vertex(CONSTRICTORpoints[11].x, CONSTRICTORpoints[11].y, CONSTRICTORpoints[11].z);
vertex(CONSTRICTORpoints[9].x, CONSTRICTORpoints[9].y, CONSTRICTORpoints[9].z);

vertex(CONSTRICTORpoints[22].x, CONSTRICTORpoints[22].y, CONSTRICTORpoints[22].z);
vertex(CONSTRICTORpoints[23].x, CONSTRICTORpoints[23].y, CONSTRICTORpoints[23].z);
vertex(CONSTRICTORpoints[24].x, CONSTRICTORpoints[24].y, CONSTRICTORpoints[24].z);

vertex(CONSTRICTORpoints[26].x, CONSTRICTORpoints[26].y, CONSTRICTORpoints[26].z);
vertex(CONSTRICTORpoints[25].x, CONSTRICTORpoints[25].y, CONSTRICTORpoints[25].z);
vertex(CONSTRICTORpoints[27].x, CONSTRICTORpoints[27].y, CONSTRICTORpoints[27].z);

vertex(CONSTRICTORpoints[5].x, CONSTRICTORpoints[5].y, CONSTRICTORpoints[5].z);
vertex(CONSTRICTORpoints[6].x, CONSTRICTORpoints[6].y, CONSTRICTORpoints[6].z);
vertex(CONSTRICTORpoints[3].x, CONSTRICTORpoints[3].y, CONSTRICTORpoints[3].z);

vertex(CONSTRICTORpoints[5].x, CONSTRICTORpoints[5].y, CONSTRICTORpoints[5].z);
vertex(CONSTRICTORpoints[10].x, CONSTRICTORpoints[10].y, CONSTRICTORpoints[10].z);
vertex(CONSTRICTORpoints[6].x, CONSTRICTORpoints[6].y, CONSTRICTORpoints[6].z);

vertex(CONSTRICTORpoints[12].x, CONSTRICTORpoints[12].y, CONSTRICTORpoints[12].z);
vertex(CONSTRICTORpoints[13].x, CONSTRICTORpoints[13].y, CONSTRICTORpoints[13].z);
vertex(CONSTRICTORpoints[15].x, CONSTRICTORpoints[15].y, CONSTRICTORpoints[15].z);

vertex(CONSTRICTORpoints[14].x, CONSTRICTORpoints[14].y, CONSTRICTORpoints[14].z);
vertex(CONSTRICTORpoints[12].x, CONSTRICTORpoints[12].y, CONSTRICTORpoints[12].z);
vertex(CONSTRICTORpoints[15].x, CONSTRICTORpoints[15].y, CONSTRICTORpoints[15].z);

vertex(CONSTRICTORpoints[2].x, CONSTRICTORpoints[2].y, CONSTRICTORpoints[2].z);
vertex(CONSTRICTORpoints[0].x, CONSTRICTORpoints[0].y, CONSTRICTORpoints[0].z);
vertex(CONSTRICTORpoints[8].x, CONSTRICTORpoints[8].y, CONSTRICTORpoints[8].z);

vertex(CONSTRICTORpoints[8].x, CONSTRICTORpoints[8].y, CONSTRICTORpoints[8].z);
vertex(CONSTRICTORpoints[9].x, CONSTRICTORpoints[9].y, CONSTRICTORpoints[9].z);
vertex(CONSTRICTORpoints[2].x, CONSTRICTORpoints[2].y, CONSTRICTORpoints[2].z);

vertex(CONSTRICTORpoints[4].x, CONSTRICTORpoints[4].y, CONSTRICTORpoints[4].z);
vertex(CONSTRICTORpoints[11].x, CONSTRICTORpoints[11].y, CONSTRICTORpoints[11].z);
vertex(CONSTRICTORpoints[10].x, CONSTRICTORpoints[10].y, CONSTRICTORpoints[10].z);

vertex(CONSTRICTORpoints[10].x, CONSTRICTORpoints[10].y, CONSTRICTORpoints[10].z);
vertex(CONSTRICTORpoints[5].x, CONSTRICTORpoints[5].y, CONSTRICTORpoints[5].z);
vertex(CONSTRICTORpoints[4].x, CONSTRICTORpoints[4].y, CONSTRICTORpoints[4].z);

vertex(CONSTRICTORpoints[6].x, CONSTRICTORpoints[6].y, CONSTRICTORpoints[6].z);
vertex(CONSTRICTORpoints[7].x, CONSTRICTORpoints[7].y, CONSTRICTORpoints[7].z);
vertex(CONSTRICTORpoints[1].x, CONSTRICTORpoints[1].y, CONSTRICTORpoints[1].z);

vertex(CONSTRICTORpoints[1].x, CONSTRICTORpoints[1].y, CONSTRICTORpoints[1].z);
vertex(CONSTRICTORpoints[3].x, CONSTRICTORpoints[3].y, CONSTRICTORpoints[3].z);
vertex(CONSTRICTORpoints[6].x, CONSTRICTORpoints[6].y, CONSTRICTORpoints[6].z);

vertex(CONSTRICTORpoints[2].x, CONSTRICTORpoints[2].y, CONSTRICTORpoints[2].z);
vertex(CONSTRICTORpoints[9].x, CONSTRICTORpoints[9].y, CONSTRICTORpoints[9].z);
vertex(CONSTRICTORpoints[11].x, CONSTRICTORpoints[11].y, CONSTRICTORpoints[11].z);

vertex(CONSTRICTORpoints[11].x, CONSTRICTORpoints[11].y, CONSTRICTORpoints[11].z);
vertex(CONSTRICTORpoints[4].x, CONSTRICTORpoints[4].y, CONSTRICTORpoints[4].z);
vertex(CONSTRICTORpoints[2].x, CONSTRICTORpoints[2].y, CONSTRICTORpoints[2].z);

vertex(CONSTRICTORpoints[7].x, CONSTRICTORpoints[7].y, CONSTRICTORpoints[7].z);
vertex(CONSTRICTORpoints[8].x, CONSTRICTORpoints[8].y, CONSTRICTORpoints[8].z);
vertex(CONSTRICTORpoints[0].x, CONSTRICTORpoints[0].y, CONSTRICTORpoints[0].z);

vertex(CONSTRICTORpoints[0].x, CONSTRICTORpoints[0].y, CONSTRICTORpoints[0].z);
vertex(CONSTRICTORpoints[1].x, CONSTRICTORpoints[1].y, CONSTRICTORpoints[1].z);
vertex(CONSTRICTORpoints[7].x, CONSTRICTORpoints[7].y, CONSTRICTORpoints[7].z);
endShape();
popMatrix();
    
}
//----------------------------------------------------------------

//Object name: FARESCAPEPODpoints
PVector[] FARESCAPEPODpoints = new PVector[]{
new PVector(0,7,-20),
new PVector(-15,-7,-20),
new PVector(15,-7,-20),
new PVector(0,-7,20),
new PVector(0,2,-20),
new PVector(5,-2,-20),
new PVector(-5,-2,-20)
};

void drawFARESCAPEPOD(){
pushMatrix();
rotateX(frameCount*PI/280);
rotateY(frameCount*PI/170);
rotateZ(frameCount*PI/90);
beginShape(TRIANGLES);
fill(0);
stroke(255);
vertex(FARESCAPEPODpoints[0].x, FARESCAPEPODpoints[0].y, FARESCAPEPODpoints[0].z);
vertex(FARESCAPEPODpoints[1].x, FARESCAPEPODpoints[1].y, FARESCAPEPODpoints[1].z);
vertex(FARESCAPEPODpoints[2].x, FARESCAPEPODpoints[2].y, FARESCAPEPODpoints[2].z);

vertex(FARESCAPEPODpoints[6].x, FARESCAPEPODpoints[6].y, FARESCAPEPODpoints[6].z);
vertex(FARESCAPEPODpoints[5].x, FARESCAPEPODpoints[5].y, FARESCAPEPODpoints[5].z);
vertex(FARESCAPEPODpoints[4].x, FARESCAPEPODpoints[4].y, FARESCAPEPODpoints[4].z);

vertex(FARESCAPEPODpoints[2].x, FARESCAPEPODpoints[2].y, FARESCAPEPODpoints[2].z);
vertex(FARESCAPEPODpoints[3].x, FARESCAPEPODpoints[3].y, FARESCAPEPODpoints[3].z);
vertex(FARESCAPEPODpoints[0].x, FARESCAPEPODpoints[0].y, FARESCAPEPODpoints[0].z);

vertex(FARESCAPEPODpoints[0].x, FARESCAPEPODpoints[0].y, FARESCAPEPODpoints[0].z);
vertex(FARESCAPEPODpoints[3].x, FARESCAPEPODpoints[3].y, FARESCAPEPODpoints[3].z);
vertex(FARESCAPEPODpoints[1].x, FARESCAPEPODpoints[1].y, FARESCAPEPODpoints[1].z);

vertex(FARESCAPEPODpoints[3].x, FARESCAPEPODpoints[3].y, FARESCAPEPODpoints[3].z);
vertex(FARESCAPEPODpoints[2].x, FARESCAPEPODpoints[2].y, FARESCAPEPODpoints[2].z);
vertex(FARESCAPEPODpoints[1].x, FARESCAPEPODpoints[1].y, FARESCAPEPODpoints[1].z);
endShape();
popMatrix();
    
}
//----------------------------------------------------------------

//Object name: ESCAPEPODpoints
PVector[] ESCAPEPODpoints = new PVector[]{
new PVector(0,7,-20),
new PVector(-15,-7,-20),
new PVector(15,-7,-20),
new PVector(0,-7,20),
new PVector(0,2,-20),
new PVector(5,-2,-20),
new PVector(-5,-2,-20),
new PVector(-10,-7,-20),
new PVector(-8,-7,-14),
new PVector(-6,-7,-20),
new PVector(-2,-7,-20),
new PVector(0,-7,-14),
new PVector(2,-7,-20),
new PVector(6,-7,-20),
new PVector(8,-7,-14),
new PVector(10,-7,-20)
};

void drawESCAPEPOD(){
pushMatrix();
rotateX(frameCount*PI/280);
rotateY(frameCount*PI/170);
rotateZ(frameCount*PI/90);
beginShape(TRIANGLES);
fill(0);
stroke(255);
vertex(ESCAPEPODpoints[0].x, ESCAPEPODpoints[0].y, ESCAPEPODpoints[0].z);
vertex(ESCAPEPODpoints[1].x, ESCAPEPODpoints[1].y, ESCAPEPODpoints[1].z);
vertex(ESCAPEPODpoints[2].x, ESCAPEPODpoints[2].y, ESCAPEPODpoints[2].z);

vertex(ESCAPEPODpoints[6].x, ESCAPEPODpoints[6].y, ESCAPEPODpoints[6].z);
vertex(ESCAPEPODpoints[5].x, ESCAPEPODpoints[5].y, ESCAPEPODpoints[5].z);
vertex(ESCAPEPODpoints[4].x, ESCAPEPODpoints[4].y, ESCAPEPODpoints[4].z);

vertex(ESCAPEPODpoints[2].x, ESCAPEPODpoints[2].y, ESCAPEPODpoints[2].z);
vertex(ESCAPEPODpoints[3].x, ESCAPEPODpoints[3].y, ESCAPEPODpoints[3].z);
vertex(ESCAPEPODpoints[0].x, ESCAPEPODpoints[0].y, ESCAPEPODpoints[0].z);

vertex(ESCAPEPODpoints[0].x, ESCAPEPODpoints[0].y, ESCAPEPODpoints[0].z);
vertex(ESCAPEPODpoints[3].x, ESCAPEPODpoints[3].y, ESCAPEPODpoints[3].z);
vertex(ESCAPEPODpoints[1].x, ESCAPEPODpoints[1].y, ESCAPEPODpoints[1].z);

vertex(ESCAPEPODpoints[3].x, ESCAPEPODpoints[3].y, ESCAPEPODpoints[3].z);
vertex(ESCAPEPODpoints[2].x, ESCAPEPODpoints[2].y, ESCAPEPODpoints[2].z);
vertex(ESCAPEPODpoints[1].x, ESCAPEPODpoints[1].y, ESCAPEPODpoints[1].z);

vertex(ESCAPEPODpoints[9].x, ESCAPEPODpoints[9].y, ESCAPEPODpoints[9].z);
vertex(ESCAPEPODpoints[7].x, ESCAPEPODpoints[7].y, ESCAPEPODpoints[7].z);
vertex(ESCAPEPODpoints[8].x, ESCAPEPODpoints[8].y, ESCAPEPODpoints[8].z);

vertex(ESCAPEPODpoints[12].x, ESCAPEPODpoints[12].y, ESCAPEPODpoints[12].z);
vertex(ESCAPEPODpoints[10].x, ESCAPEPODpoints[10].y, ESCAPEPODpoints[10].z);
vertex(ESCAPEPODpoints[11].x, ESCAPEPODpoints[11].y, ESCAPEPODpoints[11].z);

vertex(ESCAPEPODpoints[15].x, ESCAPEPODpoints[15].y, ESCAPEPODpoints[15].z);
vertex(ESCAPEPODpoints[13].x, ESCAPEPODpoints[13].y, ESCAPEPODpoints[13].z);
vertex(ESCAPEPODpoints[14].x, ESCAPEPODpoints[14].y, ESCAPEPODpoints[14].z);
endShape();
popMatrix();
    
}
//----------------------------------------------------------------

//Object name: FARFERDELANCEpoints
PVector[] FARFERDELANCEpoints = new PVector[]{
new PVector(0,-25,120),
new PVector(-70,15,-60),
new PVector(0,25,-90),
new PVector(70,15,-60),
new PVector(-70,-25,-60),
new PVector(70,-25,-60),
new PVector(40,15,-120),
new PVector(-40,15,-120),
new PVector(40,-25,-120),
new PVector(-40,-25,-120),
new PVector(-10,5,-120),
new PVector(10,5,-120),
new PVector(0,-15,-120)
};

void drawFARFERDELANCE(){
pushMatrix();
rotateX(frameCount*PI/280);
rotateY(frameCount*PI/170);
rotateZ(frameCount*PI/90);
beginShape(TRIANGLES);
fill(0);
stroke(255);
vertex(FARFERDELANCEpoints[0].x, FARFERDELANCEpoints[0].y, FARFERDELANCEpoints[0].z);
vertex(FARFERDELANCEpoints[1].x, FARFERDELANCEpoints[1].y, FARFERDELANCEpoints[1].z);
vertex(FARFERDELANCEpoints[2].x, FARFERDELANCEpoints[2].y, FARFERDELANCEpoints[2].z);

vertex(FARFERDELANCEpoints[3].x, FARFERDELANCEpoints[3].y, FARFERDELANCEpoints[3].z);
vertex(FARFERDELANCEpoints[0].x, FARFERDELANCEpoints[0].y, FARFERDELANCEpoints[0].z);
vertex(FARFERDELANCEpoints[2].x, FARFERDELANCEpoints[2].y, FARFERDELANCEpoints[2].z);

vertex(FARFERDELANCEpoints[0].x, FARFERDELANCEpoints[0].y, FARFERDELANCEpoints[0].z);
vertex(FARFERDELANCEpoints[4].x, FARFERDELANCEpoints[4].y, FARFERDELANCEpoints[4].z);
vertex(FARFERDELANCEpoints[1].x, FARFERDELANCEpoints[1].y, FARFERDELANCEpoints[1].z);

vertex(FARFERDELANCEpoints[3].x, FARFERDELANCEpoints[3].y, FARFERDELANCEpoints[3].z);
vertex(FARFERDELANCEpoints[5].x, FARFERDELANCEpoints[5].y, FARFERDELANCEpoints[5].z);
vertex(FARFERDELANCEpoints[0].x, FARFERDELANCEpoints[0].y, FARFERDELANCEpoints[0].z);

vertex(FARFERDELANCEpoints[2].x, FARFERDELANCEpoints[2].y, FARFERDELANCEpoints[2].z);
vertex(FARFERDELANCEpoints[6].x, FARFERDELANCEpoints[6].y, FARFERDELANCEpoints[6].z);
vertex(FARFERDELANCEpoints[3].x, FARFERDELANCEpoints[3].y, FARFERDELANCEpoints[3].z);

vertex(FARFERDELANCEpoints[2].x, FARFERDELANCEpoints[2].y, FARFERDELANCEpoints[2].z);
vertex(FARFERDELANCEpoints[1].x, FARFERDELANCEpoints[1].y, FARFERDELANCEpoints[1].z);
vertex(FARFERDELANCEpoints[7].x, FARFERDELANCEpoints[7].y, FARFERDELANCEpoints[7].z);

vertex(FARFERDELANCEpoints[2].x, FARFERDELANCEpoints[2].y, FARFERDELANCEpoints[2].z);
vertex(FARFERDELANCEpoints[7].x, FARFERDELANCEpoints[7].y, FARFERDELANCEpoints[7].z);
vertex(FARFERDELANCEpoints[6].x, FARFERDELANCEpoints[6].y, FARFERDELANCEpoints[6].z);

vertex(FARFERDELANCEpoints[6].x, FARFERDELANCEpoints[6].y, FARFERDELANCEpoints[6].z);
vertex(FARFERDELANCEpoints[8].x, FARFERDELANCEpoints[8].y, FARFERDELANCEpoints[8].z);
vertex(FARFERDELANCEpoints[3].x, FARFERDELANCEpoints[3].y, FARFERDELANCEpoints[3].z);

vertex(FARFERDELANCEpoints[3].x, FARFERDELANCEpoints[3].y, FARFERDELANCEpoints[3].z);
vertex(FARFERDELANCEpoints[8].x, FARFERDELANCEpoints[8].y, FARFERDELANCEpoints[8].z);
vertex(FARFERDELANCEpoints[5].x, FARFERDELANCEpoints[5].y, FARFERDELANCEpoints[5].z);

vertex(FARFERDELANCEpoints[7].x, FARFERDELANCEpoints[7].y, FARFERDELANCEpoints[7].z);
vertex(FARFERDELANCEpoints[1].x, FARFERDELANCEpoints[1].y, FARFERDELANCEpoints[1].z);
vertex(FARFERDELANCEpoints[4].x, FARFERDELANCEpoints[4].y, FARFERDELANCEpoints[4].z);

vertex(FARFERDELANCEpoints[7].x, FARFERDELANCEpoints[7].y, FARFERDELANCEpoints[7].z);
vertex(FARFERDELANCEpoints[4].x, FARFERDELANCEpoints[4].y, FARFERDELANCEpoints[4].z);
vertex(FARFERDELANCEpoints[9].x, FARFERDELANCEpoints[9].y, FARFERDELANCEpoints[9].z);

vertex(FARFERDELANCEpoints[9].x, FARFERDELANCEpoints[9].y, FARFERDELANCEpoints[9].z);
vertex(FARFERDELANCEpoints[6].x, FARFERDELANCEpoints[6].y, FARFERDELANCEpoints[6].z);
vertex(FARFERDELANCEpoints[7].x, FARFERDELANCEpoints[7].y, FARFERDELANCEpoints[7].z);

vertex(FARFERDELANCEpoints[8].x, FARFERDELANCEpoints[8].y, FARFERDELANCEpoints[8].z);
vertex(FARFERDELANCEpoints[6].x, FARFERDELANCEpoints[6].y, FARFERDELANCEpoints[6].z);
vertex(FARFERDELANCEpoints[9].x, FARFERDELANCEpoints[9].y, FARFERDELANCEpoints[9].z);

vertex(FARFERDELANCEpoints[12].x, FARFERDELANCEpoints[12].y, FARFERDELANCEpoints[12].z);
vertex(FARFERDELANCEpoints[11].x, FARFERDELANCEpoints[11].y, FARFERDELANCEpoints[11].z);
vertex(FARFERDELANCEpoints[10].x, FARFERDELANCEpoints[10].y, FARFERDELANCEpoints[10].z);

vertex(FARFERDELANCEpoints[9].x, FARFERDELANCEpoints[9].y, FARFERDELANCEpoints[9].z);
vertex(FARFERDELANCEpoints[4].x, FARFERDELANCEpoints[4].y, FARFERDELANCEpoints[4].z);
vertex(FARFERDELANCEpoints[0].x, FARFERDELANCEpoints[0].y, FARFERDELANCEpoints[0].z);

vertex(FARFERDELANCEpoints[8].x, FARFERDELANCEpoints[8].y, FARFERDELANCEpoints[8].z);
vertex(FARFERDELANCEpoints[9].x, FARFERDELANCEpoints[9].y, FARFERDELANCEpoints[9].z);
vertex(FARFERDELANCEpoints[0].x, FARFERDELANCEpoints[0].y, FARFERDELANCEpoints[0].z);

vertex(FARFERDELANCEpoints[8].x, FARFERDELANCEpoints[8].y, FARFERDELANCEpoints[8].z);
vertex(FARFERDELANCEpoints[0].x, FARFERDELANCEpoints[0].y, FARFERDELANCEpoints[0].z);
vertex(FARFERDELANCEpoints[5].x, FARFERDELANCEpoints[5].y, FARFERDELANCEpoints[5].z);
endShape();
popMatrix();
    
}
//----------------------------------------------------------------

//Object name: FERDELANCEpoints
PVector[] FERDELANCEpoints = new PVector[]{
new PVector(0,-25,120),
new PVector(-70,15,-60),
new PVector(0,25,-90),
new PVector(70,15,-60),
new PVector(-70,-25,-60),
new PVector(70,-25,-60),
new PVector(40,15,-120),
new PVector(-40,15,-120),
new PVector(40,-25,-120),
new PVector(-40,-25,-120),
new PVector(-10,-13,70),
new PVector(-50,15,-50),
new PVector(-10,21,-70),
new PVector(10,-13,70),
new PVector(10,21,-70),
new PVector(50,15,-50),
new PVector(-10,5,-120),
new PVector(10,5,-120),
new PVector(10,-15,-120),
new PVector(-10,-15,-120)
};

void drawFERDELANCE(){
pushMatrix();
rotateX(frameCount*PI/280);
rotateY(frameCount*PI/170);
rotateZ(frameCount*PI/90);
beginShape(TRIANGLES);
fill(0);
stroke(255);
vertex(FERDELANCEpoints[0].x, FERDELANCEpoints[0].y, FERDELANCEpoints[0].z);
vertex(FERDELANCEpoints[1].x, FERDELANCEpoints[1].y, FERDELANCEpoints[1].z);
vertex(FERDELANCEpoints[2].x, FERDELANCEpoints[2].y, FERDELANCEpoints[2].z);

vertex(FERDELANCEpoints[3].x, FERDELANCEpoints[3].y, FERDELANCEpoints[3].z);
vertex(FERDELANCEpoints[0].x, FERDELANCEpoints[0].y, FERDELANCEpoints[0].z);
vertex(FERDELANCEpoints[2].x, FERDELANCEpoints[2].y, FERDELANCEpoints[2].z);

vertex(FERDELANCEpoints[0].x, FERDELANCEpoints[0].y, FERDELANCEpoints[0].z);
vertex(FERDELANCEpoints[4].x, FERDELANCEpoints[4].y, FERDELANCEpoints[4].z);
vertex(FERDELANCEpoints[1].x, FERDELANCEpoints[1].y, FERDELANCEpoints[1].z);

vertex(FERDELANCEpoints[3].x, FERDELANCEpoints[3].y, FERDELANCEpoints[3].z);
vertex(FERDELANCEpoints[5].x, FERDELANCEpoints[5].y, FERDELANCEpoints[5].z);
vertex(FERDELANCEpoints[0].x, FERDELANCEpoints[0].y, FERDELANCEpoints[0].z);

vertex(FERDELANCEpoints[2].x, FERDELANCEpoints[2].y, FERDELANCEpoints[2].z);
vertex(FERDELANCEpoints[6].x, FERDELANCEpoints[6].y, FERDELANCEpoints[6].z);
vertex(FERDELANCEpoints[3].x, FERDELANCEpoints[3].y, FERDELANCEpoints[3].z);

vertex(FERDELANCEpoints[2].x, FERDELANCEpoints[2].y, FERDELANCEpoints[2].z);
vertex(FERDELANCEpoints[1].x, FERDELANCEpoints[1].y, FERDELANCEpoints[1].z);
vertex(FERDELANCEpoints[7].x, FERDELANCEpoints[7].y, FERDELANCEpoints[7].z);

vertex(FERDELANCEpoints[2].x, FERDELANCEpoints[2].y, FERDELANCEpoints[2].z);
vertex(FERDELANCEpoints[7].x, FERDELANCEpoints[7].y, FERDELANCEpoints[7].z);
vertex(FERDELANCEpoints[6].x, FERDELANCEpoints[6].y, FERDELANCEpoints[6].z);

vertex(FERDELANCEpoints[6].x, FERDELANCEpoints[6].y, FERDELANCEpoints[6].z);
vertex(FERDELANCEpoints[8].x, FERDELANCEpoints[8].y, FERDELANCEpoints[8].z);
vertex(FERDELANCEpoints[3].x, FERDELANCEpoints[3].y, FERDELANCEpoints[3].z);

vertex(FERDELANCEpoints[3].x, FERDELANCEpoints[3].y, FERDELANCEpoints[3].z);
vertex(FERDELANCEpoints[8].x, FERDELANCEpoints[8].y, FERDELANCEpoints[8].z);
vertex(FERDELANCEpoints[5].x, FERDELANCEpoints[5].y, FERDELANCEpoints[5].z);

vertex(FERDELANCEpoints[7].x, FERDELANCEpoints[7].y, FERDELANCEpoints[7].z);
vertex(FERDELANCEpoints[1].x, FERDELANCEpoints[1].y, FERDELANCEpoints[1].z);
vertex(FERDELANCEpoints[4].x, FERDELANCEpoints[4].y, FERDELANCEpoints[4].z);

vertex(FERDELANCEpoints[7].x, FERDELANCEpoints[7].y, FERDELANCEpoints[7].z);
vertex(FERDELANCEpoints[4].x, FERDELANCEpoints[4].y, FERDELANCEpoints[4].z);
vertex(FERDELANCEpoints[9].x, FERDELANCEpoints[9].y, FERDELANCEpoints[9].z);

vertex(FERDELANCEpoints[9].x, FERDELANCEpoints[9].y, FERDELANCEpoints[9].z);
vertex(FERDELANCEpoints[6].x, FERDELANCEpoints[6].y, FERDELANCEpoints[6].z);
vertex(FERDELANCEpoints[7].x, FERDELANCEpoints[7].y, FERDELANCEpoints[7].z);

vertex(FERDELANCEpoints[8].x, FERDELANCEpoints[8].y, FERDELANCEpoints[8].z);
vertex(FERDELANCEpoints[6].x, FERDELANCEpoints[6].y, FERDELANCEpoints[6].z);
vertex(FERDELANCEpoints[9].x, FERDELANCEpoints[9].y, FERDELANCEpoints[9].z);

vertex(FERDELANCEpoints[18].x, FERDELANCEpoints[18].y, FERDELANCEpoints[18].z);
vertex(FERDELANCEpoints[17].x, FERDELANCEpoints[17].y, FERDELANCEpoints[17].z);
vertex(FERDELANCEpoints[16].x, FERDELANCEpoints[16].y, FERDELANCEpoints[16].z);

vertex(FERDELANCEpoints[16].x, FERDELANCEpoints[16].y, FERDELANCEpoints[16].z);
vertex(FERDELANCEpoints[19].x, FERDELANCEpoints[19].y, FERDELANCEpoints[19].z);
vertex(FERDELANCEpoints[18].x, FERDELANCEpoints[18].y, FERDELANCEpoints[18].z);

vertex(FERDELANCEpoints[9].x, FERDELANCEpoints[9].y, FERDELANCEpoints[9].z);
vertex(FERDELANCEpoints[4].x, FERDELANCEpoints[4].y, FERDELANCEpoints[4].z);
vertex(FERDELANCEpoints[0].x, FERDELANCEpoints[0].y, FERDELANCEpoints[0].z);

vertex(FERDELANCEpoints[8].x, FERDELANCEpoints[8].y, FERDELANCEpoints[8].z);
vertex(FERDELANCEpoints[9].x, FERDELANCEpoints[9].y, FERDELANCEpoints[9].z);
vertex(FERDELANCEpoints[0].x, FERDELANCEpoints[0].y, FERDELANCEpoints[0].z);

vertex(FERDELANCEpoints[8].x, FERDELANCEpoints[8].y, FERDELANCEpoints[8].z);
vertex(FERDELANCEpoints[0].x, FERDELANCEpoints[0].y, FERDELANCEpoints[0].z);
vertex(FERDELANCEpoints[5].x, FERDELANCEpoints[5].y, FERDELANCEpoints[5].z);

vertex(FERDELANCEpoints[10].x, FERDELANCEpoints[10].y, FERDELANCEpoints[10].z);
vertex(FERDELANCEpoints[11].x, FERDELANCEpoints[11].y, FERDELANCEpoints[11].z);
vertex(FERDELANCEpoints[12].x, FERDELANCEpoints[12].y, FERDELANCEpoints[12].z);

vertex(FERDELANCEpoints[13].x, FERDELANCEpoints[13].y, FERDELANCEpoints[13].z);
vertex(FERDELANCEpoints[14].x, FERDELANCEpoints[14].y, FERDELANCEpoints[14].z);
vertex(FERDELANCEpoints[15].x, FERDELANCEpoints[15].y, FERDELANCEpoints[15].z);
endShape();
popMatrix();
    
}
//----------------------------------------------------------------

//Object name: HAWKpoints
PVector[] HAWKpoints = new PVector[]{
new PVector(-90,30,7),
new PVector(-30,60,97),
new PVector(-30,30,97),
new PVector(90,30,7),
new PVector(30,30,97),
new PVector(30,60,97),
new PVector(-30,30,142),
new PVector(30,30,142),
new PVector(-30,30,-142),
new PVector(30,30,-142),
new PVector(135,-60,-142),
new PVector(120,-15,-82),
new PVector(-135,-60,-142),
new PVector(-120,-15,-82),
new PVector(-30,60,-142),
new PVector(30,60,-142)
};

void drawHAWK(){
pushMatrix();
rotateX(frameCount*PI/280);
rotateY(frameCount*PI/170);
rotateZ(frameCount*PI/90);
beginShape(TRIANGLES);
fill(0);
stroke(255);
vertex(HAWKpoints[0].x, HAWKpoints[0].y, HAWKpoints[0].z);
vertex(HAWKpoints[1].x, HAWKpoints[1].y, HAWKpoints[1].z);
vertex(HAWKpoints[2].x, HAWKpoints[2].y, HAWKpoints[2].z);

vertex(HAWKpoints[3].x, HAWKpoints[3].y, HAWKpoints[3].z);
vertex(HAWKpoints[4].x, HAWKpoints[4].y, HAWKpoints[4].z);
vertex(HAWKpoints[5].x, HAWKpoints[5].y, HAWKpoints[5].z);

vertex(HAWKpoints[6].x, HAWKpoints[6].y, HAWKpoints[6].z);
vertex(HAWKpoints[7].x, HAWKpoints[7].y, HAWKpoints[7].z);
vertex(HAWKpoints[8].x, HAWKpoints[8].y, HAWKpoints[8].z);

vertex(HAWKpoints[7].x, HAWKpoints[7].y, HAWKpoints[7].z);
vertex(HAWKpoints[9].x, HAWKpoints[9].y, HAWKpoints[9].z);
vertex(HAWKpoints[8].x, HAWKpoints[8].y, HAWKpoints[8].z);

vertex(HAWKpoints[10].x, HAWKpoints[10].y, HAWKpoints[10].z);
vertex(HAWKpoints[9].x, HAWKpoints[9].y, HAWKpoints[9].z);
vertex(HAWKpoints[4].x, HAWKpoints[4].y, HAWKpoints[4].z);

vertex(HAWKpoints[11].x, HAWKpoints[11].y, HAWKpoints[11].z);
vertex(HAWKpoints[10].x, HAWKpoints[10].y, HAWKpoints[10].z);
vertex(HAWKpoints[4].x, HAWKpoints[4].y, HAWKpoints[4].z);

vertex(HAWKpoints[3].x, HAWKpoints[3].y, HAWKpoints[3].z);
vertex(HAWKpoints[11].x, HAWKpoints[11].y, HAWKpoints[11].z);
vertex(HAWKpoints[4].x, HAWKpoints[4].y, HAWKpoints[4].z);

vertex(HAWKpoints[2].x, HAWKpoints[2].y, HAWKpoints[2].z);
vertex(HAWKpoints[8].x, HAWKpoints[8].y, HAWKpoints[8].z);
vertex(HAWKpoints[12].x, HAWKpoints[12].y, HAWKpoints[12].z);

vertex(HAWKpoints[12].x, HAWKpoints[12].y, HAWKpoints[12].z);
vertex(HAWKpoints[13].x, HAWKpoints[13].y, HAWKpoints[13].z);
vertex(HAWKpoints[2].x, HAWKpoints[2].y, HAWKpoints[2].z);

vertex(HAWKpoints[2].x, HAWKpoints[2].y, HAWKpoints[2].z);
vertex(HAWKpoints[13].x, HAWKpoints[13].y, HAWKpoints[13].z);
vertex(HAWKpoints[0].x, HAWKpoints[0].y, HAWKpoints[0].z);

vertex(HAWKpoints[6].x, HAWKpoints[6].y, HAWKpoints[6].z);
vertex(HAWKpoints[2].x, HAWKpoints[2].y, HAWKpoints[2].z);
vertex(HAWKpoints[1].x, HAWKpoints[1].y, HAWKpoints[1].z);

vertex(HAWKpoints[5].x, HAWKpoints[5].y, HAWKpoints[5].z);
vertex(HAWKpoints[4].x, HAWKpoints[4].y, HAWKpoints[4].z);
vertex(HAWKpoints[7].x, HAWKpoints[7].y, HAWKpoints[7].z);

vertex(HAWKpoints[1].x, HAWKpoints[1].y, HAWKpoints[1].z);
vertex(HAWKpoints[5].x, HAWKpoints[5].y, HAWKpoints[5].z);
vertex(HAWKpoints[7].x, HAWKpoints[7].y, HAWKpoints[7].z);

vertex(HAWKpoints[7].x, HAWKpoints[7].y, HAWKpoints[7].z);
vertex(HAWKpoints[6].x, HAWKpoints[6].y, HAWKpoints[6].z);
vertex(HAWKpoints[1].x, HAWKpoints[1].y, HAWKpoints[1].z);

vertex(HAWKpoints[5].x, HAWKpoints[5].y, HAWKpoints[5].z);
vertex(HAWKpoints[1].x, HAWKpoints[1].y, HAWKpoints[1].z);
vertex(HAWKpoints[14].x, HAWKpoints[14].y, HAWKpoints[14].z);

vertex(HAWKpoints[14].x, HAWKpoints[14].y, HAWKpoints[14].z);
vertex(HAWKpoints[15].x, HAWKpoints[15].y, HAWKpoints[15].z);
vertex(HAWKpoints[5].x, HAWKpoints[5].y, HAWKpoints[5].z);

vertex(HAWKpoints[14].x, HAWKpoints[14].y, HAWKpoints[14].z);
vertex(HAWKpoints[13].x, HAWKpoints[13].y, HAWKpoints[13].z);
vertex(HAWKpoints[12].x, HAWKpoints[12].y, HAWKpoints[12].z);

vertex(HAWKpoints[15].x, HAWKpoints[15].y, HAWKpoints[15].z);
vertex(HAWKpoints[10].x, HAWKpoints[10].y, HAWKpoints[10].z);
vertex(HAWKpoints[11].x, HAWKpoints[11].y, HAWKpoints[11].z);

vertex(HAWKpoints[0].x, HAWKpoints[0].y, HAWKpoints[0].z);
vertex(HAWKpoints[13].x, HAWKpoints[13].y, HAWKpoints[13].z);
vertex(HAWKpoints[14].x, HAWKpoints[14].y, HAWKpoints[14].z);

vertex(HAWKpoints[15].x, HAWKpoints[15].y, HAWKpoints[15].z);
vertex(HAWKpoints[11].x, HAWKpoints[11].y, HAWKpoints[11].z);
vertex(HAWKpoints[3].x, HAWKpoints[3].y, HAWKpoints[3].z);

vertex(HAWKpoints[1].x, HAWKpoints[1].y, HAWKpoints[1].z);
vertex(HAWKpoints[0].x, HAWKpoints[0].y, HAWKpoints[0].z);
vertex(HAWKpoints[14].x, HAWKpoints[14].y, HAWKpoints[14].z);

vertex(HAWKpoints[5].x, HAWKpoints[5].y, HAWKpoints[5].z);
vertex(HAWKpoints[15].x, HAWKpoints[15].y, HAWKpoints[15].z);
vertex(HAWKpoints[3].x, HAWKpoints[3].y, HAWKpoints[3].z);

vertex(HAWKpoints[15].x, HAWKpoints[15].y, HAWKpoints[15].z);
vertex(HAWKpoints[14].x, HAWKpoints[14].y, HAWKpoints[14].z);
vertex(HAWKpoints[8].x, HAWKpoints[8].y, HAWKpoints[8].z);

vertex(HAWKpoints[8].x, HAWKpoints[8].y, HAWKpoints[8].z);
vertex(HAWKpoints[9].x, HAWKpoints[9].y, HAWKpoints[9].z);
vertex(HAWKpoints[15].x, HAWKpoints[15].y, HAWKpoints[15].z);

vertex(HAWKpoints[12].x, HAWKpoints[12].y, HAWKpoints[12].z);
vertex(HAWKpoints[8].x, HAWKpoints[8].y, HAWKpoints[8].z);
vertex(HAWKpoints[14].x, HAWKpoints[14].y, HAWKpoints[14].z);

vertex(HAWKpoints[15].x, HAWKpoints[15].y, HAWKpoints[15].z);
vertex(HAWKpoints[9].x, HAWKpoints[9].y, HAWKpoints[9].z);
vertex(HAWKpoints[10].x, HAWKpoints[10].y, HAWKpoints[10].z);
endShape();
popMatrix();
    
}
//----------------------------------------------------------------

//Object name: HOGNOSEpoints
PVector[] HOGNOSEpoints = new PVector[]{
new PVector(-40,30,95),
new PVector(-160,-70,95),
new PVector(-40,-110,175),
new PVector(80,-70,95),
new PVector(-40,-110,-175),
new PVector(-25,-85,155),
new PVector(35,-65,115),
new PVector(-25,-15,115),
new PVector(-55,-15,115),
new PVector(-115,-65,115),
new PVector(-55,-85,155)
};

void drawHOGNOSE(){
pushMatrix();
rotateX(frameCount*PI/280);
rotateY(frameCount*PI/170);
rotateZ(frameCount*PI/90);
beginShape(TRIANGLES);
fill(0);
stroke(255);
vertex(HOGNOSEpoints[2].x, HOGNOSEpoints[2].y, HOGNOSEpoints[2].z);
vertex(HOGNOSEpoints[1].x, HOGNOSEpoints[1].y, HOGNOSEpoints[1].z);
vertex(HOGNOSEpoints[0].x, HOGNOSEpoints[0].y, HOGNOSEpoints[0].z);

vertex(HOGNOSEpoints[10].x, HOGNOSEpoints[10].y, HOGNOSEpoints[10].z);
vertex(HOGNOSEpoints[9].x, HOGNOSEpoints[9].y, HOGNOSEpoints[9].z);
vertex(HOGNOSEpoints[8].x, HOGNOSEpoints[8].y, HOGNOSEpoints[8].z);

vertex(HOGNOSEpoints[0].x, HOGNOSEpoints[0].y, HOGNOSEpoints[0].z);
vertex(HOGNOSEpoints[3].x, HOGNOSEpoints[3].y, HOGNOSEpoints[3].z);
vertex(HOGNOSEpoints[2].x, HOGNOSEpoints[2].y, HOGNOSEpoints[2].z);

vertex(HOGNOSEpoints[7].x, HOGNOSEpoints[7].y, HOGNOSEpoints[7].z);
vertex(HOGNOSEpoints[6].x, HOGNOSEpoints[6].y, HOGNOSEpoints[6].z);
vertex(HOGNOSEpoints[5].x, HOGNOSEpoints[5].y, HOGNOSEpoints[5].z);

vertex(HOGNOSEpoints[0].x, HOGNOSEpoints[0].y, HOGNOSEpoints[0].z);
vertex(HOGNOSEpoints[4].x, HOGNOSEpoints[4].y, HOGNOSEpoints[4].z);
vertex(HOGNOSEpoints[3].x, HOGNOSEpoints[3].y, HOGNOSEpoints[3].z);

vertex(HOGNOSEpoints[0].x, HOGNOSEpoints[0].y, HOGNOSEpoints[0].z);
vertex(HOGNOSEpoints[1].x, HOGNOSEpoints[1].y, HOGNOSEpoints[1].z);
vertex(HOGNOSEpoints[4].x, HOGNOSEpoints[4].y, HOGNOSEpoints[4].z);

vertex(HOGNOSEpoints[4].x, HOGNOSEpoints[4].y, HOGNOSEpoints[4].z);
vertex(HOGNOSEpoints[1].x, HOGNOSEpoints[1].y, HOGNOSEpoints[1].z);
vertex(HOGNOSEpoints[2].x, HOGNOSEpoints[2].y, HOGNOSEpoints[2].z);

vertex(HOGNOSEpoints[3].x, HOGNOSEpoints[3].y, HOGNOSEpoints[3].z);
vertex(HOGNOSEpoints[4].x, HOGNOSEpoints[4].y, HOGNOSEpoints[4].z);
vertex(HOGNOSEpoints[2].x, HOGNOSEpoints[2].y, HOGNOSEpoints[2].z);
endShape();
popMatrix();
    
}
//----------------------------------------------------------------

//Object name: FARMAMBApoints
PVector[] FARMAMBApoints = new PVector[]{
new PVector(-110,-20,-110),
new PVector(0,-20,110),
new PVector(-60,20,-110),
new PVector(60,20,-110),
new PVector(110,-20,-110),
new PVector(-11,-4,22),
new PVector(11,-4,22),
new PVector(0,0,0),
new PVector(0,-12,-108),
new PVector(-28,8,-108),
new PVector(28,8,-108)
};

void drawFARMAMBA(){
pushMatrix();
rotateX(frameCount*PI/280);
rotateY(frameCount*PI/170);
rotateZ(frameCount*PI/90);
beginShape(TRIANGLES);
fill(0);
stroke(255);
vertex(FARMAMBApoints[2].x, FARMAMBApoints[2].y, FARMAMBApoints[2].z);
vertex(FARMAMBApoints[1].x, FARMAMBApoints[1].y, FARMAMBApoints[1].z);
vertex(FARMAMBApoints[0].x, FARMAMBApoints[0].y, FARMAMBApoints[0].z);

vertex(FARMAMBApoints[1].x, FARMAMBApoints[1].y, FARMAMBApoints[1].z);
vertex(FARMAMBApoints[2].x, FARMAMBApoints[2].y, FARMAMBApoints[2].z);
vertex(FARMAMBApoints[3].x, FARMAMBApoints[3].y, FARMAMBApoints[3].z);

vertex(FARMAMBApoints[7].x, FARMAMBApoints[7].y, FARMAMBApoints[7].z);
vertex(FARMAMBApoints[6].x, FARMAMBApoints[6].y, FARMAMBApoints[6].z);
vertex(FARMAMBApoints[5].x, FARMAMBApoints[5].y, FARMAMBApoints[5].z);

vertex(FARMAMBApoints[3].x, FARMAMBApoints[3].y, FARMAMBApoints[3].z);
vertex(FARMAMBApoints[4].x, FARMAMBApoints[4].y, FARMAMBApoints[4].z);
vertex(FARMAMBApoints[1].x, FARMAMBApoints[1].y, FARMAMBApoints[1].z);

vertex(FARMAMBApoints[2].x, FARMAMBApoints[2].y, FARMAMBApoints[2].z);
vertex(FARMAMBApoints[0].x, FARMAMBApoints[0].y, FARMAMBApoints[0].z);
vertex(FARMAMBApoints[4].x, FARMAMBApoints[4].y, FARMAMBApoints[4].z);

vertex(FARMAMBApoints[4].x, FARMAMBApoints[4].y, FARMAMBApoints[4].z);
vertex(FARMAMBApoints[3].x, FARMAMBApoints[3].y, FARMAMBApoints[3].z);
vertex(FARMAMBApoints[2].x, FARMAMBApoints[2].y, FARMAMBApoints[2].z);

vertex(FARMAMBApoints[8].x, FARMAMBApoints[8].y, FARMAMBApoints[8].z);
vertex(FARMAMBApoints[10].x, FARMAMBApoints[10].y, FARMAMBApoints[10].z);
vertex(FARMAMBApoints[9].x, FARMAMBApoints[9].y, FARMAMBApoints[9].z);

vertex(FARMAMBApoints[0].x, FARMAMBApoints[0].y, FARMAMBApoints[0].z);
vertex(FARMAMBApoints[1].x, FARMAMBApoints[1].y, FARMAMBApoints[1].z);
vertex(FARMAMBApoints[4].x, FARMAMBApoints[4].y, FARMAMBApoints[4].z);
endShape();
popMatrix();
    
}
//----------------------------------------------------------------

//Object name: MAMBApoints
PVector[] MAMBApoints = new PVector[]{
new PVector(-110,-20,-110),
new PVector(0,-20,110),
new PVector(-60,20,-110),
new PVector(60,20,-110),
new PVector(110,-20,-110),
new PVector(-11,-4,22),
new PVector(11,-4,22),
new PVector(5,0,0),
new PVector(-5,0,0),
new PVector(-60,8,-108),
new PVector(-60,-8,-108),
new PVector(-76,-4,-108),
new PVector(60,-8,-108),
new PVector(60,8,-108),
new PVector(76,-4,-108),
new PVector(-28,8,-108),
new PVector(28,8,-108),
new PVector(-28,-12,-108),
new PVector(28,-12,-108),
new PVector(-20,-20,0),
new PVector(-40,-20,-70),
new PVector(-30,-20,-70),
new PVector(30,-20,-70),
new PVector(20,-20,0),
new PVector(40,-20,-70)
};

void drawMAMBA(){
pushMatrix();
rotateX(frameCount*PI/280);
rotateY(frameCount*PI/170);
rotateZ(frameCount*PI/90);
beginShape(TRIANGLES);
fill(0);
stroke(255);
vertex(MAMBApoints[2].x, MAMBApoints[2].y, MAMBApoints[2].z);
vertex(MAMBApoints[1].x, MAMBApoints[1].y, MAMBApoints[1].z);
vertex(MAMBApoints[0].x, MAMBApoints[0].y, MAMBApoints[0].z);

vertex(MAMBApoints[1].x, MAMBApoints[1].y, MAMBApoints[1].z);
vertex(MAMBApoints[2].x, MAMBApoints[2].y, MAMBApoints[2].z);
vertex(MAMBApoints[3].x, MAMBApoints[3].y, MAMBApoints[3].z);

vertex(MAMBApoints[7].x, MAMBApoints[7].y, MAMBApoints[7].z);
vertex(MAMBApoints[6].x, MAMBApoints[6].y, MAMBApoints[6].z);
vertex(MAMBApoints[5].x, MAMBApoints[5].y, MAMBApoints[5].z);

vertex(MAMBApoints[5].x, MAMBApoints[5].y, MAMBApoints[5].z);
vertex(MAMBApoints[8].x, MAMBApoints[8].y, MAMBApoints[8].z);
vertex(MAMBApoints[7].x, MAMBApoints[7].y, MAMBApoints[7].z);

vertex(MAMBApoints[3].x, MAMBApoints[3].y, MAMBApoints[3].z);
vertex(MAMBApoints[4].x, MAMBApoints[4].y, MAMBApoints[4].z);
vertex(MAMBApoints[1].x, MAMBApoints[1].y, MAMBApoints[1].z);

vertex(MAMBApoints[2].x, MAMBApoints[2].y, MAMBApoints[2].z);
vertex(MAMBApoints[0].x, MAMBApoints[0].y, MAMBApoints[0].z);
vertex(MAMBApoints[4].x, MAMBApoints[4].y, MAMBApoints[4].z);

vertex(MAMBApoints[4].x, MAMBApoints[4].y, MAMBApoints[4].z);
vertex(MAMBApoints[3].x, MAMBApoints[3].y, MAMBApoints[3].z);
vertex(MAMBApoints[2].x, MAMBApoints[2].y, MAMBApoints[2].z);

vertex(MAMBApoints[11].x, MAMBApoints[11].y, MAMBApoints[11].z);
vertex(MAMBApoints[10].x, MAMBApoints[10].y, MAMBApoints[10].z);
vertex(MAMBApoints[9].x, MAMBApoints[9].y, MAMBApoints[9].z);

vertex(MAMBApoints[14].x, MAMBApoints[14].y, MAMBApoints[14].z);
vertex(MAMBApoints[13].x, MAMBApoints[13].y, MAMBApoints[13].z);
vertex(MAMBApoints[12].x, MAMBApoints[12].y, MAMBApoints[12].z);

vertex(MAMBApoints[17].x, MAMBApoints[17].y, MAMBApoints[17].z);
vertex(MAMBApoints[16].x, MAMBApoints[16].y, MAMBApoints[16].z);
vertex(MAMBApoints[15].x, MAMBApoints[15].y, MAMBApoints[15].z);

vertex(MAMBApoints[18].x, MAMBApoints[18].y, MAMBApoints[18].z);
vertex(MAMBApoints[16].x, MAMBApoints[16].y, MAMBApoints[16].z);
vertex(MAMBApoints[17].x, MAMBApoints[17].y, MAMBApoints[17].z);

vertex(MAMBApoints[0].x, MAMBApoints[0].y, MAMBApoints[0].z);
vertex(MAMBApoints[1].x, MAMBApoints[1].y, MAMBApoints[1].z);
vertex(MAMBApoints[4].x, MAMBApoints[4].y, MAMBApoints[4].z);

vertex(MAMBApoints[20].x, MAMBApoints[20].y, MAMBApoints[20].z);
vertex(MAMBApoints[19].x, MAMBApoints[19].y, MAMBApoints[19].z);
vertex(MAMBApoints[21].x, MAMBApoints[21].y, MAMBApoints[21].z);

vertex(MAMBApoints[22].x, MAMBApoints[22].y, MAMBApoints[22].z);
vertex(MAMBApoints[23].x, MAMBApoints[23].y, MAMBApoints[23].z);
vertex(MAMBApoints[24].x, MAMBApoints[24].y, MAMBApoints[24].z);
endShape();
popMatrix();
    
}
//----------------------------------------------------------------

//Object name: FARMOCCASINpoints
PVector[] FARMOCCASINpoints = new PVector[]{
new PVector(75,-15,45),
new PVector(30,15,45),
new PVector(0,15,-105),
new PVector(90,-15,-105),
new PVector(-30,15,45),
new PVector(-75,-15,45),
new PVector(-90,-15,-105),
new PVector(0,-8,105),
new PVector(0,6,-105),
new PVector(-32,-3,-105),
new PVector(33,-3,-105)
};

void drawFARMOCCASIN(){
pushMatrix();
rotateX(frameCount*PI/280);
rotateY(frameCount*PI/170);
rotateZ(frameCount*PI/90);
beginShape(TRIANGLES);
fill(0);
stroke(255);
vertex(FARMOCCASINpoints[0].x, FARMOCCASINpoints[0].y, FARMOCCASINpoints[0].z);
vertex(FARMOCCASINpoints[1].x, FARMOCCASINpoints[1].y, FARMOCCASINpoints[1].z);
vertex(FARMOCCASINpoints[2].x, FARMOCCASINpoints[2].y, FARMOCCASINpoints[2].z);

vertex(FARMOCCASINpoints[2].x, FARMOCCASINpoints[2].y, FARMOCCASINpoints[2].z);
vertex(FARMOCCASINpoints[3].x, FARMOCCASINpoints[3].y, FARMOCCASINpoints[3].z);
vertex(FARMOCCASINpoints[0].x, FARMOCCASINpoints[0].y, FARMOCCASINpoints[0].z);

vertex(FARMOCCASINpoints[2].x, FARMOCCASINpoints[2].y, FARMOCCASINpoints[2].z);
vertex(FARMOCCASINpoints[4].x, FARMOCCASINpoints[4].y, FARMOCCASINpoints[4].z);
vertex(FARMOCCASINpoints[5].x, FARMOCCASINpoints[5].y, FARMOCCASINpoints[5].z);

vertex(FARMOCCASINpoints[5].x, FARMOCCASINpoints[5].y, FARMOCCASINpoints[5].z);
vertex(FARMOCCASINpoints[6].x, FARMOCCASINpoints[6].y, FARMOCCASINpoints[6].z);
vertex(FARMOCCASINpoints[2].x, FARMOCCASINpoints[2].y, FARMOCCASINpoints[2].z);

vertex(FARMOCCASINpoints[3].x, FARMOCCASINpoints[3].y, FARMOCCASINpoints[3].z);
vertex(FARMOCCASINpoints[6].x, FARMOCCASINpoints[6].y, FARMOCCASINpoints[6].z);
vertex(FARMOCCASINpoints[5].x, FARMOCCASINpoints[5].y, FARMOCCASINpoints[5].z);

vertex(FARMOCCASINpoints[3].x, FARMOCCASINpoints[3].y, FARMOCCASINpoints[3].z);
vertex(FARMOCCASINpoints[5].x, FARMOCCASINpoints[5].y, FARMOCCASINpoints[5].z);
vertex(FARMOCCASINpoints[0].x, FARMOCCASINpoints[0].y, FARMOCCASINpoints[0].z);

vertex(FARMOCCASINpoints[1].x, FARMOCCASINpoints[1].y, FARMOCCASINpoints[1].z);
vertex(FARMOCCASINpoints[4].x, FARMOCCASINpoints[4].y, FARMOCCASINpoints[4].z);
vertex(FARMOCCASINpoints[2].x, FARMOCCASINpoints[2].y, FARMOCCASINpoints[2].z);

vertex(FARMOCCASINpoints[3].x, FARMOCCASINpoints[3].y, FARMOCCASINpoints[3].z);
vertex(FARMOCCASINpoints[2].x, FARMOCCASINpoints[2].y, FARMOCCASINpoints[2].z);
vertex(FARMOCCASINpoints[6].x, FARMOCCASINpoints[6].y, FARMOCCASINpoints[6].z);

vertex(FARMOCCASINpoints[8].x, FARMOCCASINpoints[8].y, FARMOCCASINpoints[8].z);
vertex(FARMOCCASINpoints[9].x, FARMOCCASINpoints[9].y, FARMOCCASINpoints[9].z);
vertex(FARMOCCASINpoints[10].x, FARMOCCASINpoints[10].y, FARMOCCASINpoints[10].z);

vertex(FARMOCCASINpoints[1].x, FARMOCCASINpoints[1].y, FARMOCCASINpoints[1].z);
vertex(FARMOCCASINpoints[7].x, FARMOCCASINpoints[7].y, FARMOCCASINpoints[7].z);
vertex(FARMOCCASINpoints[4].x, FARMOCCASINpoints[4].y, FARMOCCASINpoints[4].z);

vertex(FARMOCCASINpoints[0].x, FARMOCCASINpoints[0].y, FARMOCCASINpoints[0].z);
vertex(FARMOCCASINpoints[7].x, FARMOCCASINpoints[7].y, FARMOCCASINpoints[7].z);
vertex(FARMOCCASINpoints[1].x, FARMOCCASINpoints[1].y, FARMOCCASINpoints[1].z);

vertex(FARMOCCASINpoints[4].x, FARMOCCASINpoints[4].y, FARMOCCASINpoints[4].z);
vertex(FARMOCCASINpoints[7].x, FARMOCCASINpoints[7].y, FARMOCCASINpoints[7].z);
vertex(FARMOCCASINpoints[5].x, FARMOCCASINpoints[5].y, FARMOCCASINpoints[5].z);

vertex(FARMOCCASINpoints[0].x, FARMOCCASINpoints[0].y, FARMOCCASINpoints[0].z);
vertex(FARMOCCASINpoints[5].x, FARMOCCASINpoints[5].y, FARMOCCASINpoints[5].z);
vertex(FARMOCCASINpoints[7].x, FARMOCCASINpoints[7].y, FARMOCCASINpoints[7].z);
endShape();
popMatrix();
    
}
//----------------------------------------------------------------

//Object name: MOCCASINpoints
PVector[] MOCCASINpoints = new PVector[]{
new PVector(75,-15,45),
new PVector(30,15,45),
new PVector(0,15,-105),
new PVector(90,-15,-105),
new PVector(-30,15,45),
new PVector(-75,-15,45),
new PVector(-90,-15,-105),
new PVector(0,-8,105),
new PVector(-6,-9,-105),
new PVector(-15,3,-105),
new PVector(-33,-3,-105),
new PVector(18,3,-105),
new PVector(9,-9,-105),
new PVector(33,-3,-105),
new PVector(10,9,61),
new PVector(-10,9,61),
new PVector(0,-1,87),
new PVector(3,15,-54),
new PVector(18,15,33),
new PVector(3,15,33),
new PVector(-18,15,33),
new PVector(-3,15,-54),
new PVector(-3,15,33)
};

void drawMOCCASIN(){
pushMatrix();
rotateX(frameCount*PI/280);
rotateY(frameCount*PI/170);
rotateZ(frameCount*PI/90);
beginShape(TRIANGLES);
fill(0);
stroke(255);
vertex(MOCCASINpoints[0].x, MOCCASINpoints[0].y, MOCCASINpoints[0].z);
vertex(MOCCASINpoints[1].x, MOCCASINpoints[1].y, MOCCASINpoints[1].z);
vertex(MOCCASINpoints[2].x, MOCCASINpoints[2].y, MOCCASINpoints[2].z);

vertex(MOCCASINpoints[2].x, MOCCASINpoints[2].y, MOCCASINpoints[2].z);
vertex(MOCCASINpoints[3].x, MOCCASINpoints[3].y, MOCCASINpoints[3].z);
vertex(MOCCASINpoints[0].x, MOCCASINpoints[0].y, MOCCASINpoints[0].z);

vertex(MOCCASINpoints[2].x, MOCCASINpoints[2].y, MOCCASINpoints[2].z);
vertex(MOCCASINpoints[4].x, MOCCASINpoints[4].y, MOCCASINpoints[4].z);
vertex(MOCCASINpoints[5].x, MOCCASINpoints[5].y, MOCCASINpoints[5].z);

vertex(MOCCASINpoints[5].x, MOCCASINpoints[5].y, MOCCASINpoints[5].z);
vertex(MOCCASINpoints[6].x, MOCCASINpoints[6].y, MOCCASINpoints[6].z);
vertex(MOCCASINpoints[2].x, MOCCASINpoints[2].y, MOCCASINpoints[2].z);

vertex(MOCCASINpoints[3].x, MOCCASINpoints[3].y, MOCCASINpoints[3].z);
vertex(MOCCASINpoints[6].x, MOCCASINpoints[6].y, MOCCASINpoints[6].z);
vertex(MOCCASINpoints[5].x, MOCCASINpoints[5].y, MOCCASINpoints[5].z);

vertex(MOCCASINpoints[3].x, MOCCASINpoints[3].y, MOCCASINpoints[3].z);
vertex(MOCCASINpoints[5].x, MOCCASINpoints[5].y, MOCCASINpoints[5].z);
vertex(MOCCASINpoints[0].x, MOCCASINpoints[0].y, MOCCASINpoints[0].z);

vertex(MOCCASINpoints[1].x, MOCCASINpoints[1].y, MOCCASINpoints[1].z);
vertex(MOCCASINpoints[4].x, MOCCASINpoints[4].y, MOCCASINpoints[4].z);
vertex(MOCCASINpoints[2].x, MOCCASINpoints[2].y, MOCCASINpoints[2].z);

vertex(MOCCASINpoints[17].x, MOCCASINpoints[17].y, MOCCASINpoints[17].z);
vertex(MOCCASINpoints[18].x, MOCCASINpoints[18].y, MOCCASINpoints[18].z);
vertex(MOCCASINpoints[19].x, MOCCASINpoints[19].y, MOCCASINpoints[19].z);

vertex(MOCCASINpoints[20].x, MOCCASINpoints[20].y, MOCCASINpoints[20].z);
vertex(MOCCASINpoints[21].x, MOCCASINpoints[21].y, MOCCASINpoints[21].z);
vertex(MOCCASINpoints[22].x, MOCCASINpoints[22].y, MOCCASINpoints[22].z);

vertex(MOCCASINpoints[3].x, MOCCASINpoints[3].y, MOCCASINpoints[3].z);
vertex(MOCCASINpoints[2].x, MOCCASINpoints[2].y, MOCCASINpoints[2].z);
vertex(MOCCASINpoints[6].x, MOCCASINpoints[6].y, MOCCASINpoints[6].z);

vertex(MOCCASINpoints[8].x, MOCCASINpoints[8].y, MOCCASINpoints[8].z);
vertex(MOCCASINpoints[9].x, MOCCASINpoints[9].y, MOCCASINpoints[9].z);
vertex(MOCCASINpoints[10].x, MOCCASINpoints[10].y, MOCCASINpoints[10].z);

vertex(MOCCASINpoints[11].x, MOCCASINpoints[11].y, MOCCASINpoints[11].z);
vertex(MOCCASINpoints[12].x, MOCCASINpoints[12].y, MOCCASINpoints[12].z);
vertex(MOCCASINpoints[13].x, MOCCASINpoints[13].y, MOCCASINpoints[13].z);

vertex(MOCCASINpoints[1].x, MOCCASINpoints[1].y, MOCCASINpoints[1].z);
vertex(MOCCASINpoints[7].x, MOCCASINpoints[7].y, MOCCASINpoints[7].z);
vertex(MOCCASINpoints[4].x, MOCCASINpoints[4].y, MOCCASINpoints[4].z);

vertex(MOCCASINpoints[0].x, MOCCASINpoints[0].y, MOCCASINpoints[0].z);
vertex(MOCCASINpoints[7].x, MOCCASINpoints[7].y, MOCCASINpoints[7].z);
vertex(MOCCASINpoints[1].x, MOCCASINpoints[1].y, MOCCASINpoints[1].z);

vertex(MOCCASINpoints[4].x, MOCCASINpoints[4].y, MOCCASINpoints[4].z);
vertex(MOCCASINpoints[7].x, MOCCASINpoints[7].y, MOCCASINpoints[7].z);
vertex(MOCCASINpoints[5].x, MOCCASINpoints[5].y, MOCCASINpoints[5].z);

vertex(MOCCASINpoints[0].x, MOCCASINpoints[0].y, MOCCASINpoints[0].z);
vertex(MOCCASINpoints[5].x, MOCCASINpoints[5].y, MOCCASINpoints[5].z);
vertex(MOCCASINpoints[7].x, MOCCASINpoints[7].y, MOCCASINpoints[7].z);

vertex(MOCCASINpoints[16].x, MOCCASINpoints[16].y, MOCCASINpoints[16].z);
vertex(MOCCASINpoints[15].x, MOCCASINpoints[15].y, MOCCASINpoints[15].z);
vertex(MOCCASINpoints[14].x, MOCCASINpoints[14].y, MOCCASINpoints[14].z);
endShape();
popMatrix();
    
}
//----------------------------------------------------------------

//Object name: FARGECKOpoints
PVector[] FARGECKOpoints = new PVector[]{
new PVector(-60,30,-100),
new PVector(60,30,-100),
new PVector(120,0,-60),
new PVector(60,-30,-100),
new PVector(-60,-30,-100),
new PVector(-120,0,-60),
new PVector(-30,0,100),
new PVector(30,0,100),
new PVector(-30,20,-100),
new PVector(30,20,-100),
new PVector(-30,-20,-100),
new PVector(30,-20,-100)
};

void drawFARGECKO(){
pushMatrix();
rotateX(frameCount*PI/280);
rotateY(frameCount*PI/170);
rotateZ(frameCount*PI/90);
beginShape(TRIANGLES);
fill(0);
stroke(255);
vertex(FARGECKOpoints[6].x, FARGECKOpoints[6].y, FARGECKOpoints[6].z);
vertex(FARGECKOpoints[0].x, FARGECKOpoints[0].y, FARGECKOpoints[0].z);
vertex(FARGECKOpoints[1].x, FARGECKOpoints[1].y, FARGECKOpoints[1].z);

vertex(FARGECKOpoints[1].x, FARGECKOpoints[1].y, FARGECKOpoints[1].z);
vertex(FARGECKOpoints[7].x, FARGECKOpoints[7].y, FARGECKOpoints[7].z);
vertex(FARGECKOpoints[6].x, FARGECKOpoints[6].y, FARGECKOpoints[6].z);

vertex(FARGECKOpoints[2].x, FARGECKOpoints[2].y, FARGECKOpoints[2].z);
vertex(FARGECKOpoints[7].x, FARGECKOpoints[7].y, FARGECKOpoints[7].z);
vertex(FARGECKOpoints[1].x, FARGECKOpoints[1].y, FARGECKOpoints[1].z);

vertex(FARGECKOpoints[6].x, FARGECKOpoints[6].y, FARGECKOpoints[6].z);
vertex(FARGECKOpoints[5].x, FARGECKOpoints[5].y, FARGECKOpoints[5].z);
vertex(FARGECKOpoints[0].x, FARGECKOpoints[0].y, FARGECKOpoints[0].z);

vertex(FARGECKOpoints[5].x, FARGECKOpoints[5].y, FARGECKOpoints[5].z);
vertex(FARGECKOpoints[6].x, FARGECKOpoints[6].y, FARGECKOpoints[6].z);
vertex(FARGECKOpoints[4].x, FARGECKOpoints[4].y, FARGECKOpoints[4].z);

vertex(FARGECKOpoints[3].x, FARGECKOpoints[3].y, FARGECKOpoints[3].z);
vertex(FARGECKOpoints[7].x, FARGECKOpoints[7].y, FARGECKOpoints[7].z);
vertex(FARGECKOpoints[2].x, FARGECKOpoints[2].y, FARGECKOpoints[2].z);

vertex(FARGECKOpoints[5].x, FARGECKOpoints[5].y, FARGECKOpoints[5].z);
vertex(FARGECKOpoints[4].x, FARGECKOpoints[4].y, FARGECKOpoints[4].z);
vertex(FARGECKOpoints[0].x, FARGECKOpoints[0].y, FARGECKOpoints[0].z);

vertex(FARGECKOpoints[1].x, FARGECKOpoints[1].y, FARGECKOpoints[1].z);
vertex(FARGECKOpoints[3].x, FARGECKOpoints[3].y, FARGECKOpoints[3].z);
vertex(FARGECKOpoints[2].x, FARGECKOpoints[2].y, FARGECKOpoints[2].z);

vertex(FARGECKOpoints[4].x, FARGECKOpoints[4].y, FARGECKOpoints[4].z);
vertex(FARGECKOpoints[6].x, FARGECKOpoints[6].y, FARGECKOpoints[6].z);
vertex(FARGECKOpoints[7].x, FARGECKOpoints[7].y, FARGECKOpoints[7].z);

vertex(FARGECKOpoints[7].x, FARGECKOpoints[7].y, FARGECKOpoints[7].z);
vertex(FARGECKOpoints[3].x, FARGECKOpoints[3].y, FARGECKOpoints[3].z);
vertex(FARGECKOpoints[4].x, FARGECKOpoints[4].y, FARGECKOpoints[4].z);

vertex(FARGECKOpoints[4].x, FARGECKOpoints[4].y, FARGECKOpoints[4].z);
vertex(FARGECKOpoints[3].x, FARGECKOpoints[3].y, FARGECKOpoints[3].z);
vertex(FARGECKOpoints[1].x, FARGECKOpoints[1].y, FARGECKOpoints[1].z);

vertex(FARGECKOpoints[1].x, FARGECKOpoints[1].y, FARGECKOpoints[1].z);
vertex(FARGECKOpoints[0].x, FARGECKOpoints[0].y, FARGECKOpoints[0].z);
vertex(FARGECKOpoints[4].x, FARGECKOpoints[4].y, FARGECKOpoints[4].z);

vertex(FARGECKOpoints[11].x, FARGECKOpoints[11].y, FARGECKOpoints[11].z);
vertex(FARGECKOpoints[9].x, FARGECKOpoints[9].y, FARGECKOpoints[9].z);
vertex(FARGECKOpoints[8].x, FARGECKOpoints[8].y, FARGECKOpoints[8].z);

vertex(FARGECKOpoints[8].x, FARGECKOpoints[8].y, FARGECKOpoints[8].z);
vertex(FARGECKOpoints[10].x, FARGECKOpoints[10].y, FARGECKOpoints[10].z);
vertex(FARGECKOpoints[11].x, FARGECKOpoints[11].y, FARGECKOpoints[11].z);
endShape();
popMatrix();
    
}
//----------------------------------------------------------------

//Object name: GECKOpoints
PVector[] GECKOpoints = new PVector[]{
new PVector(-60,30,-100),
new PVector(60,30,-100),
new PVector(120,0,-60),
new PVector(60,-30,-100),
new PVector(-60,-30,-100),
new PVector(-120,0,-60),
new PVector(-30,0,100),
new PVector(30,0,100),
new PVector(10,-6,40),
new PVector(25,-27,-80),
new PVector(10,-27,-80),
new PVector(-10,-27,-80),
new PVector(-25,-27,-80),
new PVector(-10,-6,40),
new PVector(-30,20,-100),
new PVector(30,20,-100),
new PVector(-30,-20,-100),
new PVector(30,-20,-100),
new PVector(-90,0,-80),
new PVector(-72,10,-92),
new PVector(-72,-10,-92),
new PVector(72,10,-92),
new PVector(72,-10,-92),
new PVector(90,0,-80)
};

void drawGECKO(){
pushMatrix();
rotateX(frameCount*PI/280);
rotateY(frameCount*PI/170);
rotateZ(frameCount*PI/90);
beginShape(TRIANGLES);
fill(0);
stroke(255);
vertex(GECKOpoints[6].x, GECKOpoints[6].y, GECKOpoints[6].z);
vertex(GECKOpoints[0].x, GECKOpoints[0].y, GECKOpoints[0].z);
vertex(GECKOpoints[1].x, GECKOpoints[1].y, GECKOpoints[1].z);

vertex(GECKOpoints[1].x, GECKOpoints[1].y, GECKOpoints[1].z);
vertex(GECKOpoints[7].x, GECKOpoints[7].y, GECKOpoints[7].z);
vertex(GECKOpoints[6].x, GECKOpoints[6].y, GECKOpoints[6].z);

vertex(GECKOpoints[4].x, GECKOpoints[4].y, GECKOpoints[4].z);
vertex(GECKOpoints[6].x, GECKOpoints[6].y, GECKOpoints[6].z);
vertex(GECKOpoints[7].x, GECKOpoints[7].y, GECKOpoints[7].z);

vertex(GECKOpoints[7].x, GECKOpoints[7].y, GECKOpoints[7].z);
vertex(GECKOpoints[3].x, GECKOpoints[3].y, GECKOpoints[3].z);
vertex(GECKOpoints[4].x, GECKOpoints[4].y, GECKOpoints[4].z);

vertex(GECKOpoints[8].x, GECKOpoints[8].y, GECKOpoints[8].z);
vertex(GECKOpoints[9].x, GECKOpoints[9].y, GECKOpoints[9].z);
vertex(GECKOpoints[10].x, GECKOpoints[10].y, GECKOpoints[10].z);

vertex(GECKOpoints[11].x, GECKOpoints[11].y, GECKOpoints[11].z);
vertex(GECKOpoints[12].x, GECKOpoints[12].y, GECKOpoints[12].z);
vertex(GECKOpoints[13].x, GECKOpoints[13].y, GECKOpoints[13].z);

vertex(GECKOpoints[5].x, GECKOpoints[5].y, GECKOpoints[5].z);
vertex(GECKOpoints[4].x, GECKOpoints[4].y, GECKOpoints[4].z);
vertex(GECKOpoints[0].x, GECKOpoints[0].y, GECKOpoints[0].z);

vertex(GECKOpoints[20].x, GECKOpoints[20].y, GECKOpoints[20].z);
vertex(GECKOpoints[19].x, GECKOpoints[19].y, GECKOpoints[19].z);
vertex(GECKOpoints[18].x, GECKOpoints[18].y, GECKOpoints[18].z);

vertex(GECKOpoints[1].x, GECKOpoints[1].y, GECKOpoints[1].z);
vertex(GECKOpoints[3].x, GECKOpoints[3].y, GECKOpoints[3].z);
vertex(GECKOpoints[2].x, GECKOpoints[2].y, GECKOpoints[2].z);

vertex(GECKOpoints[21].x, GECKOpoints[21].y, GECKOpoints[21].z);
vertex(GECKOpoints[22].x, GECKOpoints[22].y, GECKOpoints[22].z);
vertex(GECKOpoints[23].x, GECKOpoints[23].y, GECKOpoints[23].z);

vertex(GECKOpoints[2].x, GECKOpoints[2].y, GECKOpoints[2].z);
vertex(GECKOpoints[7].x, GECKOpoints[7].y, GECKOpoints[7].z);
vertex(GECKOpoints[1].x, GECKOpoints[1].y, GECKOpoints[1].z);

vertex(GECKOpoints[6].x, GECKOpoints[6].y, GECKOpoints[6].z);
vertex(GECKOpoints[5].x, GECKOpoints[5].y, GECKOpoints[5].z);
vertex(GECKOpoints[0].x, GECKOpoints[0].y, GECKOpoints[0].z);

vertex(GECKOpoints[5].x, GECKOpoints[5].y, GECKOpoints[5].z);
vertex(GECKOpoints[6].x, GECKOpoints[6].y, GECKOpoints[6].z);
vertex(GECKOpoints[4].x, GECKOpoints[4].y, GECKOpoints[4].z);

vertex(GECKOpoints[3].x, GECKOpoints[3].y, GECKOpoints[3].z);
vertex(GECKOpoints[7].x, GECKOpoints[7].y, GECKOpoints[7].z);
vertex(GECKOpoints[2].x, GECKOpoints[2].y, GECKOpoints[2].z);

vertex(GECKOpoints[4].x, GECKOpoints[4].y, GECKOpoints[4].z);
vertex(GECKOpoints[3].x, GECKOpoints[3].y, GECKOpoints[3].z);
vertex(GECKOpoints[1].x, GECKOpoints[1].y, GECKOpoints[1].z);

vertex(GECKOpoints[1].x, GECKOpoints[1].y, GECKOpoints[1].z);
vertex(GECKOpoints[0].x, GECKOpoints[0].y, GECKOpoints[0].z);
vertex(GECKOpoints[4].x, GECKOpoints[4].y, GECKOpoints[4].z);

vertex(GECKOpoints[17].x, GECKOpoints[17].y, GECKOpoints[17].z);
vertex(GECKOpoints[15].x, GECKOpoints[15].y, GECKOpoints[15].z);
vertex(GECKOpoints[14].x, GECKOpoints[14].y, GECKOpoints[14].z);

vertex(GECKOpoints[14].x, GECKOpoints[14].y, GECKOpoints[14].z);
vertex(GECKOpoints[16].x, GECKOpoints[16].y, GECKOpoints[16].z);
vertex(GECKOpoints[17].x, GECKOpoints[17].y, GECKOpoints[17].z);
endShape();
popMatrix();
    
}
//----------------------------------------------------------------

//Object name: KRAITpoints
PVector[] KRAITpoints = new PVector[]{
new PVector(0,40,-100),
new PVector(-100,10,-30),
new PVector(-100,-10,-30),
new PVector(0,-40,-100),
new PVector(100,-10,-30),
new PVector(100,10,-30),
new PVector(0,0,100),
new PVector(0,20,-100),
new PVector(-60,0,-58),
new PVector(0,-20,-100),
new PVector(60,0,-58),
new PVector(-100,0,100),
new PVector(100,0,100)
};

void drawKRAIT(){
pushMatrix();
rotateX(frameCount*PI/280);
rotateY(frameCount*PI/170);
rotateZ(frameCount*PI/90);
beginShape(TRIANGLES);
fill(0);
stroke(255);
vertex(KRAITpoints[5].x, KRAITpoints[5].y, KRAITpoints[5].z);
vertex(KRAITpoints[12].x, KRAITpoints[12].y, KRAITpoints[12].z);
vertex(KRAITpoints[4].x, KRAITpoints[4].y, KRAITpoints[4].z);

vertex(KRAITpoints[1].x, KRAITpoints[1].y, KRAITpoints[1].z);
vertex(KRAITpoints[2].x, KRAITpoints[2].y, KRAITpoints[2].z);
vertex(KRAITpoints[11].x, KRAITpoints[11].y, KRAITpoints[11].z);

vertex(KRAITpoints[4].x, KRAITpoints[4].y, KRAITpoints[4].z);
vertex(KRAITpoints[5].x, KRAITpoints[5].y, KRAITpoints[5].z);
vertex(KRAITpoints[0].x, KRAITpoints[0].y, KRAITpoints[0].z);

vertex(KRAITpoints[3].x, KRAITpoints[3].y, KRAITpoints[3].z);
vertex(KRAITpoints[4].x, KRAITpoints[4].y, KRAITpoints[4].z);
vertex(KRAITpoints[0].x, KRAITpoints[0].y, KRAITpoints[0].z);

vertex(KRAITpoints[2].x, KRAITpoints[2].y, KRAITpoints[2].z);
vertex(KRAITpoints[3].x, KRAITpoints[3].y, KRAITpoints[3].z);
vertex(KRAITpoints[0].x, KRAITpoints[0].y, KRAITpoints[0].z);

vertex(KRAITpoints[1].x, KRAITpoints[1].y, KRAITpoints[1].z);
vertex(KRAITpoints[2].x, KRAITpoints[2].y, KRAITpoints[2].z);
vertex(KRAITpoints[0].x, KRAITpoints[0].y, KRAITpoints[0].z);

vertex(KRAITpoints[7].x, KRAITpoints[7].y, KRAITpoints[7].z);
vertex(KRAITpoints[9].x, KRAITpoints[9].y, KRAITpoints[9].z);
vertex(KRAITpoints[10].x, KRAITpoints[10].y, KRAITpoints[10].z);

vertex(KRAITpoints[7].x, KRAITpoints[7].y, KRAITpoints[7].z);
vertex(KRAITpoints[8].x, KRAITpoints[8].y, KRAITpoints[8].z);
vertex(KRAITpoints[9].x, KRAITpoints[9].y, KRAITpoints[9].z);

vertex(KRAITpoints[0].x, KRAITpoints[0].y, KRAITpoints[0].z);
vertex(KRAITpoints[5].x, KRAITpoints[5].y, KRAITpoints[5].z);
vertex(KRAITpoints[6].x, KRAITpoints[6].y, KRAITpoints[6].z);

vertex(KRAITpoints[0].x, KRAITpoints[0].y, KRAITpoints[0].z);
vertex(KRAITpoints[6].x, KRAITpoints[6].y, KRAITpoints[6].z);
vertex(KRAITpoints[1].x, KRAITpoints[1].y, KRAITpoints[1].z);

vertex(KRAITpoints[5].x, KRAITpoints[5].y, KRAITpoints[5].z);
vertex(KRAITpoints[4].x, KRAITpoints[4].y, KRAITpoints[4].z);
vertex(KRAITpoints[6].x, KRAITpoints[6].y, KRAITpoints[6].z);

vertex(KRAITpoints[1].x, KRAITpoints[1].y, KRAITpoints[1].z);
vertex(KRAITpoints[6].x, KRAITpoints[6].y, KRAITpoints[6].z);
vertex(KRAITpoints[2].x, KRAITpoints[2].y, KRAITpoints[2].z);

vertex(KRAITpoints[6].x, KRAITpoints[6].y, KRAITpoints[6].z);
vertex(KRAITpoints[4].x, KRAITpoints[4].y, KRAITpoints[4].z);
vertex(KRAITpoints[3].x, KRAITpoints[3].y, KRAITpoints[3].z);

vertex(KRAITpoints[6].x, KRAITpoints[6].y, KRAITpoints[6].z);
vertex(KRAITpoints[3].x, KRAITpoints[3].y, KRAITpoints[3].z);
vertex(KRAITpoints[2].x, KRAITpoints[2].y, KRAITpoints[2].z);

vertex(KRAITpoints[5].x, KRAITpoints[5].y, KRAITpoints[5].z);
vertex(KRAITpoints[4].x, KRAITpoints[4].y, KRAITpoints[4].z);
vertex(KRAITpoints[12].x, KRAITpoints[12].y, KRAITpoints[12].z);

vertex(KRAITpoints[1].x, KRAITpoints[1].y, KRAITpoints[1].z);
vertex(KRAITpoints[11].x, KRAITpoints[11].y, KRAITpoints[11].z);
vertex(KRAITpoints[2].x, KRAITpoints[2].y, KRAITpoints[2].z);
endShape();
popMatrix();
    
}
//----------------------------------------------------------------

//Object name: FARMORAYpoints
PVector[] FARMORAYpoints = new PVector[]{
new PVector(0,-25,85),
new PVector(-110,-25,25),
new PVector(-60,25,25),
new PVector(-30,-25,-85),
new PVector(60,25,25),
new PVector(110,-25,25),
new PVector(30,-25,-85)
};

void drawFARMORAY(){
pushMatrix();
rotateX(frameCount*PI/280);
rotateY(frameCount*PI/170);
rotateZ(frameCount*PI/90);
beginShape(TRIANGLES);
fill(0);
stroke(255);
vertex(FARMORAYpoints[0].x, FARMORAYpoints[0].y, FARMORAYpoints[0].z);
vertex(FARMORAYpoints[1].x, FARMORAYpoints[1].y, FARMORAYpoints[1].z);
vertex(FARMORAYpoints[2].x, FARMORAYpoints[2].y, FARMORAYpoints[2].z);

vertex(FARMORAYpoints[0].x, FARMORAYpoints[0].y, FARMORAYpoints[0].z);
vertex(FARMORAYpoints[2].x, FARMORAYpoints[2].y, FARMORAYpoints[2].z);
vertex(FARMORAYpoints[4].x, FARMORAYpoints[4].y, FARMORAYpoints[4].z);

vertex(FARMORAYpoints[0].x, FARMORAYpoints[0].y, FARMORAYpoints[0].z);
vertex(FARMORAYpoints[4].x, FARMORAYpoints[4].y, FARMORAYpoints[4].z);
vertex(FARMORAYpoints[5].x, FARMORAYpoints[5].y, FARMORAYpoints[5].z);

vertex(FARMORAYpoints[2].x, FARMORAYpoints[2].y, FARMORAYpoints[2].z);
vertex(FARMORAYpoints[3].x, FARMORAYpoints[3].y, FARMORAYpoints[3].z);
vertex(FARMORAYpoints[4].x, FARMORAYpoints[4].y, FARMORAYpoints[4].z);

vertex(FARMORAYpoints[4].x, FARMORAYpoints[4].y, FARMORAYpoints[4].z);
vertex(FARMORAYpoints[3].x, FARMORAYpoints[3].y, FARMORAYpoints[3].z);
vertex(FARMORAYpoints[6].x, FARMORAYpoints[6].y, FARMORAYpoints[6].z);

vertex(FARMORAYpoints[4].x, FARMORAYpoints[4].y, FARMORAYpoints[4].z);
vertex(FARMORAYpoints[6].x, FARMORAYpoints[6].y, FARMORAYpoints[6].z);
vertex(FARMORAYpoints[5].x, FARMORAYpoints[5].y, FARMORAYpoints[5].z);

vertex(FARMORAYpoints[3].x, FARMORAYpoints[3].y, FARMORAYpoints[3].z);
vertex(FARMORAYpoints[2].x, FARMORAYpoints[2].y, FARMORAYpoints[2].z);
vertex(FARMORAYpoints[1].x, FARMORAYpoints[1].y, FARMORAYpoints[1].z);

vertex(FARMORAYpoints[3].x, FARMORAYpoints[3].y, FARMORAYpoints[3].z);
vertex(FARMORAYpoints[1].x, FARMORAYpoints[1].y, FARMORAYpoints[1].z);
vertex(FARMORAYpoints[0].x, FARMORAYpoints[0].y, FARMORAYpoints[0].z);

vertex(FARMORAYpoints[6].x, FARMORAYpoints[6].y, FARMORAYpoints[6].z);
vertex(FARMORAYpoints[3].x, FARMORAYpoints[3].y, FARMORAYpoints[3].z);
vertex(FARMORAYpoints[0].x, FARMORAYpoints[0].y, FARMORAYpoints[0].z);

vertex(FARMORAYpoints[6].x, FARMORAYpoints[6].y, FARMORAYpoints[6].z);
vertex(FARMORAYpoints[0].x, FARMORAYpoints[0].y, FARMORAYpoints[0].z);
vertex(FARMORAYpoints[5].x, FARMORAYpoints[5].y, FARMORAYpoints[5].z);
endShape();
popMatrix();
    
}
//----------------------------------------------------------------

//Object name: MORAYpoints
PVector[] MORAYpoints = new PVector[]{
new PVector(0,-25,85),
new PVector(-110,-25,25),
new PVector(-60,25,25),
new PVector(-30,-25,-85),
new PVector(60,25,25),
new PVector(110,-25,25),
new PVector(30,-25,-85),
new PVector(0,-9,65),
new PVector(-20,11,41),
new PVector(20,11,41),
new PVector(-25,-25,-65),
new PVector(-10,-25,-85),
new PVector(10,-25,-85),
new PVector(25,-25,-65)
};

void drawMORAY(){
pushMatrix();
rotateX(frameCount*PI/280);
rotateY(frameCount*PI/170);
rotateZ(frameCount*PI/90);
beginShape(TRIANGLES);
fill(0);
stroke(255);
vertex(MORAYpoints[0].x, MORAYpoints[0].y, MORAYpoints[0].z);
vertex(MORAYpoints[1].x, MORAYpoints[1].y, MORAYpoints[1].z);
vertex(MORAYpoints[2].x, MORAYpoints[2].y, MORAYpoints[2].z);

vertex(MORAYpoints[0].x, MORAYpoints[0].y, MORAYpoints[0].z);
vertex(MORAYpoints[2].x, MORAYpoints[2].y, MORAYpoints[2].z);
vertex(MORAYpoints[4].x, MORAYpoints[4].y, MORAYpoints[4].z);

vertex(MORAYpoints[7].x, MORAYpoints[7].y, MORAYpoints[7].z);
vertex(MORAYpoints[8].x, MORAYpoints[8].y, MORAYpoints[8].z);
vertex(MORAYpoints[9].x, MORAYpoints[9].y, MORAYpoints[9].z);

vertex(MORAYpoints[0].x, MORAYpoints[0].y, MORAYpoints[0].z);
vertex(MORAYpoints[4].x, MORAYpoints[4].y, MORAYpoints[4].z);
vertex(MORAYpoints[5].x, MORAYpoints[5].y, MORAYpoints[5].z);

vertex(MORAYpoints[2].x, MORAYpoints[2].y, MORAYpoints[2].z);
vertex(MORAYpoints[3].x, MORAYpoints[3].y, MORAYpoints[3].z);
vertex(MORAYpoints[4].x, MORAYpoints[4].y, MORAYpoints[4].z);

vertex(MORAYpoints[4].x, MORAYpoints[4].y, MORAYpoints[4].z);
vertex(MORAYpoints[3].x, MORAYpoints[3].y, MORAYpoints[3].z);
vertex(MORAYpoints[6].x, MORAYpoints[6].y, MORAYpoints[6].z);

vertex(MORAYpoints[4].x, MORAYpoints[4].y, MORAYpoints[4].z);
vertex(MORAYpoints[6].x, MORAYpoints[6].y, MORAYpoints[6].z);
vertex(MORAYpoints[5].x, MORAYpoints[5].y, MORAYpoints[5].z);

vertex(MORAYpoints[3].x, MORAYpoints[3].y, MORAYpoints[3].z);
vertex(MORAYpoints[2].x, MORAYpoints[2].y, MORAYpoints[2].z);
vertex(MORAYpoints[1].x, MORAYpoints[1].y, MORAYpoints[1].z);

vertex(MORAYpoints[3].x, MORAYpoints[3].y, MORAYpoints[3].z);
vertex(MORAYpoints[1].x, MORAYpoints[1].y, MORAYpoints[1].z);
vertex(MORAYpoints[0].x, MORAYpoints[0].y, MORAYpoints[0].z);

vertex(MORAYpoints[6].x, MORAYpoints[6].y, MORAYpoints[6].z);
vertex(MORAYpoints[3].x, MORAYpoints[3].y, MORAYpoints[3].z);
vertex(MORAYpoints[0].x, MORAYpoints[0].y, MORAYpoints[0].z);

vertex(MORAYpoints[6].x, MORAYpoints[6].y, MORAYpoints[6].z);
vertex(MORAYpoints[0].x, MORAYpoints[0].y, MORAYpoints[0].z);
vertex(MORAYpoints[5].x, MORAYpoints[5].y, MORAYpoints[5].z);

vertex(MORAYpoints[3].x, MORAYpoints[3].y, MORAYpoints[3].z);
vertex(MORAYpoints[10].x, MORAYpoints[10].y, MORAYpoints[10].z);
vertex(MORAYpoints[11].x, MORAYpoints[11].y, MORAYpoints[11].z);

vertex(MORAYpoints[12].x, MORAYpoints[12].y, MORAYpoints[12].z);
vertex(MORAYpoints[13].x, MORAYpoints[13].y, MORAYpoints[13].z);
vertex(MORAYpoints[6].x, MORAYpoints[6].y, MORAYpoints[6].z);
endShape();
popMatrix();
    
}
//----------------------------------------------------------------

//Object name: FARORBITSHUTTLEpoints
PVector[] FARORBITSHUTTLEpoints = new PVector[]{
new PVector(-60,-60,-120),
new PVector(-60,60,-120),
new PVector(60,60,-120),
new PVector(60,-60,-120),
new PVector(50,0,80),
new PVector(0,-50,80),
new PVector(0,50,80),
new PVector(-50,0,80),
new PVector(0,-20,120),
new PVector(0,20,-120),
new PVector(0,-20,-120),
new PVector(20,0,-120)
};

void drawFARORBITSHUTTLE(){
pushMatrix();
rotateX(frameCount*PI/280);
rotateY(frameCount*PI/170);
rotateZ(frameCount*PI/90);
beginShape(TRIANGLES);
fill(0);
stroke(255);
vertex(FARORBITSHUTTLEpoints[2].x, FARORBITSHUTTLEpoints[2].y, FARORBITSHUTTLEpoints[2].z);
vertex(FARORBITSHUTTLEpoints[1].x, FARORBITSHUTTLEpoints[1].y, FARORBITSHUTTLEpoints[1].z);
vertex(FARORBITSHUTTLEpoints[0].x, FARORBITSHUTTLEpoints[0].y, FARORBITSHUTTLEpoints[0].z);

vertex(FARORBITSHUTTLEpoints[2].x, FARORBITSHUTTLEpoints[2].y, FARORBITSHUTTLEpoints[2].z);
vertex(FARORBITSHUTTLEpoints[0].x, FARORBITSHUTTLEpoints[0].y, FARORBITSHUTTLEpoints[0].z);
vertex(FARORBITSHUTTLEpoints[3].x, FARORBITSHUTTLEpoints[3].y, FARORBITSHUTTLEpoints[3].z);

vertex(FARORBITSHUTTLEpoints[10].x, FARORBITSHUTTLEpoints[10].y, FARORBITSHUTTLEpoints[10].z);
vertex(FARORBITSHUTTLEpoints[11].x, FARORBITSHUTTLEpoints[11].y, FARORBITSHUTTLEpoints[11].z);
vertex(FARORBITSHUTTLEpoints[9].x, FARORBITSHUTTLEpoints[9].y, FARORBITSHUTTLEpoints[9].z);

vertex(FARORBITSHUTTLEpoints[3].x, FARORBITSHUTTLEpoints[3].y, FARORBITSHUTTLEpoints[3].z);
vertex(FARORBITSHUTTLEpoints[4].x, FARORBITSHUTTLEpoints[4].y, FARORBITSHUTTLEpoints[4].z);
vertex(FARORBITSHUTTLEpoints[2].x, FARORBITSHUTTLEpoints[2].y, FARORBITSHUTTLEpoints[2].z);

vertex(FARORBITSHUTTLEpoints[3].x, FARORBITSHUTTLEpoints[3].y, FARORBITSHUTTLEpoints[3].z);
vertex(FARORBITSHUTTLEpoints[0].x, FARORBITSHUTTLEpoints[0].y, FARORBITSHUTTLEpoints[0].z);
vertex(FARORBITSHUTTLEpoints[5].x, FARORBITSHUTTLEpoints[5].y, FARORBITSHUTTLEpoints[5].z);

vertex(FARORBITSHUTTLEpoints[1].x, FARORBITSHUTTLEpoints[1].y, FARORBITSHUTTLEpoints[1].z);
vertex(FARORBITSHUTTLEpoints[2].x, FARORBITSHUTTLEpoints[2].y, FARORBITSHUTTLEpoints[2].z);
vertex(FARORBITSHUTTLEpoints[6].x, FARORBITSHUTTLEpoints[6].y, FARORBITSHUTTLEpoints[6].z);

vertex(FARORBITSHUTTLEpoints[1].x, FARORBITSHUTTLEpoints[1].y, FARORBITSHUTTLEpoints[1].z);
vertex(FARORBITSHUTTLEpoints[7].x, FARORBITSHUTTLEpoints[7].y, FARORBITSHUTTLEpoints[7].z);
vertex(FARORBITSHUTTLEpoints[0].x, FARORBITSHUTTLEpoints[0].y, FARORBITSHUTTLEpoints[0].z);

vertex(FARORBITSHUTTLEpoints[4].x, FARORBITSHUTTLEpoints[4].y, FARORBITSHUTTLEpoints[4].z);
vertex(FARORBITSHUTTLEpoints[6].x, FARORBITSHUTTLEpoints[6].y, FARORBITSHUTTLEpoints[6].z);
vertex(FARORBITSHUTTLEpoints[2].x, FARORBITSHUTTLEpoints[2].y, FARORBITSHUTTLEpoints[2].z);

vertex(FARORBITSHUTTLEpoints[6].x, FARORBITSHUTTLEpoints[6].y, FARORBITSHUTTLEpoints[6].z);
vertex(FARORBITSHUTTLEpoints[7].x, FARORBITSHUTTLEpoints[7].y, FARORBITSHUTTLEpoints[7].z);
vertex(FARORBITSHUTTLEpoints[1].x, FARORBITSHUTTLEpoints[1].y, FARORBITSHUTTLEpoints[1].z);

vertex(FARORBITSHUTTLEpoints[0].x, FARORBITSHUTTLEpoints[0].y, FARORBITSHUTTLEpoints[0].z);
vertex(FARORBITSHUTTLEpoints[7].x, FARORBITSHUTTLEpoints[7].y, FARORBITSHUTTLEpoints[7].z);
vertex(FARORBITSHUTTLEpoints[5].x, FARORBITSHUTTLEpoints[5].y, FARORBITSHUTTLEpoints[5].z);

vertex(FARORBITSHUTTLEpoints[5].x, FARORBITSHUTTLEpoints[5].y, FARORBITSHUTTLEpoints[5].z);
vertex(FARORBITSHUTTLEpoints[4].x, FARORBITSHUTTLEpoints[4].y, FARORBITSHUTTLEpoints[4].z);
vertex(FARORBITSHUTTLEpoints[3].x, FARORBITSHUTTLEpoints[3].y, FARORBITSHUTTLEpoints[3].z);

vertex(FARORBITSHUTTLEpoints[5].x, FARORBITSHUTTLEpoints[5].y, FARORBITSHUTTLEpoints[5].z);
vertex(FARORBITSHUTTLEpoints[7].x, FARORBITSHUTTLEpoints[7].y, FARORBITSHUTTLEpoints[7].z);
vertex(FARORBITSHUTTLEpoints[8].x, FARORBITSHUTTLEpoints[8].y, FARORBITSHUTTLEpoints[8].z);

vertex(FARORBITSHUTTLEpoints[8].x, FARORBITSHUTTLEpoints[8].y, FARORBITSHUTTLEpoints[8].z);
vertex(FARORBITSHUTTLEpoints[4].x, FARORBITSHUTTLEpoints[4].y, FARORBITSHUTTLEpoints[4].z);
vertex(FARORBITSHUTTLEpoints[5].x, FARORBITSHUTTLEpoints[5].y, FARORBITSHUTTLEpoints[5].z);

vertex(FARORBITSHUTTLEpoints[7].x, FARORBITSHUTTLEpoints[7].y, FARORBITSHUTTLEpoints[7].z);
vertex(FARORBITSHUTTLEpoints[6].x, FARORBITSHUTTLEpoints[6].y, FARORBITSHUTTLEpoints[6].z);
vertex(FARORBITSHUTTLEpoints[8].x, FARORBITSHUTTLEpoints[8].y, FARORBITSHUTTLEpoints[8].z);

vertex(FARORBITSHUTTLEpoints[4].x, FARORBITSHUTTLEpoints[4].y, FARORBITSHUTTLEpoints[4].z);
vertex(FARORBITSHUTTLEpoints[8].x, FARORBITSHUTTLEpoints[8].y, FARORBITSHUTTLEpoints[8].z);
vertex(FARORBITSHUTTLEpoints[6].x, FARORBITSHUTTLEpoints[6].y, FARORBITSHUTTLEpoints[6].z);
endShape();
popMatrix();
    
}
//----------------------------------------------------------------

//Object name: ORBITSHUTTLEpoints
PVector[] ORBITSHUTTLEpoints = new PVector[]{
new PVector(-60,-60,-120),
new PVector(-60,60,-120),
new PVector(60,60,-120),
new PVector(60,-60,-120),
new PVector(50,0,80),
new PVector(0,-50,80),
new PVector(0,50,80),
new PVector(-50,0,80),
new PVector(0,-20,120),
new PVector(-10,30,90),
new PVector(-30,10,90),
new PVector(-10,0,100),
new PVector(10,0,100),
new PVector(10,30,90),
new PVector(30,10,90),
new PVector(0,20,-120),
new PVector(-20,0,-120),
new PVector(0,-20,-120),
new PVector(20,0,-120)
};

void drawORBITSHUTTLE(){
pushMatrix();
rotateX(frameCount*PI/280);
rotateY(frameCount*PI/170);
rotateZ(frameCount*PI/90);
beginShape(TRIANGLES);
fill(0);
stroke(255);
vertex(ORBITSHUTTLEpoints[2].x, ORBITSHUTTLEpoints[2].y, ORBITSHUTTLEpoints[2].z);
vertex(ORBITSHUTTLEpoints[1].x, ORBITSHUTTLEpoints[1].y, ORBITSHUTTLEpoints[1].z);
vertex(ORBITSHUTTLEpoints[0].x, ORBITSHUTTLEpoints[0].y, ORBITSHUTTLEpoints[0].z);

vertex(ORBITSHUTTLEpoints[2].x, ORBITSHUTTLEpoints[2].y, ORBITSHUTTLEpoints[2].z);
vertex(ORBITSHUTTLEpoints[0].x, ORBITSHUTTLEpoints[0].y, ORBITSHUTTLEpoints[0].z);
vertex(ORBITSHUTTLEpoints[3].x, ORBITSHUTTLEpoints[3].y, ORBITSHUTTLEpoints[3].z);

vertex(ORBITSHUTTLEpoints[15].x, ORBITSHUTTLEpoints[15].y, ORBITSHUTTLEpoints[15].z);
vertex(ORBITSHUTTLEpoints[16].x, ORBITSHUTTLEpoints[16].y, ORBITSHUTTLEpoints[16].z);
vertex(ORBITSHUTTLEpoints[17].x, ORBITSHUTTLEpoints[17].y, ORBITSHUTTLEpoints[17].z);

vertex(ORBITSHUTTLEpoints[17].x, ORBITSHUTTLEpoints[17].y, ORBITSHUTTLEpoints[17].z);
vertex(ORBITSHUTTLEpoints[18].x, ORBITSHUTTLEpoints[18].y, ORBITSHUTTLEpoints[18].z);
vertex(ORBITSHUTTLEpoints[15].x, ORBITSHUTTLEpoints[15].y, ORBITSHUTTLEpoints[15].z);

vertex(ORBITSHUTTLEpoints[3].x, ORBITSHUTTLEpoints[3].y, ORBITSHUTTLEpoints[3].z);
vertex(ORBITSHUTTLEpoints[4].x, ORBITSHUTTLEpoints[4].y, ORBITSHUTTLEpoints[4].z);
vertex(ORBITSHUTTLEpoints[2].x, ORBITSHUTTLEpoints[2].y, ORBITSHUTTLEpoints[2].z);

vertex(ORBITSHUTTLEpoints[3].x, ORBITSHUTTLEpoints[3].y, ORBITSHUTTLEpoints[3].z);
vertex(ORBITSHUTTLEpoints[0].x, ORBITSHUTTLEpoints[0].y, ORBITSHUTTLEpoints[0].z);
vertex(ORBITSHUTTLEpoints[5].x, ORBITSHUTTLEpoints[5].y, ORBITSHUTTLEpoints[5].z);

vertex(ORBITSHUTTLEpoints[1].x, ORBITSHUTTLEpoints[1].y, ORBITSHUTTLEpoints[1].z);
vertex(ORBITSHUTTLEpoints[2].x, ORBITSHUTTLEpoints[2].y, ORBITSHUTTLEpoints[2].z);
vertex(ORBITSHUTTLEpoints[6].x, ORBITSHUTTLEpoints[6].y, ORBITSHUTTLEpoints[6].z);

vertex(ORBITSHUTTLEpoints[1].x, ORBITSHUTTLEpoints[1].y, ORBITSHUTTLEpoints[1].z);
vertex(ORBITSHUTTLEpoints[7].x, ORBITSHUTTLEpoints[7].y, ORBITSHUTTLEpoints[7].z);
vertex(ORBITSHUTTLEpoints[0].x, ORBITSHUTTLEpoints[0].y, ORBITSHUTTLEpoints[0].z);

vertex(ORBITSHUTTLEpoints[4].x, ORBITSHUTTLEpoints[4].y, ORBITSHUTTLEpoints[4].z);
vertex(ORBITSHUTTLEpoints[6].x, ORBITSHUTTLEpoints[6].y, ORBITSHUTTLEpoints[6].z);
vertex(ORBITSHUTTLEpoints[2].x, ORBITSHUTTLEpoints[2].y, ORBITSHUTTLEpoints[2].z);

vertex(ORBITSHUTTLEpoints[6].x, ORBITSHUTTLEpoints[6].y, ORBITSHUTTLEpoints[6].z);
vertex(ORBITSHUTTLEpoints[7].x, ORBITSHUTTLEpoints[7].y, ORBITSHUTTLEpoints[7].z);
vertex(ORBITSHUTTLEpoints[1].x, ORBITSHUTTLEpoints[1].y, ORBITSHUTTLEpoints[1].z);

vertex(ORBITSHUTTLEpoints[0].x, ORBITSHUTTLEpoints[0].y, ORBITSHUTTLEpoints[0].z);
vertex(ORBITSHUTTLEpoints[7].x, ORBITSHUTTLEpoints[7].y, ORBITSHUTTLEpoints[7].z);
vertex(ORBITSHUTTLEpoints[5].x, ORBITSHUTTLEpoints[5].y, ORBITSHUTTLEpoints[5].z);

vertex(ORBITSHUTTLEpoints[5].x, ORBITSHUTTLEpoints[5].y, ORBITSHUTTLEpoints[5].z);
vertex(ORBITSHUTTLEpoints[4].x, ORBITSHUTTLEpoints[4].y, ORBITSHUTTLEpoints[4].z);
vertex(ORBITSHUTTLEpoints[3].x, ORBITSHUTTLEpoints[3].y, ORBITSHUTTLEpoints[3].z);

vertex(ORBITSHUTTLEpoints[5].x, ORBITSHUTTLEpoints[5].y, ORBITSHUTTLEpoints[5].z);
vertex(ORBITSHUTTLEpoints[7].x, ORBITSHUTTLEpoints[7].y, ORBITSHUTTLEpoints[7].z);
vertex(ORBITSHUTTLEpoints[8].x, ORBITSHUTTLEpoints[8].y, ORBITSHUTTLEpoints[8].z);

vertex(ORBITSHUTTLEpoints[8].x, ORBITSHUTTLEpoints[8].y, ORBITSHUTTLEpoints[8].z);
vertex(ORBITSHUTTLEpoints[4].x, ORBITSHUTTLEpoints[4].y, ORBITSHUTTLEpoints[4].z);
vertex(ORBITSHUTTLEpoints[5].x, ORBITSHUTTLEpoints[5].y, ORBITSHUTTLEpoints[5].z);

vertex(ORBITSHUTTLEpoints[7].x, ORBITSHUTTLEpoints[7].y, ORBITSHUTTLEpoints[7].z);
vertex(ORBITSHUTTLEpoints[6].x, ORBITSHUTTLEpoints[6].y, ORBITSHUTTLEpoints[6].z);
vertex(ORBITSHUTTLEpoints[8].x, ORBITSHUTTLEpoints[8].y, ORBITSHUTTLEpoints[8].z);

vertex(ORBITSHUTTLEpoints[4].x, ORBITSHUTTLEpoints[4].y, ORBITSHUTTLEpoints[4].z);
vertex(ORBITSHUTTLEpoints[8].x, ORBITSHUTTLEpoints[8].y, ORBITSHUTTLEpoints[8].z);
vertex(ORBITSHUTTLEpoints[6].x, ORBITSHUTTLEpoints[6].y, ORBITSHUTTLEpoints[6].z);

vertex(ORBITSHUTTLEpoints[11].x, ORBITSHUTTLEpoints[11].y, ORBITSHUTTLEpoints[11].z);
vertex(ORBITSHUTTLEpoints[10].x, ORBITSHUTTLEpoints[10].y, ORBITSHUTTLEpoints[10].z);
vertex(ORBITSHUTTLEpoints[9].x, ORBITSHUTTLEpoints[9].y, ORBITSHUTTLEpoints[9].z);

vertex(ORBITSHUTTLEpoints[12].x, ORBITSHUTTLEpoints[12].y, ORBITSHUTTLEpoints[12].z);
vertex(ORBITSHUTTLEpoints[13].x, ORBITSHUTTLEpoints[13].y, ORBITSHUTTLEpoints[13].z);
vertex(ORBITSHUTTLEpoints[14].x, ORBITSHUTTLEpoints[14].y, ORBITSHUTTLEpoints[14].z);
endShape();
popMatrix();
    
}
//----------------------------------------------------------------

//Object name: FARPYTHONpoints
PVector[] FARPYTHONpoints = new PVector[]{
new PVector(0,0,160),
new PVector(-80,0,-80),
new PVector(0,50,-60),
new PVector(80,0,-80),
new PVector(0,30,-160),
new PVector(50,0,-160),
new PVector(-50,0,-160),
new PVector(0,-50,-60),
new PVector(0,-30,-160),
new PVector(-10,-10,-160),
new PVector(10,-10,-160),
new PVector(0,10,-160)
};

void drawFARPYTHON(){
pushMatrix();
rotateX(frameCount*PI/280);
rotateY(frameCount*PI/170);
rotateZ(frameCount*PI/90);
beginShape(TRIANGLES);
fill(0);
stroke(255);
vertex(FARPYTHONpoints[0].x, FARPYTHONpoints[0].y, FARPYTHONpoints[0].z);
vertex(FARPYTHONpoints[1].x, FARPYTHONpoints[1].y, FARPYTHONpoints[1].z);
vertex(FARPYTHONpoints[2].x, FARPYTHONpoints[2].y, FARPYTHONpoints[2].z);

vertex(FARPYTHONpoints[0].x, FARPYTHONpoints[0].y, FARPYTHONpoints[0].z);
vertex(FARPYTHONpoints[2].x, FARPYTHONpoints[2].y, FARPYTHONpoints[2].z);
vertex(FARPYTHONpoints[3].x, FARPYTHONpoints[3].y, FARPYTHONpoints[3].z);

vertex(FARPYTHONpoints[4].x, FARPYTHONpoints[4].y, FARPYTHONpoints[4].z);
vertex(FARPYTHONpoints[2].x, FARPYTHONpoints[2].y, FARPYTHONpoints[2].z);
vertex(FARPYTHONpoints[1].x, FARPYTHONpoints[1].y, FARPYTHONpoints[1].z);

vertex(FARPYTHONpoints[3].x, FARPYTHONpoints[3].y, FARPYTHONpoints[3].z);
vertex(FARPYTHONpoints[2].x, FARPYTHONpoints[2].y, FARPYTHONpoints[2].z);
vertex(FARPYTHONpoints[4].x, FARPYTHONpoints[4].y, FARPYTHONpoints[4].z);

vertex(FARPYTHONpoints[4].x, FARPYTHONpoints[4].y, FARPYTHONpoints[4].z);
vertex(FARPYTHONpoints[5].x, FARPYTHONpoints[5].y, FARPYTHONpoints[5].z);
vertex(FARPYTHONpoints[3].x, FARPYTHONpoints[3].y, FARPYTHONpoints[3].z);

vertex(FARPYTHONpoints[1].x, FARPYTHONpoints[1].y, FARPYTHONpoints[1].z);
vertex(FARPYTHONpoints[6].x, FARPYTHONpoints[6].y, FARPYTHONpoints[6].z);
vertex(FARPYTHONpoints[4].x, FARPYTHONpoints[4].y, FARPYTHONpoints[4].z);

vertex(FARPYTHONpoints[0].x, FARPYTHONpoints[0].y, FARPYTHONpoints[0].z);
vertex(FARPYTHONpoints[3].x, FARPYTHONpoints[3].y, FARPYTHONpoints[3].z);
vertex(FARPYTHONpoints[7].x, FARPYTHONpoints[7].y, FARPYTHONpoints[7].z);

vertex(FARPYTHONpoints[0].x, FARPYTHONpoints[0].y, FARPYTHONpoints[0].z);
vertex(FARPYTHONpoints[7].x, FARPYTHONpoints[7].y, FARPYTHONpoints[7].z);
vertex(FARPYTHONpoints[1].x, FARPYTHONpoints[1].y, FARPYTHONpoints[1].z);

vertex(FARPYTHONpoints[8].x, FARPYTHONpoints[8].y, FARPYTHONpoints[8].z);
vertex(FARPYTHONpoints[7].x, FARPYTHONpoints[7].y, FARPYTHONpoints[7].z);
vertex(FARPYTHONpoints[3].x, FARPYTHONpoints[3].y, FARPYTHONpoints[3].z);

vertex(FARPYTHONpoints[1].x, FARPYTHONpoints[1].y, FARPYTHONpoints[1].z);
vertex(FARPYTHONpoints[7].x, FARPYTHONpoints[7].y, FARPYTHONpoints[7].z);
vertex(FARPYTHONpoints[8].x, FARPYTHONpoints[8].y, FARPYTHONpoints[8].z);

vertex(FARPYTHONpoints[8].x, FARPYTHONpoints[8].y, FARPYTHONpoints[8].z);
vertex(FARPYTHONpoints[6].x, FARPYTHONpoints[6].y, FARPYTHONpoints[6].z);
vertex(FARPYTHONpoints[1].x, FARPYTHONpoints[1].y, FARPYTHONpoints[1].z);

vertex(FARPYTHONpoints[3].x, FARPYTHONpoints[3].y, FARPYTHONpoints[3].z);
vertex(FARPYTHONpoints[5].x, FARPYTHONpoints[5].y, FARPYTHONpoints[5].z);
vertex(FARPYTHONpoints[8].x, FARPYTHONpoints[8].y, FARPYTHONpoints[8].z);

vertex(FARPYTHONpoints[4].x, FARPYTHONpoints[4].y, FARPYTHONpoints[4].z);
vertex(FARPYTHONpoints[6].x, FARPYTHONpoints[6].y, FARPYTHONpoints[6].z);
vertex(FARPYTHONpoints[8].x, FARPYTHONpoints[8].y, FARPYTHONpoints[8].z);

vertex(FARPYTHONpoints[4].x, FARPYTHONpoints[4].y, FARPYTHONpoints[4].z);
vertex(FARPYTHONpoints[8].x, FARPYTHONpoints[8].y, FARPYTHONpoints[8].z);
vertex(FARPYTHONpoints[5].x, FARPYTHONpoints[5].y, FARPYTHONpoints[5].z);

vertex(FARPYTHONpoints[11].x, FARPYTHONpoints[11].y, FARPYTHONpoints[11].z);
vertex(FARPYTHONpoints[9].x, FARPYTHONpoints[9].y, FARPYTHONpoints[9].z);
vertex(FARPYTHONpoints[10].x, FARPYTHONpoints[10].y, FARPYTHONpoints[10].z);
endShape();
popMatrix();
    
}
//----------------------------------------------------------------

//Object name: PYTHONpoints
PVector[] PYTHONpoints = new PVector[]{
new PVector(0,0,160),
new PVector(-80,0,-80),
new PVector(0,50,-30),
new PVector(80,0,-80),
new PVector(0,50,-80),
new PVector(0,30,-160),
new PVector(50,0,-160),
new PVector(-50,0,-160),
new PVector(0,-50,-30),
new PVector(0,-50,-80),
new PVector(0,-30,-160),
new PVector(0,-10,-160),
new PVector(10,0,-160),
new PVector(0,10,-160),
new PVector(-10,0,-160)
};

void drawPYTHON(){
pushMatrix();
rotateX(frameCount*PI/280);
rotateY(frameCount*PI/170);
rotateZ(frameCount*PI/90);
beginShape(TRIANGLES);
fill(0);
stroke(255);
vertex(PYTHONpoints[0].x, PYTHONpoints[0].y, PYTHONpoints[0].z);
vertex(PYTHONpoints[1].x, PYTHONpoints[1].y, PYTHONpoints[1].z);
vertex(PYTHONpoints[2].x, PYTHONpoints[2].y, PYTHONpoints[2].z);

vertex(PYTHONpoints[0].x, PYTHONpoints[0].y, PYTHONpoints[0].z);
vertex(PYTHONpoints[2].x, PYTHONpoints[2].y, PYTHONpoints[2].z);
vertex(PYTHONpoints[3].x, PYTHONpoints[3].y, PYTHONpoints[3].z);

vertex(PYTHONpoints[1].x, PYTHONpoints[1].y, PYTHONpoints[1].z);
vertex(PYTHONpoints[4].x, PYTHONpoints[4].y, PYTHONpoints[4].z);
vertex(PYTHONpoints[2].x, PYTHONpoints[2].y, PYTHONpoints[2].z);

vertex(PYTHONpoints[2].x, PYTHONpoints[2].y, PYTHONpoints[2].z);
vertex(PYTHONpoints[4].x, PYTHONpoints[4].y, PYTHONpoints[4].z);
vertex(PYTHONpoints[3].x, PYTHONpoints[3].y, PYTHONpoints[3].z);

vertex(PYTHONpoints[5].x, PYTHONpoints[5].y, PYTHONpoints[5].z);
vertex(PYTHONpoints[4].x, PYTHONpoints[4].y, PYTHONpoints[4].z);
vertex(PYTHONpoints[1].x, PYTHONpoints[1].y, PYTHONpoints[1].z);

vertex(PYTHONpoints[3].x, PYTHONpoints[3].y, PYTHONpoints[3].z);
vertex(PYTHONpoints[4].x, PYTHONpoints[4].y, PYTHONpoints[4].z);
vertex(PYTHONpoints[5].x, PYTHONpoints[5].y, PYTHONpoints[5].z);

vertex(PYTHONpoints[5].x, PYTHONpoints[5].y, PYTHONpoints[5].z);
vertex(PYTHONpoints[6].x, PYTHONpoints[6].y, PYTHONpoints[6].z);
vertex(PYTHONpoints[3].x, PYTHONpoints[3].y, PYTHONpoints[3].z);

vertex(PYTHONpoints[1].x, PYTHONpoints[1].y, PYTHONpoints[1].z);
vertex(PYTHONpoints[7].x, PYTHONpoints[7].y, PYTHONpoints[7].z);
vertex(PYTHONpoints[5].x, PYTHONpoints[5].y, PYTHONpoints[5].z);

vertex(PYTHONpoints[0].x, PYTHONpoints[0].y, PYTHONpoints[0].z);
vertex(PYTHONpoints[3].x, PYTHONpoints[3].y, PYTHONpoints[3].z);
vertex(PYTHONpoints[8].x, PYTHONpoints[8].y, PYTHONpoints[8].z);

vertex(PYTHONpoints[0].x, PYTHONpoints[0].y, PYTHONpoints[0].z);
vertex(PYTHONpoints[8].x, PYTHONpoints[8].y, PYTHONpoints[8].z);
vertex(PYTHONpoints[1].x, PYTHONpoints[1].y, PYTHONpoints[1].z);

vertex(PYTHONpoints[3].x, PYTHONpoints[3].y, PYTHONpoints[3].z);
vertex(PYTHONpoints[9].x, PYTHONpoints[9].y, PYTHONpoints[9].z);
vertex(PYTHONpoints[8].x, PYTHONpoints[8].y, PYTHONpoints[8].z);

vertex(PYTHONpoints[8].x, PYTHONpoints[8].y, PYTHONpoints[8].z);
vertex(PYTHONpoints[9].x, PYTHONpoints[9].y, PYTHONpoints[9].z);
vertex(PYTHONpoints[1].x, PYTHONpoints[1].y, PYTHONpoints[1].z);

vertex(PYTHONpoints[10].x, PYTHONpoints[10].y, PYTHONpoints[10].z);
vertex(PYTHONpoints[9].x, PYTHONpoints[9].y, PYTHONpoints[9].z);
vertex(PYTHONpoints[3].x, PYTHONpoints[3].y, PYTHONpoints[3].z);

vertex(PYTHONpoints[1].x, PYTHONpoints[1].y, PYTHONpoints[1].z);
vertex(PYTHONpoints[9].x, PYTHONpoints[9].y, PYTHONpoints[9].z);
vertex(PYTHONpoints[10].x, PYTHONpoints[10].y, PYTHONpoints[10].z);

vertex(PYTHONpoints[10].x, PYTHONpoints[10].y, PYTHONpoints[10].z);
vertex(PYTHONpoints[7].x, PYTHONpoints[7].y, PYTHONpoints[7].z);
vertex(PYTHONpoints[1].x, PYTHONpoints[1].y, PYTHONpoints[1].z);

vertex(PYTHONpoints[3].x, PYTHONpoints[3].y, PYTHONpoints[3].z);
vertex(PYTHONpoints[6].x, PYTHONpoints[6].y, PYTHONpoints[6].z);
vertex(PYTHONpoints[10].x, PYTHONpoints[10].y, PYTHONpoints[10].z);

vertex(PYTHONpoints[5].x, PYTHONpoints[5].y, PYTHONpoints[5].z);
vertex(PYTHONpoints[7].x, PYTHONpoints[7].y, PYTHONpoints[7].z);
vertex(PYTHONpoints[10].x, PYTHONpoints[10].y, PYTHONpoints[10].z);

vertex(PYTHONpoints[5].x, PYTHONpoints[5].y, PYTHONpoints[5].z);
vertex(PYTHONpoints[10].x, PYTHONpoints[10].y, PYTHONpoints[10].z);
vertex(PYTHONpoints[6].x, PYTHONpoints[6].y, PYTHONpoints[6].z);

vertex(PYTHONpoints[11].x, PYTHONpoints[11].y, PYTHONpoints[11].z);
vertex(PYTHONpoints[12].x, PYTHONpoints[12].y, PYTHONpoints[12].z);
vertex(PYTHONpoints[13].x, PYTHONpoints[13].y, PYTHONpoints[13].z);

vertex(PYTHONpoints[13].x, PYTHONpoints[13].y, PYTHONpoints[13].z);
vertex(PYTHONpoints[14].x, PYTHONpoints[14].y, PYTHONpoints[14].z);
vertex(PYTHONpoints[11].x, PYTHONpoints[11].y, PYTHONpoints[11].z);
endShape();
popMatrix();
    
}
//----------------------------------------------------------------

//Object name: FARRACERpoints
PVector[] FARRACERpoints = new PVector[]{
new PVector(40,5,160),
new PVector(120,-35,80),
new PVector(0,5,-120),
new PVector(-120,-35,80),
new PVector(-40,5,160),
new PVector(0,45,40)
};

void drawFARRACER(){
pushMatrix();
rotateX(frameCount*PI/280);
rotateY(frameCount*PI/170);
rotateZ(frameCount*PI/90);
beginShape(TRIANGLES);
fill(0);
stroke(255);
vertex(FARRACERpoints[2].x, FARRACERpoints[2].y, FARRACERpoints[2].z);
vertex(FARRACERpoints[1].x, FARRACERpoints[1].y, FARRACERpoints[1].z);
vertex(FARRACERpoints[0].x, FARRACERpoints[0].y, FARRACERpoints[0].z);

vertex(FARRACERpoints[4].x, FARRACERpoints[4].y, FARRACERpoints[4].z);
vertex(FARRACERpoints[3].x, FARRACERpoints[3].y, FARRACERpoints[3].z);
vertex(FARRACERpoints[2].x, FARRACERpoints[2].y, FARRACERpoints[2].z);

vertex(FARRACERpoints[2].x, FARRACERpoints[2].y, FARRACERpoints[2].z);
vertex(FARRACERpoints[5].x, FARRACERpoints[5].y, FARRACERpoints[5].z);
vertex(FARRACERpoints[4].x, FARRACERpoints[4].y, FARRACERpoints[4].z);

vertex(FARRACERpoints[0].x, FARRACERpoints[0].y, FARRACERpoints[0].z);
vertex(FARRACERpoints[4].x, FARRACERpoints[4].y, FARRACERpoints[4].z);
vertex(FARRACERpoints[5].x, FARRACERpoints[5].y, FARRACERpoints[5].z);

vertex(FARRACERpoints[0].x, FARRACERpoints[0].y, FARRACERpoints[0].z);
vertex(FARRACERpoints[5].x, FARRACERpoints[5].y, FARRACERpoints[5].z);
vertex(FARRACERpoints[2].x, FARRACERpoints[2].y, FARRACERpoints[2].z);

vertex(FARRACERpoints[2].x, FARRACERpoints[2].y, FARRACERpoints[2].z);
vertex(FARRACERpoints[3].x, FARRACERpoints[3].y, FARRACERpoints[3].z);
vertex(FARRACERpoints[1].x, FARRACERpoints[1].y, FARRACERpoints[1].z);

vertex(FARRACERpoints[1].x, FARRACERpoints[1].y, FARRACERpoints[1].z);
vertex(FARRACERpoints[3].x, FARRACERpoints[3].y, FARRACERpoints[3].z);
vertex(FARRACERpoints[4].x, FARRACERpoints[4].y, FARRACERpoints[4].z);

vertex(FARRACERpoints[4].x, FARRACERpoints[4].y, FARRACERpoints[4].z);
vertex(FARRACERpoints[0].x, FARRACERpoints[0].y, FARRACERpoints[0].z);
vertex(FARRACERpoints[1].x, FARRACERpoints[1].y, FARRACERpoints[1].z);
endShape();
popMatrix();
    
}
//----------------------------------------------------------------

//Object name: RACERpoints
PVector[] RACERpoints = new PVector[]{
new PVector(40,5,160),
new PVector(120,-35,80),
new PVector(0,5,-120),
new PVector(-120,-35,80),
new PVector(-40,5,160),
new PVector(0,45,40),
new PVector(0,-11,-40),
new PVector(28,-23,20),
new PVector(-28,-23,20),
new PVector(12,25,100),
new PVector(0,25,100),
new PVector(0,17,124),
new PVector(0,33,76),
new PVector(-12,25,100)
};

void drawRACER(){
pushMatrix();
rotateX(frameCount*PI/280);
rotateY(frameCount*PI/170);
rotateZ(frameCount*PI/90);
beginShape(TRIANGLES);
fill(0);
stroke(255);
vertex(RACERpoints[2].x, RACERpoints[2].y, RACERpoints[2].z);
vertex(RACERpoints[1].x, RACERpoints[1].y, RACERpoints[1].z);
vertex(RACERpoints[0].x, RACERpoints[0].y, RACERpoints[0].z);

vertex(RACERpoints[4].x, RACERpoints[4].y, RACERpoints[4].z);
vertex(RACERpoints[3].x, RACERpoints[3].y, RACERpoints[3].z);
vertex(RACERpoints[2].x, RACERpoints[2].y, RACERpoints[2].z);

vertex(RACERpoints[2].x, RACERpoints[2].y, RACERpoints[2].z);
vertex(RACERpoints[5].x, RACERpoints[5].y, RACERpoints[5].z);
vertex(RACERpoints[4].x, RACERpoints[4].y, RACERpoints[4].z);

vertex(RACERpoints[0].x, RACERpoints[0].y, RACERpoints[0].z);
vertex(RACERpoints[4].x, RACERpoints[4].y, RACERpoints[4].z);
vertex(RACERpoints[5].x, RACERpoints[5].y, RACERpoints[5].z);

vertex(RACERpoints[11].x, RACERpoints[11].y, RACERpoints[11].z);
vertex(RACERpoints[10].x, RACERpoints[10].y, RACERpoints[10].z);
vertex(RACERpoints[9].x, RACERpoints[9].y, RACERpoints[9].z);

vertex(RACERpoints[10].x, RACERpoints[10].y, RACERpoints[10].z);
vertex(RACERpoints[13].x, RACERpoints[13].y, RACERpoints[13].z);
vertex(RACERpoints[12].x, RACERpoints[12].y, RACERpoints[12].z);

vertex(RACERpoints[10].x, RACERpoints[10].y, RACERpoints[10].z);
vertex(RACERpoints[11].x, RACERpoints[11].y, RACERpoints[11].z);
vertex(RACERpoints[13].x, RACERpoints[13].y, RACERpoints[13].z);

vertex(RACERpoints[12].x, RACERpoints[12].y, RACERpoints[12].z);
vertex(RACERpoints[9].x, RACERpoints[9].y, RACERpoints[9].z);
vertex(RACERpoints[10].x, RACERpoints[10].y, RACERpoints[10].z);

vertex(RACERpoints[0].x, RACERpoints[0].y, RACERpoints[0].z);
vertex(RACERpoints[5].x, RACERpoints[5].y, RACERpoints[5].z);
vertex(RACERpoints[2].x, RACERpoints[2].y, RACERpoints[2].z);

vertex(RACERpoints[2].x, RACERpoints[2].y, RACERpoints[2].z);
vertex(RACERpoints[3].x, RACERpoints[3].y, RACERpoints[3].z);
vertex(RACERpoints[1].x, RACERpoints[1].y, RACERpoints[1].z);

vertex(RACERpoints[1].x, RACERpoints[1].y, RACERpoints[1].z);
vertex(RACERpoints[3].x, RACERpoints[3].y, RACERpoints[3].z);
vertex(RACERpoints[4].x, RACERpoints[4].y, RACERpoints[4].z);

vertex(RACERpoints[4].x, RACERpoints[4].y, RACERpoints[4].z);
vertex(RACERpoints[0].x, RACERpoints[0].y, RACERpoints[0].z);
vertex(RACERpoints[1].x, RACERpoints[1].y, RACERpoints[1].z);

vertex(RACERpoints[8].x, RACERpoints[8].y, RACERpoints[8].z);
vertex(RACERpoints[7].x, RACERpoints[7].y, RACERpoints[7].z);
vertex(RACERpoints[6].x, RACERpoints[6].y, RACERpoints[6].z);
endShape();
popMatrix();
    
}
//----------------------------------------------------------------

//Object name: FARREMLOCKpoints
PVector[] FARREMLOCKpoints = new PVector[]{
new PVector(15,-5,-10),
new PVector(5,-5,20),
new PVector(-5,-5,20),
new PVector(-5,-5,-20),
new PVector(5,-5,-20),
new PVector(-15,-5,-10),
new PVector(-15,5,-10),
new PVector(-5,5,20),
new PVector(5,5,20),
new PVector(15,5,-10),
new PVector(5,5,-20),
new PVector(-5,5,-20)
};

void drawFARREMLOCK(){
pushMatrix();
rotateX(frameCount*PI/280);
rotateY(frameCount*PI/170);
rotateZ(frameCount*PI/90);
beginShape(TRIANGLES);
fill(0);
stroke(255);
vertex(FARREMLOCKpoints[0].x, FARREMLOCKpoints[0].y, FARREMLOCKpoints[0].z);
vertex(FARREMLOCKpoints[1].x, FARREMLOCKpoints[1].y, FARREMLOCKpoints[1].z);
vertex(FARREMLOCKpoints[2].x, FARREMLOCKpoints[2].y, FARREMLOCKpoints[2].z);

vertex(FARREMLOCKpoints[3].x, FARREMLOCKpoints[3].y, FARREMLOCKpoints[3].z);
vertex(FARREMLOCKpoints[4].x, FARREMLOCKpoints[4].y, FARREMLOCKpoints[4].z);
vertex(FARREMLOCKpoints[0].x, FARREMLOCKpoints[0].y, FARREMLOCKpoints[0].z);

vertex(FARREMLOCKpoints[0].x, FARREMLOCKpoints[0].y, FARREMLOCKpoints[0].z);
vertex(FARREMLOCKpoints[5].x, FARREMLOCKpoints[5].y, FARREMLOCKpoints[5].z);
vertex(FARREMLOCKpoints[3].x, FARREMLOCKpoints[3].y, FARREMLOCKpoints[3].z);

vertex(FARREMLOCKpoints[0].x, FARREMLOCKpoints[0].y, FARREMLOCKpoints[0].z);
vertex(FARREMLOCKpoints[2].x, FARREMLOCKpoints[2].y, FARREMLOCKpoints[2].z);
vertex(FARREMLOCKpoints[5].x, FARREMLOCKpoints[5].y, FARREMLOCKpoints[5].z);

vertex(FARREMLOCKpoints[6].x, FARREMLOCKpoints[6].y, FARREMLOCKpoints[6].z);
vertex(FARREMLOCKpoints[7].x, FARREMLOCKpoints[7].y, FARREMLOCKpoints[7].z);
vertex(FARREMLOCKpoints[8].x, FARREMLOCKpoints[8].y, FARREMLOCKpoints[8].z);

vertex(FARREMLOCKpoints[8].x, FARREMLOCKpoints[8].y, FARREMLOCKpoints[8].z);
vertex(FARREMLOCKpoints[9].x, FARREMLOCKpoints[9].y, FARREMLOCKpoints[9].z);
vertex(FARREMLOCKpoints[6].x, FARREMLOCKpoints[6].y, FARREMLOCKpoints[6].z);

vertex(FARREMLOCKpoints[6].x, FARREMLOCKpoints[6].y, FARREMLOCKpoints[6].z);
vertex(FARREMLOCKpoints[10].x, FARREMLOCKpoints[10].y, FARREMLOCKpoints[10].z);
vertex(FARREMLOCKpoints[11].x, FARREMLOCKpoints[11].y, FARREMLOCKpoints[11].z);

vertex(FARREMLOCKpoints[10].x, FARREMLOCKpoints[10].y, FARREMLOCKpoints[10].z);
vertex(FARREMLOCKpoints[6].x, FARREMLOCKpoints[6].y, FARREMLOCKpoints[6].z);
vertex(FARREMLOCKpoints[9].x, FARREMLOCKpoints[9].y, FARREMLOCKpoints[9].z);

vertex(FARREMLOCKpoints[1].x, FARREMLOCKpoints[1].y, FARREMLOCKpoints[1].z);
vertex(FARREMLOCKpoints[8].x, FARREMLOCKpoints[8].y, FARREMLOCKpoints[8].z);
vertex(FARREMLOCKpoints[7].x, FARREMLOCKpoints[7].y, FARREMLOCKpoints[7].z);

vertex(FARREMLOCKpoints[7].x, FARREMLOCKpoints[7].y, FARREMLOCKpoints[7].z);
vertex(FARREMLOCKpoints[2].x, FARREMLOCKpoints[2].y, FARREMLOCKpoints[2].z);
vertex(FARREMLOCKpoints[1].x, FARREMLOCKpoints[1].y, FARREMLOCKpoints[1].z);

vertex(FARREMLOCKpoints[9].x, FARREMLOCKpoints[9].y, FARREMLOCKpoints[9].z);
vertex(FARREMLOCKpoints[8].x, FARREMLOCKpoints[8].y, FARREMLOCKpoints[8].z);
vertex(FARREMLOCKpoints[1].x, FARREMLOCKpoints[1].y, FARREMLOCKpoints[1].z);

vertex(FARREMLOCKpoints[1].x, FARREMLOCKpoints[1].y, FARREMLOCKpoints[1].z);
vertex(FARREMLOCKpoints[0].x, FARREMLOCKpoints[0].y, FARREMLOCKpoints[0].z);
vertex(FARREMLOCKpoints[9].x, FARREMLOCKpoints[9].y, FARREMLOCKpoints[9].z);

vertex(FARREMLOCKpoints[7].x, FARREMLOCKpoints[7].y, FARREMLOCKpoints[7].z);
vertex(FARREMLOCKpoints[6].x, FARREMLOCKpoints[6].y, FARREMLOCKpoints[6].z);
vertex(FARREMLOCKpoints[2].x, FARREMLOCKpoints[2].y, FARREMLOCKpoints[2].z);

vertex(FARREMLOCKpoints[2].x, FARREMLOCKpoints[2].y, FARREMLOCKpoints[2].z);
vertex(FARREMLOCKpoints[6].x, FARREMLOCKpoints[6].y, FARREMLOCKpoints[6].z);
vertex(FARREMLOCKpoints[5].x, FARREMLOCKpoints[5].y, FARREMLOCKpoints[5].z);

vertex(FARREMLOCKpoints[10].x, FARREMLOCKpoints[10].y, FARREMLOCKpoints[10].z);
vertex(FARREMLOCKpoints[3].x, FARREMLOCKpoints[3].y, FARREMLOCKpoints[3].z);
vertex(FARREMLOCKpoints[11].x, FARREMLOCKpoints[11].y, FARREMLOCKpoints[11].z);

vertex(FARREMLOCKpoints[10].x, FARREMLOCKpoints[10].y, FARREMLOCKpoints[10].z);
vertex(FARREMLOCKpoints[4].x, FARREMLOCKpoints[4].y, FARREMLOCKpoints[4].z);
vertex(FARREMLOCKpoints[3].x, FARREMLOCKpoints[3].y, FARREMLOCKpoints[3].z);

vertex(FARREMLOCKpoints[6].x, FARREMLOCKpoints[6].y, FARREMLOCKpoints[6].z);
vertex(FARREMLOCKpoints[11].x, FARREMLOCKpoints[11].y, FARREMLOCKpoints[11].z);
vertex(FARREMLOCKpoints[3].x, FARREMLOCKpoints[3].y, FARREMLOCKpoints[3].z);

vertex(FARREMLOCKpoints[3].x, FARREMLOCKpoints[3].y, FARREMLOCKpoints[3].z);
vertex(FARREMLOCKpoints[5].x, FARREMLOCKpoints[5].y, FARREMLOCKpoints[5].z);
vertex(FARREMLOCKpoints[6].x, FARREMLOCKpoints[6].y, FARREMLOCKpoints[6].z);

vertex(FARREMLOCKpoints[4].x, FARREMLOCKpoints[4].y, FARREMLOCKpoints[4].z);
vertex(FARREMLOCKpoints[10].x, FARREMLOCKpoints[10].y, FARREMLOCKpoints[10].z);
vertex(FARREMLOCKpoints[9].x, FARREMLOCKpoints[9].y, FARREMLOCKpoints[9].z);

vertex(FARREMLOCKpoints[9].x, FARREMLOCKpoints[9].y, FARREMLOCKpoints[9].z);
vertex(FARREMLOCKpoints[0].x, FARREMLOCKpoints[0].y, FARREMLOCKpoints[0].z);
vertex(FARREMLOCKpoints[4].x, FARREMLOCKpoints[4].y, FARREMLOCKpoints[4].z);
endShape();
popMatrix();
    
}
//----------------------------------------------------------------

//Object name: REMLOCKpoints
PVector[] REMLOCKpoints = new PVector[]{
new PVector(15,-5,-10),
new PVector(5,-5,20),
new PVector(-5,-5,20),
new PVector(-5,-5,-20),
new PVector(5,-5,-20),
new PVector(-15,-5,-10),
new PVector(-15,5,-10),
new PVector(-5,5,20),
new PVector(5,5,20),
new PVector(15,5,-10),
new PVector(5,5,-20),
new PVector(-5,5,-20),
new PVector(0,5,-3),
new PVector(2,5,-12),
new PVector(-2,5,-12)
};

void drawREMLOCK(){
pushMatrix();
rotateX(frameCount*PI/280);
rotateY(frameCount*PI/170);
rotateZ(frameCount*PI/90);
beginShape(TRIANGLES);
fill(0);
stroke(255);
vertex(REMLOCKpoints[0].x, REMLOCKpoints[0].y, REMLOCKpoints[0].z);
vertex(REMLOCKpoints[1].x, REMLOCKpoints[1].y, REMLOCKpoints[1].z);
vertex(REMLOCKpoints[2].x, REMLOCKpoints[2].y, REMLOCKpoints[2].z);

vertex(REMLOCKpoints[3].x, REMLOCKpoints[3].y, REMLOCKpoints[3].z);
vertex(REMLOCKpoints[4].x, REMLOCKpoints[4].y, REMLOCKpoints[4].z);
vertex(REMLOCKpoints[0].x, REMLOCKpoints[0].y, REMLOCKpoints[0].z);

vertex(REMLOCKpoints[0].x, REMLOCKpoints[0].y, REMLOCKpoints[0].z);
vertex(REMLOCKpoints[5].x, REMLOCKpoints[5].y, REMLOCKpoints[5].z);
vertex(REMLOCKpoints[3].x, REMLOCKpoints[3].y, REMLOCKpoints[3].z);

vertex(REMLOCKpoints[0].x, REMLOCKpoints[0].y, REMLOCKpoints[0].z);
vertex(REMLOCKpoints[2].x, REMLOCKpoints[2].y, REMLOCKpoints[2].z);
vertex(REMLOCKpoints[5].x, REMLOCKpoints[5].y, REMLOCKpoints[5].z);

vertex(REMLOCKpoints[6].x, REMLOCKpoints[6].y, REMLOCKpoints[6].z);
vertex(REMLOCKpoints[7].x, REMLOCKpoints[7].y, REMLOCKpoints[7].z);
vertex(REMLOCKpoints[8].x, REMLOCKpoints[8].y, REMLOCKpoints[8].z);

vertex(REMLOCKpoints[8].x, REMLOCKpoints[8].y, REMLOCKpoints[8].z);
vertex(REMLOCKpoints[9].x, REMLOCKpoints[9].y, REMLOCKpoints[9].z);
vertex(REMLOCKpoints[6].x, REMLOCKpoints[6].y, REMLOCKpoints[6].z);

vertex(REMLOCKpoints[6].x, REMLOCKpoints[6].y, REMLOCKpoints[6].z);
vertex(REMLOCKpoints[10].x, REMLOCKpoints[10].y, REMLOCKpoints[10].z);
vertex(REMLOCKpoints[11].x, REMLOCKpoints[11].y, REMLOCKpoints[11].z);

vertex(REMLOCKpoints[10].x, REMLOCKpoints[10].y, REMLOCKpoints[10].z);
vertex(REMLOCKpoints[6].x, REMLOCKpoints[6].y, REMLOCKpoints[6].z);
vertex(REMLOCKpoints[9].x, REMLOCKpoints[9].y, REMLOCKpoints[9].z);

vertex(REMLOCKpoints[12].x, REMLOCKpoints[12].y, REMLOCKpoints[12].z);
vertex(REMLOCKpoints[13].x, REMLOCKpoints[13].y, REMLOCKpoints[13].z);
vertex(REMLOCKpoints[14].x, REMLOCKpoints[14].y, REMLOCKpoints[14].z);

vertex(REMLOCKpoints[1].x, REMLOCKpoints[1].y, REMLOCKpoints[1].z);
vertex(REMLOCKpoints[8].x, REMLOCKpoints[8].y, REMLOCKpoints[8].z);
vertex(REMLOCKpoints[7].x, REMLOCKpoints[7].y, REMLOCKpoints[7].z);

vertex(REMLOCKpoints[7].x, REMLOCKpoints[7].y, REMLOCKpoints[7].z);
vertex(REMLOCKpoints[2].x, REMLOCKpoints[2].y, REMLOCKpoints[2].z);
vertex(REMLOCKpoints[1].x, REMLOCKpoints[1].y, REMLOCKpoints[1].z);

vertex(REMLOCKpoints[9].x, REMLOCKpoints[9].y, REMLOCKpoints[9].z);
vertex(REMLOCKpoints[8].x, REMLOCKpoints[8].y, REMLOCKpoints[8].z);
vertex(REMLOCKpoints[1].x, REMLOCKpoints[1].y, REMLOCKpoints[1].z);

vertex(REMLOCKpoints[1].x, REMLOCKpoints[1].y, REMLOCKpoints[1].z);
vertex(REMLOCKpoints[0].x, REMLOCKpoints[0].y, REMLOCKpoints[0].z);
vertex(REMLOCKpoints[9].x, REMLOCKpoints[9].y, REMLOCKpoints[9].z);

vertex(REMLOCKpoints[7].x, REMLOCKpoints[7].y, REMLOCKpoints[7].z);
vertex(REMLOCKpoints[6].x, REMLOCKpoints[6].y, REMLOCKpoints[6].z);
vertex(REMLOCKpoints[2].x, REMLOCKpoints[2].y, REMLOCKpoints[2].z);

vertex(REMLOCKpoints[2].x, REMLOCKpoints[2].y, REMLOCKpoints[2].z);
vertex(REMLOCKpoints[6].x, REMLOCKpoints[6].y, REMLOCKpoints[6].z);
vertex(REMLOCKpoints[5].x, REMLOCKpoints[5].y, REMLOCKpoints[5].z);

vertex(REMLOCKpoints[10].x, REMLOCKpoints[10].y, REMLOCKpoints[10].z);
vertex(REMLOCKpoints[3].x, REMLOCKpoints[3].y, REMLOCKpoints[3].z);
vertex(REMLOCKpoints[11].x, REMLOCKpoints[11].y, REMLOCKpoints[11].z);

vertex(REMLOCKpoints[10].x, REMLOCKpoints[10].y, REMLOCKpoints[10].z);
vertex(REMLOCKpoints[4].x, REMLOCKpoints[4].y, REMLOCKpoints[4].z);
vertex(REMLOCKpoints[3].x, REMLOCKpoints[3].y, REMLOCKpoints[3].z);

vertex(REMLOCKpoints[6].x, REMLOCKpoints[6].y, REMLOCKpoints[6].z);
vertex(REMLOCKpoints[11].x, REMLOCKpoints[11].y, REMLOCKpoints[11].z);
vertex(REMLOCKpoints[3].x, REMLOCKpoints[3].y, REMLOCKpoints[3].z);

vertex(REMLOCKpoints[3].x, REMLOCKpoints[3].y, REMLOCKpoints[3].z);
vertex(REMLOCKpoints[5].x, REMLOCKpoints[5].y, REMLOCKpoints[5].z);
vertex(REMLOCKpoints[6].x, REMLOCKpoints[6].y, REMLOCKpoints[6].z);

vertex(REMLOCKpoints[4].x, REMLOCKpoints[4].y, REMLOCKpoints[4].z);
vertex(REMLOCKpoints[10].x, REMLOCKpoints[10].y, REMLOCKpoints[10].z);
vertex(REMLOCKpoints[9].x, REMLOCKpoints[9].y, REMLOCKpoints[9].z);

vertex(REMLOCKpoints[9].x, REMLOCKpoints[9].y, REMLOCKpoints[9].z);
vertex(REMLOCKpoints[0].x, REMLOCKpoints[0].y, REMLOCKpoints[0].z);
vertex(REMLOCKpoints[4].x, REMLOCKpoints[4].y, REMLOCKpoints[4].z);
endShape();
popMatrix();
    
}
//----------------------------------------------------------------

//Object name: FARSIDEWINDERpoints
PVector[] FARSIDEWINDERpoints = new PVector[]{
new PVector(0,25,-75),
new PVector(100,0,-75),
new PVector(0,-25,-75),
new PVector(-100,0,-75),
new PVector(-50,0,75),
new PVector(50,0,75),
new PVector(-25,15,-75),
new PVector(25,15,-75),
new PVector(0,-15,-75)
};

void drawFARSIDEWINDER(){
pushMatrix();
rotateX(frameCount*PI/280);
rotateY(frameCount*PI/170);
rotateZ(frameCount*PI/90);
beginShape(TRIANGLES);
fill(0);
stroke(255);
vertex(FARSIDEWINDERpoints[0].x, FARSIDEWINDERpoints[0].y, FARSIDEWINDERpoints[0].z);
vertex(FARSIDEWINDERpoints[3].x, FARSIDEWINDERpoints[3].y, FARSIDEWINDERpoints[3].z);
vertex(FARSIDEWINDERpoints[2].x, FARSIDEWINDERpoints[2].y, FARSIDEWINDERpoints[2].z);

vertex(FARSIDEWINDERpoints[0].x, FARSIDEWINDERpoints[0].y, FARSIDEWINDERpoints[0].z);
vertex(FARSIDEWINDERpoints[2].x, FARSIDEWINDERpoints[2].y, FARSIDEWINDERpoints[2].z);
vertex(FARSIDEWINDERpoints[1].x, FARSIDEWINDERpoints[1].y, FARSIDEWINDERpoints[1].z);

vertex(FARSIDEWINDERpoints[6].x, FARSIDEWINDERpoints[6].y, FARSIDEWINDERpoints[6].z);
vertex(FARSIDEWINDERpoints[8].x, FARSIDEWINDERpoints[8].y, FARSIDEWINDERpoints[8].z);
vertex(FARSIDEWINDERpoints[7].x, FARSIDEWINDERpoints[7].y, FARSIDEWINDERpoints[7].z);

vertex(FARSIDEWINDERpoints[0].x, FARSIDEWINDERpoints[0].y, FARSIDEWINDERpoints[0].z);
vertex(FARSIDEWINDERpoints[1].x, FARSIDEWINDERpoints[1].y, FARSIDEWINDERpoints[1].z);
vertex(FARSIDEWINDERpoints[5].x, FARSIDEWINDERpoints[5].y, FARSIDEWINDERpoints[5].z);

vertex(FARSIDEWINDERpoints[0].x, FARSIDEWINDERpoints[0].y, FARSIDEWINDERpoints[0].z);
vertex(FARSIDEWINDERpoints[5].x, FARSIDEWINDERpoints[5].y, FARSIDEWINDERpoints[5].z);
vertex(FARSIDEWINDERpoints[4].x, FARSIDEWINDERpoints[4].y, FARSIDEWINDERpoints[4].z);

vertex(FARSIDEWINDERpoints[0].x, FARSIDEWINDERpoints[0].y, FARSIDEWINDERpoints[0].z);
vertex(FARSIDEWINDERpoints[4].x, FARSIDEWINDERpoints[4].y, FARSIDEWINDERpoints[4].z);
vertex(FARSIDEWINDERpoints[3].x, FARSIDEWINDERpoints[3].y, FARSIDEWINDERpoints[3].z);

vertex(FARSIDEWINDERpoints[1].x, FARSIDEWINDERpoints[1].y, FARSIDEWINDERpoints[1].z);
vertex(FARSIDEWINDERpoints[2].x, FARSIDEWINDERpoints[2].y, FARSIDEWINDERpoints[2].z);
vertex(FARSIDEWINDERpoints[5].x, FARSIDEWINDERpoints[5].y, FARSIDEWINDERpoints[5].z);

vertex(FARSIDEWINDERpoints[5].x, FARSIDEWINDERpoints[5].y, FARSIDEWINDERpoints[5].z);
vertex(FARSIDEWINDERpoints[2].x, FARSIDEWINDERpoints[2].y, FARSIDEWINDERpoints[2].z);
vertex(FARSIDEWINDERpoints[4].x, FARSIDEWINDERpoints[4].y, FARSIDEWINDERpoints[4].z);

vertex(FARSIDEWINDERpoints[4].x, FARSIDEWINDERpoints[4].y, FARSIDEWINDERpoints[4].z);
vertex(FARSIDEWINDERpoints[2].x, FARSIDEWINDERpoints[2].y, FARSIDEWINDERpoints[2].z);
vertex(FARSIDEWINDERpoints[3].x, FARSIDEWINDERpoints[3].y, FARSIDEWINDERpoints[3].z);
endShape();
popMatrix();
    
}
//----------------------------------------------------------------

//Object name: SIDEWINDERpoints
PVector[] SIDEWINDERpoints = new PVector[]{
new PVector(0,25,-75),
new PVector(100,0,-75),
new PVector(0,-25,-75),
new PVector(-100,0,-75),
new PVector(-50,0,75),
new PVector(50,0,75),
new PVector(-25,15,-75),
new PVector(25,15,-75),
new PVector(-25,-15,-75),
new PVector(25,-15,-75)
};

void drawSIDEWINDER(){
pushMatrix();
rotateX(frameCount*PI/280);
rotateY(frameCount*PI/170);
rotateZ(frameCount*PI/90);
beginShape(TRIANGLES);
fill(0);
stroke(255);
vertex(SIDEWINDERpoints[0].x, SIDEWINDERpoints[0].y, SIDEWINDERpoints[0].z);
vertex(SIDEWINDERpoints[3].x, SIDEWINDERpoints[3].y, SIDEWINDERpoints[3].z);
vertex(SIDEWINDERpoints[2].x, SIDEWINDERpoints[2].y, SIDEWINDERpoints[2].z);

vertex(SIDEWINDERpoints[0].x, SIDEWINDERpoints[0].y, SIDEWINDERpoints[0].z);
vertex(SIDEWINDERpoints[2].x, SIDEWINDERpoints[2].y, SIDEWINDERpoints[2].z);
vertex(SIDEWINDERpoints[1].x, SIDEWINDERpoints[1].y, SIDEWINDERpoints[1].z);

vertex(SIDEWINDERpoints[6].x, SIDEWINDERpoints[6].y, SIDEWINDERpoints[6].z);
vertex(SIDEWINDERpoints[8].x, SIDEWINDERpoints[8].y, SIDEWINDERpoints[8].z);
vertex(SIDEWINDERpoints[9].x, SIDEWINDERpoints[9].y, SIDEWINDERpoints[9].z);

vertex(SIDEWINDERpoints[6].x, SIDEWINDERpoints[6].y, SIDEWINDERpoints[6].z);
vertex(SIDEWINDERpoints[9].x, SIDEWINDERpoints[9].y, SIDEWINDERpoints[9].z);
vertex(SIDEWINDERpoints[7].x, SIDEWINDERpoints[7].y, SIDEWINDERpoints[7].z);

vertex(SIDEWINDERpoints[0].x, SIDEWINDERpoints[0].y, SIDEWINDERpoints[0].z);
vertex(SIDEWINDERpoints[1].x, SIDEWINDERpoints[1].y, SIDEWINDERpoints[1].z);
vertex(SIDEWINDERpoints[5].x, SIDEWINDERpoints[5].y, SIDEWINDERpoints[5].z);

vertex(SIDEWINDERpoints[0].x, SIDEWINDERpoints[0].y, SIDEWINDERpoints[0].z);
vertex(SIDEWINDERpoints[5].x, SIDEWINDERpoints[5].y, SIDEWINDERpoints[5].z);
vertex(SIDEWINDERpoints[4].x, SIDEWINDERpoints[4].y, SIDEWINDERpoints[4].z);

vertex(SIDEWINDERpoints[0].x, SIDEWINDERpoints[0].y, SIDEWINDERpoints[0].z);
vertex(SIDEWINDERpoints[4].x, SIDEWINDERpoints[4].y, SIDEWINDERpoints[4].z);
vertex(SIDEWINDERpoints[3].x, SIDEWINDERpoints[3].y, SIDEWINDERpoints[3].z);

vertex(SIDEWINDERpoints[1].x, SIDEWINDERpoints[1].y, SIDEWINDERpoints[1].z);
vertex(SIDEWINDERpoints[2].x, SIDEWINDERpoints[2].y, SIDEWINDERpoints[2].z);
vertex(SIDEWINDERpoints[5].x, SIDEWINDERpoints[5].y, SIDEWINDERpoints[5].z);

vertex(SIDEWINDERpoints[5].x, SIDEWINDERpoints[5].y, SIDEWINDERpoints[5].z);
vertex(SIDEWINDERpoints[2].x, SIDEWINDERpoints[2].y, SIDEWINDERpoints[2].z);
vertex(SIDEWINDERpoints[4].x, SIDEWINDERpoints[4].y, SIDEWINDERpoints[4].z);

vertex(SIDEWINDERpoints[4].x, SIDEWINDERpoints[4].y, SIDEWINDERpoints[4].z);
vertex(SIDEWINDERpoints[2].x, SIDEWINDERpoints[2].y, SIDEWINDERpoints[2].z);
vertex(SIDEWINDERpoints[3].x, SIDEWINDERpoints[3].y, SIDEWINDERpoints[3].z);
endShape();
popMatrix();
    
}
//----------------------------------------------------------------

//Object name: FARTHARGONpoints
PVector[] FARTHARGONpoints = new PVector[]{
new PVector(0,-20,-75),
new PVector(-70,-20,-35),
new PVector(-30,-20,75),
new PVector(30,-20,75),
new PVector(70,-20,-35),
new PVector(0,20,-45),
new PVector(-20,20,-35),
new PVector(0,20,-15),
new PVector(20,20,-35)
};

void drawFARTHARGON(){
pushMatrix();
rotateX(frameCount*PI/280);
rotateY(frameCount*PI/170);
rotateZ(frameCount*PI/90);
beginShape(TRIANGLES);
fill(0);
stroke(255);
vertex(FARTHARGONpoints[0].x, FARTHARGONpoints[0].y, FARTHARGONpoints[0].z);
vertex(FARTHARGONpoints[1].x, FARTHARGONpoints[1].y, FARTHARGONpoints[1].z);
vertex(FARTHARGONpoints[2].x, FARTHARGONpoints[2].y, FARTHARGONpoints[2].z);

vertex(FARTHARGONpoints[0].x, FARTHARGONpoints[0].y, FARTHARGONpoints[0].z);
vertex(FARTHARGONpoints[2].x, FARTHARGONpoints[2].y, FARTHARGONpoints[2].z);
vertex(FARTHARGONpoints[3].x, FARTHARGONpoints[3].y, FARTHARGONpoints[3].z);

vertex(FARTHARGONpoints[0].x, FARTHARGONpoints[0].y, FARTHARGONpoints[0].z);
vertex(FARTHARGONpoints[3].x, FARTHARGONpoints[3].y, FARTHARGONpoints[3].z);
vertex(FARTHARGONpoints[4].x, FARTHARGONpoints[4].y, FARTHARGONpoints[4].z);

vertex(FARTHARGONpoints[7].x, FARTHARGONpoints[7].y, FARTHARGONpoints[7].z);
vertex(FARTHARGONpoints[6].x, FARTHARGONpoints[6].y, FARTHARGONpoints[6].z);
vertex(FARTHARGONpoints[5].x, FARTHARGONpoints[5].y, FARTHARGONpoints[5].z);

vertex(FARTHARGONpoints[7].x, FARTHARGONpoints[7].y, FARTHARGONpoints[7].z);
vertex(FARTHARGONpoints[5].x, FARTHARGONpoints[5].y, FARTHARGONpoints[5].z);
vertex(FARTHARGONpoints[8].x, FARTHARGONpoints[8].y, FARTHARGONpoints[8].z);

vertex(FARTHARGONpoints[5].x, FARTHARGONpoints[5].y, FARTHARGONpoints[5].z);
vertex(FARTHARGONpoints[0].x, FARTHARGONpoints[0].y, FARTHARGONpoints[0].z);
vertex(FARTHARGONpoints[4].x, FARTHARGONpoints[4].y, FARTHARGONpoints[4].z);

vertex(FARTHARGONpoints[4].x, FARTHARGONpoints[4].y, FARTHARGONpoints[4].z);
vertex(FARTHARGONpoints[8].x, FARTHARGONpoints[8].y, FARTHARGONpoints[8].z);
vertex(FARTHARGONpoints[5].x, FARTHARGONpoints[5].y, FARTHARGONpoints[5].z);

vertex(FARTHARGONpoints[3].x, FARTHARGONpoints[3].y, FARTHARGONpoints[3].z);
vertex(FARTHARGONpoints[8].x, FARTHARGONpoints[8].y, FARTHARGONpoints[8].z);
vertex(FARTHARGONpoints[4].x, FARTHARGONpoints[4].y, FARTHARGONpoints[4].z);

vertex(FARTHARGONpoints[3].x, FARTHARGONpoints[3].y, FARTHARGONpoints[3].z);
vertex(FARTHARGONpoints[7].x, FARTHARGONpoints[7].y, FARTHARGONpoints[7].z);
vertex(FARTHARGONpoints[8].x, FARTHARGONpoints[8].y, FARTHARGONpoints[8].z);

vertex(FARTHARGONpoints[7].x, FARTHARGONpoints[7].y, FARTHARGONpoints[7].z);
vertex(FARTHARGONpoints[3].x, FARTHARGONpoints[3].y, FARTHARGONpoints[3].z);
vertex(FARTHARGONpoints[2].x, FARTHARGONpoints[2].y, FARTHARGONpoints[2].z);

vertex(FARTHARGONpoints[2].x, FARTHARGONpoints[2].y, FARTHARGONpoints[2].z);
vertex(FARTHARGONpoints[1].x, FARTHARGONpoints[1].y, FARTHARGONpoints[1].z);
vertex(FARTHARGONpoints[6].x, FARTHARGONpoints[6].y, FARTHARGONpoints[6].z);

vertex(FARTHARGONpoints[2].x, FARTHARGONpoints[2].y, FARTHARGONpoints[2].z);
vertex(FARTHARGONpoints[6].x, FARTHARGONpoints[6].y, FARTHARGONpoints[6].z);
vertex(FARTHARGONpoints[7].x, FARTHARGONpoints[7].y, FARTHARGONpoints[7].z);

vertex(FARTHARGONpoints[6].x, FARTHARGONpoints[6].y, FARTHARGONpoints[6].z);
vertex(FARTHARGONpoints[1].x, FARTHARGONpoints[1].y, FARTHARGONpoints[1].z);
vertex(FARTHARGONpoints[0].x, FARTHARGONpoints[0].y, FARTHARGONpoints[0].z);

vertex(FARTHARGONpoints[6].x, FARTHARGONpoints[6].y, FARTHARGONpoints[6].z);
vertex(FARTHARGONpoints[0].x, FARTHARGONpoints[0].y, FARTHARGONpoints[0].z);
vertex(FARTHARGONpoints[5].x, FARTHARGONpoints[5].y, FARTHARGONpoints[5].z);
endShape();
popMatrix();
    
}
//----------------------------------------------------------------

//Object name: THARGONpoints
PVector[] THARGONpoints = new PVector[]{
new PVector(0,-20,-75),
new PVector(-70,-20,-35),
new PVector(-30,-20,75),
new PVector(30,-20,75),
new PVector(70,-20,-35),
new PVector(0,20,-45),
new PVector(-20,20,-35),
new PVector(-10,20,-15),
new PVector(10,20,-15),
new PVector(20,20,-35)
};

void drawTHARGON(){
pushMatrix();
rotateX(frameCount*PI/280);
rotateY(frameCount*PI/170);
rotateZ(frameCount*PI/90);
beginShape(TRIANGLES);
fill(0);
stroke(255);
vertex(THARGONpoints[0].x, THARGONpoints[0].y, THARGONpoints[0].z);
vertex(THARGONpoints[1].x, THARGONpoints[1].y, THARGONpoints[1].z);
vertex(THARGONpoints[2].x, THARGONpoints[2].y, THARGONpoints[2].z);

vertex(THARGONpoints[0].x, THARGONpoints[0].y, THARGONpoints[0].z);
vertex(THARGONpoints[2].x, THARGONpoints[2].y, THARGONpoints[2].z);
vertex(THARGONpoints[3].x, THARGONpoints[3].y, THARGONpoints[3].z);

vertex(THARGONpoints[0].x, THARGONpoints[0].y, THARGONpoints[0].z);
vertex(THARGONpoints[3].x, THARGONpoints[3].y, THARGONpoints[3].z);
vertex(THARGONpoints[4].x, THARGONpoints[4].y, THARGONpoints[4].z);

vertex(THARGONpoints[7].x, THARGONpoints[7].y, THARGONpoints[7].z);
vertex(THARGONpoints[6].x, THARGONpoints[6].y, THARGONpoints[6].z);
vertex(THARGONpoints[5].x, THARGONpoints[5].y, THARGONpoints[5].z);

vertex(THARGONpoints[8].x, THARGONpoints[8].y, THARGONpoints[8].z);
vertex(THARGONpoints[7].x, THARGONpoints[7].y, THARGONpoints[7].z);
vertex(THARGONpoints[5].x, THARGONpoints[5].y, THARGONpoints[5].z);

vertex(THARGONpoints[8].x, THARGONpoints[8].y, THARGONpoints[8].z);
vertex(THARGONpoints[5].x, THARGONpoints[5].y, THARGONpoints[5].z);
vertex(THARGONpoints[9].x, THARGONpoints[9].y, THARGONpoints[9].z);

vertex(THARGONpoints[5].x, THARGONpoints[5].y, THARGONpoints[5].z);
vertex(THARGONpoints[0].x, THARGONpoints[0].y, THARGONpoints[0].z);
vertex(THARGONpoints[4].x, THARGONpoints[4].y, THARGONpoints[4].z);

vertex(THARGONpoints[4].x, THARGONpoints[4].y, THARGONpoints[4].z);
vertex(THARGONpoints[9].x, THARGONpoints[9].y, THARGONpoints[9].z);
vertex(THARGONpoints[5].x, THARGONpoints[5].y, THARGONpoints[5].z);

vertex(THARGONpoints[3].x, THARGONpoints[3].y, THARGONpoints[3].z);
vertex(THARGONpoints[9].x, THARGONpoints[9].y, THARGONpoints[9].z);
vertex(THARGONpoints[4].x, THARGONpoints[4].y, THARGONpoints[4].z);

vertex(THARGONpoints[3].x, THARGONpoints[3].y, THARGONpoints[3].z);
vertex(THARGONpoints[8].x, THARGONpoints[8].y, THARGONpoints[8].z);
vertex(THARGONpoints[9].x, THARGONpoints[9].y, THARGONpoints[9].z);

vertex(THARGONpoints[8].x, THARGONpoints[8].y, THARGONpoints[8].z);
vertex(THARGONpoints[3].x, THARGONpoints[3].y, THARGONpoints[3].z);
vertex(THARGONpoints[2].x, THARGONpoints[2].y, THARGONpoints[2].z);

vertex(THARGONpoints[2].x, THARGONpoints[2].y, THARGONpoints[2].z);
vertex(THARGONpoints[7].x, THARGONpoints[7].y, THARGONpoints[7].z);
vertex(THARGONpoints[8].x, THARGONpoints[8].y, THARGONpoints[8].z);

vertex(THARGONpoints[2].x, THARGONpoints[2].y, THARGONpoints[2].z);
vertex(THARGONpoints[1].x, THARGONpoints[1].y, THARGONpoints[1].z);
vertex(THARGONpoints[6].x, THARGONpoints[6].y, THARGONpoints[6].z);

vertex(THARGONpoints[2].x, THARGONpoints[2].y, THARGONpoints[2].z);
vertex(THARGONpoints[6].x, THARGONpoints[6].y, THARGONpoints[6].z);
vertex(THARGONpoints[7].x, THARGONpoints[7].y, THARGONpoints[7].z);

vertex(THARGONpoints[6].x, THARGONpoints[6].y, THARGONpoints[6].z);
vertex(THARGONpoints[1].x, THARGONpoints[1].y, THARGONpoints[1].z);
vertex(THARGONpoints[0].x, THARGONpoints[0].y, THARGONpoints[0].z);

vertex(THARGONpoints[6].x, THARGONpoints[6].y, THARGONpoints[6].z);
vertex(THARGONpoints[0].x, THARGONpoints[0].y, THARGONpoints[0].z);
vertex(THARGONpoints[5].x, THARGONpoints[5].y, THARGONpoints[5].z);
endShape();
popMatrix();
    
}
//----------------------------------------------------------------

//Object name: THARGOIDpoints
PVector[] THARGOIDpoints = new PVector[]{
new PVector(-60,-9,25),
new PVector(-25,-9,60),
new PVector(25,-9,60),
new PVector(60,-9,25),
new PVector(60,-9,-25),
new PVector(25,-9,-60),
new PVector(-25,-9,-60),
new PVector(-60,-9,-25),
new PVector(36,9,14),
new PVector(16,9,36),
new PVector(-14,9,36),
new PVector(-36,9,15),
new PVector(-36,9,-15),
new PVector(-15,9,-36),
new PVector(15,9,-36),
new PVector(36,9,-15),
new PVector(-27,-9,-25),
new PVector(-23,-9,25),
new PVector(-19,-9,-25),
new PVector(19,-9,-25),
new PVector(23,-9,25),
new PVector(27,-9,-25)
};

void drawTHARGOID(){
pushMatrix();
rotateX(frameCount*PI/280);
rotateY(frameCount*PI/170);
rotateZ(frameCount*PI/90);
beginShape(TRIANGLES);
fill(0);
stroke(255);
vertex(THARGOIDpoints[0].x, THARGOIDpoints[0].y, THARGOIDpoints[0].z);
vertex(THARGOIDpoints[1].x, THARGOIDpoints[1].y, THARGOIDpoints[1].z);
vertex(THARGOIDpoints[2].x, THARGOIDpoints[2].y, THARGOIDpoints[2].z);

vertex(THARGOIDpoints[0].x, THARGOIDpoints[0].y, THARGOIDpoints[0].z);
vertex(THARGOIDpoints[2].x, THARGOIDpoints[2].y, THARGOIDpoints[2].z);
vertex(THARGOIDpoints[3].x, THARGOIDpoints[3].y, THARGOIDpoints[3].z);

vertex(THARGOIDpoints[0].x, THARGOIDpoints[0].y, THARGOIDpoints[0].z);
vertex(THARGOIDpoints[3].x, THARGOIDpoints[3].y, THARGOIDpoints[3].z);
vertex(THARGOIDpoints[4].x, THARGOIDpoints[4].y, THARGOIDpoints[4].z);

vertex(THARGOIDpoints[0].x, THARGOIDpoints[0].y, THARGOIDpoints[0].z);
vertex(THARGOIDpoints[4].x, THARGOIDpoints[4].y, THARGOIDpoints[4].z);
vertex(THARGOIDpoints[5].x, THARGOIDpoints[5].y, THARGOIDpoints[5].z);

vertex(THARGOIDpoints[0].x, THARGOIDpoints[0].y, THARGOIDpoints[0].z);
vertex(THARGOIDpoints[5].x, THARGOIDpoints[5].y, THARGOIDpoints[5].z);
vertex(THARGOIDpoints[6].x, THARGOIDpoints[6].y, THARGOIDpoints[6].z);

vertex(THARGOIDpoints[0].x, THARGOIDpoints[0].y, THARGOIDpoints[0].z);
vertex(THARGOIDpoints[6].x, THARGOIDpoints[6].y, THARGOIDpoints[6].z);
vertex(THARGOIDpoints[7].x, THARGOIDpoints[7].y, THARGOIDpoints[7].z);

vertex(THARGOIDpoints[16].x, THARGOIDpoints[16].y, THARGOIDpoints[16].z);
vertex(THARGOIDpoints[17].x, THARGOIDpoints[17].y, THARGOIDpoints[17].z);
vertex(THARGOIDpoints[18].x, THARGOIDpoints[18].y, THARGOIDpoints[18].z);

vertex(THARGOIDpoints[19].x, THARGOIDpoints[19].y, THARGOIDpoints[19].z);
vertex(THARGOIDpoints[20].x, THARGOIDpoints[20].y, THARGOIDpoints[20].z);
vertex(THARGOIDpoints[21].x, THARGOIDpoints[21].y, THARGOIDpoints[21].z);

vertex(THARGOIDpoints[8].x, THARGOIDpoints[8].y, THARGOIDpoints[8].z);
vertex(THARGOIDpoints[9].x, THARGOIDpoints[9].y, THARGOIDpoints[9].z);
vertex(THARGOIDpoints[10].x, THARGOIDpoints[10].y, THARGOIDpoints[10].z);

vertex(THARGOIDpoints[8].x, THARGOIDpoints[8].y, THARGOIDpoints[8].z);
vertex(THARGOIDpoints[10].x, THARGOIDpoints[10].y, THARGOIDpoints[10].z);
vertex(THARGOIDpoints[11].x, THARGOIDpoints[11].y, THARGOIDpoints[11].z);

vertex(THARGOIDpoints[8].x, THARGOIDpoints[8].y, THARGOIDpoints[8].z);
vertex(THARGOIDpoints[11].x, THARGOIDpoints[11].y, THARGOIDpoints[11].z);
vertex(THARGOIDpoints[12].x, THARGOIDpoints[12].y, THARGOIDpoints[12].z);

vertex(THARGOIDpoints[8].x, THARGOIDpoints[8].y, THARGOIDpoints[8].z);
vertex(THARGOIDpoints[12].x, THARGOIDpoints[12].y, THARGOIDpoints[12].z);
vertex(THARGOIDpoints[13].x, THARGOIDpoints[13].y, THARGOIDpoints[13].z);

vertex(THARGOIDpoints[8].x, THARGOIDpoints[8].y, THARGOIDpoints[8].z);
vertex(THARGOIDpoints[13].x, THARGOIDpoints[13].y, THARGOIDpoints[13].z);
vertex(THARGOIDpoints[14].x, THARGOIDpoints[14].y, THARGOIDpoints[14].z);

vertex(THARGOIDpoints[8].x, THARGOIDpoints[8].y, THARGOIDpoints[8].z);
vertex(THARGOIDpoints[14].x, THARGOIDpoints[14].y, THARGOIDpoints[14].z);
vertex(THARGOIDpoints[15].x, THARGOIDpoints[15].y, THARGOIDpoints[15].z);

vertex(THARGOIDpoints[1].x, THARGOIDpoints[1].y, THARGOIDpoints[1].z);
vertex(THARGOIDpoints[0].x, THARGOIDpoints[0].y, THARGOIDpoints[0].z);
vertex(THARGOIDpoints[11].x, THARGOIDpoints[11].y, THARGOIDpoints[11].z);

vertex(THARGOIDpoints[1].x, THARGOIDpoints[1].y, THARGOIDpoints[1].z);
vertex(THARGOIDpoints[11].x, THARGOIDpoints[11].y, THARGOIDpoints[11].z);
vertex(THARGOIDpoints[10].x, THARGOIDpoints[10].y, THARGOIDpoints[10].z);

vertex(THARGOIDpoints[2].x, THARGOIDpoints[2].y, THARGOIDpoints[2].z);
vertex(THARGOIDpoints[1].x, THARGOIDpoints[1].y, THARGOIDpoints[1].z);
vertex(THARGOIDpoints[10].x, THARGOIDpoints[10].y, THARGOIDpoints[10].z);

vertex(THARGOIDpoints[2].x, THARGOIDpoints[2].y, THARGOIDpoints[2].z);
vertex(THARGOIDpoints[10].x, THARGOIDpoints[10].y, THARGOIDpoints[10].z);
vertex(THARGOIDpoints[9].x, THARGOIDpoints[9].y, THARGOIDpoints[9].z);

vertex(THARGOIDpoints[3].x, THARGOIDpoints[3].y, THARGOIDpoints[3].z);
vertex(THARGOIDpoints[2].x, THARGOIDpoints[2].y, THARGOIDpoints[2].z);
vertex(THARGOIDpoints[9].x, THARGOIDpoints[9].y, THARGOIDpoints[9].z);

vertex(THARGOIDpoints[3].x, THARGOIDpoints[3].y, THARGOIDpoints[3].z);
vertex(THARGOIDpoints[9].x, THARGOIDpoints[9].y, THARGOIDpoints[9].z);
vertex(THARGOIDpoints[8].x, THARGOIDpoints[8].y, THARGOIDpoints[8].z);

vertex(THARGOIDpoints[8].x, THARGOIDpoints[8].y, THARGOIDpoints[8].z);
vertex(THARGOIDpoints[15].x, THARGOIDpoints[15].y, THARGOIDpoints[15].z);
vertex(THARGOIDpoints[3].x, THARGOIDpoints[3].y, THARGOIDpoints[3].z);

vertex(THARGOIDpoints[3].x, THARGOIDpoints[3].y, THARGOIDpoints[3].z);
vertex(THARGOIDpoints[15].x, THARGOIDpoints[15].y, THARGOIDpoints[15].z);
vertex(THARGOIDpoints[4].x, THARGOIDpoints[4].y, THARGOIDpoints[4].z);

vertex(THARGOIDpoints[4].x, THARGOIDpoints[4].y, THARGOIDpoints[4].z);
vertex(THARGOIDpoints[15].x, THARGOIDpoints[15].y, THARGOIDpoints[15].z);
vertex(THARGOIDpoints[14].x, THARGOIDpoints[14].y, THARGOIDpoints[14].z);

vertex(THARGOIDpoints[14].x, THARGOIDpoints[14].y, THARGOIDpoints[14].z);
vertex(THARGOIDpoints[5].x, THARGOIDpoints[5].y, THARGOIDpoints[5].z);
vertex(THARGOIDpoints[4].x, THARGOIDpoints[4].y, THARGOIDpoints[4].z);

vertex(THARGOIDpoints[5].x, THARGOIDpoints[5].y, THARGOIDpoints[5].z);
vertex(THARGOIDpoints[14].x, THARGOIDpoints[14].y, THARGOIDpoints[14].z);
vertex(THARGOIDpoints[13].x, THARGOIDpoints[13].y, THARGOIDpoints[13].z);

vertex(THARGOIDpoints[13].x, THARGOIDpoints[13].y, THARGOIDpoints[13].z);
vertex(THARGOIDpoints[6].x, THARGOIDpoints[6].y, THARGOIDpoints[6].z);
vertex(THARGOIDpoints[5].x, THARGOIDpoints[5].y, THARGOIDpoints[5].z);

vertex(THARGOIDpoints[6].x, THARGOIDpoints[6].y, THARGOIDpoints[6].z);
vertex(THARGOIDpoints[13].x, THARGOIDpoints[13].y, THARGOIDpoints[13].z);
vertex(THARGOIDpoints[12].x, THARGOIDpoints[12].y, THARGOIDpoints[12].z);

vertex(THARGOIDpoints[12].x, THARGOIDpoints[12].y, THARGOIDpoints[12].z);
vertex(THARGOIDpoints[7].x, THARGOIDpoints[7].y, THARGOIDpoints[7].z);
vertex(THARGOIDpoints[6].x, THARGOIDpoints[6].y, THARGOIDpoints[6].z);

vertex(THARGOIDpoints[11].x, THARGOIDpoints[11].y, THARGOIDpoints[11].z);
vertex(THARGOIDpoints[0].x, THARGOIDpoints[0].y, THARGOIDpoints[0].z);
vertex(THARGOIDpoints[7].x, THARGOIDpoints[7].y, THARGOIDpoints[7].z);

vertex(THARGOIDpoints[12].x, THARGOIDpoints[12].y, THARGOIDpoints[12].z);
vertex(THARGOIDpoints[11].x, THARGOIDpoints[11].y, THARGOIDpoints[11].z);
vertex(THARGOIDpoints[7].x, THARGOIDpoints[7].y, THARGOIDpoints[7].z);
endShape();
popMatrix();
    
}
//----------------------------------------------------------------

//Object name: TRANSPORTERpoints
PVector[] TRANSPORTERpoints = new PVector[]{
new PVector(-100,-25,60),
new PVector(-100,-25,-120),
new PVector(100,-25,-120),
new PVector(100,-25,60),
new PVector(-30,-25,120),
new PVector(30,-25,120),
new PVector(100,5,-120),
new PVector(-100,5,-120),
new PVector(0,25,-120),
new PVector(100,5,60),
new PVector(-100,5,60),
new PVector(0,25,60),
new PVector(-30,5,120),
new PVector(30,5,120),
new PVector(-50,-15,-120),
new PVector(30,19,-10),
new PVector(70,11,-10),
new PVector(50,15,20),
new PVector(30,19,-90),
new PVector(70,11,-90),
new PVector(50,15,-60),
new PVector(-80,9,-10),
new PVector(-30,19,-10),
new PVector(-30,19,4),
new PVector(-80,9,4),
new PVector(-70,11,-60),
new PVector(-50,15,-60),
new PVector(-50,15,-90),
new PVector(-30,19,-60),
new PVector(50,15,-10),
new PVector(-50,-25,20),
new PVector(-60,-25,-60),
new PVector(-40,-25,-60),
new PVector(50,-25,20),
new PVector(40,-25,-60),
new PVector(60,-25,-60),
new PVector(-50,5,-120),
new PVector(40,5,-120),
new PVector(40,-15,-120)
};

void drawTRANSPORTER(){
pushMatrix();
rotateX(frameCount*PI/280);
rotateY(frameCount*PI/170);
rotateZ(frameCount*PI/90);
beginShape(TRIANGLES);
fill(0);
stroke(255);
vertex(TRANSPORTERpoints[0].x, TRANSPORTERpoints[0].y, TRANSPORTERpoints[0].z);
vertex(TRANSPORTERpoints[3].x, TRANSPORTERpoints[3].y, TRANSPORTERpoints[3].z);
vertex(TRANSPORTERpoints[2].x, TRANSPORTERpoints[2].y, TRANSPORTERpoints[2].z);

vertex(TRANSPORTERpoints[0].x, TRANSPORTERpoints[0].y, TRANSPORTERpoints[0].z);
vertex(TRANSPORTERpoints[4].x, TRANSPORTERpoints[4].y, TRANSPORTERpoints[4].z);
vertex(TRANSPORTERpoints[5].x, TRANSPORTERpoints[5].y, TRANSPORTERpoints[5].z);

vertex(TRANSPORTERpoints[3].x, TRANSPORTERpoints[3].y, TRANSPORTERpoints[3].z);
vertex(TRANSPORTERpoints[0].x, TRANSPORTERpoints[0].y, TRANSPORTERpoints[0].z);
vertex(TRANSPORTERpoints[5].x, TRANSPORTERpoints[5].y, TRANSPORTERpoints[5].z);

vertex(TRANSPORTERpoints[2].x, TRANSPORTERpoints[2].y, TRANSPORTERpoints[2].z);
vertex(TRANSPORTERpoints[1].x, TRANSPORTERpoints[1].y, TRANSPORTERpoints[1].z);
vertex(TRANSPORTERpoints[0].x, TRANSPORTERpoints[0].y, TRANSPORTERpoints[0].z);

vertex(TRANSPORTERpoints[32].x, TRANSPORTERpoints[32].y, TRANSPORTERpoints[32].z);
vertex(TRANSPORTERpoints[31].x, TRANSPORTERpoints[31].y, TRANSPORTERpoints[31].z);
vertex(TRANSPORTERpoints[30].x, TRANSPORTERpoints[30].y, TRANSPORTERpoints[30].z);

vertex(TRANSPORTERpoints[35].x, TRANSPORTERpoints[35].y, TRANSPORTERpoints[35].z);
vertex(TRANSPORTERpoints[34].x, TRANSPORTERpoints[34].y, TRANSPORTERpoints[34].z);
vertex(TRANSPORTERpoints[33].x, TRANSPORTERpoints[33].y, TRANSPORTERpoints[33].z);

vertex(TRANSPORTERpoints[2].x, TRANSPORTERpoints[2].y, TRANSPORTERpoints[2].z);
vertex(TRANSPORTERpoints[6].x, TRANSPORTERpoints[6].y, TRANSPORTERpoints[6].z);
vertex(TRANSPORTERpoints[7].x, TRANSPORTERpoints[7].y, TRANSPORTERpoints[7].z);

vertex(TRANSPORTERpoints[7].x, TRANSPORTERpoints[7].y, TRANSPORTERpoints[7].z);
vertex(TRANSPORTERpoints[1].x, TRANSPORTERpoints[1].y, TRANSPORTERpoints[1].z);
vertex(TRANSPORTERpoints[2].x, TRANSPORTERpoints[2].y, TRANSPORTERpoints[2].z);

vertex(TRANSPORTERpoints[6].x, TRANSPORTERpoints[6].y, TRANSPORTERpoints[6].z);
vertex(TRANSPORTERpoints[8].x, TRANSPORTERpoints[8].y, TRANSPORTERpoints[8].z);
vertex(TRANSPORTERpoints[7].x, TRANSPORTERpoints[7].y, TRANSPORTERpoints[7].z);

vertex(TRANSPORTERpoints[37].x, TRANSPORTERpoints[37].y, TRANSPORTERpoints[37].z);
vertex(TRANSPORTERpoints[36].x, TRANSPORTERpoints[36].y, TRANSPORTERpoints[36].z);
vertex(TRANSPORTERpoints[14].x, TRANSPORTERpoints[14].y, TRANSPORTERpoints[14].z);

vertex(TRANSPORTERpoints[14].x, TRANSPORTERpoints[14].y, TRANSPORTERpoints[14].z);
vertex(TRANSPORTERpoints[38].x, TRANSPORTERpoints[38].y, TRANSPORTERpoints[38].z);
vertex(TRANSPORTERpoints[37].x, TRANSPORTERpoints[37].y, TRANSPORTERpoints[37].z);

vertex(TRANSPORTERpoints[6].x, TRANSPORTERpoints[6].y, TRANSPORTERpoints[6].z);
vertex(TRANSPORTERpoints[2].x, TRANSPORTERpoints[2].y, TRANSPORTERpoints[2].z);
vertex(TRANSPORTERpoints[3].x, TRANSPORTERpoints[3].y, TRANSPORTERpoints[3].z);

vertex(TRANSPORTERpoints[6].x, TRANSPORTERpoints[6].y, TRANSPORTERpoints[6].z);
vertex(TRANSPORTERpoints[3].x, TRANSPORTERpoints[3].y, TRANSPORTERpoints[3].z);
vertex(TRANSPORTERpoints[9].x, TRANSPORTERpoints[9].y, TRANSPORTERpoints[9].z);

vertex(TRANSPORTERpoints[10].x, TRANSPORTERpoints[10].y, TRANSPORTERpoints[10].z);
vertex(TRANSPORTERpoints[1].x, TRANSPORTERpoints[1].y, TRANSPORTERpoints[1].z);
vertex(TRANSPORTERpoints[7].x, TRANSPORTERpoints[7].y, TRANSPORTERpoints[7].z);

vertex(TRANSPORTERpoints[10].x, TRANSPORTERpoints[10].y, TRANSPORTERpoints[10].z);
vertex(TRANSPORTERpoints[0].x, TRANSPORTERpoints[0].y, TRANSPORTERpoints[0].z);
vertex(TRANSPORTERpoints[1].x, TRANSPORTERpoints[1].y, TRANSPORTERpoints[1].z);

vertex(TRANSPORTERpoints[8].x, TRANSPORTERpoints[8].y, TRANSPORTERpoints[8].z);
vertex(TRANSPORTERpoints[11].x, TRANSPORTERpoints[11].y, TRANSPORTERpoints[11].z);
vertex(TRANSPORTERpoints[10].x, TRANSPORTERpoints[10].y, TRANSPORTERpoints[10].z);

vertex(TRANSPORTERpoints[10].x, TRANSPORTERpoints[10].y, TRANSPORTERpoints[10].z);
vertex(TRANSPORTERpoints[7].x, TRANSPORTERpoints[7].y, TRANSPORTERpoints[7].z);
vertex(TRANSPORTERpoints[8].x, TRANSPORTERpoints[8].y, TRANSPORTERpoints[8].z);

vertex(TRANSPORTERpoints[21].x, TRANSPORTERpoints[21].y, TRANSPORTERpoints[21].z);
vertex(TRANSPORTERpoints[22].x, TRANSPORTERpoints[22].y, TRANSPORTERpoints[22].z);
vertex(TRANSPORTERpoints[23].x, TRANSPORTERpoints[23].y, TRANSPORTERpoints[23].z);

vertex(TRANSPORTERpoints[23].x, TRANSPORTERpoints[23].y, TRANSPORTERpoints[23].z);
vertex(TRANSPORTERpoints[24].x, TRANSPORTERpoints[24].y, TRANSPORTERpoints[24].z);
vertex(TRANSPORTERpoints[21].x, TRANSPORTERpoints[21].y, TRANSPORTERpoints[21].z);

vertex(TRANSPORTERpoints[27].x, TRANSPORTERpoints[27].y, TRANSPORTERpoints[27].z);
vertex(TRANSPORTERpoints[26].x, TRANSPORTERpoints[26].y, TRANSPORTERpoints[26].z);
vertex(TRANSPORTERpoints[25].x, TRANSPORTERpoints[25].y, TRANSPORTERpoints[25].z);

vertex(TRANSPORTERpoints[27].x, TRANSPORTERpoints[27].y, TRANSPORTERpoints[27].z);
vertex(TRANSPORTERpoints[28].x, TRANSPORTERpoints[28].y, TRANSPORTERpoints[28].z);
vertex(TRANSPORTERpoints[26].x, TRANSPORTERpoints[26].y, TRANSPORTERpoints[26].z);

vertex(TRANSPORTERpoints[11].x, TRANSPORTERpoints[11].y, TRANSPORTERpoints[11].z);
vertex(TRANSPORTERpoints[8].x, TRANSPORTERpoints[8].y, TRANSPORTERpoints[8].z);
vertex(TRANSPORTERpoints[6].x, TRANSPORTERpoints[6].y, TRANSPORTERpoints[6].z);

vertex(TRANSPORTERpoints[6].x, TRANSPORTERpoints[6].y, TRANSPORTERpoints[6].z);
vertex(TRANSPORTERpoints[9].x, TRANSPORTERpoints[9].y, TRANSPORTERpoints[9].z);
vertex(TRANSPORTERpoints[11].x, TRANSPORTERpoints[11].y, TRANSPORTERpoints[11].z);

vertex(TRANSPORTERpoints[18].x, TRANSPORTERpoints[18].y, TRANSPORTERpoints[18].z);
vertex(TRANSPORTERpoints[19].x, TRANSPORTERpoints[19].y, TRANSPORTERpoints[19].z);
vertex(TRANSPORTERpoints[20].x, TRANSPORTERpoints[20].y, TRANSPORTERpoints[20].z);

vertex(TRANSPORTERpoints[29].x, TRANSPORTERpoints[29].y, TRANSPORTERpoints[29].z);
vertex(TRANSPORTERpoints[17].x, TRANSPORTERpoints[17].y, TRANSPORTERpoints[17].z);
vertex(TRANSPORTERpoints[15].x, TRANSPORTERpoints[15].y, TRANSPORTERpoints[15].z);

vertex(TRANSPORTERpoints[16].x, TRANSPORTERpoints[16].y, TRANSPORTERpoints[16].z);
vertex(TRANSPORTERpoints[17].x, TRANSPORTERpoints[17].y, TRANSPORTERpoints[17].z);
vertex(TRANSPORTERpoints[29].x, TRANSPORTERpoints[29].y, TRANSPORTERpoints[29].z);

vertex(TRANSPORTERpoints[11].x, TRANSPORTERpoints[11].y, TRANSPORTERpoints[11].z);
vertex(TRANSPORTERpoints[12].x, TRANSPORTERpoints[12].y, TRANSPORTERpoints[12].z);
vertex(TRANSPORTERpoints[10].x, TRANSPORTERpoints[10].y, TRANSPORTERpoints[10].z);

vertex(TRANSPORTERpoints[12].x, TRANSPORTERpoints[12].y, TRANSPORTERpoints[12].z);
vertex(TRANSPORTERpoints[11].x, TRANSPORTERpoints[11].y, TRANSPORTERpoints[11].z);
vertex(TRANSPORTERpoints[13].x, TRANSPORTERpoints[13].y, TRANSPORTERpoints[13].z);

vertex(TRANSPORTERpoints[13].x, TRANSPORTERpoints[13].y, TRANSPORTERpoints[13].z);
vertex(TRANSPORTERpoints[11].x, TRANSPORTERpoints[11].y, TRANSPORTERpoints[11].z);
vertex(TRANSPORTERpoints[9].x, TRANSPORTERpoints[9].y, TRANSPORTERpoints[9].z);

vertex(TRANSPORTERpoints[9].x, TRANSPORTERpoints[9].y, TRANSPORTERpoints[9].z);
vertex(TRANSPORTERpoints[3].x, TRANSPORTERpoints[3].y, TRANSPORTERpoints[3].z);
vertex(TRANSPORTERpoints[5].x, TRANSPORTERpoints[5].y, TRANSPORTERpoints[5].z);

vertex(TRANSPORTERpoints[5].x, TRANSPORTERpoints[5].y, TRANSPORTERpoints[5].z);
vertex(TRANSPORTERpoints[13].x, TRANSPORTERpoints[13].y, TRANSPORTERpoints[13].z);
vertex(TRANSPORTERpoints[9].x, TRANSPORTERpoints[9].y, TRANSPORTERpoints[9].z);

vertex(TRANSPORTERpoints[13].x, TRANSPORTERpoints[13].y, TRANSPORTERpoints[13].z);
vertex(TRANSPORTERpoints[5].x, TRANSPORTERpoints[5].y, TRANSPORTERpoints[5].z);
vertex(TRANSPORTERpoints[4].x, TRANSPORTERpoints[4].y, TRANSPORTERpoints[4].z);

vertex(TRANSPORTERpoints[4].x, TRANSPORTERpoints[4].y, TRANSPORTERpoints[4].z);
vertex(TRANSPORTERpoints[12].x, TRANSPORTERpoints[12].y, TRANSPORTERpoints[12].z);
vertex(TRANSPORTERpoints[13].x, TRANSPORTERpoints[13].y, TRANSPORTERpoints[13].z);

vertex(TRANSPORTERpoints[4].x, TRANSPORTERpoints[4].y, TRANSPORTERpoints[4].z);
vertex(TRANSPORTERpoints[10].x, TRANSPORTERpoints[10].y, TRANSPORTERpoints[10].z);
vertex(TRANSPORTERpoints[12].x, TRANSPORTERpoints[12].y, TRANSPORTERpoints[12].z);

vertex(TRANSPORTERpoints[4].x, TRANSPORTERpoints[4].y, TRANSPORTERpoints[4].z);
vertex(TRANSPORTERpoints[0].x, TRANSPORTERpoints[0].y, TRANSPORTERpoints[0].z);
vertex(TRANSPORTERpoints[10].x, TRANSPORTERpoints[10].y, TRANSPORTERpoints[10].z);
endShape();
popMatrix();
    
}
//----------------------------------------------------------------

//Object name: FARURUTUpoints
PVector[] FARURUTUpoints = new PVector[]{
new PVector(75,-27,45),
new PVector(30,3,45),
new PVector(0,27,-105),
new PVector(170,-22,-105),
new PVector(-30,3,45),
new PVector(-75,-27,45),
new PVector(-170,-22,-105),
new PVector(0,-20,105),
new PVector(-70,-15,-105),
new PVector(0,11,-105),
new PVector(70,-15,-105)
};

void drawFARURUTU(){
pushMatrix();
rotateX(frameCount*PI/280);
rotateY(frameCount*PI/170);
rotateZ(frameCount*PI/90);
beginShape(TRIANGLES);
fill(0);
stroke(255);
vertex(FARURUTUpoints[0].x, FARURUTUpoints[0].y, FARURUTUpoints[0].z);
vertex(FARURUTUpoints[1].x, FARURUTUpoints[1].y, FARURUTUpoints[1].z);
vertex(FARURUTUpoints[2].x, FARURUTUpoints[2].y, FARURUTUpoints[2].z);

vertex(FARURUTUpoints[2].x, FARURUTUpoints[2].y, FARURUTUpoints[2].z);
vertex(FARURUTUpoints[3].x, FARURUTUpoints[3].y, FARURUTUpoints[3].z);
vertex(FARURUTUpoints[0].x, FARURUTUpoints[0].y, FARURUTUpoints[0].z);

vertex(FARURUTUpoints[2].x, FARURUTUpoints[2].y, FARURUTUpoints[2].z);
vertex(FARURUTUpoints[4].x, FARURUTUpoints[4].y, FARURUTUpoints[4].z);
vertex(FARURUTUpoints[5].x, FARURUTUpoints[5].y, FARURUTUpoints[5].z);

vertex(FARURUTUpoints[5].x, FARURUTUpoints[5].y, FARURUTUpoints[5].z);
vertex(FARURUTUpoints[6].x, FARURUTUpoints[6].y, FARURUTUpoints[6].z);
vertex(FARURUTUpoints[2].x, FARURUTUpoints[2].y, FARURUTUpoints[2].z);

vertex(FARURUTUpoints[3].x, FARURUTUpoints[3].y, FARURUTUpoints[3].z);
vertex(FARURUTUpoints[6].x, FARURUTUpoints[6].y, FARURUTUpoints[6].z);
vertex(FARURUTUpoints[5].x, FARURUTUpoints[5].y, FARURUTUpoints[5].z);

vertex(FARURUTUpoints[3].x, FARURUTUpoints[3].y, FARURUTUpoints[3].z);
vertex(FARURUTUpoints[5].x, FARURUTUpoints[5].y, FARURUTUpoints[5].z);
vertex(FARURUTUpoints[0].x, FARURUTUpoints[0].y, FARURUTUpoints[0].z);

vertex(FARURUTUpoints[1].x, FARURUTUpoints[1].y, FARURUTUpoints[1].z);
vertex(FARURUTUpoints[4].x, FARURUTUpoints[4].y, FARURUTUpoints[4].z);
vertex(FARURUTUpoints[2].x, FARURUTUpoints[2].y, FARURUTUpoints[2].z);

vertex(FARURUTUpoints[3].x, FARURUTUpoints[3].y, FARURUTUpoints[3].z);
vertex(FARURUTUpoints[2].x, FARURUTUpoints[2].y, FARURUTUpoints[2].z);
vertex(FARURUTUpoints[6].x, FARURUTUpoints[6].y, FARURUTUpoints[6].z);

vertex(FARURUTUpoints[9].x, FARURUTUpoints[9].y, FARURUTUpoints[9].z);
vertex(FARURUTUpoints[8].x, FARURUTUpoints[8].y, FARURUTUpoints[8].z);
vertex(FARURUTUpoints[10].x, FARURUTUpoints[10].y, FARURUTUpoints[10].z);

vertex(FARURUTUpoints[1].x, FARURUTUpoints[1].y, FARURUTUpoints[1].z);
vertex(FARURUTUpoints[7].x, FARURUTUpoints[7].y, FARURUTUpoints[7].z);
vertex(FARURUTUpoints[4].x, FARURUTUpoints[4].y, FARURUTUpoints[4].z);

vertex(FARURUTUpoints[0].x, FARURUTUpoints[0].y, FARURUTUpoints[0].z);
vertex(FARURUTUpoints[7].x, FARURUTUpoints[7].y, FARURUTUpoints[7].z);
vertex(FARURUTUpoints[1].x, FARURUTUpoints[1].y, FARURUTUpoints[1].z);

vertex(FARURUTUpoints[4].x, FARURUTUpoints[4].y, FARURUTUpoints[4].z);
vertex(FARURUTUpoints[7].x, FARURUTUpoints[7].y, FARURUTUpoints[7].z);
vertex(FARURUTUpoints[5].x, FARURUTUpoints[5].y, FARURUTUpoints[5].z);

vertex(FARURUTUpoints[0].x, FARURUTUpoints[0].y, FARURUTUpoints[0].z);
vertex(FARURUTUpoints[5].x, FARURUTUpoints[5].y, FARURUTUpoints[5].z);
vertex(FARURUTUpoints[7].x, FARURUTUpoints[7].y, FARURUTUpoints[7].z);
endShape();
popMatrix();
    
}
//----------------------------------------------------------------

//Object name: URUTUpoints
PVector[] URUTUpoints = new PVector[]{
new PVector(75,-27,45),
new PVector(30,3,45),
new PVector(0,27,-105),
new PVector(170,-22,-105),
new PVector(-30,3,45),
new PVector(-75,-27,45),
new PVector(-170,-22,-105),
new PVector(0,-20,105),
new PVector(-6,-21,-105),
new PVector(-15,11,-105),
new PVector(-70,-15,-105),
new PVector(18,11,-105),
new PVector(9,-21,-105),
new PVector(70,-15,-105),
new PVector(0,0,53),
new PVector(-9,-10,79),
new PVector(8,-10,79)
};

void drawURUTU(){
pushMatrix();
rotateX(frameCount*PI/280);
rotateY(frameCount*PI/170);
rotateZ(frameCount*PI/90);
beginShape(TRIANGLES);
fill(0);
stroke(255);
vertex(URUTUpoints[0].x, URUTUpoints[0].y, URUTUpoints[0].z);
vertex(URUTUpoints[1].x, URUTUpoints[1].y, URUTUpoints[1].z);
vertex(URUTUpoints[2].x, URUTUpoints[2].y, URUTUpoints[2].z);

vertex(URUTUpoints[2].x, URUTUpoints[2].y, URUTUpoints[2].z);
vertex(URUTUpoints[3].x, URUTUpoints[3].y, URUTUpoints[3].z);
vertex(URUTUpoints[0].x, URUTUpoints[0].y, URUTUpoints[0].z);

vertex(URUTUpoints[2].x, URUTUpoints[2].y, URUTUpoints[2].z);
vertex(URUTUpoints[4].x, URUTUpoints[4].y, URUTUpoints[4].z);
vertex(URUTUpoints[5].x, URUTUpoints[5].y, URUTUpoints[5].z);

vertex(URUTUpoints[5].x, URUTUpoints[5].y, URUTUpoints[5].z);
vertex(URUTUpoints[6].x, URUTUpoints[6].y, URUTUpoints[6].z);
vertex(URUTUpoints[2].x, URUTUpoints[2].y, URUTUpoints[2].z);

vertex(URUTUpoints[3].x, URUTUpoints[3].y, URUTUpoints[3].z);
vertex(URUTUpoints[6].x, URUTUpoints[6].y, URUTUpoints[6].z);
vertex(URUTUpoints[5].x, URUTUpoints[5].y, URUTUpoints[5].z);

vertex(URUTUpoints[3].x, URUTUpoints[3].y, URUTUpoints[3].z);
vertex(URUTUpoints[5].x, URUTUpoints[5].y, URUTUpoints[5].z);
vertex(URUTUpoints[0].x, URUTUpoints[0].y, URUTUpoints[0].z);

vertex(URUTUpoints[1].x, URUTUpoints[1].y, URUTUpoints[1].z);
vertex(URUTUpoints[4].x, URUTUpoints[4].y, URUTUpoints[4].z);
vertex(URUTUpoints[2].x, URUTUpoints[2].y, URUTUpoints[2].z);

vertex(URUTUpoints[3].x, URUTUpoints[3].y, URUTUpoints[3].z);
vertex(URUTUpoints[2].x, URUTUpoints[2].y, URUTUpoints[2].z);
vertex(URUTUpoints[6].x, URUTUpoints[6].y, URUTUpoints[6].z);

vertex(URUTUpoints[8].x, URUTUpoints[8].y, URUTUpoints[8].z);
vertex(URUTUpoints[9].x, URUTUpoints[9].y, URUTUpoints[9].z);
vertex(URUTUpoints[10].x, URUTUpoints[10].y, URUTUpoints[10].z);

vertex(URUTUpoints[1].x, URUTUpoints[1].y, URUTUpoints[1].z);
vertex(URUTUpoints[7].x, URUTUpoints[7].y, URUTUpoints[7].z);
vertex(URUTUpoints[4].x, URUTUpoints[4].y, URUTUpoints[4].z);

vertex(URUTUpoints[0].x, URUTUpoints[0].y, URUTUpoints[0].z);
vertex(URUTUpoints[7].x, URUTUpoints[7].y, URUTUpoints[7].z);
vertex(URUTUpoints[1].x, URUTUpoints[1].y, URUTUpoints[1].z);

vertex(URUTUpoints[4].x, URUTUpoints[4].y, URUTUpoints[4].z);
vertex(URUTUpoints[7].x, URUTUpoints[7].y, URUTUpoints[7].z);
vertex(URUTUpoints[5].x, URUTUpoints[5].y, URUTUpoints[5].z);

vertex(URUTUpoints[0].x, URUTUpoints[0].y, URUTUpoints[0].z);
vertex(URUTUpoints[5].x, URUTUpoints[5].y, URUTUpoints[5].z);
vertex(URUTUpoints[7].x, URUTUpoints[7].y, URUTUpoints[7].z);

vertex(URUTUpoints[11].x, URUTUpoints[11].y, URUTUpoints[11].z);
vertex(URUTUpoints[12].x, URUTUpoints[12].y, URUTUpoints[12].z);
vertex(URUTUpoints[13].x, URUTUpoints[13].y, URUTUpoints[13].z);

vertex(URUTUpoints[16].x, URUTUpoints[16].y, URUTUpoints[16].z);
vertex(URUTUpoints[15].x, URUTUpoints[15].y, URUTUpoints[15].z);
vertex(URUTUpoints[14].x, URUTUpoints[14].y, URUTUpoints[14].z);
endShape();
popMatrix();
    
}
//----------------------------------------------------------------

//Object name: FARVIPERpoints
PVector[] FARVIPERpoints = new PVector[]{
new PVector(0,0,100),
new PVector(-45,30,-100),
new PVector(45,30,-100),
new PVector(45,-30,-100),
new PVector(-45,-30,-100),
new PVector(-80,0,-100),
new PVector(80,0,-100),
new PVector(0,0,100),
new PVector(0,20,-100),
new PVector(-30,-10,-100),
new PVector(30,-10,-100)
};

void drawFARVIPER(){
pushMatrix();
rotateX(frameCount*PI/280);
rotateY(frameCount*PI/170);
rotateZ(frameCount*PI/90);
beginShape(TRIANGLES);
fill(0);
stroke(255);
vertex(FARVIPERpoints[0].x, FARVIPERpoints[0].y, FARVIPERpoints[0].z);
vertex(FARVIPERpoints[1].x, FARVIPERpoints[1].y, FARVIPERpoints[1].z);
vertex(FARVIPERpoints[2].x, FARVIPERpoints[2].y, FARVIPERpoints[2].z);

vertex(FARVIPERpoints[4].x, FARVIPERpoints[4].y, FARVIPERpoints[4].z);
vertex(FARVIPERpoints[0].x, FARVIPERpoints[0].y, FARVIPERpoints[0].z);
vertex(FARVIPERpoints[3].x, FARVIPERpoints[3].y, FARVIPERpoints[3].z);

vertex(FARVIPERpoints[1].x, FARVIPERpoints[1].y, FARVIPERpoints[1].z);
vertex(FARVIPERpoints[5].x, FARVIPERpoints[5].y, FARVIPERpoints[5].z);
vertex(FARVIPERpoints[4].x, FARVIPERpoints[4].y, FARVIPERpoints[4].z);

vertex(FARVIPERpoints[6].x, FARVIPERpoints[6].y, FARVIPERpoints[6].z);
vertex(FARVIPERpoints[2].x, FARVIPERpoints[2].y, FARVIPERpoints[2].z);
vertex(FARVIPERpoints[3].x, FARVIPERpoints[3].y, FARVIPERpoints[3].z);

vertex(FARVIPERpoints[3].x, FARVIPERpoints[3].y, FARVIPERpoints[3].z);
vertex(FARVIPERpoints[1].x, FARVIPERpoints[1].y, FARVIPERpoints[1].z);
vertex(FARVIPERpoints[4].x, FARVIPERpoints[4].y, FARVIPERpoints[4].z);

vertex(FARVIPERpoints[2].x, FARVIPERpoints[2].y, FARVIPERpoints[2].z);
vertex(FARVIPERpoints[1].x, FARVIPERpoints[1].y, FARVIPERpoints[1].z);
vertex(FARVIPERpoints[3].x, FARVIPERpoints[3].y, FARVIPERpoints[3].z);

vertex(FARVIPERpoints[8].x, FARVIPERpoints[8].y, FARVIPERpoints[8].z);
vertex(FARVIPERpoints[9].x, FARVIPERpoints[9].y, FARVIPERpoints[9].z);
vertex(FARVIPERpoints[10].x, FARVIPERpoints[10].y, FARVIPERpoints[10].z);

vertex(FARVIPERpoints[2].x, FARVIPERpoints[2].y, FARVIPERpoints[2].z);
vertex(FARVIPERpoints[6].x, FARVIPERpoints[6].y, FARVIPERpoints[6].z);
vertex(FARVIPERpoints[0].x, FARVIPERpoints[0].y, FARVIPERpoints[0].z);

vertex(FARVIPERpoints[0].x, FARVIPERpoints[0].y, FARVIPERpoints[0].z);
vertex(FARVIPERpoints[5].x, FARVIPERpoints[5].y, FARVIPERpoints[5].z);
vertex(FARVIPERpoints[1].x, FARVIPERpoints[1].y, FARVIPERpoints[1].z);

vertex(FARVIPERpoints[0].x, FARVIPERpoints[0].y, FARVIPERpoints[0].z);
vertex(FARVIPERpoints[4].x, FARVIPERpoints[4].y, FARVIPERpoints[4].z);
vertex(FARVIPERpoints[5].x, FARVIPERpoints[5].y, FARVIPERpoints[5].z);

vertex(FARVIPERpoints[3].x, FARVIPERpoints[3].y, FARVIPERpoints[3].z);
vertex(FARVIPERpoints[7].x, FARVIPERpoints[7].y, FARVIPERpoints[7].z);
vertex(FARVIPERpoints[6].x, FARVIPERpoints[6].y, FARVIPERpoints[6].z);
endShape();
popMatrix();
    
}
//----------------------------------------------------------------

//Object name: VIPERpoints
PVector[] VIPERpoints = new PVector[]{
new PVector(0,30,0),
new PVector(-45,30,-100),
new PVector(45,30,-100),
new PVector(45,-30,-100),
new PVector(0,-30,0),
new PVector(-45,-30,-100),
new PVector(-80,0,-100),
new PVector(80,0,-100),
new PVector(0,0,100),
new PVector(-10,-15,-100),
new PVector(-10,15,-100),
new PVector(-40,0,-100),
new PVector(10,15,-100),
new PVector(10,-15,-100),
new PVector(40,0,-100)
};

void drawVIPER(){
pushMatrix();
rotateX(frameCount*PI/280);
rotateY(frameCount*PI/170);
rotateZ(frameCount*PI/90);
beginShape(TRIANGLES);
fill(0);
stroke(255);
vertex(VIPERpoints[0].x, VIPERpoints[0].y, VIPERpoints[0].z);
vertex(VIPERpoints[1].x, VIPERpoints[1].y, VIPERpoints[1].z);
vertex(VIPERpoints[2].x, VIPERpoints[2].y, VIPERpoints[2].z);

vertex(VIPERpoints[5].x, VIPERpoints[5].y, VIPERpoints[5].z);
vertex(VIPERpoints[4].x, VIPERpoints[4].y, VIPERpoints[4].z);
vertex(VIPERpoints[3].x, VIPERpoints[3].y, VIPERpoints[3].z);

vertex(VIPERpoints[1].x, VIPERpoints[1].y, VIPERpoints[1].z);
vertex(VIPERpoints[6].x, VIPERpoints[6].y, VIPERpoints[6].z);
vertex(VIPERpoints[5].x, VIPERpoints[5].y, VIPERpoints[5].z);

vertex(VIPERpoints[7].x, VIPERpoints[7].y, VIPERpoints[7].z);
vertex(VIPERpoints[2].x, VIPERpoints[2].y, VIPERpoints[2].z);
vertex(VIPERpoints[3].x, VIPERpoints[3].y, VIPERpoints[3].z);

vertex(VIPERpoints[3].x, VIPERpoints[3].y, VIPERpoints[3].z);
vertex(VIPERpoints[1].x, VIPERpoints[1].y, VIPERpoints[1].z);
vertex(VIPERpoints[5].x, VIPERpoints[5].y, VIPERpoints[5].z);

vertex(VIPERpoints[2].x, VIPERpoints[2].y, VIPERpoints[2].z);
vertex(VIPERpoints[1].x, VIPERpoints[1].y, VIPERpoints[1].z);
vertex(VIPERpoints[3].x, VIPERpoints[3].y, VIPERpoints[3].z);

vertex(VIPERpoints[9].x, VIPERpoints[9].y, VIPERpoints[9].z);
vertex(VIPERpoints[10].x, VIPERpoints[10].y, VIPERpoints[10].z);
vertex(VIPERpoints[11].x, VIPERpoints[11].y, VIPERpoints[11].z);

vertex(VIPERpoints[12].x, VIPERpoints[12].y, VIPERpoints[12].z);
vertex(VIPERpoints[13].x, VIPERpoints[13].y, VIPERpoints[13].z);
vertex(VIPERpoints[14].x, VIPERpoints[14].y, VIPERpoints[14].z);

vertex(VIPERpoints[8].x, VIPERpoints[8].y, VIPERpoints[8].z);
vertex(VIPERpoints[0].x, VIPERpoints[0].y, VIPERpoints[0].z);
vertex(VIPERpoints[2].x, VIPERpoints[2].y, VIPERpoints[2].z);

vertex(VIPERpoints[2].x, VIPERpoints[2].y, VIPERpoints[2].z);
vertex(VIPERpoints[7].x, VIPERpoints[7].y, VIPERpoints[7].z);
vertex(VIPERpoints[8].x, VIPERpoints[8].y, VIPERpoints[8].z);

vertex(VIPERpoints[1].x, VIPERpoints[1].y, VIPERpoints[1].z);
vertex(VIPERpoints[0].x, VIPERpoints[0].y, VIPERpoints[0].z);
vertex(VIPERpoints[8].x, VIPERpoints[8].y, VIPERpoints[8].z);

vertex(VIPERpoints[8].x, VIPERpoints[8].y, VIPERpoints[8].z);
vertex(VIPERpoints[6].x, VIPERpoints[6].y, VIPERpoints[6].z);
vertex(VIPERpoints[1].x, VIPERpoints[1].y, VIPERpoints[1].z);

vertex(VIPERpoints[5].x, VIPERpoints[5].y, VIPERpoints[5].z);
vertex(VIPERpoints[8].x, VIPERpoints[8].y, VIPERpoints[8].z);
vertex(VIPERpoints[4].x, VIPERpoints[4].y, VIPERpoints[4].z);

vertex(VIPERpoints[8].x, VIPERpoints[8].y, VIPERpoints[8].z);
vertex(VIPERpoints[5].x, VIPERpoints[5].y, VIPERpoints[5].z);
vertex(VIPERpoints[6].x, VIPERpoints[6].y, VIPERpoints[6].z);

vertex(VIPERpoints[4].x, VIPERpoints[4].y, VIPERpoints[4].z);
vertex(VIPERpoints[8].x, VIPERpoints[8].y, VIPERpoints[8].z);
vertex(VIPERpoints[3].x, VIPERpoints[3].y, VIPERpoints[3].z);

vertex(VIPERpoints[3].x, VIPERpoints[3].y, VIPERpoints[3].z);
vertex(VIPERpoints[8].x, VIPERpoints[8].y, VIPERpoints[8].z);
vertex(VIPERpoints[7].x, VIPERpoints[7].y, VIPERpoints[7].z);
endShape();
popMatrix();
    
}
//----------------------------------------------------------------

//Object name: WORMpoints
PVector[] WORMpoints = new PVector[]{
new PVector(75,54,-150),
new PVector(36,-18,111),
new PVector(-36,-18,111),
new PVector(-75,54,-150),
new PVector(36,-54,150),
new PVector(-36,-54,150),
new PVector(111,-54,-150),
new PVector(60,-54,111),
new PVector(-60,-54,111),
new PVector(-111,-54,-150),
new PVector(15,-18,111),
new PVector(0,-48,141),
new PVector(-15,-18,111),
new PVector(60,33,-150),
new PVector(-60,33,-150),
new PVector(66,18,-150),
new PVector(-66,18,-150)
};

void drawWORM(){
pushMatrix();
rotateX(frameCount*PI/280);
rotateY(frameCount*PI/170);
rotateZ(frameCount*PI/90);
beginShape(TRIANGLES);
fill(0);
stroke(255);
vertex(WORMpoints[0].x, WORMpoints[0].y, WORMpoints[0].z);
vertex(WORMpoints[1].x, WORMpoints[1].y, WORMpoints[1].z);
vertex(WORMpoints[2].x, WORMpoints[2].y, WORMpoints[2].z);

vertex(WORMpoints[2].x, WORMpoints[2].y, WORMpoints[2].z);
vertex(WORMpoints[3].x, WORMpoints[3].y, WORMpoints[3].z);
vertex(WORMpoints[0].x, WORMpoints[0].y, WORMpoints[0].z);

vertex(WORMpoints[1].x, WORMpoints[1].y, WORMpoints[1].z);
vertex(WORMpoints[4].x, WORMpoints[4].y, WORMpoints[4].z);
vertex(WORMpoints[2].x, WORMpoints[2].y, WORMpoints[2].z);

vertex(WORMpoints[4].x, WORMpoints[4].y, WORMpoints[4].z);
vertex(WORMpoints[5].x, WORMpoints[5].y, WORMpoints[5].z);
vertex(WORMpoints[2].x, WORMpoints[2].y, WORMpoints[2].z);

vertex(WORMpoints[0].x, WORMpoints[0].y, WORMpoints[0].z);
vertex(WORMpoints[6].x, WORMpoints[6].y, WORMpoints[6].z);
vertex(WORMpoints[7].x, WORMpoints[7].y, WORMpoints[7].z);

vertex(WORMpoints[7].x, WORMpoints[7].y, WORMpoints[7].z);
vertex(WORMpoints[1].x, WORMpoints[1].y, WORMpoints[1].z);
vertex(WORMpoints[0].x, WORMpoints[0].y, WORMpoints[0].z);

vertex(WORMpoints[4].x, WORMpoints[4].y, WORMpoints[4].z);
vertex(WORMpoints[1].x, WORMpoints[1].y, WORMpoints[1].z);
vertex(WORMpoints[7].x, WORMpoints[7].y, WORMpoints[7].z);

vertex(WORMpoints[2].x, WORMpoints[2].y, WORMpoints[2].z);
vertex(WORMpoints[8].x, WORMpoints[8].y, WORMpoints[8].z);
vertex(WORMpoints[3].x, WORMpoints[3].y, WORMpoints[3].z);

vertex(WORMpoints[5].x, WORMpoints[5].y, WORMpoints[5].z);
vertex(WORMpoints[8].x, WORMpoints[8].y, WORMpoints[8].z);
vertex(WORMpoints[2].x, WORMpoints[2].y, WORMpoints[2].z);

vertex(WORMpoints[6].x, WORMpoints[6].y, WORMpoints[6].z);
vertex(WORMpoints[3].x, WORMpoints[3].y, WORMpoints[3].z);
vertex(WORMpoints[9].x, WORMpoints[9].y, WORMpoints[9].z);

vertex(WORMpoints[6].x, WORMpoints[6].y, WORMpoints[6].z);
vertex(WORMpoints[0].x, WORMpoints[0].y, WORMpoints[0].z);
vertex(WORMpoints[3].x, WORMpoints[3].y, WORMpoints[3].z);

vertex(WORMpoints[13].x, WORMpoints[13].y, WORMpoints[13].z);
vertex(WORMpoints[14].x, WORMpoints[14].y, WORMpoints[14].z);
vertex(WORMpoints[15].x, WORMpoints[15].y, WORMpoints[15].z);

vertex(WORMpoints[14].x, WORMpoints[14].y, WORMpoints[14].z);
vertex(WORMpoints[16].x, WORMpoints[16].y, WORMpoints[16].z);
vertex(WORMpoints[15].x, WORMpoints[15].y, WORMpoints[15].z);

vertex(WORMpoints[8].x, WORMpoints[8].y, WORMpoints[8].z);
vertex(WORMpoints[9].x, WORMpoints[9].y, WORMpoints[9].z);
vertex(WORMpoints[3].x, WORMpoints[3].y, WORMpoints[3].z);

vertex(WORMpoints[6].x, WORMpoints[6].y, WORMpoints[6].z);
vertex(WORMpoints[9].x, WORMpoints[9].y, WORMpoints[9].z);
vertex(WORMpoints[8].x, WORMpoints[8].y, WORMpoints[8].z);

vertex(WORMpoints[8].x, WORMpoints[8].y, WORMpoints[8].z);
vertex(WORMpoints[7].x, WORMpoints[7].y, WORMpoints[7].z);
vertex(WORMpoints[6].x, WORMpoints[6].y, WORMpoints[6].z);

vertex(WORMpoints[8].x, WORMpoints[8].y, WORMpoints[8].z);
vertex(WORMpoints[5].x, WORMpoints[5].y, WORMpoints[5].z);
vertex(WORMpoints[7].x, WORMpoints[7].y, WORMpoints[7].z);

vertex(WORMpoints[5].x, WORMpoints[5].y, WORMpoints[5].z);
vertex(WORMpoints[4].x, WORMpoints[4].y, WORMpoints[4].z);
vertex(WORMpoints[7].x, WORMpoints[7].y, WORMpoints[7].z);

vertex(WORMpoints[10].x, WORMpoints[10].y, WORMpoints[10].z);
vertex(WORMpoints[1].x, WORMpoints[1].y, WORMpoints[1].z);
vertex(WORMpoints[11].x, WORMpoints[11].y, WORMpoints[11].z);

vertex(WORMpoints[11].x, WORMpoints[11].y, WORMpoints[11].z);
vertex(WORMpoints[2].x, WORMpoints[2].y, WORMpoints[2].z);
vertex(WORMpoints[12].x, WORMpoints[12].y, WORMpoints[12].z);
endShape();
popMatrix();
    
}
//----------------------------------------------------------------

//Object name: ZARCHpoints
PVector[] ZARCHpoints = new PVector[]{
new PVector(0,40,0),
new PVector(-60,-20,100),
new PVector(60,-20,100),
new PVector(80,0,-40),
new PVector(0,-20,-80),
new PVector(-80,0,-40),
new PVector(0,-20,-20),
new PVector(-20,-20,40),
new PVector(20,-20,40)
};

void drawZARCH(){
pushMatrix();
rotateX(frameCount*PI/280);
rotateY(frameCount*PI/170);
rotateZ(frameCount*PI/90);
beginShape(TRIANGLES);
fill(0);
stroke(255);
vertex(ZARCHpoints[5].x, ZARCHpoints[5].y, ZARCHpoints[5].z);
vertex(ZARCHpoints[4].x, ZARCHpoints[4].y, ZARCHpoints[4].z);
vertex(ZARCHpoints[0].x, ZARCHpoints[0].y, ZARCHpoints[0].z);

vertex(ZARCHpoints[4].x, ZARCHpoints[4].y, ZARCHpoints[4].z);
vertex(ZARCHpoints[3].x, ZARCHpoints[3].y, ZARCHpoints[3].z);
vertex(ZARCHpoints[0].x, ZARCHpoints[0].y, ZARCHpoints[0].z);

vertex(ZARCHpoints[1].x, ZARCHpoints[1].y, ZARCHpoints[1].z);
vertex(ZARCHpoints[5].x, ZARCHpoints[5].y, ZARCHpoints[5].z);
vertex(ZARCHpoints[0].x, ZARCHpoints[0].y, ZARCHpoints[0].z);

vertex(ZARCHpoints[2].x, ZARCHpoints[2].y, ZARCHpoints[2].z);
vertex(ZARCHpoints[1].x, ZARCHpoints[1].y, ZARCHpoints[1].z);
vertex(ZARCHpoints[0].x, ZARCHpoints[0].y, ZARCHpoints[0].z);

vertex(ZARCHpoints[3].x, ZARCHpoints[3].y, ZARCHpoints[3].z);
vertex(ZARCHpoints[2].x, ZARCHpoints[2].y, ZARCHpoints[2].z);
vertex(ZARCHpoints[0].x, ZARCHpoints[0].y, ZARCHpoints[0].z);

vertex(ZARCHpoints[5].x, ZARCHpoints[5].y, ZARCHpoints[5].z);
vertex(ZARCHpoints[1].x, ZARCHpoints[1].y, ZARCHpoints[1].z);
vertex(ZARCHpoints[4].x, ZARCHpoints[4].y, ZARCHpoints[4].z);

vertex(ZARCHpoints[2].x, ZARCHpoints[2].y, ZARCHpoints[2].z);
vertex(ZARCHpoints[3].x, ZARCHpoints[3].y, ZARCHpoints[3].z);
vertex(ZARCHpoints[4].x, ZARCHpoints[4].y, ZARCHpoints[4].z);

vertex(ZARCHpoints[1].x, ZARCHpoints[1].y, ZARCHpoints[1].z);
vertex(ZARCHpoints[2].x, ZARCHpoints[2].y, ZARCHpoints[2].z);
vertex(ZARCHpoints[4].x, ZARCHpoints[4].y, ZARCHpoints[4].z);

vertex(ZARCHpoints[7].x, ZARCHpoints[7].y, ZARCHpoints[7].z);
vertex(ZARCHpoints[8].x, ZARCHpoints[8].y, ZARCHpoints[8].z);
vertex(ZARCHpoints[6].x, ZARCHpoints[6].y, ZARCHpoints[6].z);
endShape();
popMatrix();
    
}
