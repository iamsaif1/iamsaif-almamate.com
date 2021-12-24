@isTest
public class testaddsubmuldiv 
{
@isTest static void testadd()
{
   integer sum=testingassignment2.add(5,6);
    system.assertEquals(11, sum);
}
    @isTest static void testsub()
{
   integer sub=testingassignment2.sub(6,6);
    system.assertEquals(0, sub);
}
    @isTest static void testmul()
{
   integer mul=testingassignment2.mul(5,6);
    system.assertEquals(30, mul);
}
    @isTest static void testdiv()
{
   integer div=testingassignment2.div(12,6);
    system.assertEquals(2, div);
}
}