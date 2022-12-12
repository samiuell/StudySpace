/* =========================================================
 * ====                   WARNING                        ===
 * =========================================================
 * The code in this tab has been generated from the GUI form
 * designer and care should be taken when editing this file.
 * Only add/edit code inside the event handlers i.e. only
 * use lines between the matching comment tags. e.g.
 void myBtnEvents(GButton button) { //_CODE_:button1:12356:
     // It is safe to enter your event code here  
 } //_CODE_:button1:12356:
 
 * Do not rename this tab!
 * =========================================================
 */

public void mainScreenClicked(GButton source, GEvent event) { //_CODE_:mainScreen:980433:
  screen = "main"; 
} //_CODE_:mainScreen:980433:


public void playMusicPressed(GButton source, GEvent event) { //_CODE_:playMusic:530303:
  pauseMusic(); 
  if(musicPaused == false) {
    
    if(chosenSong == "lofi")
      lofi.play(); 
    else if(chosenSong == "brownNoise")
      brownNoise.play(); 
    else
      classical.play();
    
    playMusic.setText("Pause"); 
    musicPaused = true; 
  }
  
  else {
    
    classical.pause(); 
    lofi.pause(); 
    brownNoise.pause(); 
    playMusic.setText("Play"); 
    musicPaused = false; 
    
  }
    
} //_CODE_:playMusic:530303:

public void screenshotPressed(GButton source, GEvent event) {
  screenshot(); 
}


public void stopwatchBtn_click(GButton source, GEvent event) { //_CODE_:stopwatchBtn:937837:
  frameRate(1); 
 if (pause) {
    start = false;
    stopwatchBtn.setText("Pause");
    pause = false;
  }
  else {
    stopwatchBtn.setText("Resume");
    pause = true;
  }
} //_CODE_:stopwatchBtn:937837:


public void taskbox1_click(GCheckbox source, GEvent event) { //_CODE_:taskbox1:646323:
  if(tasks[1].done) tasks[1].done=false;
  else tasks[1].done = true; 
} //_CODE_:taskbox1:646323:

public void taskbox2_click(GCheckbox source, GEvent event) { //_CODE_:taskbox2:809529:
  if(tasks[2].done) tasks[2].done=false;
  else tasks[2].done = true; 
} //_CODE_:taskbox2:809529:

public void taskbox3_click(GCheckbox source, GEvent event) { //_CODE_:taskbox3:411266:
  if(tasks[3].done) tasks[3].done=false;
  else tasks[3].done = true; 
} //_CODE_:taskbox3:411266:

public void taskbox4_click(GCheckbox source, GEvent event) { //_CODE_:taskbox4:663615:
  if(tasks[4].done) tasks[4].done=false;
  else tasks[4].done = true; 
} //_CODE_:taskbox4:663615:

public void taskbox5_click(GCheckbox source, GEvent event) { //_CODE_:taskbox5:942467:
  if(tasks[5].done) tasks[5].done=false;
  else tasks[5].done = true; 
} //_CODE_:taskbox5:942467:

public void taskbox6_click(GCheckbox source, GEvent event) { //_CODE_:taskbox6:957993:
  if(tasks[6].done) tasks[6].done=false;
  else tasks[6].done = true; 
} //_CODE_:taskbox6:957993:

public void taskbox7_click(GCheckbox source, GEvent event) { //_CODE_:taskbox7:244092:
  if(tasks[7].done) tasks[7].done=false;
  else tasks[7].done = true; 
} //_CODE_:taskbox7:244092:

public void taskbox8_click(GCheckbox source, GEvent event) { //_CODE_:taskbox8:881526:
  if(tasks[8].done) tasks[8].done=false;
  else tasks[8].done = true; 
} //_CODE_:taskbox8:881526:

public void taskbox9_click(GCheckbox source, GEvent event) { //_CODE_:taskbox9:848530:
  if(tasks[9].done) tasks[9].done=false;
  else tasks[9].done = true; 
} //_CODE_:taskbox9:848530:

public void taskbox10_click(GCheckbox source, GEvent event) { //_CODE_:taskbox10:841116:
  if(tasks[10].done) tasks[10].done=false;
  else tasks[10].done = true; 
} //_CODE_:taskbox10:841116:


