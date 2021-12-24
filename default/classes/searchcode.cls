public class searchcode {
    public list<account>accountList{get;set;}
    public string searchstring{get;set;}
    public list<account>acclist{get;set;}
    public searchcode(){
        accountList=new List<account>();
        accountList=[select name,phone,billingpostalcode,billingcity from account];
    }
    public pagereference search(){
        accountList.clear();
        accountList=[select name,phone,billingpostalcode,billingcity from account where name=:searchstring];
        return null;
    }
        public pagereference clear()
        {
            acclist.clear();
            acclist=[select name,phone,billingpostalcode,billingcity from account];
        return null;
        }
    }