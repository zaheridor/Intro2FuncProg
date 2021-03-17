||Program to convert words to numbers.
||Author: zaheridor.
||Chapter: 4.1.
||Excercise: 4.1.5.

aplicar x y = x*y, if y >= 100
            = x+y, otherwise

magnitudes = ["zero","one","two","three","four","five","six","seven","eight","nine","ten","eleven","twelve","thirteen","fourteen","fifteen","sixteen","seventeen","eighteen","nineteen","twenty","thirty","forty","fifty","sixty","seventy","eighty","ninety","hundred","thousand","million","billion"]
valores=[0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,30,40,50,60,70,80,90,100,1000,1000000,1000000000]

indice x = [i|(i,str)<-zip([0..#magnitudes-1], magnitudes);str=x]
numero x = valores ! ((indice x) ! 0)
listado xs = [numero x|x<-xs]
convertir xs = foldl (aplicar) 0 (listado xs)
