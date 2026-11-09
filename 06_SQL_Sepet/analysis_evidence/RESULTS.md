# Hesaplanan sonuç

Sorgu 1,770 sonuç satırı üretti. Tek yerel çalıştırma: 0.578 saniye; benchmark genellemesi değildir.

İlk 10 satır:

```text
product_a product_b  pair_orders  a_orders  b_orders  all_orders  support  confidence_a_to_b    lift
    22697     22699          692       918       966       17582   0.0394             0.7538 13.7200
    22726     22727          529       825       905       17582   0.0301             0.6412 12.4572
    20719     22355          404       756       790       17582   0.0230             0.5344 11.8933
    20719     20724          454       756       943       17582   0.0258             0.6005 11.1967
    20724     22355          455       943       790       17582   0.0259             0.4825 10.7384
    82482    82494L          436       991       785       17582   0.0248             0.4400  9.8540
    22469     22470          414      1028       781       17582   0.0235             0.4027  9.0662
    23202     23203          499       841      1187       17582   0.0284             0.5933  8.7886
    20712     21931          413       802      1079       17582   0.0235             0.5150  8.3912
    23199     23201          376       946       867       17582   0.0214             0.3975  8.0602
```

Karar: Yeterli support ve lift gösteren çiftlerde kontrollü çapraz satış deneyi tasarla. Lift satış artışı değildir; çok sayıda çift içinden seçim ve popüler ürün filtresi genellenebilirliği sınırlar.

BigQuery uzantısı query_bigquery.sql dosyasında; hesap ve billing erişimi olmadığı için çalıştırılmadı.
