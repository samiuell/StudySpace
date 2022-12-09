import processing.sound.*;
import g4p_controls.*;
import java.awt.*; 

Task[] tasks = new Task[16]; 

String[] quotes;
String screen = ""; 

//Song files
SoundFile classical; 
SoundFile lofi; 
SoundFile brownNoise; 
String chosenSong;
boolean musicPaused = false; 

//Stopwatch
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

Font font1;

PImage logo; 

Font smallFont = new Font("Serif", Font.BOLD, 18); 

void setup() {
    size(800,800);
    //GUI
    createGUI();
   
    playMusic.setVisible(false); 
    stopwatchBtn.setVisible(false); 
    taskbox1.setVisible(false); 
    taskbox2.setVisible(false); 
    taskbox3.setVisible(false); 
    taskbox4.setVisible(false); 
    taskbox5.setVisible(false); 
    taskbox6.setVisible(false); 
    taskbox7.setVisible(false); 
    taskbox8.setVisible(false); 
    taskbox9.setVisible(false); 
    taskbox10.setVisible(false); 
    taskInput.setVisible(false); 
    addTaskButton.setVisible(false);
    extraSpaceButton.setVisible(false);
    clearButton.setVisible(false); 
    screenshotButton.setVisible(false); 
    
    background(255);
    
    //Logo
    logo = loadImage("logo.png"); 

    displayQuote(); 
    
    //Adding initial tasks
    for(int i = 0; i < 16; i++) {
      tasks[i] = new Task();
    }
  
    //Loading music 
    classical = new SoundFile(this, "wavFiles/chopinNoc9.wav");
    lofi = new SoundFile(this, "wavFiles/roseForBreakfast.wav"); 
    brownNoise = new SoundFile(this, "wavFiles/brownNoise.wav"); 

}


void draw() {
  
  image(logo, 303, 50, 195, 200); 
  //Main screen
  if(screen == "main") {
    
    //GUI
    mainScreen.setVisible(false); 
    playMusic.setVisible(true); 
    stopwatchBtn.setVisible(true); 
    taskbox1.setVisible(true); 
    taskbox2.setVisible(true); 
    taskbox3.setVisible(true); 
    taskbox4.setVisible(true); 
    taskbox5.setVisible(true); 
    taskbox6.setVisible(true); 
    taskbox7.setVisible(true); 
    taskbox8.setVisible(true); 
    taskbox9.setVisible(true); 
    taskbox10.setVisible(true); 
    taskInput.setVisible(true); 
    addTaskButton.setVisible(true);
    clearButton.setVisible(true); 
    screenshotButton.setVisible(true); 
    
    if(extraSpace != true) 
      extraSpaceButton.setVisible(true); 

    
    displayStopwatch();
    displayDate();
    updateProgressBar();

  }
}


//Getting random quote from txt file and displaying
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
  background(220);
  
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
  fill(255);
  rect(250,165,pBarLength,20);
  int total = 0;
  int numComp = 0;
  for(Task t: tasks){
    if(t.name.equals("")){
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

void importFont(){
  try {
      //font1 = Font.createFont(Font.TRUETYPE_FONT, new File("Fonts\\custom_font.ttf")).deriveFont(12f);
      font1 = Font.createFont(Font.TRUETYPE_FONT, new File("C:\\Users\\lij8263\\Downloads\\lexend-main\\lexend-main\\fonts\\lexend\\ttf\\Lexend-Regular.ttf")).deriveFont(18f);
      GraphicsEnvironment ge = GraphicsEnvironment.getLocalGraphicsEnvironment();
      ge.registerFont(font1);
  } catch (IOException e) {
      e.printStackTrace();
  } catch(FontFormatException e) {
      e.printStackTrace();
  }
}
