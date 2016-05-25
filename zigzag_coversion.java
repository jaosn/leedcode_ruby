import java.util.*;
public class Solution {
    public String convert(String s, int numRows) {
        if (s == null) {
            return null;
        }
        if (s.length() <= numRows || numRows == 1){
            return s;
        }else{
            String output;
            ArrayList<String> result = new ArrayList<String>(numRows);
            int num = numRows * 2 - 2;
            for (int i=0;i<=numRows-1;i++){
                result[i] = s.charAt(i);
            }
            for (int i=0;i<=numRows-1;i++){
                output = concat(output,result[i]);
            }
            return output;
        }

    }

    private String concat(String a, String b){
        a += b;
        return a;
    }

    public static void mian(String[] args){

    }

}
