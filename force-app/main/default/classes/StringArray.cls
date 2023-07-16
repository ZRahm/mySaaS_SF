public class StringArray {
    
    public static List<String> generateStringArray (Integer inputNum){
        
        List<String> strList = new List<String>();
        for (Integer i=1; i<=inputNum; i++){
            String outPut = 'Test'+i;
            strList.add(outPut);
        }
        
        System.debug(strList);
        return strList;
    }

}

//StringArray.generateStringArray(7);//(Test1, Test2, Test3, Test4, Test5, Test6, Test7)