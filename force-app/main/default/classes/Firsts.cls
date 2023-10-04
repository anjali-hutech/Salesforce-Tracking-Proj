Public Class Firsts
{
String Var='Hello World';

Public void method1(String msg)
{
system.debug(msg);

}

 public String getDay(Integer dayNumber){
        String dayString = '';

        switch on dayNumber {
            when 0 {
                dayString = 'Sunday';
            }
            when 1 {
                dayString = 'Monday';
            }
            when 2 {
                dayString = 'Tuesday';
            }
            when 3 {
                dayString = 'Wednesday';
            }
            when 4 {
                dayString = 'Thursday';
            }
            when 5 {
                dayString = 'Friday';
            }
            when 6 {
                dayString = 'Saturday';
            }
            when else {
                dayString = 'Invalid day number';
            }
        }

        return dayString;
    }
    public String getValue(String abbr)
    {
    String value='';
    
    switch on abbr{
    when 'Sun'{
    value='sunday';
    }
      when 'Mon'{
    value='Monday';
    }
      when 'Tue'{
    value='Tuesday';
    }
      when 'Wed'{
    value='Wednesday';
    }
      when 'Thus'{
    value='Thursday';
    }
      when 'Fri'{
    value='Friday';
    }
      when 'Sat'{
    value='saturday';
    }
    when else{
    value='invalid';
    }
    }
    return value;
    }
}