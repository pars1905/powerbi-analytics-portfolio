# Risk politikası ve stres

**Durum:** Power BI proje taslağı. Power BI Desktop'ta açılmadı; M/DAX ve görseller çalışma zamanında doğrulanmadı.

**Kapsam:** 11 ile aynı Taiwan verisi • FN=5, FP=1 varsayımı • İnceleme kapasitesi ve gerçek EAD/LGD yok.

**Kaynak:** UCI Taiwan; 12_risk_policy çıktıları. 11 ile aynı veri/split, bağımsız yeni doğrulama değildir.

**Yorum ve sınır:** Stres özellik değişimi senaryosudur. Validation eğrisinde bir nokta seçmek test eşiğini yeniden hesaplamaz. Kalibrasyon burada Brier’ı iyileştirmedi.

Modeldeki veriler analiz sonuçlarının gömülü snapshot'ıdır. Refresh analizi/SQL'i/deneyi/modeli yeniden çalıştırmaz. Güncelleme için kaynak analiz yeniden çalıştırılıp rapor yeniden üretilmelidir.

`data/` klasöründe modele aktarılan tablolar vardır. `CHECKS.json` beklenen kart değerlerini ve yapılan kontrolleri içerir. Snapshot değerleri rapor filtreleriyle aynı popülasyonda karşılaştırılmalıdır.

Önceki analiz ve kaynak kodu: `12_risk_policy/`.

Belirsizlik içeren raporlarda %95 güven aralıkları ilgili tablolarda görünür. Sentetik raporlar gerçek kampanya etkisi değildir. Eşik/kalibrasyon tabloları önceden hesaplanmıştır; rapor içinde model eğitimi veya yeniden test yapılmaz.
