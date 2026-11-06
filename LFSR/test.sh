make | grep cycle | awk '{ print $7 }' | perl -e '$ct = 0; while (<>) { $ct++; if (defined($vals{$_})){ print "found duplicate at $ct - val $_"; exit; } $vals{ $_ } = 1;}'
