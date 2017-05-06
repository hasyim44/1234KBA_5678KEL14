Domains
	nama,cond = string
	kondisi = cond*
Facts
	nama(kondisi)

PREDICATES 
	nondeterm lagi
	nondeterm perhatian
	nondeterm keluar
	nondeterm coba(char)
	nondeterm mulai 
	nondeterm pilih(char)
	nondeterm pilih1
	nondeterm pilih2
	nondeterm pilih3
	nondeterm ambila(char)
	nondeterm aa1	
	nondeterm aa2
	nondeterm aa3
	nondeterm ambilb(char)
	nondeterm ab1
	nondeterm ab2
	nondeterm ab3
	nondeterm ambilc(char)
	nondeterm ac1
	nondeterm ac2
	nondeterm ac3
	nondeterm lihat(kondisi)
	yz(char,char)

CLAUSES
	yz(Y,Y):- !.
	yz(_,_):- fail. 
	
	nama([	"1.Muhammad Kharis  1515015004", 
		"2.Hanif Aulia	    1515015012", 
		"3.Hasyim Asyari         1515015030"]).
	/*
    	prosessor ("Intel Core i3-6100", "1.515.000").
    	prosessor ("Intel Core i5-4460 3,2Ghz", "2.360.000").
    	prosessor ("intel i7-7700K (Box) (4.2Ghz Up To 4.5Ghz", "5.220.000").
    	
    	vga ("PowerColor Radeon RX 460 2 GB Red Dragon" ,"1.380.000").
    	vga ("Inno 3D GTX 950 2 GB OC Series", "1.720.000").
    	vga ("HIS R7 360 Icooler OC 2GB DDR5", "1.482.000").
    	vga ("MSI Radeon R7-240 2GB", "842.000").
    	vga ("Digital Alliance GeForce GTX 1050 Ti 4 GB DDR5 StormX Series", "2.190.000").
    	
    	mobo ("ASRock FM2A68M-DG3+" ,"700.000").
    	mobo ("ASUS M5A78L-M LE/USB3", "840.000").
    	mobo ("Gigabyte GA-H110M-DS2", "975.000").
    	mobo ("ASRock 970 Pro3", "1.100.000").
    	mobo ("GIGABYTE GA-H97M-D3H", "1.465.000").
    	
    	ram ("Patriot DDR3 Signature Line Kit Series Dual Channel PC12800 4 GB" ,"335.000").
    	ram ("Team Elite Plus DDR3 PC12800 1600Mhz Dual Channel 4 GB (2X2 GB)", "418.000").
    	ram ("Team Elite Plus DDR 3 PC 12800 Dual Channel 8 GB", "672.000").
    	ram ("Patriot DDR3 Viper 3 Series Dual Channel PC19000 8 GB CL11", "731.000").
    	ram ("Patriot DDR4 Viper 4 Xtreme Dual Channel PC19200 8 GB CL10 (2X4 GB)", "745.000").
    	ram ("PATRIOT PV4 8G 240 C5K ( 2 x 4Gb ) DDR4", "830.000").
    	
    	hdd ("WDC Caviar Blue 1TB" ,"695.000").
    	hdd ("Seagate 1TB", "650.000").
    	hdd ("Toshiba Sata III 1 TB 7200rpm 3.5 Inch", "580.000").
    	
    	psu ("Enermax NAXN 500 WATT" ,"570.000").
    	psu ("Antec VP Series 500 W", "585.000").
    	psu ("Super Flower BRONZE FX 550 W 80+ Bronze", "760.000").
    	
    	casing ("Cooler Master CMP 102C" ,"370.000").
    	casing ("Thermaltake Versa N21", "680.000").
    	casing ("Dazumba DE 505", "240.000").
    	casing ("Dazumba D-Vito 905", "760.000").
	*/
	
lagi:-
	write("Cari Lagi ??  (y/t) : "),
	readchar(A),write(A),
	write("\n"),
	coba(A).
	
	coba(A):- yz(A,'y'),mulai.
	coba(A):- yz(A,'t'),keluar.
	coba(_):- perhatian.

perhatian:-
	write("Mohon Masukan Yang Benar !!\n"),
	lagi.

