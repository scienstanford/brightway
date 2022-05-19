function rootPath=bwRootPath()
% Return the path to the root brightway directory
%
% This function must reside in the directory at the base of the brightway
% directory structure.  It is used to determine the location of various
% sub-directories.
%
% Example:
%   fullfile(bwRootPath,'data')

rootPath=which('bwRootPath');

rootPath = fileparts(rootPath);

end
