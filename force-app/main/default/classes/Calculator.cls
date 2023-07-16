public class Calculator {
    
    public static Decimal dynamicCalculationMethod (Decimal a, Decimal b, String operation){
        Decimal result;
        
        switch on operation {
            when 'ADD'{
                result = a+b;
            }
            when 'SUBTRACT' {
                result = a-b;
            }
            when 'DIVIDE' {
                
                    result = a/b;
                
            }
            when 'MULTIPLY'{
                result = a*b;
            }
            when else {
                throw new IllegalArgumentException ('Invalid operation' + operation);
            }
        }
        
        return result;
    }

}