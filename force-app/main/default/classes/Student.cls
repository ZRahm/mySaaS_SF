public class Student {
    
    //encapsulated data by making access modifier "private"
    private String name = 'Tom Hardy';
    private Integer age = 23;
    private String stdId ='TH12345';

    //to read encapsulated data; create "getter method"
    public String getName(){
        return name;
    }
    
    public Integer getAge(){
        return age;
    }
    
    public String getStdId(){
        return stdId;
    }
    
    public void setName(String name){//to update, enter a value!
        this.name = name;//this.name: refers to the Class (Student)
    }
    public void setAge(Integer age){
    this.age = age;
}
    public void setStdId (String stdId){
        this.stdId = stdId;
    }
}