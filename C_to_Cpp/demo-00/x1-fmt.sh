size x1-*with_calls*.o |
awk '
	$1 == "text" {next}
	{
		level= substr($6, 17, 1)
		calls= substr($6, 30, 1)
		size[level " " calls]= $1
	}
	END {
		print "| Codegröße in Bytes |>|>|>|>|"
		print "| Abschnitte | Optimierung |>|>|>|"
		print "|~| ohne | -O1 | -O2 | -O3 |"
		for (i = 1; i <= 9; ++i) {
			printf "| %d | %d| %d| %d| %d|\n", i,\
				size[0" "i], size[1" "i], size[2" "i], size[3" "i]
		}
	}
'
