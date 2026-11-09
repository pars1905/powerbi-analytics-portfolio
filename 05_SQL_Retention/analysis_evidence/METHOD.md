# Yöntem ve performans

Müşterinin ilk gözlenen ayını MIN(month) ile buldum. customer-month activity tekilleştirildi; LEFT JOIN geri gelmeyen müşterileri de paydada tutar. Sonraki tam ay gözlemlenemiyorsa oran NULL; sıfır değil. Kasım/Aralık kohortları M1 için sansürlü. Aralık 2010 kohortu ilk gözlenen, muhtemelen ilk gerçek alışveriş değildir.

customer,date index’i, önce müşteri-ay tekilleştirme ve join sonrası tek müşteri sayısı kontrolü var. Retention paydasını yalnızca dönen müşterilerden kurmak hatalıdır. Ay bazlı oranlar cohort_size ile ağırlıklandırılmadan ortalanmaz. Kanal verisi olmadığı için değişimin edinim kalitesinden kaynaklandığı söylenemez.
