data myclass;
  set sashelp.class;
run;


/* This code reads that SASHELP.CLASS table and creates a copy called myclass */

proc print data=myclass;
run;

/* and this code simply prints that in MYCLASS table. */

data work.shoes;
	set sashelp.shoes;
	NetSales=Sales-Return;
run;

proc means data=work.shoes mean sum maxdec=2;
	var NetSales;
	class region;
run;
