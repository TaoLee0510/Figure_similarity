image1= imread('HTS-Encoded-03_copy.png');

ref=rgb2gray(image1);
res=cell(15,1);%%15 is the total number of image2
for N=1:15 
    image2=imread(['/mdc/216_',num2str(N),'.png']); 
    A=rgb2gray(uint8(image2));
    res{N,1}=similarity(ref,A);
end
