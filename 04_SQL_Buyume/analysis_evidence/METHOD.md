# Yöntem ve performans

Önce satış satırlarını fatura grain’ine topladım. Tam aylar Ocak–Kasım 2011. monthly CTE ülke-ay özeti, totals aylık payda, DENSE_RANK ülke sırası, LAG bir önceki toplam ayı getirir. NULLIF sıfıra bölünmeyi önler. Payların toplamı her ay 1 olmalı.

Tarih filtresi sütuna fonksiyon uygulamadan yarı açık aralıkla yazıldı. Fatura tarihi index’i `prepare_data.py` içinde. EXPLAIN QUERY PLAN saklanır; CTE her motorda otomatik performans artışı sağlamaz. Önce grain’i küçültmek, gereksiz kolonları okumamak ve join çoğalmasını önlemek önemlidir.

BigQuery uzantısı farklı veri setini (GA4) analiz eder; SQLite çıktısının eşdeğeri değildir. `_TABLE_SUFFIX` tarama sınırı sağlar. Çalıştırmadan dry-run, maksimum bytes ve job metrikleri gerekir. Gerçek BigQuery süre/maliyet sonucu burada yok.
