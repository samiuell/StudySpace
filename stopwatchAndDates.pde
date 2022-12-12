//Stopwatch
int studyBreak;
ArrayList<Integer> studyBreaks = new ArrayList<Integer>();
boolean pause = true;
boolean start = true;
int hElapsed, mElapsed, sElapsed;

void displayDate() {
  int d = day();
  int m = month();
  int y = year();
  
  textSize(15);
  textAlign(CENTER);
  fill(textColour);
  text(m+"/"+d+"/"+y, 600, 150);
}

void displayStopwatch() {  
  
  if (start) {
    sElapsed = 0;
    mElapsed = 0;
    hElapsed = 0;
  }
  
  if (!pause) {
    sElapsed += 1;
    if (sElapsed >= 60) {
      mElapsed += 1;
      sElapsed = 0;
    }
    if (mElapsed >= 60) {
      hElapsed += 1;
      mElapsed = 0;
    }
  }
  
  for (int m:studyBreaks) {
    if (mElapsed == m && sElapsed == 0) {
      fill(0);
      text("Study Break", width/2, 200);
    }
  }
  
  fill(255);
  rect(90, 100, 610, 110, 25, 25, 25, 25);
  noFill();
  rect(75, 40, 625, 85, 25, 25, 25, 25);
  
  textSize(30);
  textAlign(CENTER);
  fill(0);
  
  //Formatting time, optional
  String mDisplay = "", sDisplay = "";
  if(mElapsed < 10) mDisplay = "0"+str(mElapsed);
  else mDisplay = str(mElapsed);
  if(sElapsed < 10) sDisplay = "0"+str(sElapsed);
  else sDisplay = str(sElapsed);
  
  
  //text(hElapsed+":"+mElapsed+":"+sElapsed, width/2, 150);
  
  text(hElapsed+":"+mDisplay+":"+sDisplay, width/2, 150);
}