public void taskInput_change(GTextField source, GEvent event) { //_CODE_:taskInput:626904:
} //_CODE_:taskInput:626904:


public void addTaskButton_click(GButton source, GEvent event) { //_CODE_:addTaskButton:276838:
  String task = taskInput.getText();
  taskBoxes[taskNumber].setText(task);
  taskInput.setText("");
  tasks[taskNumber].name = task;
  taskNumber+=1;
} //_CODE_:addTaskButton:276838:


public void extraTask1_click(GCheckbox source, GEvent event) { //_CODE_:extraTask1:528179:
  if(tasks[11].done) tasks[11].done=false;
  else tasks[11].done = true; 
} //_CODE_:extraTask1:528179:

public void extraTask2_click(GCheckbox source, GEvent event) { //_CODE_:extraTask2:231896:
  if(tasks[12].done) tasks[12].done=false;
  else tasks[12].done = true; 
} //_CODE_:extraTask2:231896:

public void extraTask3_click(GCheckbox source, GEvent event) { //_CODE_:extraTask3:336006:
  if(tasks[13].done) tasks[13].done=false;
  else tasks[13].done = true; 
} //_CODE_:extraTask3:336006:

public void extraTask4_click(GCheckbox source, GEvent event) { //_CODE_:extraTask4:932629:
  if(tasks[14].done) tasks[14].done=false;
  else tasks[14].done = true; 
} //_CODE_:extraTask4:932629:

public void extraTask5_click(GCheckbox source, GEvent event) { //_CODE_:extraTask5:337470:
  if(tasks[15].done) tasks[15].done=false;
  else tasks[15].done = true; 
} //_CODE_:extraTask5:337470:

public void extraTask6_click(GCheckbox source, GEvent event){
  if(tasks[16].done) tasks[16].done=false;
  else tasks[16].done=true;
}


public void extraSpaceButton_click(GButton source, GEvent event) { //_CODE_:extraSpaceButton:951991:
  extraTask1 = new GCheckbox(this, 140, 600, 300, 20);
  extraTask1.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  extraTask1.setText("Task 11");
  extraTask1.setOpaque(false);
  extraTask1.addEventHandler(this, "extraTask1_click");
  extraTask2 = new GCheckbox(this, 140, 650, 300, 20);
  extraTask2.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  extraTask2.setText("Task 12");
  extraTask2.setOpaque(false);
  extraTask2.addEventHandler(this, "extraTask2_click");
  extraTask3 = new GCheckbox(this, 140, 700, 300, 20);
  extraTask3.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  extraTask3.setText("Task 13");
  extraTask3.setOpaque(false);
  extraTask3.addEventHandler(this, "extraTask3_click");
  extraTask4 = new GCheckbox(this, 510, 600, 300, 20);
  extraTask4.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  extraTask4.setText("Task 14");
  extraTask4.setOpaque(false);
  extraTask4.addEventHandler(this, "extraTask4_click");
  extraTask5 = new GCheckbox(this, 510, 650, 300, 20);
  extraTask5.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  extraTask5.setText("Task 15");
  extraTask5.setOpaque(false);
  extraTask5.addEventHandler(this, "extraTask5_click");
  extraTask6 = new GCheckbox(this, 510, 700, 300, 20); 
  extraTask6.setIconAlign(GAlign.LEFT, GAlign.MIDDLE); 
  extraTask6.setText("Task 16"); 
  extraTask6.setOpaque(false); 
  extraTask6.addEventHandler(this, "extraTask6_click"); 
  
  if (taskNumber == 10) {
    taskNumber = 11;
  }
  
  taskBoxes[11] = extraTask1;
  taskBoxes[12] = extraTask2;
  taskBoxes[13] = extraTask3;
  taskBoxes[14] = extraTask4;
  taskBoxes[15] = extraTask5;
  taskBoxes[16] = extraTask6;

  if (taskNumber == 10) {
    taskNumber = 11;
  }
  
  for(int i = 11; i <= 16; i++){
    taskBoxes[i].setFont(font1);
    taskBoxes[i].setText("__________");
  }
  extraSpace = true;
  extraSpaceButton.setVisible(false);
} //_CODE_:extraSpaceButton:951991:


