//Di Santi Sabrina
// Legajo 92723/6
//TP 1
int x, y, d;
float distancia, radio;
int colorBtn;
String estado;
int c; //contador
float variableTexto;
//Fuente
PFont fuente;
//imagenes
PImage gatoLaperm;
PImage angoraTurco;
PImage gatoBosqueNoruego;
PImage coonMaine;
PImage gatoLince;

void setup() {
  size(640, 480 ); 
  textAlign( CENTER, CENTER );
  textSize(30);
  fill(20);

  x = 200;
  y = 300;
  d = 50;

  estado = "inicio";
  variableTexto = 0;
  fuente =loadFont("Calibri-Italic-48.vlw");
  
  gatoLaperm = loadImage("Gato-Laperm.jpg");
  angoraTurco = loadImage("angora-turco.jpg");
  gatoBosqueNoruego = loadImage("gato-bosque-noruego.jpg");
  coonMaine = loadImage("Coon_Maine.jpg");
  gatoLince = loadImage("gato-lince.jpg");
}

void draw() {
 //boton
  background(200);
  distancia = dist(x, y, mouseX, mouseY);
  radio = d / 2;
  
  //color_boton = mouseOver
  if ( distancia < radio ) {
    colorBtn = 180;
    if ( mousePressed ) {
      colorBtn = 20;
    }
  } else {
    colorBtn = 255;
  }

  fill( colorBtn );
  circle( x, y, d );
  
  
  //estados
  if ( estado.equals("inicio") ) {
    background(240,120,100);
    fill(0);
    textFont(fuente);
    textSize(30);
    text( "5 razas de michis raros", width/2, height/2 );
    circle( width/2, height/4*3, 50 );
    
  } else if (estado.equals("p1") ) {
    background(69,37,203);
    fill(0);
    image (gatoLaperm,75,0);
    textFont(fuente);
    textSize(30);
    text( "Laperm \n Este gato fue el resultado de \n una mutación genética espontánea en \n una camada de gatos atigrados.", variableTexto, height/2 );
    
    
    c++; 
    variableTexto = variableTexto + 0.5;
    if( c >= 700 ){ 
      estado = "p2";
      c = 0;  
      variableTexto = 0;
    }
    //
  } else if (estado.equals("p2") ) {
    background(37,203,82);
    fill(0);
    image (angoraTurco,75,0);
    textFont(fuente);
    textSize(30);
    text( "Angora Turco \n Son conocidos por tener el pelo \n blanco y sedoso y por tener heterochromia.", width/2, variableTexto );
    //
    c++; 
    variableTexto = variableTexto + 0.5;
    if( c >= 700 ){  
      estado = "p3";
      c = 0;  
      variableTexto = 0;
     }
   }
   
    //
   else if (estado.equals("p3") ) {
    background(203,90,37);
    fill(0);
    image (gatoBosqueNoruego,78,0);
    textFont(fuente);
    textSize(30);
    text( "Gato del bosque Noruego \n Se los reconoce por lo grandes que son \n y en la década de 1970 el rey noruego \n los designó como el gato oficial.", variableTexto, height/2 );
    //
    c++; 
    variableTexto = variableTexto + 0.5;
    if( c >= 700 ){  
      estado = "p4";
      c = 0;
      variableTexto = 0;
     }
    }
    //
    else if (estado.equals("p4") ) {
    background(80,35,118);
    fill(255);
    image (coonMaine,110,0);
    textFont(fuente);
    textSize(30);
    text( "Coon de Maine \n En 1950 estuvieron en peligro de extinción, \n su cuerpo es incluso más grande que el de \n los gatos del bosque noruego ", width/2, variableTexto );
    //
    c++; 
    variableTexto = variableTexto + 0.5;
    if( c >= 700 ){  
      estado = "p5";
      c = 0;
      variableTexto = 0;
     }
    }

    //
  else if (estado.equals("p5") ) {
    background(232,130,47);
    fill(0);
    image (gatoLince,0,30);
    textFont(fuente);
    textSize(30);
    text( "Gato Lince \n Mide aproximadamente 75 centímetros de largo \n se consideran mascotas exóticas \n y hace unos años eran gatos monteces", variableTexto, height/2 );
     c++; 
     variableTexto = variableTexto + 0.5;
    if( c >= 700 ){  
      estado = "p6";
      c = 0; 
      variableTexto = 0;
     }
    }
    else {
    background(240,120,100);
    fill(0);
    textFont(fuente);
    textSize(50);
    text( "Fin", width/2, height/2 );
    rect(265,263,120,50);
    
  }
  println(mouseX, mouseY); 
 } //cierraa el draw
  
void mousePressed() { 
   if( estado.equals("inicio") ) {
    if( dist(width/2, height/4*3, mouseX, mouseY) < 50/2 ){
      estado = "p1";
    }
  }
  if( estado.equals("p6") ){
      if(mouseX>265 && mouseX<385 && mouseY>263 && mouseY<313){
     estado = "inicio" ;
     variableTexto = 0;
   }
  }
 }
