%% Illustrate how to read a seq file
%
% add the brightway repository to your path
%
% See also
%

%# chdir(fullfile(bwRootPath,'external'));
%# [I, headerInfo] = ReadJpegSEQ('test8.seq',[1 1], 'vendorSpecific','BrightWay');
%%
chdir(fullfile(bwRootPath,'data'));
%%
% fname = 'brightway_example.seq';
fname = 'testing55-88withJoyce.seq';
[I, headerInfo] = ReadJpegSEQ(fname, [1 1], 'vendorSpecific','BrightWay');
nFrames = headerInfo.AllocatedFrames;
fprintf('%d frames\n',nFrames);
All = ReadJpegSEQ(fname,[1 nFrames], 'vendorSpecific','BrightWay');

%%
ieNewGraphWin; colormap("gray");
for ii=1:nFrames
    img = All{ii};
    pause(0.5);
    imagesc(double(img));
end

%%