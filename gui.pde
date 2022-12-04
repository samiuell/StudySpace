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

public void taskOneButPressed(GButton source, GEvent event) { //_CODE_:taskOneBut:975853:
  println("button1 - GButton >> GEvent." + event + " @ " + millis());
} //_CODE_:taskOneBut:975853:

public void taskTwoButPressed(GButton source, GEvent event) { //_CODE_:taskTwoBut:708862:
  println("button2 - GButton >> GEvent." + event + " @ " + millis());
} //_CODE_:taskTwoBut:708862:

public void taskThreeButPressed(GButton source, GEvent event) { //_CODE_:taskThreeBut:814104:
  println("button3 - GButton >> GEvent." + event + " @ " + millis());
} //_CODE_:taskThreeBut:814104:

public void addTaskButPressed(GButton source, GEvent event) { //_CODE_:addTaskBut:636625:
  println("addTaskBut - GButton >> GEvent." + event + " @ " + millis());
} //_CODE_:addTaskBut:636625:

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
} //_CODE_:taskbox1:646323:

public void taskbox2_click(GCheckbox source, GEvent event) { //_CODE_:taskbox2:809529:
} //_CODE_:taskbox2:809529:

public void taskbox3_click(GCheckbox source, GEvent event) { //_CODE_:taskbox3:411266:
} //_CODE_:taskbox3:411266:

public void taskbox4_click(GCheckbox source, GEvent event) { //_CODE_:taskbox4:663615:
} //_CODE_:taskbox4:663615:

public void taskbox5_click(GCheckbox source, GEvent event) { //_CODE_:taskbox5:942467:
} //_CODE_:taskbox5:942467:

public void taskbox6_click(GCheckbox source, GEvent event) { //_CODE_:taskbox6:957993:
  println("taskbox6 - GCheckbox >> GEvent." + event + " @ " + millis());
} //_CODE_:taskbox6:957993:

public void taskbox7_click(GCheckbox source, GEvent event) { //_CODE_:taskbox7:244092:
} //_CODE_:taskbox7:244092:

public void taskbox8_click(GCheckbox source, GEvent event) { //_CODE_:taskbox8:881526:
} //_CODE_:taskbox8:881526:

public void taskbox9_click(GCheckbox source, GEvent event) { //_CODE_:taskbox9:848530:
} //_CODE_:taskbox9:848530:

public void taskbox10_click(GCheckbox source, GEvent event) { //_CODE_:taskbox10:841116:
} //_CODE_:taskbox10:841116:

public void taskInput_change(GTextField source, GEvent event) { //_CODE_:taskInput:626904:
} //_CODE_:taskInput:626904:

public void addTaskButton_click(GButton source, GEvent event) { //_CODE_:addTaskButton:276838:
  String task = taskInput.getText();
  if (taskNumber == 1) {
    taskbox1.setText(task);
    taskNumber += 1;
    taskInput.setText("");
  }
  else if (taskNumber == 2) {
    taskbox2.setText(task);
    taskNumber += 1;
    taskInput.setText("");
  }
  else if (taskNumber == 3) {
    taskbox3.setText(task);
    taskNumber += 1;
    taskInput.setText("");
  }
  else if (taskNumber == 4) {
    taskbox4.setText(task);
    taskNumber += 1;
    taskInput.setText("");
  }
  else if (taskNumber == 5) {
    taskbox5.setText(task);
    taskNumber += 1;
    taskInput.setText("");
  }
  else if (taskNumber == 6) {
    taskbox6.setText(task);
    taskNumber += 1;
    taskInput.setText("");
  }
  else if (taskNumber == 7) {
    taskbox7.setText(task);
    taskNumber += 1;
    taskInput.setText("");
  }
  else if (taskNumber == 8) {
    taskbox8.setText(task);
    taskNumber += 1;
    taskInput.setText("");
  }
  else if (taskNumber == 9) {
    taskbox9.setText(task);
    taskNumber += 1;
    taskInput.setText("");
  }
  else if (taskNumber == 10) {
    taskbox10.setText(task);
    if (extraSpace) {
      taskNumber = 11;
    }
    taskInput.setText("");
  }
  else if (taskNumber == 11) {
    extraTask1.setText(task);
    taskNumber += 1;
    taskInput.setText("");
  }
  else if (taskNumber == 12) {
    extraTask2.setText(task);
    taskNumber += 1;
    taskInput.setText("");
  }
  else if (taskNumber == 13) {
    extraTask3.setText(task);
    taskNumber += 1;
    taskInput.setText("");
  }
  else if (taskNumber == 14) {
    extraTask4.setText(task);
    taskNumber += 1;
    taskInput.setText("");
  }
  else if (taskNumber == 15) {
    extraTask5.setText(task);
    taskNumber += 1;
    taskInput.setText("");
  }
} //_CODE_:addTaskButton:276838:

public void extraTask1_click(GCheckbox source, GEvent event) { //_CODE_:extraTask1:528179:
} //_CODE_:extraTask1:528179:

public void extraTask2_click(GCheckbox source, GEvent event) { //_CODE_:extraTask2:231896:
} //_CODE_:extraTask2:231896:

public void extraTask3_click(GCheckbox source, GEvent event) { //_CODE_:extraTask3:336006:
} //_CODE_:extraTask3:336006:

public void extraTask4_click(GCheckbox source, GEvent event) { //_CODE_:extraTask4:932629:
} //_CODE_:extraTask4:932629:

