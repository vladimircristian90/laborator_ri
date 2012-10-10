print "\nPrimul program.\n";

#acesta este un comentariu pe o linie
=pod
acesta este un comentariu
pe mai multe
lunii
=cut
# scalari
$a = 5;
$b = "test";
$c = 5.7;

#$a = $a +3;
print "a= $a \n";
print "b= $b \n";
print "c= $c \n";

#vectori

@v= (1,2,3,8);
print "v[0]= $v[0]\n";
print "v[last]= $v[-1]\n"; #ultima valoare!!!
print "lungime vector = ". scalar(@v)."\n";

$s = join("-test-",@v);
print "$s\n";
@v1 = split("-test-",$s);
print @v1;

print "\n";

#hash-uri
%h=("ion"=>9,"pop"=>10);
print $h{"ion"}."\n";
print keys(%h); #toate cheile din hash
print "\n";
print values(%h); #valorile din hash
print "\n";
# . operator de concatenare
$s = "x "."y";
print $s;
print "\n";
# interpolare
$a = 10;
print ' a= $a\n'; #NU SUPORTA!!!
print "\na= $a\n";
#citire de la tastatura
#$a = <stdin>;
#print "a= $a\n";

# if
$a = 5;
$b = 6;
if($a == $b)
{
print "a=b\n";
}
elsif($a<$b)
{
print "a<b\n";
}
else
{
print "a>b\n";
}




print "\n";






















