import processing.sound.*;
import g4p_controls.*;

ArrayList<Task> tasks = new ArrayList<>();
String[] quotes;
String screen = ""; 

//Song files
SoundFile classical; 
SoundFile lofi; 
SoundFile brownNoise; 
String chosenSong;
boolean musicPaused = false; 
int h_start;
int m_start;
int s_start;

//Progress bar
int pBarLength = 300;

void setup() {
    size(800,800);

    createGUI();
    playMusic.setVisible(false); 
    background(255);
    
    //QUOTE
    displayQuote(); 
    
    //Adding initial tasks
    for(int i = 0; i < 10; i++){
        tasks.add(null);
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

void displayStopwatch() {  
  background(255);
  
  int h_current = hour();
  int m_current = minute();
  int s_current = second();
  
  int hElapsed = h_current - h_start;
  int mElapsed = m_current - m_start;
  if (mElapsed < 0) {
    hElapsed -= 1;
    mElapsed += 60;
  }
  int sElapsed = s_current - s_start;
  if (sElapsed < 0) {
    mElapsed -= 1;
    sElapsed += 60;
  }

  textSize(30);
  textAlign(CENTER);
  fill(0);
  text(hElapsed+":"+mElapsed+":"+sElapsed, width/2, 100);
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
