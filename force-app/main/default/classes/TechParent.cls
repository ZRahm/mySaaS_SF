public virtual class TechParent {
           
    public static void connect (){
        System.debug('You connect to people with technology');
    }
    
    public  void create(){
        System.debug('You create new things with technology!');
    }
    //making virtual method to override in child class
    public virtual void learn (){
        System.debug('You learn new things with technology!');
    }
}