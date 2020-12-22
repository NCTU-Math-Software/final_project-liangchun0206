# final_project-liangchun0206
final_project-liangchun0206 created by GitHub Classroom  
Project 17 
在這個project中。有三個程式。分別處理不同但一系列的問題  
在mat_gen.m這個程式中使用者只要給定一個自然數，則此程式能跑出一個長的很特別的n* n矩陣  
  
Example:  
%% intput:mat_gen(10)  
%% output:一個10*10的矩陣  
  
其樣式為中心點為1(我們定義中心點為第floor(n/2)+1行，第floor(n/2)+1列的元素)依照逆時針方向填數字，一直填到第n行第1列元素為n^2  
為了程式輸出的方便性及為了處理時間不至於過長，這裡的n希望使用者輸入1000以下的值  
當然超過1000也有辦法跑。  
  
在mat_gan_val程式中使用者一樣輸入一自然數n  
此程式能算出如同上述所描述之n* n矩陣的對角線和+反對角線之和  
  
Example:  
%% intput:mat_gen_val(10)
%% output:一個10*10的矩陣的對角線與反對角線和   
  
使用的方法為計算以整個矩陣中心為中心的i* i矩陣(i=1,2,3,...,n)最外角四個元素的和，再將其加起來  
此方法不會建造出整個矩陣，所以處理時間會快上許多。  

在最後plot_prime程式中 
  
Example:  
%% intput:plot_prime  
%% output:一張標有質數點的圖  
  
此程式使用者不用輸入值  
會跑出上述所描述之200*200矩陣中，在是質數的元素標成黑色的點，其他則標成白色  
為了觀察的方便，我們將背景定為粉紅色  
建議使用者將跑出來的結果視窗放大以利觀察  
