var columns;
var rows = 8;
var cellDiam = 110;
var maps = [];

function setup() {
  createCanvas(windowWidth, windowHeight);
  ellipseMode(CENTER);

  columns = (width/cellDiam) -1;
  rows = (height/cellDiam) -1;

  init();
}

function init(){
  maps.length = 0;
  for (let y = 0; y < rows; y++) {
    for (let x = 0; x < columns; x++) {
      maps.push(new NeuroMap(x * cellDiam, y * cellDiam));
    }
  }
}

function mousePressed(){
  init();
}

function draw() {
  background(255);

  maps.forEach(function(nMap) {
    nMap.draw();
  });
}


class NeuroMap {

  constructor(originX, originY) {
    this.originX = originX;
    this.originY = originY;
    this.radius = cellDiam / 6;
    this.radiusVariation = random(this.radius * 1.1, this.radius * 1.5);
    this.noiseScale = 0.2;

    if (random(0, 100) > 90) {
      this.noiseScale = random(0.5, 2.5);
      this.radiusVariation = random(this.radius * 1.5, this.radius * 2.8);
    }

    this.segments = 50;
    
    this.eyeASize = 4 + random(0, 4);
    this.eyeBSize = 4 + random(0, 4);
    this.eyeAHeight = random(-3, 3);
    this.eyeBHeight = this.eyeAHeight + random(-2, 2);
    this.eyeAX = this.originX + cellDiam / 2 - 5;
    this.eyeBX = this.originX + cellDiam / 2 + 5;
    this.eyeY = this.originY + this.eyeAHeight + (cellDiam- (cellDiam/3));
    this.nextBlink = millis() + random(3000, 55000);

  }
  
  coord(pointIndex) {
    var angle = TWO_PI / this.segments * pointIndex;
    var cosAngle = cos(angle);
    var sinAngle = sin(angle);
    var time = (frameCount) * 1e-2;
    var noiseValue = noise(this.originX + (this.noiseScale*cosAngle + this.noiseScale), this.originY + (this.noiseScale*sinAngle + this.noiseScale), time);
    var coordRadius = this.radius + this.radiusVariation * noiseValue;
    return createVector(this.originX + (cellDiam/2) + coordRadius*cosAngle, this.originY + (cellDiam/2) + coordRadius*sinAngle);
  }

  draw() {
    noFill();
  
    for (let i = 0; i < this.segments; ++i) {
      let a = this.coord(i);
      let b = this.coord(i + 1);
      stroke(0);
      line(a.x, a.y, b.x, b.y);
    }
    
    if(millis() > this.nextBlink){
      if(millis() < this.nextBlink + 500){        
        arc(this.eyeAX, this.eyeY+1, this.eyeASize, this.eyeASize, 0, PI);
        arc(this.eyeBX, this.eyeY+1, this.eyeBSize, this.eyeBSize, 0, PI);
      }else{
         this.nextBlink = millis() + random(11000, 45000);
      }
    }else{
      ellipse(this.eyeAX, this.eyeY, this.eyeASize, this.eyeASize);
      ellipse(this.eyeBX, this.eyeY + this.eyeBHeight, this.eyeBSize, this.eyeBSize);
    }
    
    
  }
}