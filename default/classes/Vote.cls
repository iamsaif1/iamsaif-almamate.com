public class Vote 
{
    public void votingage(integer candidateage)
    {
      if(candidateage>=18)
      {
        system.debug('Candidate Age Is: '+candidateage+' And Is Eigible To Vote ');
      }
        else
        {
            system.debug('Candidate Is Not Eigible To Vote');
        }      
    }
    public void listforname()
    {
        list<string>StudentName=new list<string>{'Saif','Swati','Priyanka','Ayaz','Ekta'};
            system.debug(StudentName);
    }
}