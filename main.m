% Finding Occlusion frame - Occlusion attack
%----------------------------------------------------------------------------------
% Note: If you are using my code for your system or project, you should always cite my paper as a reference. 
% K C.Jithin, SyamSankar, "Colour image encryption algorithm combining Arnold map, DNA sequence operation, and a Mandelbrot set", 
% Journal of Information Security and Applications, Elsevier, Volume 50, February 2020, DOI: https://doi.org/10.1016/j.jisa.2019.102428

%---------------------------------------------------------------------------------

%Note:
   % 1. input square size image  (eg:256*256)
   % 2. Block size of image ( Percentage of occlusion)
   % 3. Starting Block from 1 pixel ( 1*1 position)
   % 4. If you need to change starting position - change varible sp (eg:20*20 )
   % 5. Starting position should always less than block size size of image ( Percentage of occlusion)
%-----------------------------------------------------------------------------

% Demo: 
% Here you can call your encryption function 
% eg.encryyption()
% Enter your cipher image here
 a=imread('cipherimage.png');
%---------------------------------------------------------------------------
   R=a(:,:,1);
   G=a(:,:,2);
   B=a(:,:,3);
   siz=size(R);
   siz=siz(1);
   
   
   prompt = 'Enter the percentage of occlusion frame you need (eg.25):';
   pe= input(prompt)
  
  
  
   prompt = 'Do you want to enter the starting position? Y/N [Y]: ';
   str = input(prompt,'s');
   if isempty(str)
    prompt = 'Enter the starting position of occlusionframe (less than block size (row))';
    r1= input(prompt)
    prompt = 'Enter the starting position of occlusionframe (less than block size (column))';
    c1= input(prompt)
    
    
     disp('Starting position added.')
     pause(1)
   else
    disp('Error ! : Default starting position added..');
    r3=1;
    c3=1;
    end
  else
    disp('Default starting position added..');
    r3=1;
    c3=1;  
   end
   pause(1);
  
   
   figure;
   imshow(a);title(' Original cipherimage');
   figure;
   imshow(img);title(' Occlusion added cipherimage');
 % Here you can call your decryption function - with occlusion added cipherimage
 % eg.decryption(img); 
%----------------------------------------------------------------------------------
  
