image1= imread('/Users/taolee/Library/Mobile Documents/com~apple~CloudDocs/Work/Figure_simularity/HTS-Encoded-03_copy.png');

ref=rgb2gray(image1);
res=cell(36,1);
for N=1:15 
    image2=imread(['/Users/taolee/Library/Mobile Documents/com~apple~CloudDocs/Work/Figure_simularity/mdc/216_',num2str(N),'.png']); 
    A=rgb2gray(uint8(image2));
    res{N,1}=similarity(ref,A);
end
