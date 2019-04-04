#region

Class Students {
    [string]$Fname
    [string]$Lname
    
    [string]FullName(){return "$($this.Fname)*$($this.Lname)"}
}

$student1=[Students]::new()

$student1.Fname="Dinesh"
$student1.Lname="Patil"

$student1.FullName()

#Output Dinesh*Patil
#endregion
******************************************
#region
$student1.Fname="Dinesh"
$student1.Lname=3
$student1.FullName()

#Output Dinesh*Patil
#endregion
*******************************************
#region
$student1.Fname=3
$student1.Lname="Patil"
$student1.FullName()

#output 3*Patil

#Addition of string into int is appeding the int into string
#endregion

#region
[int]$first=Read-Host 'Input your First Number'

[int]$second=Read-Host 'Input your Second Number'

[int]$ops=Read-Host 'Ops Details'

[int]$output=Read-Host 

if ($ops -eq 1 )
{$add= $first+$second
 $add
}
elseif ($ops -eq 2 )
{$sub= $first-$second
 $sub
}
elseif ($ops -eq 3 ) 
{$Mult= $first*$second
 $Mult
} 
elseif ($ops -eq 4 )
{$Div= $first/$second
 $Div
}
#endregion
