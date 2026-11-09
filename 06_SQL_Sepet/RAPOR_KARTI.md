# SQL ürün birlikteliği

**Durum:** Power BI proje taslağı. Power BI Desktop'ta açılmadı; M/DAX ve görseller çalışma zamanında doğrulanmadı.

**Kapsam:** 1770 adaydan lift sırasıyla sabit ilk 30 çift • İlk 60 popüler ürün • Ortak fatura sayısı en az 30.

**Kaynak:** UCI Online Retail; 06_sql_basket/query.sql. Tam 1770 satır orijinal analizde korunur.

**Yorum ve sınır:** Çiftler örtüşür; pair_orders toplamı tekil fatura değildir. Lift, önerinin yaratacağı artışı kanıtlamaz. İlk 30 seçimi bu snapshot için sabittir.

Modeldeki veriler analiz sonuçlarının gömülü snapshot'ıdır. Refresh analizi/SQL'i/deneyi/modeli yeniden çalıştırmaz. Güncelleme için kaynak analiz yeniden çalıştırılıp rapor yeniden üretilmelidir.

`data/` klasöründe modele aktarılan tablolar vardır. `CHECKS.json` beklenen kart değerlerini ve yapılan kontrolleri içerir. Snapshot değerleri rapor filtreleriyle aynı popülasyonda karşılaştırılmalıdır.

Önceki analiz ve kaynak kodu: `06_sql_basket/`.

Belirsizlik içeren raporlarda %95 güven aralıkları ilgili tablolarda görünür. Sentetik raporlar gerçek kampanya etkisi değildir. Eşik/kalibrasyon tabloları önceden hesaplanmıştır; rapor içinde model eğitimi veya yeniden test yapılmaz.
