/* Di Santi Sabrina
   Legajo: 92723/6
   tp0, comisión 2  
   video: 
   */
 PImage imagen;
 
 void setup(){ 
   size(800,400);
   background(255);
   imagen = loadImage("imagentp2.jpeg");
   
 }
 void draw(){
   image(imagen,0,0);
   
   noStroke();
   for(int i=0; i<90; i+=2){
     fill(0);
     rect(10*i+3,10*i+3,150,150);
     fill(255);
     rect(10*i+10,10*i+10,150,150);
   
   }
   
   for(int i=1; i<90; i+=2){
     fill(0);
     rect(10*i+195,10*i,100,100);
     fill(255);
     rect(10*i+200,10*i+5,100,100);
   
   }
   
   
   
 }
 void mousePressed(){
   
 }  
