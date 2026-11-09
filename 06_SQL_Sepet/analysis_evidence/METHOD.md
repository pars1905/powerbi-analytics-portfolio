# Yöntem ve performans

Ocak–Kasım 2011’de fatura sayısına göre ilk 60 ürünü seçtim; aynı faturadaki ürünleri DISTINCT ile tekilleştirdim. a.stock<b.stock şartı simetrik çiftleri ve kendiyle eşleşmeyi kaldırır. En az 30 ortak fatura. support=çift/N, confidence(A→B)=çift/A, lift=çift*N/(A*B). N filtrelenmiş ürün faturaları değil tüm uygun satış faturalarıdır.

İlk 60 filtrelemesi join patlamasını sınırlar; uzun kuyruk ürünlerini dışlar. Tam ürün evreniyle eşdeğer değildir. Ürün kimlikleri sayısal başlangıç filtresi stok dışı bazı kalemleri dışlamak için basit vekildir, kusursuz ürün sınıflandırması değildir. İşlem planı ve tek çalışma süresi saklandı. Aksiyon: öneri sistemine otomatik aktarmadan randomize pilot.
