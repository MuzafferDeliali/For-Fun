d <- done$`Bitirme Tarihi`

height = table(done$`Bitirme Tarihi`) # Finding frequency and assigning to the height

barplot(height , names.arg = c("2012" , "2015" ,"2016" ,"2017", "2018" ,"2019" , "2020" , "2021")  , 
        main = "Hangi y�l ka� oyun bitirdi�" ,
        xlab = "Bitirdi�im y�l" ,
        ylab = "Ka� tane" ,
        col = "pink" ,
        border = "purple" 
)

done <- done %>% select(`Bitirme Tarihi` , `��kt��� y�l:`)
done <- na.omit(done) # Now we are get rid of NA lines

levels(as.factor(done$`Bitirme Tarihi`))
levels(as.factor(done$`��kt��� y�l:`))
View(done)

par(mar = c(5,5,5,5) , xpd = FALSE) # If xpd is true the linear line will also expand outside of the our chart
plot(x = done$`��kt��� y�l:` , y = done$`Bitirme Tarihi` ,
     type = "b" ,
     main = "��kma ve Bitirme y�llar�" ,
     ylab = "Bitirdi�im Y�l" ,
     xlab = "��kt��� Y�l" ,
     pch = 19 ,
     bty = "L" ,
     

)

abline( lm(done$`��kt��� y�l:` ~ done$`Bitirme Tarihi` ) , lwd = 2 , col = "red" )
lines(lowess(done$`Bitirme Tarihi`, done$`��kt��� y�l:`), lwd = 3)


platform <- table(done$`Oynad���m platform:`)

barplot(platform, names.arg = c("NDS" , "PC") ,
        main = "Oyunlar� nerede oynad�m" ,
        xlab = "Oyun Say�s�" ,
        ylab = "Platformlar" ,
        col = "black" ,
        border = "red" ,
        horiz = TRUE)

