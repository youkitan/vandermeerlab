%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%                                              %%%%
%%%%            update Coord files                %%%%
%%%%                                              %%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Script for updating the coord files to Feb2017+ pipeline
%
% youkitan 2017-03-01

%%
cfg.rats = {'R042','R044','R050','R064'};
originalFolder = pwd;

cfg = [];
cfg.userpath = '/Users/youkitanaka/Documents/data';
fd = sort(getTmazeDataPath(cfg)); % get all session directories

for iFD = 1:length(fd)
    cd(fd{iFD});
    fprintf([fd{iFD} '\n'])
    MakeCoordFile
end

cd(originalFolder)
