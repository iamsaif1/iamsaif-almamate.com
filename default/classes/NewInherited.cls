public virtual class NewInherited extends InheritedClass
{
integer a=12;
integer b=15;
integer c;
public void mod()
{
 c=math.mod(a, b);
 system.debug(c);   
}    
}