PVector posPersonaje;
PVector posTesoro;
PVector vecor;
PVector destino;
float suma;


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
 vecor = new PVector(posPersonaje.x, posPersonaje.y);
 
}


public void dibujarVector(){
  strokeWeight(3);
  suma=posTesoro-posPersonaje;
  destino = new PVector(suma).normalize().mult(30);
  line(posPersonaje.x, posPersonaje.y, destino.x,destino.y);
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
