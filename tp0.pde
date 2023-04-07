PImage paisaje;
void setup(){
size(800,400);
paisaje = loadImage ("paisaje.jpeg"); 
}
void draw(){
 
background(8,135,201);
image(paisaje,0,0);

 //arena
  noStroke();                 
  fill(250,233,167);          
 rect(400,340,400,65);       
 
 fill(255,253,206);
 rect(400,320,400,20);  
 
 //mar
 fill(100,234,247);         
 rect(400,200,400,120);     
 
//fondo del mar
 fill(1,61,67);          
 rect(400,200,400,5);        
 
//nubes 
 fill(255);
 circle(415,195,15);
 circle(430,188,30);
 circle(455,180,45);
 circle(480,188,30);
 circle(495,195,15);
 circle(618,160,75);
 circle(570,169,45);
 circle(668,168,45);
 
 //palmera
fill(126,84,50);
quad(760,100,737,400,800,400,800,100);


fill(15,103,24);
triangle(693,71,676,137,890,50);
triangle(626,31,750,35,771,64);
triangle(685,0,800,55,800,0);
fill(7,165,18);
triangle(612,210,740,134,645,121);
triangle(602,74,700,45,640,30);
 fill(98,39,0);
 circle(780,75,70);
 
 


}
