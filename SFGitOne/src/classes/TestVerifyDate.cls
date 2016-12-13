@isTest
public class TestVerifyDate {
    @isTest static void testCheckDates(){
        Date date1 = Date.newInstance(1960, 2, 17);
		Date date2 = date1.addDays(2);
        Date date3=VerifyDate.CheckDates(date1, date2);       
        System.assertEquals(date2, date3);
        
    }
    
       @isTest static void testCheckDatesabove30(){
        Date date1 = Date.newInstance(1960, 2, 17);
		Date date2 = date1.addDays(30);
        Date date3=VerifyDate.CheckDates(date1, date2);       
        System.assertEquals(date1, date3);
        
    }
  	 @isTest static void testCheckDates45(){
        Date date1 = Date.newInstance(1960, 2, 17);
		Date date2 = date1.addDays(45);
        Date date3=VerifyDate.CheckDates(date1, date2);       
        System.assertEquals(date1, date3);
        
    }    

    
    

}