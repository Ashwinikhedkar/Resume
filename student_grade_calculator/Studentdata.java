import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.util.LinkedList;
import java.util.List;



public class Studentdata {
	public String name;
	public int quiz1,quiz2,quiz3,quiz4,mid1,mid2,fi;
	
	
	public Studentdata(String name,int quiz1,int quiz2, int quiz3,int quiz4,int mid1,int mid2,int fi)
	{
		this.name = name;
		this.quiz1= quiz1;
		this.quiz2 = quiz2;
		this.quiz3 =quiz3;
		this.quiz4 =quiz4;
		this.mid1 =mid1;
		this.mid2 = mid2;
		this.fi = fi;
	}

	

public  String calculateGrade() {
	double FinalScore= quiz1* .10 + quiz2 * .10 + quiz3 * .10 + quiz4 * .10 + mid1 * .20 + mid2 * .15 + fi * .25;
	
    if (FinalScore >= 90)     //Receive each students average grade
        return "A";    //and return the letter grade.
    else if (FinalScore >= 80 && FinalScore <= 89)
        return "B";
    else if (FinalScore >= 70 && FinalScore <= 79)
        return "C";
    else if (FinalScore >= 60 && FinalScore <= 69)
        return "D";
    else if(FinalScore <= 59)
        return "F";
    else
    	return"absent";
        
} 
public String toString()
{
return name;
}
	
}

