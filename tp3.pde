// TP3 - Aventura Gráfica
// Di Santi Sabrina - Leg. 92723/6
// video:


string[] pantallas = new string{"Inicio", "Credito", "Historia1", "Historia2", "Historia3", "Historia4", "Historia5", "Historia6"};

PImage[] imagenes = new PImage[];
string[] textos = new string{"1er mensaje", "2do mensaje", "3er mensaje", "4to mensaje"};

void setup() {
  size(600, 600);

  //carga de las imagenes
  imagenes = cargarImagenes(pantallas);

}

PImage[] cargarImagenes(string[] screens){
    PImage[] imgs = new PImage[];
    for( int i = 0 ; i < imgs.lenght ; i++ ){
        imgs[i] = loadImage( "data/" + imgs[i] + ".png" );
    }
    return imgs;
}

void dibujarBotones(){
    fill(255);
    rect(100,200,50,100);
    textSize(30);
    text(eltexto,220,350);
}
 
void dibujarTexto(string texto){
    fill(255);
    rect(100,100,400,100);
    textSize(40);
     text(texto,220,350);
     textAlign(CENTER);
}
