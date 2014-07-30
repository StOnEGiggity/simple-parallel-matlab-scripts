clear
clc
n=10^7;
S=0;

tic
for i=1:n
    S=S+i;
end
t(1)=toc;

disp(S);


matlabpool('open','local',4);
S=0;
tic
parfor i=1:n
    S=S+i;
end
t(2)=toc;
disp(S);
matlabpool('close');


disp(t);
