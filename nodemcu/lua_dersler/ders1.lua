--tüm programlama dillleri HELLO WORD ile başlar
--sonrası kendiliginden gelir

print("bu ilk programim")
print("Merhaba")


--bir değişken tanımlayalım
sayac1=0
--ucu tanımlayalım
ledpin1=4   -- esp8266 üserindeki led
            -- 3=GPIO00, 4=GPIO2

--arduino da oldugu gibi NODEMCU içinde ilk örneğimiz blink
-- setup() kismindaki gibi 
gpio.mode(ledPin,gpio.OUTPUT)

-- bir timer kuruyoruz ve timer her süre sonunda bir alarm üretiyor
-- unutmayalım nodemcu da DELAY yok!!!

-- loop() kismi gibi düşünün
tmr.alarm(0, 500, 1, function() 
    gpio.write(ledpin1, 1-gpio.read(ledpin1))
    --degiskeni 1 artıralım ve terminal ekranında yazdıralım
    sayac1=sayac1+1
    print ("sayac1="..sayac1)         
end )

--görev: şimdi yukarıdaki örnekten faydalanarak 2 ledli flip-flop yapın
