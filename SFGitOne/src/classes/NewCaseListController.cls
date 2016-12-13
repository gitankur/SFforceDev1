public class NewCaseListController{
private String str='New';

public List<Case> getNewCases(){
  List<case> results= Database.query('Select Id,CaseNumber '+ 'from Case '+ 'Where status=\'New\''  );
          
          return results;
}

}