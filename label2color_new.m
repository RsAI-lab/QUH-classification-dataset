function classif=label2color_new(label,data_name)

[w, h]=size(label);

im=zeros(w,h,3);

switch lower(data_name)
    case 'tdw' %QUH-Tangdaowan 
            map=[140 67 46;153 153 153;255 100 0;0 255 123;164 75 155;101 174 255;118 254 172; 60 91 112;255 255 0;255 255 125;255 0 255;100 0 255;0 172 254;0 255 0;171 175 80;101 193 60;139 0 0;0 0 255];
        for i=1:w
            for j=1:h
                switch(label(i,j))
                    case(1)
                        im(i,j,:)=uint8(map(1,:));
                    case(2)
                        im(i,j,:)=uint8(map(2,:));
                    case(3)
                        im(i,j,:)=uint8(map(3,:));
                    case(4)
                        im(i,j,:)=uint8(map(4,:));
                    case(5)
                        im(i,j,:)=uint8(map(5,:));
                    case(6)
                        im(i,j,:)=uint8(map(6,:));
                    case(7)
                        im(i,j,:)=uint8(map(7,:));
                    case(8)
                        im(i,j,:)=uint8(map(8,:));
                    case(9)
                        im(i,j,:)=uint8(map(9,:));
                    case(10)
                        im(i,j,:)=uint8(map(10,:));
                    case(11)
                        im(i,j,:)=uint8(map(11,:));
                    case(12)
                        im(i,j,:)=uint8(map(12,:));
                    case(13)
                        im(i,j,:)=uint8(map(13,:));
                    case(14)
                        im(i,j,:)=uint8(map(14,:));   
                    case(15)
                        im(i,j,:)=uint8(map(15,:));   
                    case(16)
                        im(i,j,:)=uint8(map(16,:));
                    case(17)
                        im(i,j,:)=uint8(map(17,:));
                    case(18)
                        im(i,j,:)=uint8(map(18,:));
                end
            end
        end
        
        
    case 'qy' %QUH-Qingyun
        map=[0,255,0;153 153 153;255 100 0;164 75 155;101 174 255;140 67 46];

        for i=1:w
            for j=1:h
                switch(label(i,j))
                    case(1)
                        im(i,j,:)=uint8(map(1,:));
                    case(2)
                        im(i,j,:)=uint8(map(2,:));
                    case(3)
                        im(i,j,:)=uint8(map(3,:));
                    case(4)
                        im(i,j,:)=uint8(map(4,:));
                    case(5)
                        im(i,j,:)=uint8(map(5,:));
                    case(6)
                        im(i,j,:)=uint8(map(6,:));
                end
            end
        end
        
    case 'pa'  %QUH-Pingan
        map=[140 67 46;0 0 255;0 200 0;101 174 255;164 75 155;192 80 70;60 91 112; 255 255 0;255 100 0;118 254 172];

        for i=1:w
            for j=1:h
                switch(label(i,j))
                    case(1)
                        im(i,j,:)=uint8(map(1,:));
                    case(2)
                        im(i,j,:)=uint8(map(2,:));
                    case(3)
                        im(i,j,:)=uint8(map(3,:));
                    case(4)
                        im(i,j,:)=uint8(map(4,:));
                    case(5)
                        im(i,j,:)=uint8(map(5,:));
                    case(6)
                        im(i,j,:)=uint8(map(6,:));
                    case(7)
                        im(i,j,:)=uint8(map(7,:));
                    case(8)
                        im(i,j,:)=uint8(map(8,:));
                    case(9)
                        im(i,j,:)=uint8(map(9,:));
                    case(10)
                        im(i,j,:)=uint8(map(10,:));
                end
            end
        end
        
    
end

name=sprintf('classif_%s.tif',data_name);
im=uint8(im);
classif=uint8(zeros(w,h,3));
classif(:,:,1)=im(:,:,1);
classif(:,:,2)=im(:,:,2);
classif(:,:,3)=im(:,:,3);
%imwrite(classif,name);