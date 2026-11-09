# Yöntem

Pozitif satışlardan ID’si dolu müşterileri seçtim. Referans tarih son işlem gününden bir gün sonra. Recency son işlemden geçen takvim günü; frequency tekil fatura; monetary brüt pozitif tutar. Önceden açıklanan kurallar: recency<=30 ve frequency>=3 aktif sadık; recency>90 ve frequency>=3 geri kazanım adayı; kalan frequency=1 tek alışveriş; diğerleri other.

Bu gruplar bir churn modeli veya gerçek kampanya yanıtı değildir. Satın alma sıklığı müşterinin gözlem süresine bağlıdır. Daha eski müşterilerle yeni müşterileri eşit maruziyet varsayımıyla nedensel karşılaştırmadım. Gelecekteki pilotta müşteri bazlı randomizasyon ve katkı tutarı gerekir.

Kontrol: segment müşteri sayılarının toplamı tekil bilinen müşteri sayısına eşit olmalı. Müşteri bazında iki faturayı kontrol et. Capstone yazım örneği RESULTS.md’de; Coursera tamamlandı sayılmaz.

## Aksiyon planının örneklem sınırı

Bu snapshot’ta geri kazanım adayı segmenti 285 müşteri. Bu sayı küçük bir iletişim/ölçüm fizibilite pilotu için kullanılabilir; 07. projedeki %10→%11 dönüşüm MDE’si için gereken yaklaşık 14.751 kişi/grup ile karıştırılmamalı. Bu segmentte aynı hassasiyette bir A/B test yapılabilir iddiası yok. Gerçek deneyde yeni hedef metrik, başlangıç oranı, daha büyük anlamlı etki veya daha geniş hedef kitle için power yeniden hesaplanmalı.
