% This function is defining the target matrices%
 
function [s] = targetfunc(x)
 
d0 = [1 0 0 0 0 0 0 0 0 0]; % for number 0
d1 = [0 1 0 0 0 0 0 0 0 0]; % for number 1
d2 = [0 0 1 0 0 0 0 0 0 0]; % for number 2
d3 = [0 0 0 1 0 0 0 0 0 0]; % for number 3
d4 = [0 0 0 0 1 0 0 0 0 0]; % for number 4
d5 = [0 0 0 0 0 1 0 0 0 0]; % for number 5
d6 = [0 0 0 0 0 0 1 0 0 0]; % for number 6
d7 = [0 0 0 0 0 0 0 1 0 0]; % for number 7
d8 = [0 0 0 0 0 0 0 0 1 0]; % for number 8
d9 = [0 0 0 0 0 0 0 0 0 1]; % for number 9     
A=x;

b=zeros(10,1707);
     
for i = 1:1707
    
     if A(i)==0
        b(:,i)=d0';
        
     elseif A(i)==1;
         b(:,i)=d1';
    
     elseif A(i)==2;
         b(:,i)=d2';
         
     elseif A(i)==3;
         b(:,i)=d3';
         
     elseif A(i)==4;
         b(:,i)=d4';
         
     elseif A(i)==5;
         b(:,i)=d5';
    
     elseif A(i)==6;
         b(:,i)=d6';
         
     elseif A(i)==7;
         b(:,i)=d7';
         
     elseif A(i)==8;
         b(:,i)=d8;
    
     else 
         b(:,i)=d9';
     end;  
 
end
s=b
