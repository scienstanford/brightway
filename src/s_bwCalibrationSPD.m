%% s_bwCalibrationSPD
%

% A directory with the brightway SPD from the 715.
chdir('C:\Users\scienlab\Documents\GitHub\isetcalibrate\local\2022-04-14');

%%
bFiles = dir('brightway-0*');
load(bFiles(1).name,'data');
load(bFiles(1).name,'wavelength');

allData = zeros(size(data));

for ii=2:numel(bFiles)
    load(bFiles(ii).name,'data');
    allData = allData + data;
end

ieNewGraphWin; plot(wavelength,allData/numel(bFiles));
xlabel('Wave (nm)');
ylabel('Spectral radiance');
grid on
title('Brightway')

%%
bFiles = dir('brightway-r*');
load(bFiles(1).name,'data');
load(bFiles(1).name,'wavelength');

allData = zeros(size(data));

for ii=2:numel(bFiles)
    load(bFiles(ii).name,'data');
    allData = allData + data;
end

ieNewGraphWin; plot(wavelength,allData/numel(bFiles));
xlabel('Wave (nm)');
ylabel('Spectral radiance');
grid on
title('Brightway')

%% Just the room data

bFiles = dir('room*');
load(bFiles(1).name,'data');
load(bFiles(1).name,'wavelength');

allData = zeros(size(data));

for ii=2:numel(bFiles)
    load(bFiles(ii).name,'data');
    allData = allData + data;
end

ieNewGraphWin; plot(wavelength,allData/numel(bFiles));

xlabel('Wave (nm)');
ylabel('Spectral radiance');
grid on
title('Room')

%%
load('spd-2022-04-14-13-53-35','data')
