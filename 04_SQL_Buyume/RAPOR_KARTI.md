# SQL satış büyümesi

**Durum:** Power BI proje taslağı. Power BI Desktop'ta açılmadı; M/DAX ve görseller çalışma zamanında doğrulanmadı.

**Kapsam:** UCI • Ocak–Kasım 2011 • CTE, JOIN, LAG ve DENSE_RANK sonuç görünümü.

**Kaynak:** UCI Online Retail; 04_sql_growth/query.sql SQLite çıktısı. BigQuery uzantısı çalıştırılmadı.

**Yorum ve sınır:** Payda aynı dönemde tüm ülkelerdir. Tek çalışma ve yerel indeks karşılaştırması üretim performansı iddiası değildir.

Modeldeki veriler analiz sonuçlarının gömülü snapshot'ıdır. Refresh analizi/SQL'i/deneyi/modeli yeniden çalıştırmaz. Güncelleme için kaynak analiz yeniden çalıştırılıp rapor yeniden üretilmelidir.

`data/` klasöründe modele aktarılan tablolar vardır. `CHECKS.json` beklenen kart değerlerini ve yapılan kontrolleri içerir. Snapshot değerleri rapor filtreleriyle aynı popülasyonda karşılaştırılmalıdır.

Önceki analiz ve kaynak kodu: `04_sql_growth/`.

Belirsizlik içeren raporlarda %95 güven aralıkları ilgili tablolarda görünür. Sentetik raporlar gerçek kampanya etkisi değildir. Eşik/kalibrasyon tabloları önceden hesaplanmıştır; rapor içinde model eğitimi veya yeniden test yapılmaz.
