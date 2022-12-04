import processing.sound.*;
import g4p_controls.*;

Task[] tasks = new Task[16];
String[] quotes;
String screen = ""; 

//Song files
SoundFile classical; 
SoundFile lofi; 
SoundFile brownNoise; 
String chosenSong;
boolean musicPaused = false; 
int h_start, m_start, s_start;
int h_pause, m_pause, s_pause;
int h_current, m_current, s_current;
int studyBreak = 1;
ArrayList<Integer> studyBreaks = new ArrayList<Integer>();
boolean pause;
boolean start = true;
int hElapsed, mElapsed, sElapsed;
int hPaused, mPaused, sPaused;

//Task boxes
int taskNumber = 1;
boolean extraSpace = false;

//Progress bar
int pBarLength = 300;

void setup() {
    size(800,800);

    createGUI();
    playMusic.setVisible(false); 
    taskOne.setVisible(false);
    taskOneBut.setVisible(false); 
    taskTwo.setVisible(false); 
    taskTwoBut.setVisible(false); 
    taskThree.setVisible(false); 
    taskThreeBut.setVisible(false); 
    taskListLabel.setVisible(false);
    addTaskBut.setVisible(false); 
    stopwatchBtn.setVisible(false); 
    
    
    
    background(255);
    
    //QUOTE
    displayQuote(); 
    
    //Adding initial tasks
    for(int i = 0; i < 16; i++){
        tasks[i]=null;
    }
  
    //Music 
    classical = new SoundFile(this, "chopinNoc9.wav");
    lofi = new SoundFile(this, "roseForBreakfast.wav"); 
    brownNoise = new SoundFile(this, "brownNoise.wav"); 

}
void draw() {
  //Main screen
  if(screen == "main") {
  mainScreen.setVisible(false); 
  playMusic.setVisible(true); 
  taskOne.setVisible(true);
  taskOneBut.setVisible(true); 
  taskTwo.setVisible(true); 
  taskTwoBut.setVisible(true); 
  taskThree.setVisible(true); 
  taskThreeBut.setVisible(true); 
  taskListLabel.setVisible(true);
  addTaskBut.setVisible(true); 
  stopwatchBtn.setVisible(true); 
  displayStopwatch();
  displayDate();
  updateProgressBar();
  }
}

void displayQuote() {
  quotes = loadStrings("quotes.txt");
  int quoteIndex = int(random(0, quotes.length));

    //Break quote into parts and add line breaks
  String[] quoteParts = splitTokens(quotes[quoteIndex], "-"); 
  String quote = ""; 
  for(int i = 0; i < quoteParts.length; i++) 
      quote += quoteParts[i] + "\n"; 

    //Display quote
  fill(0); 
  textAlign(CENTER);
  textSize(24);
  text(quote, width/2, height/2);   
}

void displayDate() {
  int d = day();
  int m = month();
  int y = year();
  
  textSize(15);
  textAlign(CENTER);
  fill(0);
  text(m+"/"+d+"/"+y, 600, 100);
}

void displayStopwatch() {  
  background(255);
  
  if (start) {
    h_start = hour();
    m_start = minute();
    s_start = second();
  }
  
  h_current = hour();
  m_current = minute();
  s_current = second();
  
  hElapsed = h_current - h_start;
  mElapsed = m_current - m_start;
  if (mElapsed < 0) {
    hElapsed -= 1;
    mElapsed += 60;
  }
  sElapsed = s_current - s_start;
  if (sElapsed < 0) {
    mElapsed -= 1;
    sElapsed += 60;
  }
  
  if (start != false) {
    sElapsed -= sPaused;
      if (sElapsed < 0) {
        mElapsed -= 1;
        sElapsed += 60;
      }
      mElapsed -= mPaused;
      if (mElapsed < 0) {
        hElapsed -= 1;
        mElapsed += 60;
      }
      hElapsed -= hPaused;
  }
    
  for (int m:studyBreaks) {
    if (mElapsed == m && sElapsed == 0) {
      text("Study Break", width/2, 150);
    }
  }

  textSize(30);
  textAlign(CENTER);
  fill(0);
  text(hElapsed+":"+mElapsed+":"+sElapsed, width/2, 100);
}

void updateProgressBar(){
    //Progress Bar
  fill(255);
  rect(250,165,pBarLength,20);
  int total = 0;
  int numComp = 0;
  for(Task t: tasks){
    if(t==null){
    }
    else{
      total++;
      if(t.done) numComp++;
    }
  }
  if(total!=0){
    float comp = pBarLength*numComp/total;
    fill(0);
    rect(250,165,comp,20);
  }
  
}



void screenshot(){
  String day = "";
  String month = "";
  if (day()<10) day = "0"+str(day());
  else day = str(day());
  if (month()<10) month = "0"+str(month());
  else month = str(month());
  saveFrame("progress/"+month+"."+day+"."+year()+".jpg");
}
