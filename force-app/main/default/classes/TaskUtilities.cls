public class TaskUtilities {
    
    public static String getTaskPriority(String leadState){
        if(String.isBlank(leadState) || leadState.length()>3|| leadState.length()<2){
            return null;
        }
        String taskPriority;
        if(leadState == 'CA'){
            taskPriority = 'High';
        }else{
            taskPriority = 'Normal';
        }
        return taskPriority;
    }

}