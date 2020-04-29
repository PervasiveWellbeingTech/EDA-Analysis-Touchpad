clc;clear all;close all
LST ={'A1','A10','A11','A2','A4','A5','A6','A8','B1','B10','B11','B2','B3','B4','B5','B7','B8'};
time = zeros(length(LST),1);
for i=1:length(LST)
  cd('Your Path\Data_EDA\'+string(LST(i)))
  
  data = load('EDA_Stress.csv');
  data(1:3) = [];
  
  L = length(data);
  C1 = zeros(L,1);
  C2 = zeros(L,1);
  C2(1)=1;
  c = 0;
  for j=2:L
 
      c=c+0.25;
      
      C1(j,1) = c;
  end
  time(i,1) = C1(end);
  TT = [C1 data C2];
  cd('Your Path\Stress_res');
  mkdir(string(LST(i)));
  cd('Your Path\Stress_res\'+string(LST(i)));
  dlmwrite('Stress'+string(LST(i))+'.txt',TT)

end

cd('Your Path\Stress_res');
dlmwrite('Stress_Time.txt',time)