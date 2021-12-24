public class opp2 {
    public void updateopp()
    {
        list<opportunity> opl=[select name,closedate from opportunity where CLOSEDATE>Today];
        for(opportunity op:opl){
            op.name=op.name +'F';
            }
            update opl;
    }
}