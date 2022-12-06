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
  h_start = hour();
  m_start = minute();
  s_start = second();
} //_CODE_:mainScreen:980433:


public void playMusicPressed(GButton source, GEvent event) { //_CODE_:playMusic:530303:
  if(musicPaused == false) {
    
    if(chosenSong == "classical")
      classical.play(); 
    else if(chosenSong == "brownNoise")
      brownNoise.play(); 
    else
      lofi.play(); 
    
    playMusic.setText("Pause Music"); 
    musicPaused = true; 
  }
  
  else {
    
    if(chosenSong == "classical")
      classical.pause(); 
    else if(chosenSong == "brownNoise")
      brownNoise.pause(); 
    else
      lofi.pause(); 
    
    playMusic.setText("Play Music"); 
    musicPaused = false; 
    
  }
    
} //_CODE_:playMusic:530303:

public void screenshotPressed(GButton source, GEvent event) {
  screenshot(); 
}


public void stopwatchBtn_click(GButton source, GEvent event) { //_CODE_:stopwatchBtn:937837:
  if (start) {
    h_start = hour();
    m_start = minute();
    s_start = second();
    
    start = false;
  }
  
  if (pause) {
    pause = false;
    stopwatchBtn.setText("Resume");
    
    h_pause = hour();
    m_pause = minute();
    s_pause = second();
    
    noLoop();
  }
  else { 
    pause = true;
    stopwatchBtn.setText("Pause");
    
    h_current = hour();
    m_current = minute();
    s_current = second();
    
    hPaused = h_current - h_pause;
    mPaused = m_current - m_pause;
    if (mPaused < 0) {
      hPaused -= 1;
      mPaused += 60;
    }
    sPaused = s_current - s_pause;
    if (sPaused < 0) {
      mPaused -= 1;
      sPaused += 60;
    }    
    
    loop();
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
  if (taskNumber == 1) {
    taskbox1.setText(task);
    taskNumber += 1;
    taskInput.setText("");
    tasks[1].name = task;
  }
  else if (taskNumber == 2) {
    taskbox2.setText(task);
    taskNumber += 1;
    taskInput.setText("");
    tasks[2].name = task; 
  }
  else if (taskNumber == 3) {
    taskbox3.setText(task);
    taskNumber += 1;
    taskInput.setText("");
    tasks[3].name = task; 
  }
  else if (taskNumber == 4) {
    taskbox4.setText(task);
    taskNumber += 1;
    taskInput.setText("");
    tasks[4].name = task; 
  }
  else if (taskNumber == 5) {
    taskbox5.setText(task);
    taskNumber += 1;
    taskInput.setText("");
    tasks[5].name = task; 
  }
  else if (taskNumber == 6) {
    taskbox6.setText(task);
    taskNumber += 1;
    taskInput.setText("");
    tasks[6].name = task;
  }
  else if (taskNumber == 7) {
    taskbox7.setText(task);
    taskNumber += 1;
    taskInput.setText("");
    tasks[7].name = task;
  }
  else if (taskNumber == 8) {
    taskbox8.setText(task);
    taskNumber += 1;
    taskInput.setText("");
    tasks[8].name = task; 
  }
  else if (taskNumber == 9) {
    taskbox9.setText(task);
    taskNumber += 1;
    taskInput.setText("");
    tasks[9].name = task; 
  }
  else if (taskNumber == 10) {
    taskbox10.setText(task);
    if (extraSpace) {
      taskNumber = 11;
    }
    taskInput.setText("");
    tasks[10].name = task; 
  }
  else if (taskNumber == 11) {
    extraTask1.setText(task);
    taskNumber += 1;
    taskInput.setText("");
    tasks[11].name = task; 
  }
  else if (taskNumber == 12) {
    extraTask2.setText(task);
    taskNumber += 1;
    taskInput.setText("");
    tasks[12].name = task; 
  }
  else if (taskNumber == 13) {
    extraTask3.setText(task);
    taskNumber += 1;
    taskInput.setText("");
    tasks[13].name = task; 
  }
  else if (taskNumber == 14) {
    extraTask4.setText(task);
    taskNumber += 1;
    taskInput.setText("");
    tasks[14].name = task; 
  }
  else if (taskNumber == 15) {
    extraTask5.setText(task);
    taskNumber += 1;
    taskInput.setText("");
    tasks[15].name = task; 
  }
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

public void extraSpaceButton_click(GButton source, GEvent event) { //_CODE_:extraSpaceButton:951991:
  extraTask1 = new GCheckbox(this, 50, 550, 300, 20);
  extraTask1.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  extraTask1.setText("Extra Task 1");
  extraTask1.setOpaque(false);
  extraTask1.addEventHandler(this, "extraTask1_click");
  extraTask2 = new GCheckbox(this, 50, 600, 300, 20);
  extraTask2.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  extraTask2.setText("Extra Task 2");
  extraTask2.setOpaque(false);
  extraTask2.addEventHandler(this, "extraTask2_click");
  extraTask3 = new GCheckbox(this, 50, 650, 300, 20);
  extraTask3.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  extraTask3.setText("Extra Task 3");
  extraTask3.setOpaque(false);
  extraTask3.addEventHandler(this, "extraTask3_click");
  extraTask4 = new GCheckbox(this, 400, 550, 300, 20);
  extraTask4.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  extraTask4.setText("Extra Task 4");
  extraTask4.setOpaque(false);
  extraTask4.addEventHandler(this, "extraTask4_click");
  extraTask5 = new GCheckbox(this, 400, 600, 300, 20);
  extraTask5.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  extraTask5.setText("Extra Task 5");
  extraTask5.setOpaque(false);
  extraTask5.addEventHandler(this, "extraTask5_click");
  
  if (taskNumber == 10) {
    taskNumber = 11;
  }
  extraSpace = true;
  extraSpaceButton.setVisible(false);
} //_CODE_:extraSpaceButton:951991:


public void clearButtonClicked(GButton source, GEvent event) {
  clearTasks(); 
}


void clearTasks(){
  taskNumber=1;
  taskbox1.setText("Task 1");
  taskbox2.setText("Task 2");
  taskbox3.setText("Task 3");
  taskbox4.setText("Task 4");
  taskbox5.setText("Task 5");
  taskbox6.setText("Task 6");
  taskbox7.setText("Task 7");
  taskbox8.setText("Task 8");
  taskbox9.setText("Task 9");
  taskbox10.setText("Task 10");
  taskbox1.setSelected(false);
  taskbox2.setSelected(false);
  taskbox3.setSelected(false);
  taskbox4.setSelected(false);
  taskbox5.setSelected(false);
  taskbox6.setSelected(false);
  taskbox7.setSelected(false);
  taskbox8.setSelected(false);
  taskbox9.setSelected(false);
  taskbox10.setSelected(false);
  if(extraSpace){
    extraTask1.setText("Extra Task 1");
    extraTask2.setText("Extra Task 2");
    extraTask3.setText("Extra Task 3");
    extraTask4.setText("Extra Task 4");
    extraTask5.setText("Extra Task 5");
    extraTask1.setSelected(false);
    extraTask2.setSelected(false);
    extraTask3.setSelected(false);
    extraTask4.setSelected(false);
    extraTask5.setSelected(false);  
    extraTask1.setVisible(false);
    extraTask2.setVisible(false);
    extraTask3.setVisible(false);
    extraTask4.setVisible(false);
    extraTask5.setVisible(false);
    extraSpace = false;
  }
  
  for(int i = 0; i<16; i++){
    tasks[i] = new Task();
  }

}


// Create all the GUI controls. 
// autogenerated do not edit
public void createGUI(){
  G4P.messagesEnabled(false);
  G4P.setGlobalColorScheme(GCScheme.BLUE_SCHEME);
  G4P.setMouseOverEnabled(false);
  surface.setTitle("Sketch Window");
  mainScreen = new GButton(this, 365, 600, 80, 30);
  mainScreen.setText("Main Screen");
  mainScreen.setLocalColorScheme(GCScheme.PURPLE_SCHEME);
  mainScreen.addEventHandler(this, "mainScreenClicked");
  playMusic = new GButton(this, 669, 14, 80, 30);
  playMusic.setText("Play Music");
  playMusic.addEventHandler(this, "playMusicPressed");
  screenshotButton = new GButton(this, 100, 14, 80, 30); 
  screenshotButton.setText("Screenshot"); 
  screenshotButton.addEventHandler(this, "screenshotPressed"); 
  stopwatchBtn = new GButton(this, 360, 120, 80, 30);
  stopwatchBtn.setText("Start");
  stopwatchBtn.addEventHandler(this, "stopwatchBtn_click");
  taskbox1 = new GCheckbox(this, 50, 300, 300, 20);
  taskbox1.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  taskbox1.setText("Task 1");
  taskbox1.setOpaque(false);
  taskbox1.addEventHandler(this, "taskbox1_click");
  taskbox2 = new GCheckbox(this, 50, 350, 300, 20);
  taskbox2.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  taskbox2.setText("Task 2");
  taskbox2.setOpaque(false);
  taskbox2.addEventHandler(this, "taskbox2_click");
  taskbox3 = new GCheckbox(this, 50, 400, 300, 20);
  taskbox3.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  taskbox3.setText("Task 3");
  taskbox3.setOpaque(false);
  taskbox3.addEventHandler(this, "taskbox3_click");
  taskbox4 = new GCheckbox(this, 50, 450, 300, 20);
  taskbox4.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  taskbox4.setText("Task 4");
  taskbox4.setOpaque(false);
  taskbox4.addEventHandler(this, "taskbox4_click");
  taskbox5 = new GCheckbox(this, 50, 500, 300, 20);
  taskbox5.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  taskbox5.setText("Task 5");
  taskbox5.setOpaque(false);
  taskbox5.addEventHandler(this, "taskbox5_click");
  taskbox6 = new GCheckbox(this, 400, 300, 300, 20);
  taskbox6.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  taskbox6.setText("Task 6");
  taskbox6.setOpaque(false);
  taskbox6.addEventHandler(this, "taskbox6_click");
  taskbox7 = new GCheckbox(this, 400, 350, 300, 20);
  taskbox7.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  taskbox7.setText("Task 7");
  taskbox7.setOpaque(false);
  taskbox7.addEventHandler(this, "taskbox7_click");
  taskbox8 = new GCheckbox(this, 400, 400, 300, 20);
  taskbox8.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  taskbox8.setText("Task 8");
  taskbox8.setOpaque(false);
  taskbox8.addEventHandler(this, "taskbox8_click");
  taskbox9 = new GCheckbox(this, 400, 450, 300, 20);
  taskbox9.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  taskbox9.setText("Task 9");
  taskbox9.setOpaque(false);
  taskbox9.addEventHandler(this, "taskbox9_click");
  taskbox10 = new GCheckbox(this, 400, 500, 300, 20);
  taskbox10.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  taskbox10.setText("Task 10");
  taskbox10.setOpaque(false);
  taskbox10.addEventHandler(this, "taskbox10_click");
  taskInput = new GTextField(this, 250, 250, 250, 20, G4P.SCROLLBARS_NONE);
  taskInput.setOpaque(true);
  taskInput.addEventHandler(this, "taskInput_change");
  addTaskButton = new GButton(this, 525, 250, 20, 20);
  addTaskButton.setText("+");
  addTaskButton.addEventHandler(this, "addTaskButton_click");
  extraSpaceButton = new GButton(this, 300, 550, 200, 30);
  extraSpaceButton.setText("Add Extra Space");
  extraSpaceButton.addEventHandler(this, "extraSpaceButton_click");
  clearButton = new GButton(this, 150, 245, 45, 40); 
  clearButton.setText("Clear Tasks"); 
  clearButton.addEventHandler(this, "clearButtonClicked"); 
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
GButton extraSpaceButton; 
GButton clearButton; 
