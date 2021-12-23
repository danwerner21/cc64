2021-12-22T23:48:32+01:00
v0.10 release

profiler report PROFILE-CC64-1
timestamps
586.199.900 748.748.739 
countstamps
5.300.211 6.757.636 

buckets
b# addr[  ]addr  nextcounts  clockticks  name
0 15742 65535       216848    23218175  (etc)
1 19259 19467       113486    12990881  [STRINGS]
2 19479 21712       744114    83543700  [MEMMAN-ETC]
3 21716 22935      1396466   156070883  [FILE-HANDLING]
4 22939 23596       315320    34885778  [INPUT]
5 23600 26287       829111    91386340  [SCANNER]
6 26291 27682       153929    17606028  [SYMTAB]
7 27686 35602      1875549   205230504  [PARSER]
8 35606 37252      1112813   123816329  [PASS2]


profiler report PROFILE-SCANNER-NEXTWORD
timestamps
586.521.921 749.314.289 
countstamps
5.300.211 6.757.636 

buckets
b# addr[  ]addr  nextcounts  clockticks  name
0 15742 65535      6606743   732759365  (etc)
1 25833 25873            0           0  [SCANNER-NEXTWORD-VARS]
2 25877 25939        41158     4589122  [SCANNER-FETCHWORD]
3 25943 25976        85788     9385420  [SCANNER-THISWORD]
4 25980 26018         6531      726108  [SCANNER-NEXTWORD-MARK]
5 26022 26069        17416     1854153  [SCANNER-NEXTWORD-ADVANCED?]
6 65535 65535            0           0
7 65535 65535            0           0
8 65535 65535            0           0


profiler report PROFILE-SCANNER1
timestamps
586.520.676 749.408.499 
countstamps
5.300.211 6.757.636 

buckets
b# addr[  ]addr  nextcounts  clockticks  name
0 15742 65535      6079432   674571735  (etc)
1 23620 23665        54064     5755963  [SCANNER-ALPHANUM]
2 23669 23981         2334      255133  [SCANNER-KEYWORD]
3 23985 24140        66807     7306106  [SCANNER-IDENTIFIER]
4 24144 24724        94045    10135565  [SCANNER-OPERATOR]
5 24728 24968        27340     3518400  [SCANNER-NUMBER]
6 24972 25486       238983    26513577  [SCANNER-CHAR/STRING]
7 25490 25650       150680    16102793  [SCANNER-(NEXTWORD]
8 25654 25800        43951     5249106  [SCANNER-COMMENT]


profiler report PROFILE-SCANNER2
timestamps
586.591.977 749.380.106 
countstamps
5.300.211 6.757.636 

buckets
b# addr[  ]addr  nextcounts  clockticks  name
0 15742 65535      6081752   674767321  (etc)
1 23620 23665        54064     5761051  [SCANNER-ALPHANUM]
2 23985 24140        66807     7314597  [SCANNER-IDENTIFIER]
3 24144 24724        94045    10143745  [SCANNER-OPERATOR]
4 24728 24968        27340     3514120  [SCANNER-NUMBER]
5 24972 25486       238983    26513420  [SCANNER-CHAR/STRING]
6 25490 25650       150680    16116030  [SCANNER-(NEXTWORD]
7 25654 25800        43951     5248093  [SCANNER-COMMENT]
8 26073 26287           14        1608  [SCANNER-REST]


profiler report PROFILE-SCANNER3
timestamps
586.858.001 749.669.767 
countstamps
5.300.211 6.757.636 

buckets
b# addr[  ]addr  nextcounts  clockticks  name
0 15742 65535      5958199   661987805  (etc)
1 23620 23665        54064     5759509  [SCANNER-ALPHANUM]
2 23985 24140        66807     7316395  [SCANNER-IDENTIFIER]
3 24144 24724        94045    10135532  [SCANNER-OPERATOR]
4 24972 25486       238983    26522864  [SCANNER-CHAR/STRING]
5 25490 25650       150680    16108959  [SCANNER-(NEXTWORD]
6 25654 25800        43951     5252457  [SCANNER-COMMENT]
7 25804 26069       150893    16584517  [SCANNER-NEXTWORD]
8 26073 26287           14        1608  [SCANNER-REST]
