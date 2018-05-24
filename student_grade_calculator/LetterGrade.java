
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.io.Writer;
import java.util.LinkedList;
import java.util.List;


public class LetterGrade {
	private static FileReader fr;
	private static PrintWriter pw;
    private static BufferedReader br;
    private static String s;
	public LetterGrade(String inputfile,String outputfile)throws IOException
	{
	
	ReadFilenCalculategrade(inputfile, outputfile);
	}
	public void ReadFilenCalculategrade(String inputfile,String outputfile) throws IOException
	{
		
		
		List<Studentdata> data = new LinkedList<Studentdata>();
		try
		{
			//create bufferedReader object instance with fileReader
			BufferedReader br = new BufferedReader(new FileReader(inputfile));
			//read first line
			String s = br.readLine();
			//loop until all lines are read
			while(s != null)
			{
				//use split array to load a string array with the values from each line of
				//the file using comma as delimiter
				String [] token = s.split(",");
				
				//make temp variable for all data
				String tempname = token[0];
				int tempquiz1 = Integer.parseInt(token[1].trim());
				int  tempquiz2 =Integer.parseInt(token[2].trim());
				int  tempquiz3 = Integer.parseInt(token[3].trim());
				int tempquiz4 = Integer.parseInt(token[4].trim());
				int tempmid1 = Integer.parseInt(token[5].trim());
				int tempmid2 = Integer.parseInt(token[6].trim());
				int tempfi = Integer.parseInt(token[7].trim());
				
				//make temp instance of student object and load with values
				
				
				Studentdata tempobj =new Studentdata(tempname,tempquiz1,tempquiz2,tempquiz3,tempquiz4,tempmid1,tempmid2,tempfi);
				
				data.add(tempobj);
				
			//calculate average of quiz1 column
				s =	br.readLine();
			}
		}
		catch(NumberFormatException e)
		{
			System.out.println(e.getMessage());
		}
	finally
		{
			
		}
		System.out.println("student name \t\t\t\t\t\t\t Grade");
		Writer writer = null;
		try {
			
		    writer = new BufferedWriter(new OutputStreamWriter(
		          new FileOutputStream(outputfile), "utf-8"));
			for(Studentdata a:data)
			{
				
				writer.write(a.toString()+" ");
				writer.write(a.calculateGrade()+"\n");
			}
			System.out.println();
			

			
			    			} catch (IOException ex) {
			  // report
			} finally {
			   try {writer.close();} catch (Exception ex) {/*ignore*/}
			}
		
			double avgquiz1;
			int minquiz1=1000,maxquiz1=0,totalquiz1=0;
			for(int i = 0; i <data.size(); i++)
			{
				totalquiz1 += data.get(i).quiz1;
				if(data.get(i).quiz1 > maxquiz1)
				{
				maxquiz1 = data.get(i).quiz1;
				}
				if(data.get(i).quiz1 < minquiz1)
				{
					minquiz1 = data.get(i).quiz1;
				}
				
			}
			avgquiz1 = totalquiz1/data.size();		
			System.out.println(avgquiz1);
			System.out.println(maxquiz1);
			System.out.println(minquiz1);
			
			double avgquiz2;
			int minquiz2= 1000,maxquiz2=0,totalquiz2=0;
			for(int i = 0; i <data.size(); i++)
			{
				totalquiz2 += data.get(i).quiz2;
				if(data.get(i).quiz2 > maxquiz2)
				{
					maxquiz2 = data.get(i).quiz2;
				}
				if(data.get(i).quiz2 < minquiz2)
				{
					minquiz2 = data.get(i).quiz2;
				}
			}
			avgquiz2 = totalquiz2/data.size();
			
			System.out.println(avgquiz2);
			System.out.println(maxquiz2);
			System.out.println(minquiz2);
			
			double avgquiz3;
			int minquiz3=1000,maxquiz3=0,totalquiz3=0;
			for(int i = 0; i <data.size(); i++)
			{
				totalquiz3 += data.get(i).quiz3;
				if(data.get(i).quiz3 > maxquiz3)
				{
				maxquiz3 = data.get(i).quiz3;
				}
				if(data.get(i).quiz3 < minquiz3)
				{
					minquiz3 = data.get(i).quiz3;
				}
				
			}
			avgquiz3 = totalquiz3/data.size();		
			
			double avgquiz4;
			int minquiz4=1000,maxquiz4=0,totalquiz4=0;
			for(int i = 0; i <data.size(); i++)
			{
				totalquiz4 += data.get(i).quiz4;
				if(data.get(i).quiz4 > maxquiz4)
				{
				maxquiz4 = data.get(i).quiz4;
				}
				if(data.get(i).quiz4 < minquiz4)
				{
					minquiz4 = data.get(i).quiz4;
				}
				
			}
			avgquiz4 = totalquiz4/data.size();		
			
			double avgmid1;
			int minmid1=1000,maxmid1=0,totalmid1=0;
			for(int i = 0; i <data.size(); i++)
			{
				totalmid1 += data.get(i).mid1;
				if(data.get(i).mid1 > maxmid1)
				{
				maxmid1 = data.get(i).mid1;
				}
				if(data.get(i).mid1 < minmid1)
				{
					minmid1 = data.get(i).mid1;
				}
				
			}
			avgmid1 = totalmid1/data.size();
			
			double avgmid2;
			int minmid2=1000,maxmid2=0,totalmid2=0;
			for(int i = 0; i <data.size(); i++)
			{
				totalmid2 += data.get(i).mid2;
				if(data.get(i).mid2 > maxmid2)
				{
				maxmid2 = data.get(i).mid2;
				}
				if(data.get(i).mid2 < minmid2)
				{
					minmid2 = data.get(i).mid2;
				}
				
			}
			avgmid2 = totalmid2/data.size();
			
			double avgfi;
			int minfi=1000,maxfi=0,totalfi=0;
			for(int i = 0; i <data.size(); i++)
			{
				totalfi += data.get(i).fi;
				if(data.get(i).fi > maxfi)
				{
				maxfi = data.get(i).fi;
				}
				if(data.get(i).fi < minfi)
				{
					minfi = data.get(i).fi;
				}
				
			}
			avgfi = totalfi/data.size();		
	}
	
	}

	
	