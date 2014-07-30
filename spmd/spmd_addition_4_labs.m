clc
clear
labs=4;
matlabpool('open','local',labs);
n=10^7;
S=0;
res=0;
tic
spmd(labs)
    if(labindex==1)
        for i=1:n/4
            S=S+i;
        end
    elseif (labindex==2)
        for i=(n/4+1):n/2
            S=S+i;
        end
    elseif (labindex==3)
        for i=(n/2+1):3*n/4
            S=S+i;
        end
    elseif (labindex==4)
        for i=(3*n/4+1):n
            S=S+i;
        end
    end
end
toc
for i=1:labs
    res=res+S{i};
end
matlabpool('close');
disp(res);