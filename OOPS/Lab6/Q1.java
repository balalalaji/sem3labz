import java.time.Month;
import java.time.Year;

import javax.naming.NamingEnumeration;

/**
 * Q1
 */
class DOB
{
    int date;
    int month;
    int year;

}
class Person
{
    private String name;
    private DOB dob = new DOB();

    Person()
    {
        name = "";
        dob.date = 1;
        dob.month = 1;
        dob.year = 2001;
    }

    Person(int dt, int mt, int yr, String Name)
    {
        name = Name;
        dob.date = dt;
        dob.month = mt;
        dob.year = yr;

    }

    String getName(){
        return name;
    }

    DOB getDOB()
    {
        return dob;
    }



}

class collegeGraduate extends Person{
    private int yog;
    private float gpa;
    collegeGraduate(){
        super();
        yog = 0;
        gpa = 0;
    
    }

    collegeGraduate(int dt, int mt, int yr, String Name)
    {
        super(dt,mt,yr,Name);
        yog= YearOG;
        gpa = GPA;
    }
    int get YOG()
    {
        return yog.
    }
}

public class Q1 {

    
}