public void clearButtonClicked(GButton source, GEvent event) {
  clearTasks(); 
}


void clearTasks(){
  taskNumber=1;
  for(int i = 1; i<=10;i++){
    taskBoxes[i].setText("__________");
    taskBoxes[i].setSelected(false);
  }
  
  if(extraSpace){
    for(int i = 11; i <= 16; i++){
      taskBoxes[i].setText("__________");
      taskBoxes[i].setSelected(false);
      taskBoxes[i].setVisible(false);
    }
    extraSpace = false;
  }
  
  for(int i = 0; i<17; i++){
    tasks[i] = new Task();
  }

}

synchronized public void win_draw1(PApplet appc, GWinData data) { //_CODE_:window1:804261:
  appc.background(230);
} //_CODE_:window1:804261:

public void colourBtn_pink_click(GButton source, GEvent event) { //_CODE_:colourBtn_pink:321733:
  themeColour = pink;
  stopwatchBtn.setLocalColorScheme(GCScheme.RED_SCHEME);
  addTaskButton.setLocalColorScheme(GCScheme.RED_SCHEME);
  clearButton.setLocalColorScheme(GCScheme.RED_SCHEME);
  extraSpaceButton.setLocalColorScheme(GCScheme.RED_SCHEME);
  screenshotButton.setLocalColorScheme(GCScheme.RED_SCHEME);
} //_CODE_:colourBtn_pink:321733:

public void colourBtn_blue_click(GButton source, GEvent event) { //_CODE_:colourBtn_blue:471544:
  themeColour = blue;
  stopwatchBtn.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  addTaskButton.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  clearButton.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  extraSpaceButton.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  screenshotButton.setLocalColorScheme(GCScheme.BLUE_SCHEME);
} //_CODE_:colourBtn_blue:471544:

public void colourBtn_green_click(GButton source, GEvent event) { //_CODE_:colourBtn_green:920352:
  themeColour = green;
  stopwatchBtn.setLocalColorScheme(GCScheme.GREEN_SCHEME);
  addTaskButton.setLocalColorScheme(GCScheme.GREEN_SCHEME);
  clearButton.setLocalColorScheme(GCScheme.GREEN_SCHEME);
  extraSpaceButton.setLocalColorScheme(GCScheme.GREEN_SCHEME);
  screenshotButton.setLocalColorScheme(GCScheme.GREEN_SCHEME);
} //_CODE_:colourBtn_green:920352:

public void colourBtn_yellow_click(GButton source, GEvent event) { //_CODE_:colourBtn_yellow:322768:
  themeColour = yellow;
  stopwatchBtn.setLocalColorScheme(GCScheme.YELLOW_SCHEME);
  addTaskButton.setLocalColorScheme(GCScheme.YELLOW_SCHEME);
  clearButton.setLocalColorScheme(GCScheme.YELLOW_SCHEME);
  extraSpaceButton.setLocalColorScheme(GCScheme.YELLOW_SCHEME);
  screenshotButton.setLocalColorScheme(GCScheme.YELLOW_SCHEME);
} //_CODE_:colourBtn_yellow:322768:

public void darkMode_click(GButton source, GEvent event) { //_CODE_:darkModeBtn:994179:
  if (!darkMode) {
    darkMode = true;
    darkModeBtn.setText("Light Mode");
    stopwatchBtn.setLocalColorScheme(GCScheme.PURPLE_SCHEME);
    addTaskButton.setLocalColorScheme(GCScheme.PURPLE_SCHEME);
    clearButton.setLocalColorScheme(GCScheme.PURPLE_SCHEME);
    extraSpaceButton.setLocalColorScheme(GCScheme.PURPLE_SCHEME);
    screenshotButton.setLocalColorScheme(GCScheme.PURPLE_SCHEME);
  }
  else { 
    darkMode = false;
    darkModeBtn.setText("Dark Mode");
    colourBtn_green_click(colourBtn_green, event);
  }
} //_CODE_:darkModeBtn:994179:

