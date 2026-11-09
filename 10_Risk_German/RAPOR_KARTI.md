# German Credit lojistik risk

**Durum:** Power BI proje taslağı. Power BI Desktop'ta açılmadı; M/DAX ve görseller çalışma zamanında doğrulanmadı.

**Kapsam:** Tarihsel 1000 kredi • L2 lojistik regresyon • Train/validation/test: 600/200/200.

**Kaynak:** UCI Statlog German Credit, DOI 10.24432/C5NC77; 10_risk_german analiz çıktıları.

**Yorum ve sınır:** AUC doğruluk yüzdesi değildir. Katsayı/importance nedensellik değildir. Eğitim/doğrulama/test ayrıdır; dış zaman doğrulaması ve üretim kredi kararı yok.

Modeldeki veriler analiz sonuçlarının gömülü snapshot'ıdır. Refresh analizi/SQL'i/deneyi/modeli yeniden çalıştırmaz. Güncelleme için kaynak analiz yeniden çalıştırılıp rapor yeniden üretilmelidir.

`data/` klasöründe modele aktarılan tablolar vardır. `CHECKS.json` beklenen kart değerlerini ve yapılan kontrolleri içerir. Snapshot değerleri rapor filtreleriyle aynı popülasyonda karşılaştırılmalıdır.

Önceki analiz ve kaynak kodu: `10_risk_german/`.

Belirsizlik içeren raporlarda %95 güven aralıkları ilgili tablolarda görünür. Sentetik raporlar gerçek kampanya etkisi değildir. Eşik/kalibrasyon tabloları önceden hesaplanmıştır; rapor içinde model eğitimi veya yeniden test yapılmaz.
