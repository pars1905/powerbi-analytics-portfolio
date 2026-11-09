# Politika ve stres örneği

11. proje ile aynı Taiwan verisi; yeni dış doğrulama değildir. Train 18000, kalibrasyon 3000, politika validation 3000, test 6000.

Seçilen eşik 0.17; test inceleme payı %38.07; maliyet vekili 0.5985/müşteri. Hiç inceleme yok 1.1058, herkesi incele 0.7788. Kalibre Brier 0.1382; ham Brier 0.1381.

Stres: ortalama PD 0.2180 → 0.3491; yeni PAY_0 kategori payı %0.07.

Öneri: FN/FP gerçek maliyetleri ve inceleme kapasitesini öğrenmeden bu eşiği üretime taşıma. İnceleme sonucunun temerrüdü tamamen önlediği maliyet varsayımı güçlüdür. Senaryo kontrollü özellik değişimidir, makro stres tahmini değildir. Grup farkları adaletin sağlandığını veya ihlal edildiğini tek başına ispatlamaz.
