clear
clc
for labs=[1,2,3,4]
    matlabpool('open','local',labs);
    tic
    n=10^7;
    S=0;
    parfor i=1:n
        S=S+i;
    end
    tim(labs)=toc;
    disp(S);
    matlabpool('close');
end

disp(tim);