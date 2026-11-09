# SENTETİK CUPED hassasiyeti

**Durum:** Power BI proje taslağı. Power BI Desktop'ta açılmadı; M/DAX ve görseller çalışma zamanında doğrulanmadı.

**Kapsam:** SENTETİK • Deney öncesi katkı kovaryatı • Theta bağımsız geçmiş pilotta öğrenildi.

**Kaynak:** 09_ab_cuped/analysis.py sentetik deney ve bağımsız pilot çıktıları.

**Yorum ve sınır:** Ham ve CUPED aynı kullanıcıların iki analizidir. Birini p değerine göre seçme. Gerçek kampanya etkisi değildir; pilot theta belirsizliği ayrıca modellenmedi.

Modeldeki veriler analiz sonuçlarının gömülü snapshot'ıdır. Refresh analizi/SQL'i/deneyi/modeli yeniden çalıştırmaz. Güncelleme için kaynak analiz yeniden çalıştırılıp rapor yeniden üretilmelidir.

`data/` klasöründe modele aktarılan tablolar vardır. `CHECKS.json` beklenen kart değerlerini ve yapılan kontrolleri içerir. Snapshot değerleri rapor filtreleriyle aynı popülasyonda karşılaştırılmalıdır.

Önceki analiz ve kaynak kodu: `09_ab_cuped/`.

Belirsizlik içeren raporlarda %95 güven aralıkları ilgili tablolarda görünür. Sentetik raporlar gerçek kampanya etkisi değildir. Eşik/kalibrasyon tabloları önceden hesaplanmıştır; rapor içinde model eğitimi veya yeniden test yapılmaz.
