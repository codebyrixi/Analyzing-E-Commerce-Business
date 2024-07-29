
# Analyzing eCommerce Business Performance with SQL
Project ini merupakan project yang bertujuan untuk menganalisa bisnis performa suatu perusahaan E-Commerce. Project ini dibuat menggunakan PostgreSQL

## Daftar Isi
- [Persiapan Database](https://github.com/codebyrixi/Analyzing-E-Commerce-Business-Performance/tree/main?tab=readme-ov-file#bagian-1-persiapan-database)
- [Pertumbuhan Aktivitas Pelanggan Tahunan](https://github.com/codebyrixi/Analyzing-E-Commerce-Business-Performance/tree/main?tab=readme-ov-file#bagian-2-pertumbuhan-aktivitas-pelanggan-tahunan)
- [Kualitas Kategori Produk Tahunan](https://github.com/codebyrixi/Analyzing-E-Commerce-Business-Performance/tree/main?tab=readme-ov-file#bagian-3-kualitas-kategori-produk-tahunan)
- [Penggunaan Jenis Pembayaran Tahunan](https://github.com/codebyrixi/Analyzing-E-Commerce-Business-Performance/tree/main?tab=readme-ov-file#bagian-4-penggunaan-jenis-pembayaran-tahunan)

## Bagian 0: Pendahuluan
Dalam suatu perusahaan mengukur performa bisnis sangatlah penting untuk melacak, memantau, dan menilai keberhasilan atau kegagalan dari berbagai proses bisnis. Oleh karena itu, dalam paper ini akan dianalisa performa bisnis untuk sebuah perusahan eCommerce,  dengan memperhitungkan beberapa metrik bisnis yaitu pertumbuhan pelanggan, kualitas produk, dan tipe pembayaran.

## Bagian 1: Persiapan Database
Dataset yang digunakan  adalah dataset sebuah  perusahaan eCommerce Brasil yang memiliki  informasi  pesanan  dengan  jumlah 99441 dari  tahun 2016 hingga 2018. Terdapat  fitur-titur yang membuat  informasi  seperti status pemesanan, lokasi, rincian item, jenis  pembayaran, serta ulasan. Langkah-Langkah nya  meliputi:
1. Membuat workspace database di dalam  pgAdmin dan membuat  tabel  menggunakan CREATE TABLE statement
2. Melakukan import data csv kedalam database
3. Menentukan Primary Key atau Foreign Key enggunakan statement ALTER TABLE
4. Membuat dan mengeksport ERD (Entity Relationship Diagram) seperti yang terlihat pada gambar dibawah
![Gambar ERD](https://github.com/user-attachments/assets/a75f3743-e7ba-476d-87e9-5fc5ac2fa9b0)


## Bagian 2: Pertumbuhan Aktivitas Pelanggan Tahunan
Tahapan ini menggunakan dua dari delapan dataset yang diberikan, yaitu data pesanan dan data pelanggan. Dari kedua dataset tersebut, dilakukan beberapa analisis diantaranya sebagai berikut:
1. Analisis rata-rata jumlah customer aktif bulanan (monthly active user) untuk setiap tahun
2. Analisis jumlah customer baru pada masing-masing tahun
3. Analisis jumlah customer yang melakukan pembelian lebih dari satu kali (*repeat order*) pada masing-masing tahun
4. Analisis rata-rata jumlah order yang dilakukan customer untuk masing-masing tahun<br>
![Annual Customer Activity Growth](https://github.com/user-attachments/assets/4282f1e8-d7e1-46a0-a61f-ae0df0494cea)
Dari keempat analisis tersebut, didapat tabel seperti pada tabel diatas, dengan analisa grafik sbagai berikut.
### Rerata MAU (*Monthly Active User*) & Total Pelanggan Baru
![2a  Rerata MAU   Total Cust  Baru](https://github.com/user-attachments/assets/e542ac43-777a-4e61-9224-07a51044a9f2)
Dari grafik diatas, dapat disimpulkan bahwa:
1. Rata-rata Pengguna Aktif Bulanan (MAU) per tahunnya terus meningkat secara perlahan
2. Total pelanggan baru terus meningkat per tahunnya, namun peningkatan yang sangat signifikan terjadi dari 2016 ke 2017
### Total Pelanggan yang Melakukan Repeat Order
![2b  Total Customer yang Melakukan Repeat Order](https://github.com/user-attachments/assets/e90baf02-7e9c-42b9-a19b-914e7b8139d0)
Bersamaan dengan meningkatnya pelanggan baru, pengulangan order pun mengalami hal yang sama, yaitu peningkatan secara signifikan dari 2016 ke 2017 walaupun akhirnya menurun di 2018
### Rerata Jumlah Order Pelanggan
![2c  Rata-Rata Jumlah Order Customer](https://github.com/user-attachments/assets/b33abe78-aa76-4d39-8d41-0dcf65135e96)
Dari grafik diatas, dapat diketahui bahwa rata-rata pelanggan setiap tahunnya cenderung hanya melakukan order satu kali, artinya mayoritas pelanggan tidak melakukan pengulangan order

## Bagian 3: Kualitas Kategori Produk Tahunan
Tahapan ini menggunakan tiga dari delapan dataset yang diberikan, serta menambahkan empat dataset baru. Dari ketiga dataset tersebut, dilakukan beberapa analisis diantaranya sebagai berikut:
1. Analisis informasi pendapatan/revenue perusahaan total untuk masing-masing tahun
2. Analisis informasi jumlah _cancel order total_ untuk masing-masing tahun
3. Analisis kategori produk yang memberikan pendapatan total tertinggi untuk masing-masing tahun
4. Analisis kategori produk yang memiliki jumlah cancel order terbanyak untuk masing-masing tahun
![3 0a  Annual Product Category Quality](https://github.com/user-attachments/assets/236a70b9-7171-41b3-b822-de2c9a91b84b)
![3 0b  Annual Product Category Quality](https://github.com/user-attachments/assets/85d9579f-c867-4233-a667-9c84d4d34ff6)<br>
Dari keempat analisis tersebut, didapat tabel seperti pada tabel diatas, beserta beberapa analisis grafik dengan analisa grafik sebagai berikut.
### Total *Revenue* Tahunan
![3a  Total Revenue Tahunan](https://github.com/user-attachments/assets/c5486047-48bf-4790-9cb9-dec82aba0b9f)
Dapat dilihat pada grafik diatas, bahwa total _revenue_ tahunan selalu naik setiap tahunnya, dengan kenaikan terbesar terjadi dari tahun 2016 ke 2017 dan _revenue_ tertinggi di tahun 2018.
### Total _Revenue_ Produk Top Tahunan
![3b  Total Revenue Produk Top Tahunan](https://github.com/user-attachments/assets/24af856b-4f32-49a2-bf9e-29e97ea5de45)
Begitu pula dengan _revenue_ produk top tahunannya yang mengalami kenaikan setiap tahunnya walaupun setiap tahunnya memiliki jenis kategori top produk yang berbeda. Pada 2018, perusahaan menghasilkan revenue paling tinggi dengan jenis kategori top produk kesehatan dan kecantikan (`health_beauty`).
### Total Produk yang Dibatalkan Tahunan
![3c  Total Produk yang Dibatalkan Tahunan](https://github.com/user-attachments/assets/643d39b1-3b36-43eb-b3d1-dc4636bab5c5)
Tidak berbeda dengan _revenue_ produk top tahunan, total produk yang dibatalkan tahunannya pun mengalami kenaikan setiap tahunnya walaupun setiap tahunnya memiliki jenis kategori top produk yang berbeda. Berbanding lurus dengan _revenue_ produk top tahunannya, pembatalan terbesar pun terjadi pada 2018 dengan pembatalan terbanyak pada produk kesehatan dan kecantikan (`health_beauty`).  

## Bagian 4: Penggunaan Jenis Pembayaran Tahunan
Tahapan ini menggunakan dua dari delapan dataset yang diberikan, yaitu dataset pesanan dan pembayaran pesanan. Dari ketiga dataset tersebut, dilakukan beberapa analisis, yaitu menampilkan jumlah penggunaan masing-masing tipe pembayaran secara all time diurutkan dari yang terfavorit, serta menampilkan detil informasi jumlah penggunaan masing-masing tipe pembayaran untuk setiap tahun.
![4 0  Annual Payment Type Usage](https://github.com/user-attachments/assets/5e29d2b4-d79a-4c98-94ba-cd9cfe8cdaf6)
Dari kedua analisis tersebut, didapat tabel seperti pada tabel diatas, beserta analisis grafik sebagai berikut.
### Jumlah Penggunaan Metode Pembayaran
![4a  Jumlah Penggunaan Metode Pembayaran](https://github.com/user-attachments/assets/4079b998-f5f3-4669-9a09-4bfe3c2c8980)
Berdasarkan grafik diatas, sangat terlihat bahwa mayoritas pelanggan menggunakan metode pembayaran dengan kartu kredit setiap tahunnya, dengan jumlah penggunaan terbesar pada tahun 2018. Hal ini bisa terjadi karena banyak promosi pembayaran untuk kartu kredit. Akan tetapi, pelanggan yang menggunakan metode pembayaran dengan voucher terlihat mengalami penurunan pada 2018. Hal ini bisa disebabkan karena ketersediaan voucher yang kian menipis.
