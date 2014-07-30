clc
clear
for labs=[1,2,3,4]
    matlabpool('open','local',labs);
    n=10^7;
    S=0;
    res=0;
    tic
    spmd(labs)
        for i=1:labs
           if(labindex==i)
               S=s_n1_n2(1+ (i-1)* n/labs , i*n/labs);
           end
        end
    end

    for i=1:labs
        res=res+S{i};
    end
    tim(labs)=toc;
    matlabpool('close');
    disp(res);
end
disp(tim);
