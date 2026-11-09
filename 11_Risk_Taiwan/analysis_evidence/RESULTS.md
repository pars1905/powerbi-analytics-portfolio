# Hesaplanan kredi riski sonucu

Train/validation/test: 18000/6000/6000. Test ROC AUC=0.7618; bootstrap %95 GA [0.74614193625619, 0.7765320337245355]; PR AUC(AP)=0.5275; Brier=0.1381, sabit eğitim prevalansı baseline Brier=0.1723.

Validation maliyet eşiği 0.17 (FN=5, FP=1 varsayımı). Test TN/FP/FN/TP: [3330, 1343, 455, 872].

Öneri: tarihsel ayırma gücü için bu temel modeli benchmark olarak kullan; gerçek kredi reddi/onayı için kullanma. Dış zaman testi, kalibrasyon, veri tazeliği ve iş kayıp maliyeti doğrulanmalı. Katsayılar nedensel etki değildir.
