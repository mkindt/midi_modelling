import processing.opengl.*;

String allMidi[];
String dis[];
int counter = 0;
void setup() {
  size(1200, 600, OPENGL);
  InputStream input = createInput("midismall2.txt");
  String content = "";
  
try {
  int data = input.read();
  //println(data);
  while (data != -1) {
    content += (char)data;
    data = input.read();
    counter++;
    println(counter);
  }
}
catch (IOException e) {
  e.printStackTrace();
}
finally {
  try {
    input.close();
  } 
  catch (IOException e) {
    e.printStackTrace();
  }
}

dis = splitTokens(content, ",\r\n");
println("line0 " + dis[0]);
println("line1 " + dis[1]);
println("line2 " + dis[2]);
println("line3 " + dis[3]);
println("line4 " + dis[4]);
println("line8 " + dis[8]);
println("line9 " + dis[9]);

}

void draw() {
  lights();
  fill(255);
  textSize(32);
  text ("HELLO THERE MIDI", 900, 500, 0.5);
}

