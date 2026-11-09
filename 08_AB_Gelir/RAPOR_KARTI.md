# SENTETİK promosyon ekonomisi

**Durum:** Power BI proje taslağı. Power BI Desktop'ta açılmadı; M/DAX ve görseller çalışma zamanında doğrulanmadı.

**Kapsam:** SENTETİK • Kullanıcı başına GBP • %35 marj ve treatment siparişinde 12 GBP indirim varsayımı.

**Kaynak:** 08_ab_revenue/analysis.py sentetik verisi; Welch ve kullanıcı bootstrap çıktıları.

**Yorum ve sınır:** Örnek karar: yayına geçme. Gelir artışı katkı düşüşünü telafi etmiyor. Katkı guardrail alt GA sınırı > -0.20 şartı geçmedi; maliyetler varsayımsal.

Modeldeki veriler analiz sonuçlarının gömülü snapshot'ıdır. Refresh analizi/SQL'i/deneyi/modeli yeniden çalıştırmaz. Güncelleme için kaynak analiz yeniden çalıştırılıp rapor yeniden üretilmelidir.

`data/` klasöründe modele aktarılan tablolar vardır. `CHECKS.json` beklenen kart değerlerini ve yapılan kontrolleri içerir. Snapshot değerleri rapor filtreleriyle aynı popülasyonda karşılaştırılmalıdır.

Önceki analiz ve kaynak kodu: `08_ab_revenue/`.

Belirsizlik içeren raporlarda %95 güven aralıkları ilgili tablolarda görünür. Sentetik raporlar gerçek kampanya etkisi değildir. Eşik/kalibrasyon tabloları önceden hesaplanmıştır; rapor içinde model eğitimi veya yeniden test yapılmaz.
