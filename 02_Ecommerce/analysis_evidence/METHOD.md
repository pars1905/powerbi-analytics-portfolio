# Yöntem

Tam kopya satırları kaldırdım; doğal satır anahtarı olmadığı için bunun varsayım olduğunu ve tutar etkisini `data/quality.json` içinde sakladım. C ile başlayan iptalleri, quantity<=0 ve price<=0 kayıtları brüt pozitif satış kapsamından çıkardım. Müşteri ID’si boş satışları tuttum. Tutar=quantity*price; fatura tekilleştikten sonra order sayılıyor; AOV toplam tutar/toplam fatura.

Veri 2010-12-01–2011-12-09. Eşit takvim ayları için rapor 2011 Ocak–Kasım. İade tutarı ve margin bilinmediği için net satış/kâr iddiası yok. Month-country tablosunun orders ölçüsü toplanabilir; her faturanın tek ülke ve ayda olduğu doğrulandı.

Kontrol: monthly_country toplamını invoices ve summary ile karşılaştır; ilk/son sınırın dahil edilmesini denetle. Bir ülkede AOV’yi elle hesapla.

CSV içe aktarmada invoice, stock ve customer için açık string şeması kullanıldı. pandas parça bazında tip tahminiyle aynı fatura bir yerde integer başka yerde string okunursa DISTINCT/COUNT iki kayıt fazla sayabiliyor. Bağımsız sayım kontrolü bu sorunu buldu; ortak okuyucu düzeltildi. Kimlikler ölçü değil kategoridir.
