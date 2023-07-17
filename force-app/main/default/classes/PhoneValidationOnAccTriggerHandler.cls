public class PhoneValidationOnAccTriggerHandler {
    
    public static void validatePhoneField(List<Account> acc){
        
        for(Account ac: acc){
            if(ac.Phone == null){
                ac.Phone.addError('Please write the phone number.');
            }
            if(ac.Phone != null){
                String phone = ac.Phone.trim();
                if(phone.length() != 11 || !phone.startsWith('+')){
                    ac.Phone.addError('Phone number must contain 11 digits and start with +');
                }
            }
        }
        
    }

}