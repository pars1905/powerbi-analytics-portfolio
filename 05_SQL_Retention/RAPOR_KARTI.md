# SQL kohort ve retention

**Durum:** Power BI proje taslağı. Power BI Desktop'ta açılmadı; M/DAX ve görseller çalışma zamanında doğrulanmadı.

**Kapsam:** İlk gözlenen alışveriş kohortu • M1: sonraki ay dönüş • Gözlenemeyen sonuçlar boş tutulur.

**Kaynak:** UCI Online Retail; 05_sql_retention/query.sql çıktısı.

**Yorum ve sınır:** 2010 Aralık sol sansürlü olabilir. Kasım/Aralık 2011 M1 gözlemi yetersiz; NULL, sıfır değildir. İlk gözlenen alışveriş gerçek ilk alışveriş olmayabilir.

Modeldeki veriler analiz sonuçlarının gömülü snapshot'ıdır. Refresh analizi/SQL'i/deneyi/modeli yeniden çalıştırmaz. Güncelleme için kaynak analiz yeniden çalıştırılıp rapor yeniden üretilmelidir.

`data/` klasöründe modele aktarılan tablolar vardır. `CHECKS.json` beklenen kart değerlerini ve yapılan kontrolleri içerir. Snapshot değerleri rapor filtreleriyle aynı popülasyonda karşılaştırılmalıdır.

Önceki analiz ve kaynak kodu: `05_sql_retention/`.

Belirsizlik içeren raporlarda %95 güven aralıkları ilgili tablolarda görünür. Sentetik raporlar gerçek kampanya etkisi değildir. Eşik/kalibrasyon tabloları önceden hesaplanmıştır; rapor içinde model eğitimi veya yeniden test yapılmaz.
