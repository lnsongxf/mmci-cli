cd(fileparts(mfilename('fullpath')));

%% Simple exercsie:
% NK_RW97 with Taylor rule, printing variances, IRFs and ACFs for both
% monetary and fiscal policy.
 

cd  MMB_OPTIONS
CMD_MMB(484,6,7,3);

% % Exercise 3- NK_CGG02 with Tayor rule and GR Rules

cd ..
cd  MMB_OPTIONS
CMD_MMB(3,12,3,1);

cd ..
cd  MMB_OPTIONS
CMD_MMB(2,4,1,1);

cd ..
 cd  MMB_OPTIONS
 CMD_MMB(3,4,7,3);
% 
cd ..
cd  MMB_OPTIONS
CMD_MMB(224,12,7,3);


% Comprehensive exercise:
%NK_RW97 and NK_IR04 with Tayor rule  print variances ,IRFs and
%ACF for both monetary and fiscal policy.

cd ..
cd  MMB_OPTIONS
CMD_MMB(33,4,7,3);

% Exercise 1- RW97 with Tayor rule
% 
cd ..
cd  MMB_OPTIONS
CMD_MMB(1,4,4,1);

%Exercise 2- RW97 and NK_CGG02 with Tayor rule 

cd ..
cd  MMB_OPTIONS
CMD_MMB(33,12,2,1);

%Exercise 2a- RW97 and NK_CGG02 with Tayor rule  print variances
cd ..
cd MMB_OPTIONS
CMD_MMB(9,4,4,1);

%Exercise 2b- RW97 and NK_CGG02 with Tayor rule  print variances ,IRFs and
%ACF for fiscal policy -note NK_CGG02 does not have a fiscal shock!
% 
cd ..
cd  MMB_OPTIONS
CMD_MMB(9,4,7,2);

% Exercise 3- NK_CGG02 with Tayor rule and GR Rules

cd ..
cd  MMB_OPTIONS
CMD_MMB(8,12,2,1);
 
