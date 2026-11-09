# Yöntem

WDI API’den Türkiye’nin yıllık CPI enflasyonu (%), reel GSYH büyümesi (%) ve toplam işsizlik oranını (%) aldım. 2000 sonrası gösteriliyor. Eksik değer sıfır yapılmıyor, grafik boşluğu korunuyor. Son değer karşılaştırması üç göstergenin de dolu olduğu ortak yıla göre; ayrı seri son yılları summary.json’da.

Bu örnek güncel Türkiye makro veri projenin yerine kurulmuş yıllık açık veri analizidir. Nominal TL satışını CPI yıllık yüzde değişimiyle doğrudan bölerek reel satış hesaplamadım; bunun için uygun düzey fiyat endeksi gerekir. Tarihsel ilişki nedensellik değildir.

Kontrol: API ham JSON’dan son ortak yılın üç değerini CSV ile karşılaştır. Kaynak updated tarihi veri indirme tarihi değildir. Yıllık seri aylık kararlar için yetersiz olabilir.
