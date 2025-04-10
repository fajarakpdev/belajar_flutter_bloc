/* 
🏪 PERUMPAMAAN: WARUNG DAN KASIR
🧍‍♂️ Pembeli = Pengguna Aplikasi
📄 Struk atau permintaan belanja = Event
🧑‍💼 Kasir = Bloc
🧾 Total belanja yang ditampilkan di layar kasir = State

💡 Penjelasan:
✅ Event = Permintaan dari Pembeli
Misalnya pembeli bilang:

“Mas, mie 1 berapa saya mau tambah 3 Indomie.” ➜ TambahBarangEvent

“Mas, hapus 1 kopi dari daftar.” ➜ HapusBarangEvent

➜ Ini semua adalah event, yaitu aksi yang dikirim ke kasir.

✅ Bloc = Kasir yang Proses Permintaan
Kasir akan memeriksa daftar belanja saat ini.

Dia berpikir: “Oh ditambah 1 Indomie, berarti totalnya nambah 3.000 rupiah.”

Lalu dia menghitung ulang total belanja, dan menulis hasil terbaru di layar.

➜ Bloc itu seperti kasir yang menerima event, memproses logika, dan mengubah hasil (state).

✅ State = Layar di Mesin Kasir
Setelah diproses, layar kasir menampilkan hasil:

“Total: Rp 15.000”

“Barang: 3 item”

Ini adalah state: tampilan akhir dari kondisi belanja saat ini.

➜ State adalah data terbaru yang terlihat oleh pengguna berdasarkan apa yang sudah diproses.

























*/