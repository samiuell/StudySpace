//Progress bar
int pBarLength = 300;

void updateProgressBar(){
  fill(255);
  rect(250,225,pBarLength,20);
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
    if(darkMode)
      fill(117, 217, 152);
    else
      fill(0); 
    rect(250,225,comp,20);
  }
}