public void classicalBtnClicked(GButton source, GEvent event) { 
  chosenSong = "classical";   
  pauseMusic(); 
  classical.play(); 
  playMusic.setText("Pause"); 
  musicPaused = true; 
}

public void lofiBtnClicked(GButton source, GEvent event) {
  chosenSong = "lofi";  
  pauseMusic(); 
  lofi.play(); 
  playMusic.setText("Pause"); 
  musicPaused = true; 
}

public void brownNoiseBtnClicked(GButton source, GEvent event) {
  chosenSong = "brownNoise"; 
  pauseMusic(); 
  brownNoise.play(); 
  playMusic.setText("Pause"); 
  musicPaused = true; 
}

void pauseMusic() {
  classical.pause(); 
  lofi.pause(); 
  brownNoise.pause(); 
}

public void studyBreakInput_change(GTextField source, GEvent event) { //_CODE_:studyBreakInput:752035:
} //_CODE_:studyBreakInput:752035:

public void studyBreakBtn_click(GButton source, GEvent event) {
  studyBreak = int(studyBreakInput.getText());
  //print(studyBreak);
}

// Create all the GUI controls. 
// autogenerated do not edit
public void createGUI(){
  G4P.messagesEnabled(false);
  G4P.setGlobalColorScheme(GCScheme.BLUE_SCHEME);
  G4P.setMouseOverEnabled(false);
  surface.setTitle("Sketch Window");
  mainScreen = new GButton(this, 340, 600, 120, 50);
  mainScreen.setText("Main Screen");
  mainScreen.setFont(font1);
  mainScreen.setLocalColorScheme(GCScheme.GREEN_SCHEME);
  mainScreen.addEventHandler(this, "mainScreenClicked");
  screenshotButton = new GButton(this, 160, 130, 80, 40); 
  screenshotButton.setText("Screenshot"); 
  screenshotButton.setFont(font1.deriveFont(13f));
  screenshotButton.addEventHandler(this, "screenshotPressed"); 
  screenshotButton.setLocalColorScheme(GCScheme.GREEN_SCHEME);
  stopwatchBtn = new GButton(this, 360, 170, 80, 28);
  stopwatchBtn.setText("Start");
  stopwatchBtn.setFont(font1);
  stopwatchBtn.addEventHandler(this, "stopwatchBtn_click");
  stopwatchBtn.setLocalColorScheme(GCScheme.GREEN_SCHEME);
  taskbox1 = new GCheckbox(this, 140, 350, 300, 20);
  taskbox1.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  taskbox1.setText("Task 1");
  taskbox1.setOpaque(false);
  taskbox1.addEventHandler(this, "taskbox1_click");
  taskbox2 = new GCheckbox(this, 140, 400, 300, 20);
  taskbox2.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  taskbox2.setText("Task 2");
  taskbox2.setOpaque(false);
  taskbox2.addEventHandler(this, "taskbox2_click");
  taskbox3 = new GCheckbox(this, 140, 450, 300, 20);
  taskbox3.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  taskbox3.setText("Task 3");
  taskbox3.setOpaque(false);
  taskbox3.addEventHandler(this, "taskbox3_click");
  taskbox4 = new GCheckbox(this, 140, 500, 300, 20);
  taskbox4.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  taskbox4.setText("Task 4");
  taskbox4.setOpaque(false);
  taskbox4.addEventHandler(this, "taskbox4_click");
  taskbox5 = new GCheckbox(this, 140, 550, 300, 20);
  taskbox5.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  taskbox5.setText("Task 5");
  taskbox5.setOpaque(false);
  taskbox5.addEventHandler(this, "taskbox5_click");
  taskbox6 = new GCheckbox(this, 510, 350, 300, 20);
  taskbox6.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  taskbox6.setText("Task 6");
  taskbox6.setOpaque(false);
  taskbox6.addEventHandler(this, "taskbox6_click");
  taskbox7 = new GCheckbox(this, 510, 400, 300, 20);
  taskbox7.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  taskbox7.setText("Task 7");
  taskbox7.setOpaque(false);
  taskbox7.addEventHandler(this, "taskbox7_click");
  taskbox8 = new GCheckbox(this, 510, 450, 300, 20);
  taskbox8.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  taskbox8.setText("Task 8");
  taskbox8.setOpaque(false);
  taskbox8.addEventHandler(this, "taskbox8_click");
  taskbox9 = new GCheckbox(this, 510, 500, 300, 20);
  taskbox9.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  taskbox9.setText("Task 9");
  taskbox9.setOpaque(false);
  taskbox9.addEventHandler(this, "taskbox9_click");
  taskbox10 = new GCheckbox(this, 510, 550, 300, 20);
  taskbox10.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  taskbox10.setText("Task 10");
  taskbox10.setOpaque(false);
  taskbox10.addEventHandler(this, "taskbox10_click");
  taskInput = new GTextField(this, 270, 280, 250, 30, G4P.SCROLLBARS_NONE);
  taskInput.setOpaque(true);
  taskInput.setFont(font1);
  taskInput.addEventHandler(this, "taskInput_change");
  addTaskButton = new GButton(this, 530, 275, 40, 40);
  addTaskButton.setText("+");
  addTaskButton.setFont(font1);
  addTaskButton.addEventHandler(this, "addTaskButton_click");
  addTaskButton.setLocalColorScheme(GCScheme.GREEN_SCHEME);
  extraSpaceButton = new GButton(this, 298, 600, 200, 30);
  extraSpaceButton.setText("Add Extra Space");
  extraSpaceButton.addEventHandler(this, "extraSpaceButton_click");
  extraSpaceButton.setFont(font1);
  extraSpaceButton.setLocalColorScheme(GCScheme.GREEN_SCHEME);
  clearButton = new GButton(this, 150, 275, 100, 40); 
  clearButton.setText("Clear Tasks"); 
  clearButton.setFont(font1.deriveFont(15f));
  clearButton.addEventHandler(this, "clearButtonClicked"); 
  clearButton.setLocalColorScheme(GCScheme.GREEN_SCHEME);
  window1 = GWindow.getWindow(this, "Window title", 0, 0, 400, 400, JAVA2D);
  window1.noLoop();
  window1.setActionOnClose(G4P.KEEP_OPEN);
  window1.addDrawHandler(this, "win_draw1");
  settingLabel = new GLabel(window1, 50, 25, 300, 30);
  settingLabel.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  settingLabel.setText("Settings");
  settingLabel.setOpaque(false);
  settingLabel.setFont(font1);
  colourBtn_pink = new GButton(window1, 20, 100, 120, 30);
  colourBtn_pink.setText("Pink");
  colourBtn_pink.setLocalColorScheme(GCScheme.RED_SCHEME);
  colourBtn_pink.addEventHandler(this, "colourBtn_pink_click");
  colourBtn_pink.setFont(font1);
  colourBtn_blue = new GButton(window1, 20, 150, 120, 30);
  colourBtn_blue.setText("Blue");
  colourBtn_blue.addEventHandler(this, "colourBtn_blue_click");
  colourBtn_blue.setFont(font1);
  colourBtn_green = new GButton(window1, 20, 200, 120, 30);
  colourBtn_green.setText("Green");
  colourBtn_green.setLocalColorScheme(GCScheme.GREEN_SCHEME);
  colourBtn_green.addEventHandler(this, "colourBtn_green_click");
  colourBtn_green.setFont(font1);
  colourBtn_yellow = new GButton(window1, 20, 250, 120, 30);
  colourBtn_yellow.setText("Yellow");
  colourBtn_yellow.setLocalColorScheme(GCScheme.YELLOW_SCHEME);
  colourBtn_yellow.addEventHandler(this, "colourBtn_yellow_click");
  colourBtn_yellow.setFont(font1);
  darkModeBtn = new GButton(window1, 20, 300, 120, 30);
  darkModeBtn.setText("Dark Mode");
  darkModeBtn.addEventHandler(this, "darkMode_click");
  darkModeBtn.setFont(font1);
  colourTheme = new GLabel(window1, 5, 70, 150, 20);
  colourTheme.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  colourTheme.setText("Colour Theme");
  colourTheme.setOpaque(false);
  colourTheme.setFont(font1);
  musicOptions = new GLabel(window1, 150, 55, 100, 50); 
  musicOptions.setTextAlign(GAlign.CENTER, GAlign.MIDDLE); 
  musicOptions.setText("Music"); 
  musicOptions.setOpaque(false); 
  musicOptions.setFont(font1);
  classicalBtn = new GButton(window1, 150, 100, 100, 30); 
  classicalBtn.setText("Classic"); 
  classicalBtn.setLocalColorScheme(GCScheme.GOLD_SCHEME);  
  classicalBtn.addEventHandler(this, "classicalBtnClicked"); 
  classicalBtn.setFont(font1);
  lofiBtn = new GButton(window1, 150, 150, 100, 30); 
  lofiBtn.setText("Lofi"); 
  lofiBtn.setLocalColorScheme(GCScheme.PURPLE_SCHEME); 
  lofiBtn.addEventHandler(this, "lofiBtnClicked"); 
  lofiBtn.setFont(font1);
  brownNoiseBtn = new GButton(window1, 150, 200, 100, 60); 
  brownNoiseBtn.setText("Brown Noise"); 
  brownNoiseBtn.setLocalColorScheme(GCScheme.RED_SCHEME); 
  brownNoiseBtn.addEventHandler(this, "brownNoiseBtnClicked");
  brownNoiseBtn.setFont(font1);
  playMusic = new GButton(window1, 150, 300, 100, 30);
  playMusic.setText("Play");
  playMusic.setFont(font1);
  playMusic.addEventHandler(this, "playMusicPressed");
  studyBreakInput = new GTextField(window1, 300, 130, 50, 30, G4P.SCROLLBARS_NONE);
  studyBreakInput.setText("30");
  studyBreakInput.setOpaque(true);
  studyBreakInput.addEventHandler(this, "studyBreakInput_change");
  studyBreakInput.setFont(font1);
  studyBreakLabel = new GLabel(window1, 250, 65, 150, 50);
  studyBreakLabel.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  studyBreakLabel.setText("Break Interval (Minutes)");
  studyBreakLabel.setOpaque(false);
  studyBreakLabel.setFont(font1);
  studyBreakBtn = new GButton(window1, 265, 180, 120, 30);
  studyBreakBtn.setText("Set");
  studyBreakBtn.addEventHandler(this, "studyBreakBtn_click");
  studyBreakBtn.setFont(font1);
  window1.loop();
  
  taskBoxes[1] = taskbox1;
  taskBoxes[2] = taskbox2;
  taskBoxes[3] = taskbox3;
  taskBoxes[4] = taskbox4;
  taskBoxes[5] = taskbox5;
  taskBoxes[6] = taskbox6;
  taskBoxes[7] = taskbox7;
  taskBoxes[8] = taskbox8;
  taskBoxes[9] = taskbox9;
  taskBoxes[10] = taskbox10;
  for(int i = 1; i<=10;i++){
    taskBoxes[i].setFont(font1);
    taskBoxes[i].setText("__________");
  }  
}
 
