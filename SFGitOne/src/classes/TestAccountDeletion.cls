@isTest
public class TestAccountDeletion {
    @isTest static void TestDeleteAccountwithOpportunity(){
        Account act=new Account(name='Test Accout Opprtunity');
        //Id actId=act.Id;
        insert act;
        Opportunity opp=new Opportunity(Name=act.Name +'Opprotunity',
                                       StageName='Prospecting',
                                       CloseDate=System.today().addMonths(1),
                                       AccountId=act.Id);
        insert opp;
        
        Test.startTest();
        Database.DeleteResult result =Database.delete(act, false);
        
        System.assert(!result.isSuccess());
        System.assert(result.getErrors().size()>0);
        System.assertEquals('Cannot delete the Accoutn with related opprotunity',
                            result.getErrors()[0].getMessage());
    }

}