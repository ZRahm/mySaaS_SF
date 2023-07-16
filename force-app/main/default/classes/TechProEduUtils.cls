public class TechProEduUtils {
    public static void getAcc() {

        List<Account> listAc =[SELECT Id, Name FROM Account WHERE name like '%Tech%' Order By Name];
        for(Account ac: listAc){
            System.debug(ac.Name);
            if(ac.Name=='Tech'){
                ac.Name = 'TechproEdu';
            }
        }

        if(listAc.size()>0) {
            update listAc;
        }

    }
}