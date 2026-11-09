# Hesaplanan sonuç

Sorgu 261 sonuç satırı üretti. Tek yerel çalıştırma: 0.009 saniye; benchmark genellemesi değildir.

İlk 10 satır:

```text
  month        country  revenue_gbp  orders  total_gbp  share  country_rank  previous_gbp  total_mom
2011-01 United Kingdom    559975.83     971  689811.61 0.8118             1           NaN        NaN
2011-01    Netherlands     26611.16       5  689811.61 0.0386             2           NaN        NaN
2011-01           EIRE     21904.19       7  689811.61 0.0318             3           NaN        NaN
2011-01         France     17740.12      29  689811.61 0.0257             4           NaN        NaN
2011-01        Germany     16880.84      31  689811.61 0.0245             5           NaN        NaN
2011-01          Spain     10086.09       8  689811.61 0.0146             6           NaN        NaN
2011-01      Australia      9017.71       9  689811.61 0.0131             7           NaN        NaN
2011-01    Switzerland      4231.23       3  689811.61 0.0061             8           NaN        NaN
2011-01       Portugal      4055.71       4  689811.61 0.0059             9           NaN        NaN
2011-01         Sweden      3486.32       2  689811.61 0.0051            10           NaN        NaN
```

Karar: Ülke payını aylık değişimle birlikte izle. Tek pazar yoğunlaşmasını azaltma kararı için ülke bazlı kâr ve edinim maliyeti gerekir.

BigQuery uzantısı query_bigquery.sql dosyasında; hesap ve billing erişimi olmadığı için çalıştırılmadı.
