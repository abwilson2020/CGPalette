size(1260,720);

//Turn off cell borders
//noStroke();

//generates first random color using hsb
float h = random(0,360);
float s = random(75,90);
float b = random(40,100);

float o = random(1,4);
int option = floor(o);
println("Option " + option);
//sets fill mode to read hsb
colorMode(HSB, 360, 100, 100);

float compH = 0;
float h2 = 0;
float h3 = 0;
float h4 = 0;
float h5 = 0;
float h6 = 0;
float compS = b;
float compB = s;
float s2 = 0, s3 = 0, s4 = 0, s5 = 0, s6 = 0, s7 = 0;
float b2 = 0, b3 = 0, b4 = 0, b5 = 0, b6 = 0, b7 = 0;

if (option == 1){
  //DIADIC
  //computes complimentary color
  if (h >= 180){
    compH = h-180;
    h2 = h-((h-compH)/7);
    h3 = h2-((h-compH)/7);
    h4 = h3-((h-compH)/7);
    h5 = h4-((h-compH)/7);
    h6 = h5-((h-compH)/7);
  }else{
    compH = h+180;
    h2 = h+((compH-h)/7);
    h3 = h2+((compH-h)/7);
    h4 = h3+((compH-h)/7);
    h5 = h4+((compH-h)/7);
    h6 = h5+((compH-h)/7);
  }
  
  //Primary Rectangle
  println("Starting Hue: " + h);
  println("Starting Saturation: " + s);
  println("Starting Brightness: " + b);
  fill(h, s, b);
  rect(0, 0, 180,720);
  
  //generate intermediate colors
  
  if (s > b){
  s2 = s - ((s-b)/7);
  s3 = s2 - ((s-b)/7);
  s4 = s3 - ((s-b)/7);
  s5 = s4 - ((s-b)/7);
  s6 = s5 - ((s-b)/7);
  
  b2 = b + ((s-b)/7);
  b3 = b2 + ((s-b)/7);
  b4 = b3 + ((s-b)/7);
  b5 = b4 + ((s-b)/7);
  b6 = b5 + ((s-b)/7);
  }else{
  s2 = s - ((s-b)/7);
  s3 = s2 - ((s-b)/7);
  s4 = s3 - ((s-b)/7);
  s5 = s4 - ((s-b)/7);
  s6 = s5 - ((s-b)/7);
  
  b2 = b + ((s-b)/7);
  b3 = b2 + ((s-b)/7);
  b4 = b3 + ((s-b)/7);
  b5 = b4 + ((s-b)/7);
  b6 = b5 + ((s-b)/7);
  }
  //Rectangle 2
  println("Rectangle 2 Hue: " + h2);
  println("Rectangle 2 Saturation: " + s2);
  println("Rectangle 2 Brightness: " + b2);
  fill(h2, s2, b2);
  rect(180, 0, 180,720);
  
  //Rectangle 3
  println("Rectangle 3 Hue: " + h3);
  println("Rectangle 3 Saturation: " + s3);
  println("Rectangle 3 Brightness: " + b3);
  fill(h3, s3, b3);
  rect(360, 0, 180,720);
  
  //Rectangle 4
  println("Rectangle 4 Hue: " + h4);
  println("Rectangle 4 Saturation: " + s4);
  println("Rectangle 4 Brightness: " + b4);
  fill(h4, s4, b4);
  rect(540, 0, 180,720);
  
  //Rectangle 5
  println("Rectangle 5 Hue: " + h5);
  println("Rectangle 5 Saturation: " + s5);
  println("Rectangle 5 Brightness: " + b5);
  fill(h5, s5, b5);
  rect(720, 0, 180,720);
  
  //Rectangle 6
  println("Rectangle 6 Hue: " + h6);
  println("Rectangle 6 Saturation: " + s6);
  println("Rectangle 6 Brightness: " + b6);
  fill(h6, s6, b6);
  rect(900, 0, 180,720);
  
  //Final Rectangle
  println("Complimentary Hue: " + compH);
  println("Complimentary Saturation: " + compS);
  println("Complimentary Brightness: " + compB);
  fill(compH, compS, compB);
  rect(1080, 0, 180,720);
  
  //Adds hex code to cells
  color c = color(h, s, b);
  color c2 = color(h2, s2, b2);
  color c3 = color(h3, s3, b3);
  color c4 = color(h4, s4, b4);
  color c5 = color(h5, s5, b5);
  color c6 = color(h6, s6, b6);
  color c7 = color(compH, compS, compB);
  
  textSize(20);
  textAlign(CENTER);
  fill(0);
  text('#' + hex(c,6), 90,680);
  text('#' + hex(c2,6), 270,680);
  text('#' + hex(c3,6), 450,680);
  text('#' + hex(c4,6), 630,680);
  text('#' + hex(c5,6), 810,680);
  text('#' + hex(c6,6), 990,680);
  text('#' + hex(c7,6), 1170,680);
    
} else if(option == 2){
  
  
  //MONOCHROMATIC 2
  //Rectangle 1
  fill(h, s, b);
  rect(0, 0, 180, 720);
  
  //generate varied saturations
  s2 = (s-((s-10)/6));
  s3 = (s2-((s-10)/6));
  s4 = (s3-((s-10)/6));
  s5 = (s4-((s-10)/6));
  s6 = (s5-((s-10)/6));
  s7 = (s6-((s-10)/6));
  
  //Rectangle 2
  fill(h+10, s2, b);
  rect(180, 0, 180,720);
  
  //Rectangle 3
  fill(h+20, s3, b);
  rect(360, 0, 180,720);
  
  //Rectangle 4
  fill(h+30, s4, b);
  rect(540, 0, 180,720);
  
  //Rectangle 5
  fill(h+40, s5, b);
  rect(720, 0, 180,720);
  
  //Rectangle 6
  fill(h+50, s6, b);
  rect(900, 0, 180,720);
  
  //Rectangle 7
  fill(h+60, s7, b);
  rect(1080, 0, 180,720);
  
  //Adds hex code to cells
  color c = color(h, s, b);
  color c2 = color(h, s2, b);
  color c3 = color(h, s3, b);
  color c4 = color(h, s4, b);
  color c5 = color(h, s5, b);
  color c6 = color(h, s6, b);
  color c7 = color(h, s7, b);
  
  textSize(20);
  textAlign(CENTER);
  fill(0);
  text('#' + hex(c,6), 90,680);
  text('#' + hex(c2,6), 270,680);
  text('#' + hex(c3,6), 450,680);
  text('#' + hex(c4,6), 630,680);
  text('#' + hex(c5,6), 810,680);
  text('#' + hex(c6,6), 990,680);
  text('#' + hex(c7,6), 1170,680);
  
}else{
  
  
  //MONOCHROMATIC
  //Rectangle 1
  fill(h, s, b);
  rect(0, 0, 180, 720);
  
  //generate varied saturations
  
  s2 = (s-((s-5)/7));
  s3 = (s2-((s-5)/7));
  s4 = (s3-((s-5)/7));
  s5 = (s4-((s-5)/7));
  s6 = (s5-((s-5)/7));
  s7 = (s6-((s-5)/7));
  
  //Rectangle 2
  fill(h, s2, b);
  rect(180, 0, 180,720);
  
  //Rectangle 3
  fill(h, s3, b);
  rect(360, 0, 180,720);
  
  //Rectangle 4
  fill(h, s4, b);
  rect(540, 0, 180,720);
  
  //Rectangle 5
  fill(h, s5, b);
  rect(720, 0, 180,720);
  
  //Rectangle 6
  fill(h, s6, b);
  rect(900, 0, 180,720);
  
  //Rectangle 7
  fill(h, s7, b);
  rect(1080, 0, 180,720);
 
  //Adds hex code to cells
  color c = color(h, s, b);
  color c2 = color(h, s2, b);
  color c3 = color(h, s3, b);
  color c4 = color(h, s4, b);
  color c5 = color(h, s5, b);
  color c6 = color(h, s6, b);
  color c7 = color(h, s7, b);
  
  textSize(20);
  textAlign(CENTER);
  fill(0);
  text('#' + hex(c,6), 90,680);
  text('#' + hex(c2,6), 270,680);
  text('#' + hex(c3,6), 450,680);
  text('#' + hex(c4,6), 630,680);
  text('#' + hex(c5,6), 810,680);
  text('#' + hex(c6,6), 990,680);
  text('#' + hex(c7,6), 1170,680);
}

save("output.png");
exit();
