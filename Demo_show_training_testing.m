close all;clear all;clc

%QUH-Tangdaowan
load('Tangdaowan_train.mat'); 
train_tdw = label2color_new(Tangdaowan_train,'tdw');
figure,imshow(train_tdw);

load('Tangdaowan_test.mat'); 
test_tdw = label2color_new(Tangdaowan_test,'tdw');
figure,imshow(test_tdw);

%QUH-Qingyun
load('Qingyun_train.mat'); 
train_qy = label2color_new(Qingyun_train,'qy');
figure,imshow(train_qy);

load('Qingyun_test.mat'); 
test_qy = label2color_new(Qingyun_test,'qy');
figure,imshow(test_qy);

%QUH-Pingan
load('Pingan_train.mat'); 
train_pa = label2color_new(Pingan_train,'pa');
figure,imshow(train_pa);

load('Pingan_test.mat'); 
test_pa = label2color_new(Pingan_test,'pa');
figure,imshow(test_pa);