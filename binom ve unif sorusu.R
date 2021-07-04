#Ýnternet sitesini ziyaret edenler incelendi. Sonuç olarak ziyaret eden ortalama 3000 kadýndan 500'ü ayakkabý reklamýný görüp satýn aldý ve 300'ü çanta reklamýný görüp satýn aldý.
#Bir sonraki anasayfa reklamý gören 700 ziyaretçiden 100'den fazla satýn alýnma olasýlýklarýný hem çanta hem de ayakkabý ürünleri için bulunuz. 
#(IPUCU : Çanta alýnmasý veya alýnmamasý iki çýktýlý bir sonuçtur. Bu durumda Bernoulli daðýlýmý akla gelir. 100'den fazla olmasý bu 
#Bernoulli daðýlýmýnýn tekrarýndan oluþan Binom daðýlýmýný akla getirir. Bu durumda bu sorunun cevabý için Binom daðýlýmýný kullanmalýsýnýz...)

#Bu internet sitesine koyulan ayakkabý reklamlarýna 30 dakikada 5  erkek müþteri týklama yapýyor ve 20 dakikada 10 kadýn müþteri týklama yapýlýyor. 
#Bu durumda bu reklam yayýnlandýktan sonra 10 dakika içerisinde bir erkeðin týklama olasýlýðýný ve bir kadýnýn týklama olasýlýðýný bulunuz. 

aorani <- 500/3000
corani <- 300/3000


pbinom(q = 100 , size = 700 , prob = aorani , lower.tail = FALSE)
pbinom(q = 100 , size = 700 , prob = corani , lower.tail = FALSE)


erk <- 5/30
kad <- 10/20

punif(erk , min = 0 , max = 10 )
ErkekTýklamaOrani <- punif(erk , min = 0 , max = 10 ) # %1

punif(kad , min = 0 , max = 10 )
KadýnTýklamaOrani <- punif(kad , min = 0 , max = 10 ) # %5

erkekLambda <- 5 / 30 
kadýnLambda <- 10 / 20 

## Erkeklerden reklam yayýnlandýktan sonra ilk 10 dakika týklanma gelme olasýlýðý
pexp(q = 10  , rate = erkekLambda , lower.tail = TRUE )

  ## Kadýnlarda reklam yayýnlandýktan sonra ilk 10 dakika týklanma gelme olasýlýðý
pexp(q = 10  , rate = kadýnLambda , lower.tail = TRUE )
