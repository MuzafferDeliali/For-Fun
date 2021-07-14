d <- done$`Bitirme Tarihi`

height = table(done$`Bitirme Tarihi`) # Finding frequency and assigning to the height

barplot(height , names.arg = c("2012" , "2015" ,"2016" ,"2017", "2018" ,"2019" , "2020" , "2021")  , 
        main = "Hangi yýl kaç oyun bitirdiö" ,
        xlab = "Bitirdiðim yýl" ,
        ylab = "Kaç tane" ,
        col = "pink" ,
        border = "purple" 
)

done <- done %>% select(`Bitirme Tarihi` , `Çýktýðý yýl:`)
done <- na.omit(done) # Now we are get rid of NA lines

levels(as.factor(done$`Bitirme Tarihi`))
levels(as.factor(done$`Çýktýðý yýl:`))
View(done)

par(mar = c(5,5,5,5) , xpd = FALSE) # If xpd is true the linear line will also expand outside of the our chart
plot(x = done$`Çýktýðý yýl:` , y = done$`Bitirme Tarihi` ,
     type = "b" ,
     main = "Çýkma ve Bitirme yýllarý" ,
     ylab = "Bitirdiðim Yýl" ,
     xlab = "Çýktýðý Yýl" ,
     pch = 19 ,
     bty = "L" ,
     

)

abline( lm(done$`Çýktýðý yýl:` ~ done$`Bitirme Tarihi` ) , lwd = 2 , col = "red" )
lines(lowess(done$`Bitirme Tarihi`, done$`Çýktýðý yýl:`), lwd = 3)


platform <- table(done$`Oynadýðým platform:`)

barplot(platform, names.arg = c("NDS" , "PC") ,
        main = "Oyunlarý nerede oynadým" ,
        xlab = "Oyun Sayýsý" ,
        ylab = "Platformlar" ,
        col = "black" ,
        border = "red" ,
        horiz = TRUE)

