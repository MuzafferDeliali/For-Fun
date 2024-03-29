table(done$`Bitirme Tarihi`)
ratio <- prop.table(table(done$`Bitirme Tarihi`)) #proportion of table

y�llar <- unique(done$`Bitirme Tarihi`)
y�llar <- sort(y�llar)

t <- sprintf("%s y�l�nda %s%3.1f" , y�llar, "%" ,as.numeric(ratio)*100  )

pie(ratio ,
    main = "Bitirdi�im oyunlar�n ne kadar�n� ne zaman bitirdim" ,
    labels = t ,
    radius = 1)

# Ne kadar oyun bitirdim 

z <- table(done$`Bitirme Tarihi`)

c <- sprintf("%s y�l�nda %3.0f tane" , y�llar , z  )

pie(z ,
    main = "Bu y�l ka� oyun bitirdim" ,
    labels = c)

# Oyunlar� nerede dbitirdim
platform <- unique(done$`Oynad���m platform:`)

platform <- replace(platform , "Nintendo Ds Lite" , "NDS")

platform <- sort(platform)
x <- table(done$`Oynad���m platform:`) 
pl <- sprintf("%s tanesi %s" , x  , platform)
pie(x ,
    labels = pl ,
    main = "Nerede oynad�m" ,
    radius = 1)

View(platform)
