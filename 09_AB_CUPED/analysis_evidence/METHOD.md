# Deney protokolü

Bu proje örnek olsun diye üretilen SENTETİK veridir. UCI satışlarından rastgele iki grup oluşturup geçmiş farkı tedavi etkisi diye sunmadım. Sabit seed tekrar üretilebilirlik içindir; sonuç seçmek için seed araması yapılmadı.

1. Randomizasyon ve analiz birimi kullanıcı; bağımsız kullanıcılar ve sabit analiz ufku varsayılır. Gerçek projede atama tablosu, eligibility, ilk atama zamanı, 7 günlük ölçüm penceresi ve ITT popülasyonu gerekir.
2. H0 treatment-control=0; H1 fark var. İki taraflı alpha .05, power .80. 07’de %10→%11 dönüşüm; 08’de 1 GBP RPV; 09’da 2 GBP katkı MDE’si. Mutlak fark ve göreli artış ayrı kavramdır.
3. Grup büyüklükleri ve SRM ki-kare kontrolü raporlanır; p<.01 çıkarsa atama/ölçüm sorunu araştırılmadan sonuç yorumlanmaz. Kullanıcı kimliği tekil olmalı; gerçek projede gruplar arası geçiş ve eksik gözlem de denetlenir.
4. 07 normal iki oran testi ve %95 Wald fark aralığı; 08 Welch t aralığı ve duyarlılık için kullanıcı bootstrap; 09 bağımsız pilot theta ile CUPED ve Welch aralığı. 08/09 power hesabı normal yaklaşımıdır; ağır kuyruklarda pilot simülasyonu ile doğrulanmalıdır.
5. Sabit örneklem sonunda bir kez bakılır; ara bakış/erken durdurma yok. Heterojen etki araması ve çoklu metrik avı yok. Üç proje üç ayrı deneydir; tek deneyde üç başarı metriği olarak kullanılmaz.
6. Öneri, belirsizliği ve ekonomik büyüklüğü birlikte kullanır. p>.05 sıfır etki kanıtı değildir. Power hesabı gözlenen sonuçtan sonra geriye dönük başarı ölçüsü değildir.

Gerçeğe uygulamak için örneklem sayısı/süre, trafik, etkileşim (aynı ev/cihaz), gecikmeli dönüşüm, guardrail sınırları ve iş maliyetleri önceden tanımlanmalı. 08’de katkı için -0.20 GBP noninferiority kapısı örnektir; üretim için ayrı guardrail power planı gerekir. 09’da bağımsız pilot tahmin belirsizliği analitik aralığa ayrıca eklenmedi; büyük pilot varsayımı var.

## Kontrol et

summary.json’daki n, fark ve güven aralığını kullanıcı CSV’sinden yeniden hesapla. MDE’yi değiştirince power formülündeki gereken n’in artmasını/azalmasını incele. Randomizasyon birimini satır sayısıyla karıştırma. Gerçek veri geldiğinde çıktıları yeniden adlandır ve veri kökenini değiştir.
