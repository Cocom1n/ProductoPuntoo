PVector posPersonaje;
PVector posTesoro;
PVector vector;
PVector destino;

public void setup(){
  size(400,400);
}

public void draw(){
 background(200);
 posPersonaje = new PVector(mouseX,mouseY);
 dibujarpersonaje();
 posTesoro= new PVector(width/2,height/2);
 dibujarTesoro();
 dibujarVector();
 escribirmsg();
 
}

public void dibujarTesoro(){
  strokeWeight(10);
  color(225);
  point(posTesoro.x, posTesoro.y);
}

public void dibujarpersonaje(){
  strokeWeight(3);
    line(posPersonaje.x, posPersonaje.y,posPersonaje.x+30,posPersonaje.y);
}

public void dibujarVector(){
  strokeWeight(3);
  vector = PVector.sub(posPersonaje,posTesoro).normalize().mult(30);
  line(posPersonaje.x,posPersonaje.y,posTesoro.x+vector.x, posTesoro.y+vector.y);
}

public void escribirmsg(){
  float dotProduct = PVector.dot(posPersonaje,vector);
  println(dotProduct);
  textSize(15);
  fill(250);
  text(dotProduct,20,20);
  if(dotProduct>0){
   text("el tesoro esta atras",10,30);
  }else{
    if(dotProduct<0){
      text("El tesoro esta delante",10,30);
    }else{
      text("el tesoro esta en la misma linea",10,40);
    }
  }
}
