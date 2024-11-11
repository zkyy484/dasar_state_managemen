**NAMA : MOCH. DZAKY MUSYADDAD**
-
**NIM : 362358302011**
-
**KELAS : 2A TRPL**
-
**A. PRAKTIKUM**
-
1. Selesaikan langkah-langkah praktikum tersebut, lalu dokumentasikan berupa GIF hasil akhir praktikum beserta penjelasannya di file README.md! Jika Anda menemukan ada yang error atau tidak berjalan dengan baik, silakan diperbaiki.
2. Jelaskan maksud dari langkah 4 pada praktikum tersebut! Mengapa dilakukan demikian?
   - Langkah 4 pada praktikum tersebut mengarahkan Anda untuk membuat file plan.dart di dalam folder models dan mengisinya dengan kode untuk mendefinisikan kelas Plan. Berikut adalah penjelasan dan alasan di balik langkah ini:
     - Struktur Data: Kelas Plan bertindak sebagai model data yang menyimpan daftar tugas, memisahkan logika bisnis dari tampilan (UI). Ini adalah praktik terbaik dalam pengembangan aplikasi.
     - Organisasi Kode: Dengan menempatkan model di folder models, kode menjadi lebih terstruktur dan mudah dikelola, sehingga pengembang dapat dengan cepat menemukan dan memperbarui bagian tertentu dari aplikasi.
     - Pemeliharaan dan Skalabilitas: Memisahkan model dari tampilan mempermudah pemeliharaan dan skala aplikasi. Perubahan pada logika data tidak akan mempengaruhi tampilan, begitu pula sebaliknya.

3. Mengapa perlu variabel plan di langkah 6 pada praktikum tersebut? Mengapa dibuat konstanta ?
   - Variabel plan di langkah 6 pada praktikum tersebut berfungsi sebagai model data yang menyimpan daftar tugas. Berikut adalah alasan mengapa variabel ini diperlukan dan mengapa dibuat sebagai konstanta:
     - Penyimpanan Data: plan berfungsi sebagai komponen utama untuk menyimpan dan mengelola daftar tugas dalam aplikasi. Dengan model plan, aplikasi dapat menambah, memperbarui, atau menghapus tugas sesuai kebutuhan pengguna, sehingga pengelolaan tugas menjadi fleksibel dan responsif.
     - Pemeliharaan State: Dengan variabel plan, aplikasi dapat melacak perubahan daftar tugas secara real-time dan memperbarui UI setiap kali data berubah. Hal ini membuat tampilan selalu sesuai dengan data terbaru, memberikan pengalaman pengguna yang dinamis.
     - Konstanta untuk Immutabilitas: Menetapkan plan sebagai konstanta (const Plan()) memastikan instance awalnya tidak dapat diubah, menjaga integritas data, dan meningkatkan performa aplikasi. Immutabilitas memungkinkan Flutter mengoptimalkan rendering komponen yang tidak berubah, mengurangi beban memori, dan mempercepat kinerja.