// Variable declarations 
// autogenerated do not edit
GButton mainScreen; 
GButton playMusic; 
GButton screenshotButton; 
GButton stopwatchBtn; 
GCheckbox taskbox1; 
GCheckbox taskbox2; 
GCheckbox taskbox3; 
GCheckbox taskbox4; 
GCheckbox taskbox5; 
GCheckbox taskbox6; 
GCheckbox taskbox7; 
GCheckbox taskbox8; 
GCheckbox taskbox9; 
GCheckbox taskbox10; 
GTextField taskInput; 
GButton addTaskButton; 
GCheckbox extraTask1; 
GCheckbox extraTask2; 
GCheckbox extraTask3; 
GCheckbox extraTask4; 
GCheckbox extraTask5; 
GCheckbox extraTask6;
GButton extraSpaceButton; 
GButton clearButton; 
GWindow window1;
GLabel settingLabel; 
GButton colourBtn_pink; 
GButton colourBtn_blue; 
GButton colourBtn_green; 
GButton colourBtn_yellow; 
GButton darkModeBtn; 
GLabel colourTheme; 
GLabel musicOptions;
GButton classicalBtn; 
GButton lofiBtn; 
GButton brownNoiseBtn;
GTextField studyBreakInput; 
GLabel studyBreakLabel;
GButton studyBreakBtn;
