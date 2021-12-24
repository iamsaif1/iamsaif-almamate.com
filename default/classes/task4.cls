public class task4 {
    public void addopp(){
        for(integer i=0;i<=20;i++)
        {
            opportunity op=new opportunity();
            op.Name='Opp'+i;
            op.StageName='Prospecting';
            op.CloseDate=system.today();
            
            insert op;
        }
        
    }

}