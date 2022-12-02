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



// Create all the GUI controls. 
// autogenerated do not edit
public void createGUI(){
  G4P.messagesEnabled(false);
  G4P.setGlobalColorScheme(GCScheme.BLUE_SCHEME);
  G4P.setMouseOverEnabled(false);
  surface.setTitle("Sketch Window");
  mainScreen = new GButton(this, 381, 563, 80, 30);
  mainScreen.setText("Main Screen");
  mainScreen.setLocalColorScheme(GCScheme.PURPLE_SCHEME);
  mainScreen.addEventHandler(this, "mainScreenClicked");
  playMusic = new GButton(this, 691, 14, 80, 30);
  playMusic.setText("Play Music");
  playMusic.addEventHandler(this, "playMusicPressed");
}

// Variable declarations 
// autogenerated do not edit
GButton mainScreen; 
GButton playMusic; 