4. Lakukan capture hasil dari Langkah 9 berupa GIF, kemudian jelaskan apa yang telah Anda buat!
   ![image](https://github.com/user-attachments/assets/d8c6fced-bab9-4e2c-af4c-03f324c89ecf)
   ![image](https://github.com/user-attachments/assets/f43ea006-cb73-43e5-bb6d-e7fcdf61d516)

5. Apa kegunaan method pada Langkah 11 dan 13 dalam lifecyle state ?
   - initState(): Method ini digunakan untuk menginisialisasi state. Pada Langkah 11, initState() digunakan untuk menginisialisasi ScrollController yang akan mengatur perilaku scroll dan keyboard pada aplikasi.
   
   - dispose(): Method ini digunakan untuk membersihkan resource ketika widget tidak lagi digunakan1. Pada Langkah 13, dispose() digunakan untuk membersihkan ScrollController agar tidak terjadi kebocoran memori.

**B. PRAKTIKUN 2**
-

1. Selesaikan langkah-langkah praktikum tersebut, lalu dokumentasikan berupa GIF hasil akhir praktikum beserta penjelasannya di file README.md! Jika Anda menemukan ada yang error atau tidak berjalan dengan baik, silakan diperbaiki sesuai dengan tujuan aplikasi tersebut dibuat
2. Jelaskan mana yang dimaksud InheritedWidget pada langkah 1 tersebut! Mengapa yang digunakan InheritedNotifier?
   - Pada langkah 1, yang dimaksud dengan InheritedWidget adalah sebuah widget yang memungkinkan data atau state dibagikan ke seluruh widget tree tanpa perlu melewati constructor dari setiap widget. InheritedWidget sangat berguna untuk mengelola state yang perlu diakses oleh banyak widget dalam aplikasi Flutter.
   - Namun, dalam kasus ini, yang digunakan adalah InheritedNotifier sebagai pengganti. InheritedNotifier adalah varian dari InheritedWidget yang dirancang khusus untuk bekerja dengan objek Listenable, seperti ChangeNotifier atau ValueNotifier. InheritedNotifier memungkinkan widget untuk mendengarkan perubahan pada objek Listenable dan otomatis memperbarui dirinya saat terjadi perubahan.
   - Penjelasan di atas menekankan perbedaan antara InheritedWidget dan InheritedNotifier dengan lebih jelas.
  
3. Jelaskan maksud dari method di langkah 3 pada praktikum tersebut! Mengapa dilakukan demikian?
   - initState() adalah method dari lifecycle widget di Flutter yang dipanggil satu kali ketika stateful widget pertama kali dibuat, sehingga menjadi tempat yang ideal untuk melakukan inisialisasi yang hanya perlu dilakukan sekali selama siklus hidup widget. Di sini, kita bisa mengatur controller, menambahkan listener, atau memulai animasi yang akan digunakan sepanjang masa widget.
   - Alasan Penggunaan dalam Praktikum: Dalam contoh praktikum ini, initState() digunakan untuk menginisialisasi ScrollController dan menambahkan listener khusus. Listener ini akan menjalankan FocusScope.of(context).requestFocus(FocusNode()) setiap kali ada perubahan posisi scroll pada widget. Fungsinya adalah untuk menghapus fokus dari input field (seperti TextField) saat pengguna menggulir daftar, sehingga keyboard otomatis tersembunyi saat pengguna bergulir. Ini meningkatkan pengalaman pengguna, karena keyboard hanya tampil saat diperlukan dan tidak menghalangi tampilan saat pengguna melihat daftar.

4. Lakukan capture hasil dari Langkah 9 berupa GIF, kemudian jelaskan apa yang telah Anda buat!
   ![image](https://github.com/user-attachments/assets/a3ba5a99-c6cc-4c02-a7b4-c3daff904ea4)
   - Keterangan: hasilnya tetep sama tidak ada perubahan pada tampilan ui karena pada kode program diatas digunakan untuk memisah antara view dan model, serta menambahkan beberapa tampilan widget sebagai penanda ceklist pada plan yang sudah dibuat.
  
**C. PRAKTIKUM 3**
1. Tambahkan class model yang dibutuhkan sesuai aplikasi PBL kelompok Anda! Bagilah tugas dengan anggota kelompok Anda untuk merancang proses state yang akan dilakukan pada aplikasi kelompok Anda. Lalu terapkan state management pada project kelompok yang telah Anda pelajari melalui praktikum ini.
2. Anda boleh menggunakan plugin/library pihak ketiga seperti riverpod, BLoC, provider atau lainnya untuk mengelola state pada project kelompok PBL.
3. Jika telah berhasil sesuai kebutuhan, maka push hasil kontribusi masing-masing anggota kelompok ke repository project PBL. Beri keterangan commit dengan jelas fitur apa saja yang ditambahkan, tiap screen/fitur untuk setiap commit itu lebih baik.
<img width="958" alt="image" src="https://github.com/user-attachments/assets/f784d415-082a-4be3-bf0e-f1655374d8c1">
<img width="959" alt="image" src="https://github.com/user-attachments/assets/68d732bb-ebfa-418b-b4e3-a0a7f703b3a6">



   



   
