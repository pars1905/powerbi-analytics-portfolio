# Power BI analiz portföyü — 12 rapor taslağı

Bu depo, 12 veri analizi projesinin Power BI kaynak dosyalarını ve denetlenebilir analiz çıktılarını içerir. `*.pbip` dosyaları düzenlenebilir **taslaktır**; bu ortamda Power BI Desktop çalıştırılamadığı için açılış ve görsel işleme doğrulaması yapılmamıştır. `01_Makro.pbip` taslağının kullanıcının Windows Desktop'ında yükleme hatası verdiği bildirilmiştir. Bu dosyaları tamamlanmış veya yayımlanmış rapor diye sunmayın.

| Sıra | Proje | Veri/analiz | Power BI durumu |
|---|---|---|---|
| 01 | Türkiye makro göstergeleri | World Bank WDI | PBIP taslağı; Desktop'ta hata bildirildi |
| 02 | E-ticaret satış analizi | UCI Online Retail | PBIP taslağı |
| 03 | RFM müşteri segmentleri | UCI Online Retail | PBIP taslağı |
| 04 | SQL satış büyümesi | Açık e-ticaret verisi | PBIP taslağı |
| 05 | SQL kohort ve retention | Açık e-ticaret verisi | PBIP taslağı |
| 06 | SQL sepet analizi | Açık e-ticaret verisi | PBIP taslağı |
| 07 | Checkout A/B testi | Sentetik deney | PBIP taslağı |
| 08 | Promosyon A/B testi | Sentetik deney | PBIP taslağı |
| 09 | CUPED analizi | Sentetik deney | PBIP taslağı |
| 10 | German Credit risk modeli | UCI German Credit | PBIP taslağı |
| 11 | Taiwan kredi riski | UCI Taiwan Default | PBIP taslağı |
| 12 | Risk politikası ve stres | Model çıktıları | PBIP taslağı |

Her proje klasöründe `data/` aktarıma hazır CSV tablolarını, `analysis_evidence/` yöntem ve sonuçları, `CHECKS.json` beklenen kontrol değerlerini, `.pbip` proje girişini, `.Report/` rapor tanımını, `.SemanticModel/` modeli içerir. `RAPOR_KARTI.md` bulunan projelerde özet ve sınırlar açıklanır.

## GitHub'a gerçek Power BI raporu ekleme

1. Her projeyi Windows Power BI Desktop'ta açıp veri yenileme, görseller ve filtreleri kontrol edin. Taslak açılmazsa `data/` CSV dosyalarıyla yeni bir rapor kurun.
2. Çalışan raporu `<proje>/final/<proje>.pbix` olarak kaydedin. Desktop'ın raporu gerçekten yeniden açtığını doğrulayın.
3. Yalnızca başarıyla doğrulanan proje için durum satırını güncelleyin. Service'te yayımlarsanız gerçek URL'yi ekleyin; yer tutucu bağlantı koymayın.
4. GitHub'a gönderirken `.pbix` boyutunu ve kaynak verinin paylaşım koşullarını kontrol edin. Bu paketteki A/B verileri sentetiktir.

İlk makro raporunun World Bank API sorgusu Windows Desktop'ta başarıyla yüklenmiştir; ancak bu çalışma alanına kaydedilmiş `.pbix` dosyası aktarılmamıştır. Dolayısıyla bu depodaki ilk `.pbip`, kullanıcının çalışan raporunun kopyası değildir.

**Doğrulama kapsamı:** `DOGRULAMA.md` statik şema ve bağ kontrolünü anlatır. Power BI Desktop'ta açılış, M/DAX yürütme, ekran görüntüsü ve Service yayını doğrulanmadı.
