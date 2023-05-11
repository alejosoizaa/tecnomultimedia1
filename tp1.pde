//Alejo Soiza
//tp1, comision 1 
PImage imagen1,imagen2,imagen3,imagen4;
PFont miFont;
int contador;
int estado;
float textTamaño, textMovX, textMovY, textMovY2;
int segundos;

void setup (){
  size (640, 480); 
  imagen1 = loadImage("imagen 1.jpg"); 
  imagen2 = loadImage("imagen 2.jpg"); 
  imagen3 = loadImage("imagen 3.jpg"); 
  imagen4 = loadImage("imagen 4.jpg"); 
  miFont = loadFont ("PalatinoLinotype-Roman-48.vlw");
  textAlign (CENTER, CENTER);
  estado = 0;
  textMovX = 0;
  textMovY = 0;
  textMovY2 = 0;
  segundos = 7000;
}
  void draw (){
    textFont (miFont);
    int diferenciaTemporal = millis () - contador;
    if (estado == 0){
     textMovY = textMovY+1; 
     if (textMovY>=100){
      textMovY=100;
}
    image (imagen1, 0, 0, 640, 480);
    fill (0,0,0);
    textSize (40);
    text ("ESTADIO JUAN\n CARMELO ZERILLO\n Avenida 60 y 118", 320, textMovY);
    if (diferenciaTemporal>=segundos){
     estado = 1;
     contador = millis ();
     textMovY = 0;
    }
    }else if (estado == 1){
     textMovX = textMovX+1.50;
     if (textMovX>=320){
      textMovX=320;
    }
    image (imagen2, 0, 0, 640, 480);
    fill (0,0,0);
    textSize (20);
    text ("CAPACIDAD PARA\n 25.000 ESPECTADORES", textMovX, 230); 
    if (diferenciaTemporal>=segundos){
     estado = 2;
     contador = millis ();
     textMovX = 0;
    }
    }else if (estado == 2){
     textMovY2= textMovY2+1;
     if (textMovY2>=320){
    textMovY2=320;
    }
    image (imagen3, 0, 0, 640, 480);
    fill (255);
    textSize (29);
    textAlign (CENTER, CENTER);
    text ("PARTIDO INAUGURAL\n 26 DE ABRIL DE 1924 \n Gimnasia 3 – Estudiantil Porteño 0", textMovY2, 100);
    if (diferenciaTemporal>=segundos){
     estado = 3;
     contador = millis ();
     textMovY2 = 0;
     
    }
    }
    
    else if (estado == 3){
     textMovY = textMovY+1.50;
     if (textMovY>=120){
      textMovY=120;
    }
    image (imagen4, 0, 0, 640, 480);
    fill (1,39,85);
    text ("GIMNASIA Y ESGRIMA \n LA PLATA",320, textMovY );
    textSize(20);
    fill (255);
    text ("toca el botón para volver a ver", 330, 360);
    fill (255);
    circle (330,400, 45);
    if (mousePressed){
     if (dist(330, 400, mouseX, mouseY)<50/2)
    {
    fill (255);
    circle (330, 400, 45);
    if (diferenciaTemporal>segundos){
     estado = 0;
     contador = millis ();
     textMovX = 0;
    }
    }
    }
    }
    println (millis()+"-"+contador+"="+diferenciaTemporal);
}
