#subrutine
=pod
sub printex {
	$a = shift;
	print "Numele este: $a \n";
}
printex("Mihai");
sub printex {
	$a = shift;
	$b = shift;
	$c = shift;
	print "Parametrii: $a, $b, $c \n";
}
printex("Mihai","Ion",3);



sub printex {
print "Parametrii = ";
foreach (@_)
{
print " $_,";
}
print  "\n";
}
printex("1","3","5");

sub adunare
{
$a = shift;
$b = shift;
return $a + $b, $a-$b;
}
($c,$d) = adunare(4,3);
print $c."\n".$d."\n";


sub fct
{
@v = (1,2,3);
return @v;
}

@v1 = fct();
print "$v1[0] $v1[1] $v1[2] \n";

sub x
{
print "X";
}
$a = x();
print "\n".$a."\n";



#functie de split si return

sub functie {
$a = shift;
@v = split(/:/,$a);
foreach(@v)
{
	print "$_ ";
}
print "\n";
}

functie("1:2:3:4");

$a = 10;
$refa=\\\\$a;
print $$$$$refa."\n";



@v = (1,2,4);
$refv = \@v;
#print $refv->[0].$refv->[1]."\n";

sub adunare{
$a=shift;
@v=@$a;
foreach(@v){ print "$_ ";} print "\n";
}
adunare($refv);



#hashuri
%h = (1=>"unu",2=>"doi");
$refh=\%h;
print $refh->{1}."\n";

#referinte anonime
$a = [1,3,5];
print $a->[1]."\n";
	#echivalent cu
	#@v - (1,3,5);
	#$a=\@v;
$h={1=>"unu",2=>"doi"};
print $h->{1}."\n";

@a=(1,2);
foreach $e(@a)
{
print $e."\n";
}


@a = (1,2);
push (@a,3,4,5);
pop (@a);
foreach $e(@a)
{
print $e."\n";
}


%h = ("Ion"=>8,"Vasile"=>9);
$h{"Popescu"}=7;
while (($k,$v) = each(%h))
{
print $k." ".$v."\n";
}
=cut

use warnings;
open (FILE, "lab4.txt") or die $!;
while ($linie = <FILE>) {
  $c++;
  @v = split(/;/,$linie);
  $h{$v[0]}=$v[1];
}
while(($k,$v)=each(%h))
{
print $k." ".$v."\n";
}




