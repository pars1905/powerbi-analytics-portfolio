# Hesaplanan kredi riski sonucu

Train/validation/test: 600/200/200. Test ROC AUC=0.7990; bootstrap %95 GA [0.7336076390205071, 0.8615498090745732]; PR AUC(AP)=0.6467; Brier=0.1603, sabit eğitim prevalansı baseline Brier=0.2100.

Validation maliyet eşiği 0.22 (FN=5, FP=1 varsayımı). Test TN/FP/FN/TP: [69, 71, 6, 54].

Öneri: tarihsel ayırma gücü için bu temel modeli benchmark olarak kullan; gerçek kredi reddi/onayı için kullanma. Dış zaman testi, kalibrasyon, veri tazeliği ve iş kayıp maliyeti doğrulanmalı. Katsayılar nedensel etki değildir.
