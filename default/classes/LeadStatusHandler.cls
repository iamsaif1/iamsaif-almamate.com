public class LeadStatusHandler{
    public static void ConvertingLeads(list<lead>leadList){
                list<account>accList=new list<account>();
        list<contact>conList=new List<contact>();
    lead[] lStatus=[select id,isconverted,rating,company,lastname from lead where id in:leadList];
            for(lead l:lStatus){
        if(l.Rating=='Hot'&& l.IsConverted==false){
         account acc=new account();
            acc.Name=l.Company;
            accList.add(acc);
            contact con=new contact();
            con.lastName=l.lastName;
           conList.add(con);
                     
        }     
        
    }
        insert accList;
        insert conList;
}
}