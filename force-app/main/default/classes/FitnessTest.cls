@IsTest
public class FitnessTest {
    
    @IsTest
    public static void  calculateBmi()
    {
       Decimal weight=60;
       Decimal height=1.2;
       Decimal result=Fitness.calculateBmi(weight,height);
       result=result.setScale(2);
       System.assertEquals(41.67, result, 'BMI should be 41.67 for 60kg weight and 1.2 mtr height');
    }

}