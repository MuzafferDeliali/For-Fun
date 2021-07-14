table(done$`Bitirme Tarihi`)
ratio <- prop.table(table(done$`Bitirme Tarihi`)) #proportion of table

yýllar <- unique(done$`Bitirme Tarihi`)
yýllar <- sort(yýllar)

t <- sprintf("%s yýlýnda %s%3.1f" , yýllar, "%" ,as.numeric(ratio)*100  )

pie(ratio ,
    main = "Bitirdiðim oyunlarýn ne kadarýný ne zaman bitirdim" ,
    labels = t ,
    radius = 1)

# Ne kadar oyun bitirdim 

z <- table(done$`Bitirme Tarihi`)

c <- sprintf("%s yýlýnda %3.0f tane" , yýllar , z  )

pie(z ,
    main = "Bu yýl kaç oyun bitirdim" ,
    labels = c)

# Oyunlarý nerede dbitirdim
platform <- unique(done$`Oynadýðým platform:`)

platform <- replace(platform , "Nintendo Ds Lite" , "NDS")

platform <- sort(platform)
x <- table(done$`Oynadýðým platform:`) 
pl <- sprintf("%s tanesi %s" , x  , platform)
pie(x ,
    labels = pl ,
    main = "Nerede oynadým" ,
    radius = 1)

View(platform)
