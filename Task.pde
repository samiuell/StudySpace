class Task {
    String name;
    boolean done;
    
    Task(String n) {
        this.name = n;
        this.done = false;
    }

    void complete() {
        this.done = true;
    }
}
