# web_absensi_uad
#Cara instalasi
1. Nyalain xampp
2. ketik url di browser "localhost/phpmyadmin" (tanpa tanda kutip)
3. buat database baru dengan nama "db_absensi_updated" (tanpa tanda kutip)
4. klik "db_absensi" nya klo udah berhasil dibuat, lalu klik tab "import"
5. klik tombol "browse", lalu pilih file "db_absensi_updated"
6. copy folder "absensi-pegawai" ke "C:\xampp\htdocs"
6. klo udah berhasil, ketik url di browser "localhost/absensi-pegawai/"
7. selesai

#Login
	1. admin :
	email   : admin@gmail.com
	password: admin

	2. user
	email   : *tergantung email user masing2* (ada di database)
	password: *tergantung admin ngasih, tp dari table user ,defaultnya "password"


#Role Admin :
	1. Modul tambah anggota :
			- input no karyawan, beri kode spesifik untuk bagian pegawi, default yg gue buat:
				DR -> dosen
				PW -> tata usaha
				AP -> staff
				AK -> laboran
				maksimal 6digit
			- admin yang memberi password default untuk user.
			- input foto tidak ada, foto bisa di update untuk hak akses user.
	
	2. Modul data anggota:
			- menampilkan data setiap anggota

	3. Modul Kehadiran :
			1. Konfirmasi kehadiran :
				- Data muncul ketika :
						1. User telah klik tombol entri kehadiran
						2. Pada hari saat ini juga
				- Ketika admin klik tombol konfirmasi, maka data akan hilang(tidak terhapus), dan 		mengubah status menjadi 1 pada table presents column status.
				- Ketika admin klik tombol tolak, maka data akan hilang(tidak terhapus), dan 				mengubah status menjadi 2 pada table presents column status
			
			2. Tabel kehadiran : 
				- Data hanya tampil siapa saja yg absensi perhari

			3. Rekap kehadiran :
				- Data tampil untuk perbulan dan yg telah dikonfirmasi

	4. Profile
			- Bisa ubah email dan password.
			- Nama tidak bisa diganti, tetap "Administator".


#Role User:
	1. Modul Profile:
			- Bisa ubah semua data kecuali bagian kerja, bagian kerja hanya bisa di ubah oleh admin.
			- Bisa ubah email dan password.

	2. Kehadiran :
			1. Entri kehadiran :
					- Ketika user udah entri, data absen berstatus "menunggu konfirmasi" dan 0 pada 		table presents column status.
			2. Tabel kehadiran :
					- Menampilkan data absen per user dan per tiap bulan.
			3. Rekap Kehadiran :
					- Menampilkan data per bulannya.
