#�nternet sitesini ziyaret edenler incelendi. Sonu� olarak ziyaret eden ortalama 3000 kad�ndan 500'� ayakkab� reklam�n� g�r�p sat�n ald� ve 300'� �anta reklam�n� g�r�p sat�n ald�.
#Bir sonraki anasayfa reklam� g�ren 700 ziyaret�iden 100'den fazla sat�n al�nma olas�l�klar�n� hem �anta hem de ayakkab� �r�nleri i�in bulunuz. 
#(IPUCU : �anta al�nmas� veya al�nmamas� iki ��kt�l� bir sonu�tur. Bu durumda Bernoulli da��l�m� akla gelir. 100'den fazla olmas� bu 
#Bernoulli da��l�m�n�n tekrar�ndan olu�an Binom da��l�m�n� akla getirir. Bu durumda bu sorunun cevab� i�in Binom da��l�m�n� kullanmal�s�n�z...)

#Bu internet sitesine koyulan ayakkab� reklamlar�na 30 dakikada 5  erkek m��teri t�klama yap�yor ve 20 dakikada 10 kad�n m��teri t�klama yap�l�yor. 
#Bu durumda bu reklam yay�nland�ktan sonra 10 dakika i�erisinde bir erke�in t�klama olas�l���n� ve bir kad�n�n t�klama olas�l���n� bulunuz. 

aorani <- 500/3000
corani <- 300/3000


pbinom(q = 100 , size = 700 , prob = aorani , lower.tail = FALSE)
pbinom(q = 100 , size = 700 , prob = corani , lower.tail = FALSE)


erk <- 5/30
kad <- 10/20

punif(erk , min = 0 , max = 10 )
ErkekT�klamaOrani <- punif(erk , min = 0 , max = 10 ) # %1

punif(kad , min = 0 , max = 10 )
Kad�nT�klamaOrani <- punif(kad , min = 0 , max = 10 ) # %5

erkekLambda <- 5 / 30 
kad�nLambda <- 10 / 20 

## Erkeklerden reklam yay�nland�ktan sonra ilk 10 dakika t�klanma gelme olas�l���
pexp(q = 10  , rate = erkekLambda , lower.tail = TRUE )

  ## Kad�nlarda reklam yay�nland�ktan sonra ilk 10 dakika t�klanma gelme olas�l���
pexp(q = 10  , rate = kad�nLambda , lower.tail = TRUE )
