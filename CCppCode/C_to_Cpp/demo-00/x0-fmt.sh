size x0-*.o |
awk '
	$1 == "text" {next}
	{
		level= substr($6, 17, 1)
		sections= substr($6, 31, 1)
		size[level " " sections]= $1
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
