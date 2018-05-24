import java.io.IOException;


public class TestLetterGrade {

	/**
	 * @param args
	 * @throws IOException 
	 */
	public static void main(String[] args) throws IOException {
		// TODO Auto-generated method stub
		if(args.length < 2)
		{
			System.out.println("Usage:java  inputfile outputfile");
			System.exit(1);
		}
		else
		{
			System.out.println("input will read from input"+args[0]);
			System.out.println("output will be written to output file"+args[1]);
			
		}
		LetterGrade lettergrade= new LetterGrade(args[0],args[1]);
		// read input file trim name of student store remaining data into array 
		
	}

}
