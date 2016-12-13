public class StringArrayTest {

    public static String[] generateStringArray(integer i){
        String[] arr= new String[i];
        integer j=0;
        while(j < i){
            arr[j]='Test '+j;
            System.debug(arr[j]);
            j=j+1;
            
        }
        return arr;
    }
    
}