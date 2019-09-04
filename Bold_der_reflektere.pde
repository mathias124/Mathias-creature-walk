float x = 0;//her bruger vi en float funktion som gør at den kan også læse kommatal forhold til int, og i dette tilfælde er det x-aksen.
float y = 200;//her bruger vi en float funktion som gør at den kan også læse kommatal forhold til int, og i dette tilfælde er det y-aksen.
boolean right=true;//alle boolean funktionerne er i sammenhæng med if funktion via cirklens radius om den kan bounce på hver sin side, altså left,right,down,up.
boolean left = false;
boolean down = true;
boolean up = false;
void setup(){// tegner et startup og kører 1 gang, hvor det er 800x800 pixel stort vindue, hvor programmet kører.
  size(800,800);
}
void draw(){
  //tegner draw funktioner som gør det med 30 frames i sekunder.
  clear();//redegør bagrunden.
 println(x);//printer værdierne ud.
ellipse (x,y,76,76);//tegner en cirkel som følger float x og y, så den kan kommer op ned højre venstre, og gør med.
fill(0,200,76);//farven grøn på cirklen.
rect(200,200,400,400);// tegner en rectangel som skulle bounce i men kunne ikke finde ud af det.
ellipse(x,y,50,50);// tegner en mindre cirkel inde i den tidligere elipse, hvor der er en anden farve.
fill(200,200,50);
fill(25,100,50);
if(right){
  x=x+8;//her laver jeg en x-speed det gør at x ikke er 0,forhold til float og er derfor 8.
}
if(left){
x=x-9;
}
if(x<38){//årsagen til at det er x<38 er fordi forhold til cirklen med en radius altså 76:2 = 38, og dog er det på højre side så den ikke ryger ud af setupet.
  right=true;
  left=false;
}
if(x>762){//årsagen til at det er x>762, er fordi forhold til setupet på 800x800. er minus radiusen på 38 så 800-38 = 762. Det er så tilgæng på venstre side og er derfor 762 istedet for 38 som er meget lavere.
right=false;
left=true;
}
if(down){
y=y+12;//her gør jeg så farten på y er hurtigere ned så det føles der er mere tyndgekraft,altså +12.
}
if (up){
  y=y-10;//her der gør jeg så y har -10 ekstra på vej up, altså har svære pga tyndgekraft(vil gerne have det til at virke realistisk :)
}
if(y>762){
  up=true;
  down=false;
}
if(y<38) {
  up=false;
  down=true;// PS kunne ikke helt finde ud af at lave en rectangel der går ind ad mod centrum. Du må gerne lave en opsamling i næste time, hvis muligt Hilsen Mathias.
}
}
