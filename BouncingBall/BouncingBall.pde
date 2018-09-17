/*
  ball_1
  ball_2
  ball_3
  All different sizes
*/

//int velocity = 15;
//float gravity = 9.8;
//int initX = 500;
//int initY = height/2;

//int velocity=5;

float gravity = 0.9;
//Ball 1
float velocity_1 = -10;
float xVelocity_1 = 2;
float ballY_1;
float ballX_1;
float ballSize_1 = 32;

//Ball 2
float velocity_2 = 2;
float xVelocity_2 = 10;
float ballY_2;
float ballX_2;
float ballSize_2 = 50;

//Ball 3
float velocity_3 = -2;
float xVelocity_3 = -10;
float ballY_3;
float ballX_3;
float ballSize_3 = 24;

int r1,g1,b1;

void setup(){
  size(600,400);
  background(51);
  smooth();
  ballY_1 = 25;
  ballY_2 = 55;
  ballY_3 = 75;
  ballX_1=100;
  ballX_2=100;
  ballX_3=100;
}

void draw(){
  background(51);
  ellipse(ballX_1,ballY_1,ballSize_1,ballSize_1);
  
  ellipse(ballX_2,ballY_2,ballSize_2,ballSize_2);
  
  ellipse(ballX_3,ballY_3,ballSize_3,ballSize_3);
  
  velocity_1 += 0.25;
  velocity_2 += 0.25;
  velocity_3 += 0.25;
  
  ballY_1 += velocity_1;
  ballY_2 += velocity_2;
  ballY_3 += velocity_3;
  
  ballX_1 += xVelocity_1;
  ballX_2 += xVelocity_2;
  ballX_3 += xVelocity_3;
  
  r1 = (int)random(255);
  g1 = (int)random(255);
  b1= (int)random(255);

  
  //Ball 1 Y control
  if(ballY_1>height-ballSize_1){
    if(velocity_1<-1||velocity_1>=1){
      fill(r1,g1,1);
    }
    ballY_1 = height - ballSize_1;
    
    velocity_1 *= -gravity;
    //print(velocity);
  }else if(ballY_1<0-ballSize_1){
    if(velocity_1<-1||velocity_1>=1){
      fill(r1,g1,1);
    }
    ballY_1 = 0 + ballSize_1;
    velocity_1 *= -1;
  }
  //Ball 2 Y control
  if(ballY_2>height-ballSize_2){
    if(velocity_2<-1||velocity_2>=1){
      fill(r1,g1,b1);
    }
    ballY_2 = height - ballSize_2;
    velocity_2 *= -(gravity-0.05);
  }else if(ballY_2<0-ballSize_2){
    if(velocity_2<-1||velocity_2>=1){
      fill(r1,g1,1);
    }
    ballY_2 = 0 + ballSize_2;
    velocity_2 *= -2;
  }
  //Ball 3 Y control
  if(ballY_3>height-ballSize_3){
    if(velocity_3<-1||velocity_3>=1){
      fill(r1,g1,b1);
    }
    ballY_3 = height - ballSize_3;
    velocity_3 = velocity_3 *-(gravity+0.02);
  }else if(ballY_3<0-ballSize_3){
    if(velocity_3<-1||velocity_3>=1){
      fill(r1,g1,1);
    }
    ballY_3 = 0 + ballSize_3;
    velocity_3 *= -1;
  }
  
  
  //Ball 1 X control
  if(ballX_1>width-ballSize_1){
    if(xVelocity_1<-1||xVelocity_1>=1){
      fill(r1,g1,b1);
    }
    ballX_1 = width - ballSize_1;
    xVelocity_1 *= -gravity;
  }else if(ballX_1<0+ballSize_1){
    if(xVelocity_1<-1||xVelocity_1>=1){
      fill(r1,g1,b1);
    }
    ballX_1 = 0 + ballSize_1;
    xVelocity_1 *= -gravity;
  }
  //Ball 2 X control
  if(ballX_2>width-ballSize_2){
    if(xVelocity_2<-1||xVelocity_2>=1){
      fill(r1,g1,b1);
    }
    ballX_2 = width - ballSize_2;
    xVelocity_2 *= -gravity;
  }else if(ballX_2<0+ballSize_2){
    if(xVelocity_2<-1||xVelocity_2>=1){
      fill(r1,g1,b1);
    }
    ballX_2 = 0 + ballSize_2;
    xVelocity_2 *= -gravity;
  }
  //Ball 3 X control
  if(ballX_3>width-ballSize_3){
    if(xVelocity_3<-1||xVelocity_3>=1){
      fill(r1,g1,b1);
    }
    ballX_3 = width - ballSize_3;
    xVelocity_3 *= -gravity;
  }else if(ballX_3<0+ballSize_3){
    if(xVelocity_3<-1||xVelocity_3>=1){
      fill(r1,g1,b1);
    }
    ballX_3 = 0 + ballSize_3;
    xVelocity_3 *= -gravity;
  }
  
  //println("bally 1 "+ballY_1+" bally 2 "+ballY_2+" bally 1 "+ballY_2);
  
}
