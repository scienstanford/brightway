%% Combine DNG files into a single HDR sensor response

%%
ieInit;

%% Base directory with example DNG files
baseDir = fullfile(bwRootPath,'local');
chdir(baseDir);


%% Experiments

fname = 'IMG_20230330_195501';
for ii=0:2
    sensor = sensorDNGRead(sprintf('%s_%01d.dng',fname,ii));
    sensorWindow(sensor);
end

[roiLocs] = ieROISelect(sensor);