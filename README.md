# Average Filter - Ortalama Filtre

Applying a Average filter on an image

// Bir görsel üzerinde ortalama filtre uygulaması

Matlab programında kayıtlı olan Cameraman.tif görüntüsü üzerinde ortalama filtre uygulamasıdır.
4. satırdaki kodda, sizin kendi bilgisayarınızda kayıtlı olan görüntünün adresini ve ismini kullanarak aynı uygulamayı yapabilirsiniz. Bunun için 3. satırı kapatıp, 4. satırı açmanız ve uzantıyı değiştirmeniz yeterli olacaktır.

          Average (Ortalama) Filtre

Yukarıda, ortalama (average) filtre uygulamasının matlab kodu verilmiştir. Kodda, öncelikle yüklenen resmin gri seviye görüntü değil ise, gri seviyeye dönüştürme işlemi yapılmıştır. Daha sonra 3x3 lük bir filtre gezdirilerek görüntüdeki her piksel değeri için ayrı ayrı, komşularının ve kendinin piksel değerleri toplanır ve toplam 9 adet piksel olduğu için 1/9 ile çarpılır. Böylece her piksel değeri için yeni bir piksel değeri hesaplanmış olur. Ortalama filtre görüntü yumuşatmak veya gürültü gidermek için kullanılabilir. Kodda son olarak, son olarak, görüntünün boyutunda azalma olduğundan dolayı ilk görüntünün, ilk ve son satırı ile ilk ve son sütunu da filtreden geçmiş görüntüye eklenir. Böylece boyut kaybı yaşanmamış olur.

Kod çalıştırıldığında:
Solda orijinal görüntü sağda ise ortalama filtre uygulanmış hali bulunmaktadır. Ortalama filtre uygulanan görüntülerde, yumuşatma işlemi gerçekleştirdiği yukarıda görülmektedir. Görüntüdeki keskin geçişler azalmaktadır. Gürültüler giderilmektedir.
•	Eğer bir görüntüye üst üste ortalama filtre uygulanırsa, görüntü gittikçe bulanıklaşır. 
•	Eğer görüntüye 3x3 yerine daha büyük boyutta filtre uygulanırsa(5x5 9x9 gibi), görüntü daha çok bulanıklaşır. Maske boyutu arttıkça, bulanıklık da artar.
