# Taiwan davranışsal kredi riski

**Durum:** Power BI proje taslağı. Power BI Desktop'ta açılmadı; M/DAX ve görseller çalışma zamanında doğrulanmadı.

**Kapsam:** Tarihsel 30000 mevcut kart sahibi • L1 değişken seçimi • Yeni başvuru kabul modeli değildir.

**Kaynak:** UCI Default of Credit Card Clients, DOI 10.24432/C55S3H; 11_risk_taiwan çıktıları.

**Yorum ve sınır:** AUC doğruluk yüzdesi değildir. Katsayı/importance nedensellik değildir. Eğitim/doğrulama/test ayrıdır; dış zaman doğrulaması ve üretim kredi kararı yok.

Modeldeki veriler analiz sonuçlarının gömülü snapshot'ıdır. Refresh analizi/SQL'i/deneyi/modeli yeniden çalıştırmaz. Güncelleme için kaynak analiz yeniden çalıştırılıp rapor yeniden üretilmelidir.

`data/` klasöründe modele aktarılan tablolar vardır. `CHECKS.json` beklenen kart değerlerini ve yapılan kontrolleri içerir. Snapshot değerleri rapor filtreleriyle aynı popülasyonda karşılaştırılmalıdır.

Önceki analiz ve kaynak kodu: `11_risk_taiwan/`.

Belirsizlik içeren raporlarda %95 güven aralıkları ilgili tablolarda görünür. Sentetik raporlar gerçek kampanya etkisi değildir. Eşik/kalibrasyon tabloları önceden hesaplanmıştır; rapor içinde model eğitimi veya yeniden test yapılmaz.
