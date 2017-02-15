BEGIN {FS = ","}
{
	if ( $5 == "Female" )
	{
		if ( $6 == "Canada" )
		{
			print $2 "," $3 "," $4 " "
		}
	}	
}
