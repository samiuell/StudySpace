//Stopwatch
int studyBreak = 30;
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
  if (darkMode) {
    fill(50);
    rect(0,0,width,height);
  }
  else {
    fill(255);
    rect(0, 0, width, height);
    fill(themeColour);
    noStroke();
    rect(25,25,750,750,25,25,25,25);
    textColour = color(0);
  }
  
  fill(255);
  rect(90, 100, 610, 110, 25, 25, 25, 25);
  noFill();
  rect(75, 40, 625, 85, 25, 25, 25, 25);
  
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
    if (hElapsed > 0 || mElapsed > 0 || sElapsed > 0) {
      if (studyBreak > 60) {
        if ((hElapsed*60 + mElapsed) == m) {
          if (sElapsed == 0) {
            fill(0);
            text("Study Break", width/2, 50);
            notify.play();
          }
        }
      }
      else if (mElapsed == m && sElapsed == 0) {
        fill(0);
        text("Study Break", width/2, 50);
        notify.play();
      }
    }   
  }
  
  textSize(30);
  textAlign(CENTER);
  fill(0);
  text(hElapsed+":"+mElapsed+":"+sElapsed, width/2, 150);
}
