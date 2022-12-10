//Task boxes
int taskNumber = 1; 
boolean extraSpace = false; 
Task[] tasks = new Task[17]; 
GCheckbox[] taskBoxes = new GCheckbox[17];

class Task {
    String name;
    boolean done;
    
    Task(String n) {
        this.name = n;
        this.done = false;
    }
    
    Task(){
      this.name = "";
      this.done = false;
    }

    void complete() {
        this.done = true;
    }
}