keluar:-
	
	write("\n\t=== Terima Kasih Telah Mencoba Aplikasi kami Semoga Membantu Anda ===\n"),
	write("\Created by "),
  	write("\n\tKelompok 14\n"),
	nama(Kami),
	lihat(Kami).
	keluar.

	lihat([H|T]):-
          write(H),nl,
          lihat(T).
         


mulai:-
	write("\n"),
	write("= CARI PC YANG ANDA BUTUHKAN ="),
	write("\n"),
	write("1. Gaming\n"),
	write("2. Multimedia\n"),
	write("3. Server\n"),
	write("\n"),
	write("Masukan pilihan : "),
	readchar(A),
	write(A),
	write("\n"),
	pilih(A).

	pilih(A):- yz(A,'1'),pilih1.
	pilih(A):- yz(A,'2'),pilih2.
	pilih(A):- yz(A,'3'),pilih3.
	pilih(_):- mulai.
	
	
   pilih1:-
	write("\nPilih Budget Anda\n"),
	write(" A. 4.000.000 - 6.000.000 "),nl,
	write(" B. 6.000.000 - 8.000.000 "),nl,
	write(" C. 8.000.000 - 10.000.000 "),nl,
	write("\n"),
	write("Masukan pilihan anda : "),
	readchar(B),
	write(B),
	ambila(B).

	ambila(B):- yz(B,'A'),aa1.
	ambila(B):- yz(B,'a'),aa1.
	ambila(B):- yz(B,'B'),aa2.
	ambila(B):- yz(B,'b'),aa2.
	ambila(B):- yz(B,'C'),aa3.
	ambila(B):- yz(B,'c'),aa3.
	ambila(_):- pilih1.

	aa1:-
		write("\n"),
		write("\n"),
		write("=== Komponen PC Gaming Anda ====="),nl,
		write("\n"),
		write("Vga\t"),
		write(" MSI Radeon R7-240 2GB, Rp. 842.000 \n"),
		write("Prosesor\t"),
		write(" Intel Core i3-6100, Rp.1.515.000 \n"),
		write("Ram\t"),
		write(" Patriot DDR3 Signature Line Kit Series Dual Channel PC12800 4 GB, Rp. 335000 \n"),
		write("hdd\t"),
		write(" Toshiba Sata III 1 TB 7200rpm, Rp. 580.000 \n"),
		write("mobo\t"),
		write(" ASRock FM2A68M-DG3+, Rp. 700.000 \n"),
		write("psu\t"),
		write(" Enermax NAXN 500 WATT, Rp. 570.000 \n"),
		write("casing\t"),
		write(" Thermaltake Versa N21, Rp. 680.000 \n"),
		write(" Total : 4.887.000\n"),
		write("\n"),
		lagi.

	aa2:-
		write("\n"),
		write("\n"),
		write("=== Komponen PC Gaming Anda====="),nl,
		write("\n"),
		write("Vga\t"),
		write(" Inno 3D GTX 950 2 GB OC Series, Rp. 1.720.000 \n"),
		write("Prosesor\t"),
		write(" Intel Core i5-4460 3,2Ghz, Rp. 2.360.000 \n"),
		write("Ram\t"),
		write(" Patriot DDR3 Viper 3 Series Dual Channel PC19000 8 GB CL11, Rp. 731.000 \n"),
		write("hdd\t"),
		write(" WDC Caviar Blue 1TB, Rp. 695.000 \n"),
		write("mobo\t"),
		write(" ASUS M5A78L-M LE/USB, Rp. 840.000 \n"),
		write("psu\t"),
		write(" Enermax NAXN 500 WATT, Rp. 570.000 \n"),
		write("casing\t"),
		write(" Dazumba D-Vito 905, Rp. 760.000 \n"),
		write(" Total : 7.676.000\n"),
		write("\n"),
		lagi.
	
	aa3:-
		write("\n"),
		write("\n"),
		write("=== Komponen PC Gaming Anda====="),nl,
		write("\n"),
		write("Vga\t"),
		write(" Digital Alliance GeForce GTX 1050 Ti 4 GB DDR5 StormX Series, Rp. 2.190.000 \n"),
		write("Prosesor\t"),
		write(" Intel i7-7700K (Box) (4.2Ghz Up To 4.5Ghz, Rp. 4.000.000 \n"),
		write("Ram\t"),
		write(" Patriot DDR4 Viper 4 Xtreme Dual Channel PC19200 8 GB CL10 (2X4 GB), Rp. 745.000 \n"),
		write("hdd\t"),
		write(" WDC Caviar Blue 1TB, Rp. 695.000 \n"),
		write("mobo\t"),
		write(" Gigabyte GA-H110M-DS2, Rp. 975.000 \n"),
		write("psu\t"),
		write(" Super Flower BRONZE FX 550 W 80+ Bronze, Rp. 760.000 \n"),
		write("casing\t"),
		write(" Thermaltake Versa N21, Rp. 680.000 \n"),
		write(" Total : 10.025.000\n"),
		write("\n"),
		lagi.

   pilih2:-
	write("\nPilih Budget Anda\n"),
	write(" A. 4.000.000 - 6.000.000 "),nl,
	write(" B. 6.000.000 - 8.000.000 "),nl,
	write(" C. 8.000.000 - 10.000.000 "),nl,
	write("\n"),
	write("Masukan Pilihan Anda : "),
	readchar(C),
	write(C),
	ambilb(C).

	ambilb(C):- yz(C,'A'),ab1.
	ambilb(C):- yz(C,'a'),ab1.
	ambilb(C):- yz(C,'B'),ab2.
	ambilb(C):- yz(C,'b'),ab2.
	ambilb(C):- yz(C,'C'),ab3.
	ambilb(C):- yz(C,'c'),ab3.
	ambilb(_):- pilih3.

	ab1:-
		write("\n"),
		write("\n"),
		write("=== Komponen PC Multimedia Anda====="),nl,
		write("\n"),
		write("Prosesor\t"),
		write(" Intel Core i3-6100, Rp.1.515.000 \n"),
		write("Ram\t"),
		write(" Team Elite Plus DDR3 PC12800 1600Mhz Dual Channel 4 GB (2X2) GB, Rp. 418.000 \n"),
		write("Vga\t"),
		write(" MSI Radeon R7-240 2GB, Rp. 842.000 \n"),
		write("hdd\t"),
		write(" Toshiba Sata III 1 TB 7200rpm 3.5 Inch, Rp. 580.000 \n"),
		write("mobo\t"),
		write(" ASUS M5A78L-M LE/USB3, Rp. 840.000 \n"),
		write("psu\t"),
		write(" Antec VP Series 500 W, Rp. 585.000 \n"),
		write("casing\t"),
		write(" Cooler Master CMP 102, Rp. 370.000 \n"),
		write(" Total : 5.150.000\n"),
		write("\n"),
		lagi.

	ab2:-
		write("\n"),
		write("\n"),
		write("=== Komponen PC Multimedia Anda====="),nl,
		write("\n"),
		write("Prosesor\t"),
		write(" Intel Core i5-4460 3,2Ghz, Rp. 2.360.000 \n"),
		write("Ram\t"),
		write(" Team Elite Plus DDR 3 PC 12800 Dual Channel 8 GB, Rp. 672.000 \n"),
		write("Vga\t"),
		write(" PowerColor Radeon RX 460 2 GB Red Dragon, Rp. 1.380.000 \n"),
		write("hdd\t"),
		write(" Seagate 1TB, Rp. 650.000 \n"),
		write("mobo\t"),
		write(" ASUS M5A78L-M LE/USB3, Rp. 840.000 \n"),
		write("psu\t"),
		write(" Antec VP Series 500 W, Rp. 585.000 \n"),
		write("casing\t"),
		write(" Thermaltake Versa N21, Rp. 680.000 \n"),
		write(" Total : 7.167.000\n"),
		write("\n"),
		lagi.
	
	ab3:-
		write("\n"),
		write("\n"),
		write("=== Komponen PC Multimedia Anda====="),nl,
		write("\n"),
		write("Prosesor\t"),
		write(" intel i7-7700K (Box) (4.2Ghz Up To 4.5Ghz, Rp. 3.430.000 \n"),
		write("Ram\t"),
		write(" Team Elite Plus DDR 3 PC 12800 Dual Channel 8 GB, Rp. 672.000 \n"),
		write("Vga\t"),
		write(" HIS R7 360 Icooler OC 2GB DDR5, Rp. 1.482.000 \n"),
		write("hdd\t"),
		write(" WDC Caviar Blue 1TB, Rp. 695.000 \n"),
		write("mobo\t"),
		write(" ASUS M5A78L-M LE/USB3, Rp. 840.000 \n"),
		write("psu\t"),
		write(" Super Flower BRONZE FX 550 W 80+ Bronze, Rp. 760.000 \n"),
		write("casing\t"),
		write(" Dazumba D-Vito 905, Rp. 760.000 \n"),
		write(" Total : 9.429.000\n"),
		write("\n"),
		lagi.
   pilih3:-
	write("\nPilih Budget Anda\n"),
	write(" A. 4.000.000 - 6.000.000 "),nl,
	write(" B. 6.000.000 - 8.000.000 "),nl,
	write(" C. 8.000.000 - 10.000.000 "),nl,
	write("\n"),
	write("Masukan pilihan : "),
	readchar(D),
	write(D),
	ambilc(D).

	ambilc(D):- yz(D,'A'),ac1.
	ambilc(D):- yz(D,'a'),ac1.
	ambilc(D):- yz(D,'B'),ac2.
	ambilc(D):- yz(D,'b'),ac2.
	ambilc(D):- yz(D,'C'),ac3.
	ambilc(D):- yz(D,'c'),ac3.
	ambilc(_):- pilih3.

	ac1:-
		write("\n"),
		write("\n"),
		write("=== Komponen PC Server Anda====="),nl,
		write("\n"),
		write("Ram\t"),
		write(" Team Elite Plus DDR 3 PC 12800 Dual Channel 8 GB, Rp. 672.000 \n"),
		write("Prosesor\t"),
		write(" Intel Core i3-6100, Rp. 1.515.000 \n"),
		write("Vga\t"),
		write(" PowerColor Radeon RX 460 2 GB Red Dragon, Rp. 1.380.000 \n"),
		write("hdd\t"),
		write(" Toshiba Sata III 1 TB 7200rpm 3.5 Inch, Rp. 680.000 \n"),
		write("mobo\t"),
		write(" ASRock FM2A68M-DG3+, Rp. 700.000 \n"),
		write("psu\t"),
		write(" Antec VP Series 500 W, Rp. 585.000 \n"),
		write("casing\t"),
		write(" Dazumba DE 505, Rp. 240.000 \n"),
		write(" Total : 5.772.000\n"),
		write("\n"),
		lagi.

	ac2:-
		write("\n"),
		write("\n"),
		write("=== Komponen PC Server Anda====="),nl,
		write("\n"),
		write("Ram\t"),
		write(" PATRIOT PV4 8G 240 C5K ( 2 x 4Gb ) DDR4, Rp. 830.000 \n"),
		write("Prosesor\t"),
		write(" Intel Core i5-4460 3,2Ghz, Rp. 2.360.000 \n"),
		write("Vga\t"),
		write(" HIS R7 360 Icooler OC 2GB DDR5, Rp.1.4820.00 \n"),
		write("hdd\t"),
		write(" Seagate 1TB, Rp. 650.000 \n"),
		write("mobo\t"),
		write(" ASRock FM2A68M-DG3+, Rp. 700.000 \n"),
		write("psu\t"),
		write(" Antec VP Series 500 W, Rp. 585.000 \n"),
		write("casing\t"),
		write(" Dazumba D-Vito 905, Rp. 760.000 \n"),
		write(" Total : 7.367.000\n"),
		write("\n"),
		lagi.
	ac3:-
		write("\n"),
		write("\n"),
		write("=== Komponen PC Server Anda====="),nl,
		write("\n"),
		write("Ram\t"),
		write(" PATRIOT PV4 8G 240 C5K ( 2 x 4Gb ) DDR4, Rp. 830.000 \n"),
		write("Prosesor\t"),
		write(" intel i7-7700K (Box) (4.2Ghz Up To 4.5Ghz, Rp. 3.220.000 \n"),
		write("Vga\t"),
		write(" Inno 3D GTX 950 2 GB OC Series, Rp. 1.720.000 \n"),
		write("hdd\t"),
		write(" Seagate 1T, Rp. 650.000 \n"),
		write("mobo\t"),
		write(" GIGABYTE GA-H97M-D3H, Rp. 1.465.000 \n"),
		write("psu\t"),
		write(" Super Flower BRONZE FX 550 W 80+ Bronze, Rp. 760.000 \n"),
		write("casing\t"),
		write(" Dazumba D-Vito 90, Rp. 760.000 \n"),
		write(" Total : 9.405.000\n"),
		write("\n"),
		lagi.
	

GOAL
mulai. 