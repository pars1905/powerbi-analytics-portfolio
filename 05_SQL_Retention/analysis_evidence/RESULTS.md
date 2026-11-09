# Hesaplanan sonuç

Sorgu 13 sonuç satırı üretti. Tek yerel çalıştırma: 0.023 saniye; benchmark genellemesi değildir.

İlk 10 satır:

```text
 cohort  cohort_size next_month  returned_next_month  retention_m1     status
2010-12          885    2011-01                324.0        0.3661 observable
2011-01          417    2011-02                 92.0        0.2206 observable
2011-02          380    2011-03                 71.0        0.1868 observable
2011-03          452    2011-04                 68.0        0.1504 observable
2011-04          300    2011-05                 64.0        0.2133 observable
2011-05          284    2011-06                 54.0        0.1901 observable
2011-06          242    2011-07                 42.0        0.1736 observable
2011-07          188    2011-08                 34.0        0.1809 observable
2011-08          169    2011-09                 35.0        0.2071 observable
2011-09          299    2011-10                 70.0        0.2341 observable
```

Karar: Küçük veya düşen kohortlarda edinim kanalı ve stok bulunurluğunu araştır. İlk gözlenen alışveriş, gerçek ilk alışveriş olmayabilir; 2010 Aralık kohortu sol sansürlüdür.

BigQuery uzantısı query_bigquery.sql dosyasında; hesap ve billing erişimi olmadığı için çalıştırılmadı.
