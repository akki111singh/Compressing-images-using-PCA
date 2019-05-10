
files = dir('dataset');
files = files(3:end);
cd dataset

X=[];
i=1;
for file = files'
    I = imread(file.name);
    X(i,:) = I(:);
    i=i+1;
end
cd ..

L=X*X';
[V,D] = eig(L);

eigvalue = diag(D);
[junk, index] = sort(-eigvalue);
eigvalue = eigvalue(index);
eigvec = V(:, index);

sorted=eigvec(:,1:35);

Z = X'* sorted;

Compressed = X*Z; 

Decompressed=Compressed*pinv(Z);


figure;scatter(Compressed(:,1),zeros(520,1));
figure;scatter(Compressed(:,1),Compressed(:,2))
figure;scatter3(Compressed(:,1),Compressed(:,2),Compressed(:,3));

%RECONSTRUCTED IMAGE

% j=0;
% k=0;
% for i=1:520
% img1=Decompressed(i,:);
% img1_rgb=reshape(img1,256,256,[]);
% if k == 65
%     k=0;
%     j=j+1;
% end
% if k< 9
% filename=strcat('00',int2str(j),'.','00',int2str(k));
% else
% filename=strcat('00',int2str(j),'.','0',int2str(k));
% end
% k=k+1;
% filename=strcat('result/',filename,'.','jpg');
% imwrite(uint8(img1_rgb),filename);
% end


