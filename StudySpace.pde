//Import stuff 
import processing.sound.*;
import g4p_controls.*;
import java.awt.*; 

//Song files
SoundFile classical; 
SoundFile lofi; 
SoundFile brownNoise; 
SoundFile notify;

//Global Variables
PImage screenshot;
String screen = ""; 
String chosenSong;
boolean musicPaused = false; 

  //Display
PImage logo; 
Font font1;
PFont font2;

//colour themes
color textColour = color(0);
color pink = color(255, 200, 200);
color blue = color(200, 200, 255);
color green = color(200, 255, 200);
color yellow = color(255, 255, 100);
color themeColour = green;
boolean darkMode = false;


void setup() {
  
  //Font
  font2 = createFont("Lexend-Regular.ttf",25);
  textFont(font2);
  size(800,800);
  
  //GUI
  createGUI();
 
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
  
  //Quote screen 
  background(255);
  logo = loadImage("logo.png"); 
  image(logo, 285, 50, 210, 200); 
  displayQuote(); 
  
  //Stopwatch
  sElapsed = 0;
  mElapsed = 0;
  hElapsed = 0;
  for (int i = studyBreak; i < 60; i += studyBreak) {
    studyBreaks.add(i);
  }
  
  //Adding initial tasks
  for(int i = 0; i < 17; i++) {
    tasks[i] = new Task();
  }

  //Loading audio
  classical = new SoundFile(this, "wavFiles/chopinNoc9.wav");
  lofi = new SoundFile(this, "wavFiles/roseForBreakfast.wav"); 
  brownNoise = new SoundFile(this, "wavFiles/brownNoise.wav"); 
  notify = new SoundFile(this, "wavFiles/notification.wav"); 
}


void draw() {
  
  if(screen == "main") {
    
    //GUI
    mainScreen.setVisible(false); 
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

    //Updating stuff 
    changeColourScheme();
    displayStopwatch();
    displayDate();
    updateProgressBar();
    
    //Logo
    image(logo, width/2-100, height/2-20, 195, 150); 
  }
}


//Other functions 

void pauseMusic() {
  classical.pause(); 
  lofi.pause(); 
  brownNoise.pause(); 
}


void screenshot() {
  try {
    screenshot = new PImage(new Robot().createScreenCapture(new Rectangle(displayWidth/3, displayHeight/10, 740, 640)));
    String day = "";
    String month = "";
    if (day()<10) day = "0"+str(day());
    else day = str(day());
    if (month()<10) month = "0"+str(month());
    else month = str(month());
    day = "10";
    screenshot.save(dataPath("progress") + "/"+month+"."+day+"."+year()+".jpg");
  } catch (AWTException e) { }
}



void changeColourScheme(){
  if (darkMode) {
    fill(50);
    rect(0,0,width,height);
    for(int i = 1; i <= 10; i++){
      taskBoxes[i].setLocalColorScheme(255);
    }
    if(extraSpace){
      for(int i = 11; i<=16;i++){
        taskBoxes[i].setLocalColorScheme(255);
      }
    }
    screenshotButton.setLocalColor(2,color(255));
    mainScreen.setLocalColor(2,color(255));
    stopwatchBtn.setLocalColor(2,color(255));
    clearButton.setLocalColor(2,color(255));
    extraSpaceButton.setLocalColor(2,color(255));
    addTaskButton.setLocalColor(2,color(255));
  }
  else {
    fill(255);
    rect(0, 0, width, height);
    fill(themeColour);
    noStroke();
    rect(25,25,750,750,25,25,25,25);
    for(int i = 1; i <= 10; i++){
      taskBoxes[i].setLocalColor(2, color(0));
    }
    if(extraSpace){
      for(int i = 11; i<=16;i++){
        taskBoxes[i].setLocalColor(2, color(0));
      }
    }
    textColour = color(0);
    screenshotButton.setLocalColor(2,color(0));
    mainScreen.setLocalColor(2,color(0));
    stopwatchBtn.setLocalColor(2,color(0));
    clearButton.setLocalColor(2,color(0));
    extraSpaceButton.setLocalColor(2,color(0));
    addTaskButton.setLocalColor(2,color(0));
  }
  
}
