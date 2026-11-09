# SENTETİK checkout A/B

**Durum:** Power BI proje taslağı. Power BI Desktop'ta açılmadı; M/DAX ve görseller çalışma zamanında doğrulanmadı.

**Kapsam:** SENTETİK randomize deney • %80 power, iki taraflı alpha .05 • Gerçek mağaza kampanyası değildir.

**Kaynak:** 07_ab_conversion/analysis.py sabit seed ile üretilen sentetik kullanıcılar.

**Yorum ve sınır:** GA ve SRM sabit deney popülasyonuna aittir. İstatistiksel artış tek başına kâr ve hata guardrail şartlarını sağlamaz.

Modeldeki veriler analiz sonuçlarının gömülü snapshot'ıdır. Refresh analizi/SQL'i/deneyi/modeli yeniden çalıştırmaz. Güncelleme için kaynak analiz yeniden çalıştırılıp rapor yeniden üretilmelidir.

`data/` klasöründe modele aktarılan tablolar vardır. `CHECKS.json` beklenen kart değerlerini ve yapılan kontrolleri içerir. Snapshot değerleri rapor filtreleriyle aynı popülasyonda karşılaştırılmalıdır.

Önceki analiz ve kaynak kodu: `07_ab_conversion/`.

Belirsizlik içeren raporlarda %95 güven aralıkları ilgili tablolarda görünür. Sentetik raporlar gerçek kampanya etkisi değildir. Eşik/kalibrasyon tabloları önceden hesaplanmıştır; rapor içinde model eğitimi veya yeniden test yapılmaz.
