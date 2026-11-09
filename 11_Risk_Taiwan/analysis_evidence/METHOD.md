# Model yöntemi ve sınırları

Hedef kötü/temerrüt=1. German kaynak label 1=iyi, 2=kötü; Taiwan gelecek ay default 1. Taiwan mevcut kart sahipleri için davranışsal PD; yeni başvuran kabul modeli değildir. Veri tarihsel, güncel Türkiye kredi piyasasına temsil iddiası yok. German hedefi sabit bir 12 aylık PD ufku olarak yorumlanmaz.

Önce stratified train/validation/test=%60/%20/%20 ayrılır; stratify yalnızca oran korur, zaman doğrulaması sağlamaz. Veri setinde uygun zaman serisi olmadığı için out-of-time test yapılmadı. Taiwan 11 ve 12 aynı veri ve split’i kullanır; bağımsız doğrulama gibi birleştirilemez.

Pipeline: sayısal median imputation+standardization; kategorik most-frequent+one-hot. Tüm dönüşümler eğitim fold’unda öğrenilir. Taiwan EDUCATION 0/5/6→other(4) açık kuraldır; PAY negatif kodları geçerlidir ve kategori tutulur. Eksik veri yoksa imputation yine de gelecek veri için tanımlıdır. ID çıkarılır. German kişisel durum/cinsiyet, yaş, yabancı çalışan; Taiwan sex, age, marriage modele alınmaz. Diğer değişkenler bu bilgileri dolaylı taşıyabilir; bu tercih adaleti garanti etmez.

German L2, Taiwan L1 lojistik regresyon. C eğitimde 4-fold stratified CV ile log loss üzerinden seçilir. L1 sıfır katsayılarla değişken seçimi gösterir; korelasyon altında seçim kararsız olabilir. CV tablosu kaydedilir. Teste bakarak değişken/eşik seçilmez. 12’de validation ayrıca kalibrasyon ve politika için ikiye bölünür.

ROC AUC ayırma gücü; PR AUC Average Precision ve prevalans dengesizlik için; Brier/log loss olasılık kalitesi için. Sabit eğitim prevalansı Brier baseline var. German/Taiwan küçük/tek dönemli veri; bootstrap GA yalnızca sabit modelde test örneklemi belirsizliğini taşır; model geliştirme belirsizliğini kapsamaz. 12’de kalibrasyon daha iyi çıkmak zorunda değil.

Açıklanabilirlik: dönüştürülmüş katsayı/odds ratio ve validation permutation importance. Sayısal odds ratio standardize 1 std artışına göredir. Kategorik kolonların tüm seviyeleri L1/L2 ile tutulduğundan katsayı tek başına referans seviyeye göre klasik odds ratio değildir; iki kategori log odds farkı katsayı farkıdır. Bunlar nedensel açıklama veya SHAP değildir. 12 aynı eğitim modeli üzerine politika katmanıdır.

Skor örneği (10/11): 600 + 50/ln(2) * ln(good:bad odds / 20). İyi risk yüksek puan, odds iki katına çıkınca +50. Bu dönüşüm modelin kalibrasyonunu veya gerçek kredi skoru geçerliliğini sağlamaz.

Üretim sınırları: seçilmiş onaylı müşteriler, reject inference eksikliği, etiket ufku, temerrüt tanımı, ekonomik rejim, EAD/LGD eksikliği ve veri kayması. FN=5/FP=1 varsayımsal; LIMIT_BAL gerçek gerçekleşen kayıp değildir. Gerçek kredi onayı/otomatik red için kullanma; eğitim portföyü örneği.

## Kontrol et

Kaynak dokümandan hedef kodunu doğrula; train/test indekslerinin çakışmadığını incele; baseline karşılaştır; rastgele 10 tahminin olasılık aralığını denetle. Kalibrasyon grafiğini ROC başarısıyla karıştırma. 12’de grup oranlarını n ve örneklem belirsizliği olmadan kesin adalet kararı gibi sunma.
