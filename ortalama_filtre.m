clc
clear all
img=imread('cameraman.tif');  % C:/Users/user/Desktop/lena.png
img2=img;
if size(img,3)==3
    img2=rgb2gray(img);
end
img2=im2double(img2);
satir=size(img2,1);
sutun=size(img2,2);
for i=2:(satir-1)
    for j=2:(sutun-1)
        toplam=img2(i-1,j-1)+img2(i-1,j)+img2(i-1,j+1)+img2(i,j-1)+img2(i,j)+img2(i,j+1)+img2(i+1,j-1)+img2(i+1,j)+img2(i+1,j+1);  
        ortalama=toplam/9;
        yeni(i,j)=ortalama;      
    end
 end
yeni(1,1:sutun)=img2(1,:);              %eski görüntünün 1. satýrýný ekledik
yeni(satir,1:sutun)=img2(satir,:);      % eski görüntünün son satýrýný ekledik
yeni(:,1)=img2(:, 1);                   %eski görüntünün 1. sütununu ekledik
yeni(:,sutun)=img2(:, sutun);           % eski görüntünün son sütununu ekledik

subplot(1,2,1),imshow(img2);
subplot(1,2,2),imshow(yeni);
 
    






    %------------------------------ 
          
%             if i>2 & j>2 & i<(satir-1) & j<(sutun-1)  %5x5 lik filtre
%             e=i-2;
%             f=i+2;
%             g=j-2;
%             h=j+2;
%             fk=img2(e,g)+img2(a,g)+img2(a,h)+img2(b,g)+img2(b,h)+img2(i,g)+img2(i,h)+img2(e,c)+img2(e,j)+img2(e,d)+img2(e,h)+img2(f,g)+img2(f,c)+img2(f,j)+img2(f,d)+img2(f,h)+img2(a,c)+img2(a,j)+img2(a,d)+img2(i,c)+img2(i,j)+img2(i,d)+img2(a,d)+img2(b,c)+img2(b,j)+img2(b,d);
%             fm=fk*1/25;
%             cikisa(i,j)=fm;
%             end