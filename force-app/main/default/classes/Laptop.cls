public class Laptop extends TechParent {

    public void wordDoc (){
        System.debug('You can creat a word doc on Laptop!');
    }
   //overriding the method from parent class 
    public override void learn(){
        System.debug('Laptops play huge role in learning new things!');
    }
}