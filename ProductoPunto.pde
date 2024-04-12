PVector posPersonaje;
PVector posTesoro;
PVector vector;
PVector destino;

public void setup(){
  size(400,400);
  //vectorPersonaje = new Vector (new PVector (0,0), new )
}

public void draw(){
 background(250);
 //vectorPersonaje.setOrigen(new PVector(mouseX,mouseY));
 posPersonaje = new PVector(mouseX,mouseY);
 dibujarpersonaje();
 posTesoro= new PVector(width/2,height/2);
 dibujarTesoro();
 dibujarVector();
 //vecor = new PVector(posPersonaje.x, posPersonaje.y);
 
}


public void dibujarVector(){
  strokeWeight(3);
  vector = PVector.sub(posPersonaje,posTesoro).normalize();
  line(posPersonaje.x,posPersonaje.y,posTesoro.x+vector.x, posTesoro.y+vector.y);
  //line(posPersonaje.x, posPersonaje.y, vector.x,vector.y);
  //vecPersonajeTesoro.setDestino(PVector.sub(posTesoro,vectorPersonaje,getOrigen()).normalize().mult(30));

}

public void dibujarTesoro(){
  strokeWeight(10);
  point(posTesoro.x, posTesoro.y);
}

public void dibujarpersonaje(){
  strokeWeight(3);
    line(posPersonaje.x, posPersonaje.y,posPersonaje.x+30,posPersonaje.y);
}
/*
public void escribirmsg(){
  float dotProduct = vectorPersonaje
}*/
