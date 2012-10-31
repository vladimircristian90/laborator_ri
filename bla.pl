=pod
$v = [1,2,3];
print $v->[1]."\n";

$h = {"Ion"=>10,"Popescu"=>9 };
print $h->{"Popescu"}."\n";

$h = {"Popescu"=>[10,9,8],"Ion"=>[7,6,5]};
print $h->{"Popescu"}->[2]."\n";



$h = {"Popescu"=>[10,9,8],"Ion"=>[7,6,5]};
%h1 = %$h;
while(($k,$v)=each(%h1))
{print $k. ": ";
@v1=@$v;
foreach $e(@v1)
{print $e. " ";}
print "\n";}

=cut

$tablou =
[
  {
    'nume' => 'CHIRIAC',
    'prenume' => 'Vasile',
    'materii' => {
                   'automate' => [9, 8],
                   'programare' => [10, 9],
                   'practica' => [8, 10],
                 }                  
  },
  {
    'nume' => 'VOGHINA',
    'prenume' => 'Claudiu',
    'materii' => {
                   'automate' => [8, 8],
                   'programare' => [8, 9],
                   'practica' => [10, 9],
                   'sport' => [9, 9],
                 }                  
  }
];

@h=@$tablou;
foreach $e1(@h)
{
%h1 = %$e1;
while(($k,$v)=each(%h1))
{
if ($k ne 'materii')
{ print $k.": ".$v."\n";}
else
{
print $k."\n";
%h2 = %$v;
while(($a,$b)=each(%h2))
{

print $a.": ";
@c=@$b;
foreach $e2(@c)
{print $e2." ";}print "\n";
}	
}
}
print "\n";
}