public void extraTask5_click(GCheckbox source, GEvent event) { //_CODE_:extraTask5:337470:
} //_CODE_:extraTask5:337470:

public void extraSpaceButton_click(GButton source, GEvent event) { //_CODE_:extraSpaceButton:951991:
  extraTask1 = new GCheckbox(this, 50, 450, 300, 20);
  extraTask1.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  extraTask1.setText("Extra Task 1");
  extraTask1.setOpaque(false);
  extraTask1.addEventHandler(this, "extraTask1_click");
  extraTask2 = new GCheckbox(this, 50, 500, 300, 20);
  extraTask2.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  extraTask2.setText("Extra Task 2");
  extraTask2.setOpaque(false);
  extraTask2.addEventHandler(this, "extraTask2_click");
  extraTask3 = new GCheckbox(this, 50, 550, 300, 20);
  extraTask3.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  extraTask3.setText("Extra Task 3");
  extraTask3.setOpaque(false);
  extraTask3.addEventHandler(this, "extraTask3_click");
  extraTask4 = new GCheckbox(this, 400, 450, 300, 20);
  extraTask4.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  extraTask4.setText("Extra Task 4");
  extraTask4.setOpaque(false);
  extraTask4.addEventHandler(this, "extraTask4_click");
  extraTask5 = new GCheckbox(this, 400, 500, 300, 20);
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


// Create all the GUI controls. 
// autogenerated do not edit
public void createGUI(){
  G4P.messagesEnabled(false);
  G4P.setGlobalColorScheme(GCScheme.BLUE_SCHEME);
  G4P.setMouseOverEnabled(false);
  surface.setTitle("Sketch Window");
  mainScreen = new GButton(this, 365, 704, 80, 30);
  mainScreen.setText("Main Screen");
  mainScreen.setLocalColorScheme(GCScheme.PURPLE_SCHEME);
  mainScreen.addEventHandler(this, "mainScreenClicked");
  playMusic = new GButton(this, 669, 14, 80, 30);
  playMusic.setText("Play Music");
  playMusic.addEventHandler(this, "playMusicPressed");
 taskbox1 = new GCheckbox(this, 50, 200, 300, 20);
  taskbox1.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  taskbox1.setText("Task 1");
  taskbox1.setOpaque(false);
  taskbox1.addEventHandler(this, "taskbox1_click");
  taskbox2 = new GCheckbox(this, 50, 250, 300, 20);
  taskbox2.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  taskbox2.setText("Task 2");
  taskbox2.setOpaque(false);
  taskbox2.addEventHandler(this, "taskbox2_click");
  taskbox3 = new GCheckbox(this, 50, 300, 300, 20);
  taskbox3.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  taskbox3.setText("Task 3");
  taskbox3.setOpaque(false);
  taskbox3.addEventHandler(this, "taskbox3_click");
  taskbox4 = new GCheckbox(this, 50, 350, 300, 20);
  taskbox4.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  taskbox4.setText("Task 4");
  taskbox4.setOpaque(false);
  taskbox4.addEventHandler(this, "taskbox4_click");
  taskbox5 = new GCheckbox(this, 50, 400, 300, 20);
  taskbox5.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  taskbox5.setText("Task 5");
  taskbox5.setOpaque(false);
  taskbox5.addEventHandler(this, "taskbox5_click");
  taskbox6 = new GCheckbox(this, 400, 200, 300, 20);
  taskbox6.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  taskbox6.setText("Task 6");
  taskbox6.setOpaque(false);
  taskbox6.addEventHandler(this, "taskbox6_click");
  taskbox7 = new GCheckbox(this, 400, 250, 300, 20);
  taskbox7.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  taskbox7.setText("Task 7");
  taskbox7.setOpaque(false);
  taskbox7.addEventHandler(this, "taskbox7_click");
  taskbox8 = new GCheckbox(this, 400, 300, 300, 20);
  taskbox8.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  taskbox8.setText("Task 8");
  taskbox8.setOpaque(false);
  taskbox8.addEventHandler(this, "taskbox8_click");
  taskbox9 = new GCheckbox(this, 400, 350, 300, 20);
  taskbox9.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  taskbox9.setText("Task 9");
  taskbox9.setOpaque(false);
  taskbox9.addEventHandler(this, "taskbox9_click");
  taskbox10 = new GCheckbox(this, 400, 400, 300, 20);
  taskbox10.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  taskbox10.setText("Task 10");
  taskbox10.setOpaque(false);
  taskbox10.addEventHandler(this, "taskbox10_click");
  taskInput = new GTextField(this, 400, 150, 250, 20, G4P.SCROLLBARS_NONE);
  taskInput.setOpaque(true);
  taskInput.addEventHandler(this, "taskInput_change");
  addTaskButton = new GButton(this, 675, 150, 20, 20);
  addTaskButton.setText("+");
  addTaskButton.addEventHandler(this, "addTaskButton_click");
  
  extraSpaceButton = new GButton(this, 300, 450, 200, 30);
  extraSpaceButton.setText("Add Extra Space");
  extraSpaceButton.addEventHandler(this, "extraSpaceButton_click");
}



// Variable declarations 
// autogenerated do not edit
GButton mainScreen; 
GButton playMusic; 
GButton taskOneBut; 
GButton taskTwoBut; 
GButton taskThreeBut; 
GButton addTaskBut; 
GLabel taskListLabel; 
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
