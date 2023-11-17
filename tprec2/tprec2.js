let juego;
let imgJugador, imgEnemigo, imgObstaculo, imgFondo, imgInicio;
let pantalla;

function preload() {
  // Carga las imágenes
  imgJugador   = loadImage('personaje.PNG');
  imgEnemigo   = loadImage('enemigo.PNG');
  imgObstaculo = loadImage('obstaculo.PNG');
  imgFondo     = loadImage('fondo.PNG');
  imgInicio    = loadImage('inicio.PNG');
}

function setup() {
  createCanvas(600, 400);
  juego = new Juego();
  pantalla = new Pantalla();
}

function draw() {
  // Mostrar fondo
  image(imgFondo, 0, 0, width, height);

  // Mostrar según el estado actual
  pantalla.mostrar();
}

function keyPressed() {
  if (keyCode === UP_ARROW) {
  juego.jugador.saltar(); }
  // Manejar eventos de teclado según el estado actual
  pantalla.keyPressed();
}
