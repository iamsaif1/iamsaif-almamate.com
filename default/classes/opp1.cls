public class opp1 {
    public void delopp(){
        
        opportunity opl=[select name from opportunity where CloseDate<Today];
        delete opl;
    }

}