%
% Status : main Dynare file
%
% Warning : this file is generated automatically by Dynare
%           from model file (.mod)

if isoctave || matlab_ver_less_than('8.6')
    clear all
else
    clearvars -global
    clear_persistent_variables(fileparts(which('dynare')), false)
end
tic0 = tic;
% Save empty dates and dseries objects in memory.
dates('initialize');
dseries('initialize');
% Define global variables.
global M_ options_ oo_ estim_params_ bayestopt_ dataset_ dataset_info estimation_info ys0_ ex0_
options_ = [];
M_.fname = 'KM_debt_AEJ';
M_.dynare_version = '4.5.4';
oo_.dynare_version = '4.5.4';
options_.dynare_version = '4.5.4';
%
% Some global variables initialization
%
global_initialization;
diary off;
diary('KM_debt_AEJ.log');
M_.exo_names = 'epsiA';
M_.exo_names_tex = 'epsiA';
M_.exo_names_long = 'epsiA';
M_.exo_names = char(M_.exo_names, 'epsiG');
M_.exo_names_tex = char(M_.exo_names_tex, 'epsiG');
M_.exo_names_long = char(M_.exo_names_long, 'epsiG');
M_.exo_names = char(M_.exo_names, 'epsiD');
M_.exo_names_tex = char(M_.exo_names_tex, 'epsiD');
M_.exo_names_long = char(M_.exo_names_long, 'epsiD');
M_.exo_names = char(M_.exo_names, 'ETA_R');
M_.exo_names_tex = char(M_.exo_names_tex, 'ETA\_R');
M_.exo_names_long = char(M_.exo_names_long, 'ETA_R');
M_.exo_names = char(M_.exo_names, 'ETA_PIESTAR');
M_.exo_names_tex = char(M_.exo_names_tex, 'ETA\_PIESTAR');
M_.exo_names_long = char(M_.exo_names_long, 'ETA_PIESTAR');
M_.exo_names = char(M_.exo_names, 'epsiDelta');
M_.exo_names_tex = char(M_.exo_names_tex, 'epsiDelta');
M_.exo_names_long = char(M_.exo_names_long, 'epsiDelta');
M_.endo_names = 'Y';
M_.endo_names_tex = 'Y';
M_.endo_names_long = 'Y';
M_.endo_names = char(M_.endo_names, 'Disp');
M_.endo_names_tex = char(M_.endo_names_tex, 'Disp');
M_.endo_names_long = char(M_.endo_names_long, 'Disp');
M_.endo_names = char(M_.endo_names, 'C');
M_.endo_names_tex = char(M_.endo_names_tex, 'C');
M_.endo_names_long = char(M_.endo_names_long, 'C');
M_.endo_names = char(M_.endo_names, 'H');
M_.endo_names_tex = char(M_.endo_names_tex, 'H');
M_.endo_names_long = char(M_.endo_names_long, 'H');
M_.endo_names = char(M_.endo_names, 'Mu');
M_.endo_names_tex = char(M_.endo_names_tex, 'Mu');
M_.endo_names_long = char(M_.endo_names_long, 'Mu');
M_.endo_names = char(M_.endo_names, 'M');
M_.endo_names_tex = char(M_.endo_names_tex, 'M');
M_.endo_names_long = char(M_.endo_names_long, 'M');
M_.endo_names = char(M_.endo_names, 'Int_new');
M_.endo_names_tex = char(M_.endo_names_tex, 'Int\_new');
M_.endo_names_long = char(M_.endo_names_long, 'Int_new');
M_.endo_names = char(M_.endo_names, 'Int_D');
M_.endo_names_tex = char(M_.endo_names_tex, 'Int\_D');
M_.endo_names_long = char(M_.endo_names_long, 'Int_D');
M_.endo_names = char(M_.endo_names, 'D');
M_.endo_names_tex = char(M_.endo_names_tex, 'D');
M_.endo_names_long = char(M_.endo_names_long, 'D');
M_.endo_names = char(M_.endo_names, 'D_new');
M_.endo_names_tex = char(M_.endo_names_tex, 'D\_new');
M_.endo_names_long = char(M_.endo_names_long, 'D_new');
M_.endo_names = char(M_.endo_names, 'Tau');
M_.endo_names_tex = char(M_.endo_names_tex, 'Tau');
M_.endo_names_long = char(M_.endo_names_long, 'Tau');
M_.endo_names = char(M_.endo_names, 'Tax_obs');
M_.endo_names_tex = char(M_.endo_names_tex, 'Tax\_obs');
M_.endo_names_long = char(M_.endo_names_long, 'Tax_obs');
M_.endo_names = char(M_.endo_names, 'Mu_obs');
M_.endo_names_tex = char(M_.endo_names_tex, 'Mu\_obs');
M_.endo_names_long = char(M_.endo_names_long, 'Mu_obs');
M_.endo_names = char(M_.endo_names, 'Q1');
M_.endo_names_tex = char(M_.endo_names_tex, 'Q1');
M_.endo_names_long = char(M_.endo_names_long, 'Q1');
M_.endo_names = char(M_.endo_names, 'Pie');
M_.endo_names_tex = char(M_.endo_names_tex, 'Pie');
M_.endo_names_long = char(M_.endo_names_long, 'Pie');
M_.endo_names = char(M_.endo_names, 'Lambda');
M_.endo_names_tex = char(M_.endo_names_tex, 'Lambda');
M_.endo_names_long = char(M_.endo_names_long, 'Lambda');
M_.endo_names = char(M_.endo_names, 'Mc');
M_.endo_names_tex = char(M_.endo_names_tex, 'Mc');
M_.endo_names_long = char(M_.endo_names_long, 'Mc');
M_.endo_names = char(M_.endo_names, 'Int');
M_.endo_names_tex = char(M_.endo_names_tex, 'Int');
M_.endo_names_long = char(M_.endo_names_long, 'Int');
M_.endo_names = char(M_.endo_names, 'AW');
M_.endo_names_tex = char(M_.endo_names_tex, 'AW');
M_.endo_names_long = char(M_.endo_names_long, 'AW');
M_.endo_names = char(M_.endo_names, 'Z1');
M_.endo_names_tex = char(M_.endo_names_tex, 'Z1');
M_.endo_names_long = char(M_.endo_names_long, 'Z1');
M_.endo_names = char(M_.endo_names, 'Z2');
M_.endo_names_tex = char(M_.endo_names_tex, 'Z2');
M_.endo_names_long = char(M_.endo_names_long, 'Z2');
M_.endo_names = char(M_.endo_names, 'Q2');
M_.endo_names_tex = char(M_.endo_names_tex, 'Q2');
M_.endo_names_long = char(M_.endo_names_long, 'Q2');
M_.endo_names = char(M_.endo_names, 'Ptild');
M_.endo_names_tex = char(M_.endo_names_tex, 'Ptild');
M_.endo_names_long = char(M_.endo_names_long, 'Ptild');
M_.endo_names = char(M_.endo_names, 'W');
M_.endo_names_tex = char(M_.endo_names_tex, 'W');
M_.endo_names_long = char(M_.endo_names_long, 'W');
M_.endo_names = char(M_.endo_names, 'DG');
M_.endo_names_tex = char(M_.endo_names_tex, 'DG');
M_.endo_names_long = char(M_.endo_names_long, 'DG');
M_.endo_names = char(M_.endo_names, 'A_t');
M_.endo_names_tex = char(M_.endo_names_tex, 'A\_t');
M_.endo_names_long = char(M_.endo_names_long, 'A_t');
M_.endo_names = char(M_.endo_names, 'Dbs');
M_.endo_names_tex = char(M_.endo_names_tex, 'Dbs');
M_.endo_names_long = char(M_.endo_names_long, 'Dbs');
M_.endo_names = char(M_.endo_names, 'DI_obs');
M_.endo_names_tex = char(M_.endo_names_tex, 'DI\_obs');
M_.endo_names_long = char(M_.endo_names_long, 'DI_obs');
M_.endo_names = char(M_.endo_names, 'Rrate');
M_.endo_names_tex = char(M_.endo_names_tex, 'Rrate');
M_.endo_names_long = char(M_.endo_names_long, 'Rrate');
M_.endo_names = char(M_.endo_names, 'Delta');
M_.endo_names_tex = char(M_.endo_names_tex, 'Delta');
M_.endo_names_long = char(M_.endo_names_long, 'Delta');
M_.endo_names = char(M_.endo_names, 'Y_obs');
M_.endo_names_tex = char(M_.endo_names_tex, 'Y\_obs');
M_.endo_names_long = char(M_.endo_names_long, 'Y_obs');
M_.endo_names = char(M_.endo_names, 'Int_obs');
M_.endo_names_tex = char(M_.endo_names_tex, 'Int\_obs');
M_.endo_names_long = char(M_.endo_names_long, 'Int_obs');
M_.endo_names = char(M_.endo_names, 'Int_new_obs');
M_.endo_names_tex = char(M_.endo_names_tex, 'Int\_new\_obs');
M_.endo_names_long = char(M_.endo_names_long, 'Int_new_obs');
M_.endo_names = char(M_.endo_names, 'Pie_obs');
M_.endo_names_tex = char(M_.endo_names_tex, 'Pie\_obs');
M_.endo_names_long = char(M_.endo_names_long, 'Pie_obs');
M_.endo_names = char(M_.endo_names, 'H_obs');
M_.endo_names_tex = char(M_.endo_names_tex, 'H\_obs');
M_.endo_names_long = char(M_.endo_names_long, 'H_obs');
M_.endo_names = char(M_.endo_names, 'W_obs');
M_.endo_names_tex = char(M_.endo_names_tex, 'W\_obs');
M_.endo_names_long = char(M_.endo_names_long, 'W_obs');
M_.endo_names = char(M_.endo_names, 'C_obs');
M_.endo_names_tex = char(M_.endo_names_tex, 'C\_obs');
M_.endo_names_long = char(M_.endo_names_long, 'C_obs');
M_.endo_names = char(M_.endo_names, 'Tau_obs');
M_.endo_names_tex = char(M_.endo_names_tex, 'Tau\_obs');
M_.endo_names_long = char(M_.endo_names_long, 'Tau_obs');
M_.endo_names = char(M_.endo_names, 'D_obs');
M_.endo_names_tex = char(M_.endo_names_tex, 'D\_obs');
M_.endo_names_long = char(M_.endo_names_long, 'D_obs');
M_.endo_names = char(M_.endo_names, 'D_new_obs');
M_.endo_names_tex = char(M_.endo_names_tex, 'D\_new\_obs');
M_.endo_names_long = char(M_.endo_names_long, 'D_new_obs');
M_.endo_names = char(M_.endo_names, 'Int_D_obs');
M_.endo_names_tex = char(M_.endo_names_tex, 'Int\_D\_obs');
M_.endo_names_long = char(M_.endo_names_long, 'Int_D_obs');
M_.endo_names = char(M_.endo_names, 'PIESTAR');
M_.endo_names_tex = char(M_.endo_names_tex, 'PIESTAR');
M_.endo_names_long = char(M_.endo_names_long, 'PIESTAR');
M_.endo_names = char(M_.endo_names, 'EPSI_R');
M_.endo_names_tex = char(M_.endo_names_tex, 'EPSI\_R');
M_.endo_names_long = char(M_.endo_names_long, 'EPSI_R');
M_.endo_names = char(M_.endo_names, 'PIESTAR_frcst');
M_.endo_names_tex = char(M_.endo_names_tex, 'PIESTAR\_frcst');
M_.endo_names_long = char(M_.endo_names_long, 'PIESTAR_frcst');
M_.endo_names = char(M_.endo_names, 'PIESTAR_est');
M_.endo_names_tex = char(M_.endo_names_tex, 'PIESTAR\_est');
M_.endo_names_long = char(M_.endo_names_long, 'PIESTAR_est');
M_.endo_names = char(M_.endo_names, 'EPSI_R_est');
M_.endo_names_tex = char(M_.endo_names_tex, 'EPSI\_R\_est');
M_.endo_names_long = char(M_.endo_names_long, 'EPSI_R_est');
M_.endo_names = char(M_.endo_names, 'EPSI_R_frcst');
M_.endo_names_tex = char(M_.endo_names_tex, 'EPSI\_R\_frcst');
M_.endo_names_long = char(M_.endo_names_long, 'EPSI_R_frcst');
M_.endo_names = char(M_.endo_names, 'ETA_PIE_est');
M_.endo_names_tex = char(M_.endo_names_tex, 'ETA\_PIE\_est');
M_.endo_names_long = char(M_.endo_names_long, 'ETA_PIE_est');
M_.endo_names = char(M_.endo_names, 'ETA_R_est');
M_.endo_names_tex = char(M_.endo_names_tex, 'ETA\_R\_est');
M_.endo_names_long = char(M_.endo_names_long, 'ETA_R_est');
M_.endo_names = char(M_.endo_names, 'M_obs');
M_.endo_names_tex = char(M_.endo_names_tex, 'M\_obs');
M_.endo_names_long = char(M_.endo_names_long, 'M_obs');
M_.endo_names = char(M_.endo_names, 'PIESTAR4');
M_.endo_names_tex = char(M_.endo_names_tex, 'PIESTAR4');
M_.endo_names_long = char(M_.endo_names_long, 'PIESTAR4');
M_.endo_names = char(M_.endo_names, 'Mcn');
M_.endo_names_tex = char(M_.endo_names_tex, 'Mcn');
M_.endo_names_long = char(M_.endo_names_long, 'Mcn');
M_.endo_names = char(M_.endo_names, 'Wn');
M_.endo_names_tex = char(M_.endo_names_tex, 'Wn');
M_.endo_names_long = char(M_.endo_names_long, 'Wn');
M_.endo_names = char(M_.endo_names, 'Z1n');
M_.endo_names_tex = char(M_.endo_names_tex, 'Z1n');
M_.endo_names_long = char(M_.endo_names_long, 'Z1n');
M_.endo_names = char(M_.endo_names, 'Z2n');
M_.endo_names_tex = char(M_.endo_names_tex, 'Z2n');
M_.endo_names_long = char(M_.endo_names_long, 'Z2n');
M_.endo_names = char(M_.endo_names, 'Lambdan');
M_.endo_names_tex = char(M_.endo_names_tex, 'Lambdan');
M_.endo_names_long = char(M_.endo_names_long, 'Lambdan');
M_.endo_names = char(M_.endo_names, 'Taun');
M_.endo_names_tex = char(M_.endo_names_tex, 'Taun');
M_.endo_names_long = char(M_.endo_names_long, 'Taun');
M_.endo_names = char(M_.endo_names, 'Hn');
M_.endo_names_tex = char(M_.endo_names_tex, 'Hn');
M_.endo_names_long = char(M_.endo_names_long, 'Hn');
M_.endo_names = char(M_.endo_names, 'Mn');
M_.endo_names_tex = char(M_.endo_names_tex, 'Mn');
M_.endo_names_long = char(M_.endo_names_long, 'Mn');
M_.endo_names = char(M_.endo_names, 'D_newn');
M_.endo_names_tex = char(M_.endo_names_tex, 'D\_newn');
M_.endo_names_long = char(M_.endo_names_long, 'D_newn');
M_.endo_names = char(M_.endo_names, 'Int_Dn');
M_.endo_names_tex = char(M_.endo_names_tex, 'Int\_Dn');
M_.endo_names_long = char(M_.endo_names_long, 'Int_Dn');
M_.endo_names = char(M_.endo_names, 'Dn');
M_.endo_names_tex = char(M_.endo_names_tex, 'Dn');
M_.endo_names_long = char(M_.endo_names_long, 'Dn');
M_.endo_names = char(M_.endo_names, 'Rn');
M_.endo_names_tex = char(M_.endo_names_tex, 'Rn');
M_.endo_names_long = char(M_.endo_names_long, 'Rn');
M_.endo_names = char(M_.endo_names, 'Pien');
M_.endo_names_tex = char(M_.endo_names_tex, 'Pien');
M_.endo_names_long = char(M_.endo_names_long, 'Pien');
M_.endo_names = char(M_.endo_names, 'Yn');
M_.endo_names_tex = char(M_.endo_names_tex, 'Yn');
M_.endo_names_long = char(M_.endo_names_long, 'Yn');
M_.endo_names = char(M_.endo_names, 'Cn');
M_.endo_names_tex = char(M_.endo_names_tex, 'Cn');
M_.endo_names_long = char(M_.endo_names_long, 'Cn');
M_.endo_names = char(M_.endo_names, 'Taun_obs');
M_.endo_names_tex = char(M_.endo_names_tex, 'Taun\_obs');
M_.endo_names_long = char(M_.endo_names_long, 'Taun_obs');
M_.endo_names = char(M_.endo_names, 'Yn_obs');
M_.endo_names_tex = char(M_.endo_names_tex, 'Yn\_obs');
M_.endo_names_long = char(M_.endo_names_long, 'Yn_obs');
M_.endo_names = char(M_.endo_names, 'Int_newn');
M_.endo_names_tex = char(M_.endo_names_tex, 'Int\_newn');
M_.endo_names_long = char(M_.endo_names_long, 'Int_newn');
M_.endo_names = char(M_.endo_names, 'Mun');
M_.endo_names_tex = char(M_.endo_names_tex, 'Mun');
M_.endo_names_long = char(M_.endo_names_long, 'Mun');
M_.endo_names = char(M_.endo_names, 'Intn');
M_.endo_names_tex = char(M_.endo_names_tex, 'Intn');
M_.endo_names_long = char(M_.endo_names_long, 'Intn');
M_.endo_names = char(M_.endo_names, 'Dn_obs');
M_.endo_names_tex = char(M_.endo_names_tex, 'Dn\_obs');
M_.endo_names_long = char(M_.endo_names_long, 'Dn_obs');
M_.endo_partitions = struct();
M_.param_names = 'Lambdas';
M_.param_names_tex = 'Lambdas';
M_.param_names_long = 'Lambdas';
M_.param_names = char(M_.param_names, 'Cs');
M_.param_names_tex = char(M_.param_names_tex, 'Cs');
M_.param_names_long = char(M_.param_names_long, 'Cs');
M_.param_names = char(M_.param_names, 'Disps');
M_.param_names_tex = char(M_.param_names_tex, 'Disps');
M_.param_names_long = char(M_.param_names_long, 'Disps');
M_.param_names = char(M_.param_names, 'alphaa');
M_.param_names_tex = char(M_.param_names_tex, 'alphaa');
M_.param_names_long = char(M_.param_names_long, 'alphaa');
M_.param_names = char(M_.param_names, 'B0');
M_.param_names_tex = char(M_.param_names_tex, 'B0');
M_.param_names_long = char(M_.param_names_long, 'B0');
M_.param_names = char(M_.param_names, 'DHS');
M_.param_names_tex = char(M_.param_names_tex, 'DHS');
M_.param_names_long = char(M_.param_names_long, 'DHS');
M_.param_names = char(M_.param_names, 'kappa');
M_.param_names_tex = char(M_.param_names_tex, 'kappa');
M_.param_names_long = char(M_.param_names_long, 'kappa');
M_.param_names = char(M_.param_names, 'gamma1w');
M_.param_names_tex = char(M_.param_names_tex, 'gamma1w');
M_.param_names_long = char(M_.param_names_long, 'gamma1w');
M_.param_names = char(M_.param_names, 'markupw');
M_.param_names_tex = char(M_.param_names_tex, 'markupw');
M_.param_names_long = char(M_.param_names_long, 'markupw');
M_.param_names = char(M_.param_names, 'phiw');
M_.param_names_tex = char(M_.param_names_tex, 'phiw');
M_.param_names_long = char(M_.param_names_long, 'phiw');
M_.param_names = char(M_.param_names, 'sigmam');
M_.param_names_tex = char(M_.param_names_tex, 'sigmam');
M_.param_names_long = char(M_.param_names_long, 'sigmam');
M_.param_names = char(M_.param_names, 'SMY');
M_.param_names_tex = char(M_.param_names_tex, 'SMY');
M_.param_names_long = char(M_.param_names_long, 'SMY');
M_.param_names = char(M_.param_names, 'gamma1');
M_.param_names_tex = char(M_.param_names_tex, 'gamma1');
M_.param_names_long = char(M_.param_names_long, 'gamma1');
M_.param_names = char(M_.param_names, 'gamma2');
M_.param_names_tex = char(M_.param_names_tex, 'gamma2');
M_.param_names_long = char(M_.param_names_long, 'gamma2');
M_.param_names = char(M_.param_names, 'betta');
M_.param_names_tex = char(M_.param_names_tex, 'betta');
M_.param_names_long = char(M_.param_names_long, 'betta');
M_.param_names = char(M_.param_names, 'phi');
M_.param_names_tex = char(M_.param_names_tex, 'phi');
M_.param_names_long = char(M_.param_names_long, 'phi');
M_.param_names = char(M_.param_names, 'epsi');
M_.param_names_tex = char(M_.param_names_tex, 'epsi');
M_.param_names_long = char(M_.param_names_long, 'epsi');
M_.param_names = char(M_.param_names, 'epsps');
M_.param_names_tex = char(M_.param_names_tex, 'epsps');
M_.param_names_long = char(M_.param_names_long, 'epsps');
M_.param_names = char(M_.param_names, 'Pies');
M_.param_names_tex = char(M_.param_names_tex, 'Pies');
M_.param_names_long = char(M_.param_names_long, 'Pies');
M_.param_names = char(M_.param_names, 'Int_news');
M_.param_names_tex = char(M_.param_names_tex, 'Int\_news');
M_.param_names_long = char(M_.param_names_long, 'Int_news');
M_.param_names = char(M_.param_names, 'D_news');
M_.param_names_tex = char(M_.param_names_tex, 'D\_news');
M_.param_names_long = char(M_.param_names_long, 'D_news');
M_.param_names = char(M_.param_names, 'Int_Ds');
M_.param_names_tex = char(M_.param_names_tex, 'Int\_Ds');
M_.param_names_long = char(M_.param_names_long, 'Int_Ds');
M_.param_names = char(M_.param_names, 'rhoi');
M_.param_names_tex = char(M_.param_names_tex, '\rho_i');
M_.param_names_long = char(M_.param_names_long, 'rhoi');
M_.param_names = char(M_.param_names, 'phipie');
M_.param_names_tex = char(M_.param_names_tex, '\phi_{\pi}');
M_.param_names_long = char(M_.param_names_long, 'phipie');
M_.param_names = char(M_.param_names, 'phiy');
M_.param_names_tex = char(M_.param_names_tex, '\phi_y');
M_.param_names_long = char(M_.param_names_long, 'phiy');
M_.param_names = char(M_.param_names, 'sigmac');
M_.param_names_tex = char(M_.param_names_tex, '\sigma_c');
M_.param_names_long = char(M_.param_names_long, 'sigmac');
M_.param_names = char(M_.param_names, 'sigmah');
M_.param_names_tex = char(M_.param_names_tex, '\sigma_h');
M_.param_names_long = char(M_.param_names_long, 'sigmah');
M_.param_names = char(M_.param_names, 'Ints');
M_.param_names_tex = char(M_.param_names_tex, 'Ints');
M_.param_names_long = char(M_.param_names_long, 'Ints');
M_.param_names = char(M_.param_names, 'ws');
M_.param_names_tex = char(M_.param_names_tex, 'w^s');
M_.param_names_long = char(M_.param_names_long, 'ws');
M_.param_names = char(M_.param_names, 'trs');
M_.param_names_tex = char(M_.param_names_tex, 'trs');
M_.param_names_long = char(M_.param_names_long, 'trs');
M_.param_names = char(M_.param_names, 'epsim');
M_.param_names_tex = char(M_.param_names_tex, 'epsim');
M_.param_names_long = char(M_.param_names_long, 'epsim');
M_.param_names = char(M_.param_names, 'rhoto');
M_.param_names_tex = char(M_.param_names_tex, '\rho^{\tau,obs}');
M_.param_names_long = char(M_.param_names_long, 'rhoto');
M_.param_names = char(M_.param_names, 'xi_b');
M_.param_names_tex = char(M_.param_names_tex, '\xi_b');
M_.param_names_long = char(M_.param_names_long, 'xi_b');
M_.param_names = char(M_.param_names, 'xi_y');
M_.param_names_tex = char(M_.param_names_tex, '\xi_y');
M_.param_names_long = char(M_.param_names_long, 'xi_y');
M_.param_names = char(M_.param_names, 'Ys');
M_.param_names_tex = char(M_.param_names_tex, 'Ys');
M_.param_names_long = char(M_.param_names_long, 'Ys');
M_.param_names = char(M_.param_names, 'Hs');
M_.param_names_tex = char(M_.param_names_tex, 'Hs');
M_.param_names_long = char(M_.param_names_long, 'Hs');
M_.param_names = char(M_.param_names, 'Ptilds');
M_.param_names_tex = char(M_.param_names_tex, 'Ptilds');
M_.param_names_long = char(M_.param_names_long, 'Ptilds');
M_.param_names = char(M_.param_names, 'markup');
M_.param_names_tex = char(M_.param_names_tex, '\mu');
M_.param_names_long = char(M_.param_names_long, 'markup');
M_.param_names = char(M_.param_names, 'Mcs');
M_.param_names_tex = char(M_.param_names_tex, 'mc^s');
M_.param_names_long = char(M_.param_names_long, 'Mcs');
M_.param_names = char(M_.param_names, 'Q1s');
M_.param_names_tex = char(M_.param_names_tex, 'Q1s');
M_.param_names_long = char(M_.param_names_long, 'Q1s');
M_.param_names = char(M_.param_names, 'Q2s');
M_.param_names_tex = char(M_.param_names_tex, 'Q2s');
M_.param_names_long = char(M_.param_names_long, 'Q2s');
M_.param_names = char(M_.param_names, 'xi');
M_.param_names_tex = char(M_.param_names_tex, '\xi');
M_.param_names_long = char(M_.param_names_long, 'xi');
M_.param_names = char(M_.param_names, 'Ws');
M_.param_names_tex = char(M_.param_names_tex, 'W^s');
M_.param_names_long = char(M_.param_names_long, 'Ws');
M_.param_names = char(M_.param_names, 'As');
M_.param_names_tex = char(M_.param_names_tex, 'A^s');
M_.param_names_long = char(M_.param_names_long, 'As');
M_.param_names = char(M_.param_names, 'DGs');
M_.param_names_tex = char(M_.param_names_tex, 'DGs');
M_.param_names_long = char(M_.param_names_long, 'DGs');
M_.param_names = char(M_.param_names, 'Taus');
M_.param_names_tex = char(M_.param_names_tex, '\tau^s');
M_.param_names_long = char(M_.param_names_long, 'Taus');
M_.param_names = char(M_.param_names, 'Ds');
M_.param_names_tex = char(M_.param_names_tex, 'D^s');
M_.param_names_long = char(M_.param_names_long, 'Ds');
M_.param_names = char(M_.param_names, 'rhoD');
M_.param_names_tex = char(M_.param_names_tex, '\rho^D');
M_.param_names_long = char(M_.param_names_long, 'rhoD');
M_.param_names = char(M_.param_names, 'Tauns');
M_.param_names_tex = char(M_.param_names_tex, 'Tauns');
M_.param_names_long = char(M_.param_names_long, 'Tauns');
M_.param_names = char(M_.param_names, 'Cns');
M_.param_names_tex = char(M_.param_names_tex, 'Cns');
M_.param_names_long = char(M_.param_names_long, 'Cns');
M_.param_names = char(M_.param_names, 'Yns');
M_.param_names_tex = char(M_.param_names_tex, 'Yns');
M_.param_names_long = char(M_.param_names_long, 'Yns');
M_.param_names = char(M_.param_names, 'Mns');
M_.param_names_tex = char(M_.param_names_tex, 'Mns');
M_.param_names_long = char(M_.param_names_long, 'Mns');
M_.param_names = char(M_.param_names, 'Hns');
M_.param_names_tex = char(M_.param_names_tex, 'Hns');
M_.param_names_long = char(M_.param_names_long, 'Hns');
M_.param_names = char(M_.param_names, 'rhoA');
M_.param_names_tex = char(M_.param_names_tex, '\rho_A');
M_.param_names_long = char(M_.param_names_long, 'rhoA');
M_.param_names = char(M_.param_names, 'rhoG');
M_.param_names_tex = char(M_.param_names_tex, '\rho_G');
M_.param_names_long = char(M_.param_names_long, 'rhoG');
M_.param_names = char(M_.param_names, 'rho');
M_.param_names_tex = char(M_.param_names_tex, '\rho');
M_.param_names_long = char(M_.param_names_long, 'rho');
M_.param_names = char(M_.param_names, 'gpi');
M_.param_names_tex = char(M_.param_names_tex, 'gpi');
M_.param_names_long = char(M_.param_names_long, 'gpi');
M_.param_names = char(M_.param_names, 'gx');
M_.param_names_tex = char(M_.param_names_tex, 'gx');
M_.param_names_long = char(M_.param_names_long, 'gx');
M_.param_names = char(M_.param_names, 'rhor');
M_.param_names_tex = char(M_.param_names_tex, '\rho^r');
M_.param_names_long = char(M_.param_names_long, 'rhor');
M_.param_names = char(M_.param_names, 'rhopi');
M_.param_names_tex = char(M_.param_names_tex, '\rho_{\pi}');
M_.param_names_long = char(M_.param_names_long, 'rhopi');
M_.param_names = char(M_.param_names, 'sR');
M_.param_names_tex = char(M_.param_names_tex, 'sR');
M_.param_names_long = char(M_.param_names_long, 'sR');
M_.param_names = char(M_.param_names, 'spistar');
M_.param_names_tex = char(M_.param_names_tex, 'spistar');
M_.param_names_long = char(M_.param_names_long, 'spistar');
M_.param_names = char(M_.param_names, 'kappa1');
M_.param_names_tex = char(M_.param_names_tex, '\kappa_1');
M_.param_names_long = char(M_.param_names_long, 'kappa1');
M_.param_names = char(M_.param_names, 'kappa2');
M_.param_names_tex = char(M_.param_names_tex, '\kappa_2');
M_.param_names_long = char(M_.param_names_long, 'kappa2');
M_.param_names = char(M_.param_names, 'Ms');
M_.param_names_tex = char(M_.param_names_tex, 'M^s');
M_.param_names_long = char(M_.param_names_long, 'Ms');
M_.param_names = char(M_.param_names, 'sigmat');
M_.param_names_tex = char(M_.param_names_tex, '\sigma_t');
M_.param_names_long = char(M_.param_names_long, 'sigmat');
M_.param_names = char(M_.param_names, 'rhoDel');
M_.param_names_tex = char(M_.param_names_tex, 'rhoDel');
M_.param_names_long = char(M_.param_names_long, 'rhoDel');
M_.param_names = char(M_.param_names, 'Mus');
M_.param_names_tex = char(M_.param_names_tex, 'Mus');
M_.param_names_long = char(M_.param_names_long, 'Mus');
M_.param_partitions = struct();
M_.exo_det_nbr = 0;
M_.exo_nbr = 6;
M_.endo_nbr = 72;
M_.param_nbr = 68;
M_.orig_endo_nbr = 72;
M_.aux_vars = [];
M_.Sigma_e = zeros(6, 6);
M_.Correlation_matrix = eye(6, 6);
M_.H = 0;
M_.Correlation_matrix_ME = 1;
M_.sigma_e_is_diagonal = 1;
M_.det_shocks = [];
options_.block=0;
options_.bytecode=0;
options_.use_dll=0;
M_.hessian_eq_zero = 1;
erase_compiled_function('KM_debt_AEJ_static');
erase_compiled_function('KM_debt_AEJ_dynamic');
M_.orig_eq_nbr = 72;
M_.eq_nbr = 72;
M_.ramsey_eq_nbr = 0;
M_.set_auxiliary_variables = exist(['./' M_.fname '_set_auxiliary_variables.m'], 'file') == 2;
M_.lead_lag_incidence = [
 0 18 0;
 1 19 0;
 0 20 90;
 0 21 0;
 0 22 91;
 2 23 0;
 0 24 92;
 3 25 0;
 4 26 0;
 0 27 0;
 0 28 0;
 0 29 0;
 0 30 0;
 0 31 93;
 5 32 94;
 0 33 0;
 0 34 0;
 0 35 0;
 0 36 95;
 0 37 96;
 0 38 97;
 0 39 98;
 0 40 0;
 6 41 0;
 7 42 0;
 8 43 0;
 9 44 0;
 0 45 0;
 0 46 0;
 10 47 0;
 0 48 0;
 11 49 0;
 0 50 0;
 0 51 99;
 0 52 0;
 0 53 0;
 0 54 0;
 12 55 0;
 0 56 0;
 0 57 0;
 0 58 0;
 13 59 100;
 14 60 0;
 15 61 0;
 0 62 0;
 0 63 0;
 16 64 0;
 0 65 0;
 0 66 0;
 0 67 0;
 0 68 0;
 0 69 0;
 0 70 0;
 0 71 0;
 0 72 0;
 0 73 0;
 0 74 0;
 0 75 0;
 0 76 0;
 0 77 0;
 0 78 0;
 0 79 0;
 0 80 0;
 0 81 101;
 0 82 0;
 0 83 102;
 17 84 0;
 0 85 0;
 0 86 103;
 0 87 104;
 0 88 0;
 0 89 0;]';
M_.nstatic = 42;
M_.nfwrd   = 13;
M_.npred   = 15;
M_.nboth   = 2;
M_.nsfwrd   = 15;
M_.nspred   = 17;
M_.ndynamic   = 30;
M_.equations_tags = {
};
M_.static_and_dynamic_models_differ = 0;
M_.exo_names_orig_ord = [1:6];
M_.maximum_lag = 1;
M_.maximum_lead = 1;
M_.maximum_endo_lag = 1;
M_.maximum_endo_lead = 1;
oo_.steady_state = zeros(72, 1);
M_.maximum_exo_lag = 0;
M_.maximum_exo_lead = 0;
oo_.exo_steady_state = zeros(6, 1);
M_.params = NaN(68, 1);
M_.NNZDerivatives = [278; -1; -1];
M_.params( 66 ) = 1;
sigmat = M_.params( 66 );
M_.params( 15 ) = 0.99;
betta = M_.params( 15 );
M_.params( 16 ) = 0.75;
phi = M_.params( 16 );
M_.params( 10 ) = 0;
phiw = M_.params( 10 );
M_.params( 26 ) = 1.5;
sigmac = M_.params( 26 );
M_.params( 27 ) = 2;
sigmah = M_.params( 27 );
M_.params( 11 ) = 2.56;
sigmam = M_.params( 11 );
M_.params( 17 ) = 6;
epsi = M_.params( 17 );
epsiw  = 6;
M_.params( 38 ) = M_.params(17)/(M_.params(17)-1);
markup = M_.params( 38 );
M_.params( 9 ) = epsiw/(epsiw-1);
markupw = M_.params( 9 );
M_.params( 13 ) = 0;
gamma1 = M_.params( 13 );
M_.params( 14 ) = 1-M_.params(13);
gamma2 = M_.params( 14 );
M_.params( 8 ) = 0;
gamma1w = M_.params( 8 );
M_.params( 4 ) = 0.0472;
alphaa = M_.params( 4 );
M_.params( 5 ) = 0.20;
B0 = M_.params( 5 );
M_.params( 12 ) = 0.07;
SMY = M_.params( 12 );
M_.params( 54 ) = 0.95;
rhoA = M_.params( 54 );
M_.params( 48 ) = 0;
rhoD = M_.params( 48 );
M_.params( 55 ) = 0;
rhoG = M_.params( 55 );
M_.params( 67 ) = 0.9;
rhoDel = M_.params( 67 );
M_.params( 24 ) = 1.5;
phipie = M_.params( 24 );
M_.params( 25 ) = 0.5;
phiy = M_.params( 25 );
M_.params( 23 ) = 0.75;
rhoi = M_.params( 23 );
M_.params( 32 ) = 0.5;
rhoto = M_.params( 32 );
M_.params( 33 ) = 0.0037;
xi_b = M_.params( 33 );
M_.params( 34 ) = 0;
xi_y = M_.params( 34 );
M_.params( 56 ) = 0.75;
rho = M_.params( 56 );
M_.params( 57 ) = 1.5;
gpi = M_.params( 57 );
M_.params( 58 ) = 0.5;
gx = M_.params( 58 );
M_.params( 59 ) = 0.01;
rhor = M_.params( 59 );
M_.params( 60 ) = 0.99;
rhopi = M_.params( 60 );
M_.params( 61 ) = 0.17;
sR = M_.params( 61 );
M_.params( 62 ) = 0.1;
spistar = M_.params( 62 );
[KV] = Kalman_Gain
M_.params( 63 ) = KV(1);
kappa1 = M_.params( 63 );
M_.params( 64 ) = KV(2);
kappa2 = M_.params( 64 );
%
% SHOCKS instructions
%
M_.exo_det_length = 0;
M_.Sigma_e(1, 1) = 1;
M_.Sigma_e(2, 2) = 0;
M_.Sigma_e(3, 3) = (0.107)^2;
M_.Sigma_e(4, 4) = (0.17)^2;
M_.Sigma_e(5, 5) = (1)^2;
M_.Sigma_e(6, 6) = (0.03)^2;
Fig2= 0;
if Fig2 == 1
steady;
warning('OFF');
options_.irf = 100;
options_.nograph = 1;
options_.noprint = 1;
options_.order = 1;
var_list_ = char('D_obs','D_new_obs','Pie_obs','Int_obs','Int_new_obs','Int_D_obs','Y_obs','Rrate','DI_obs','W_obs','Tau_obs','Tax_obs','Int','PIESTAR4','ETA_PIE_est','ETA_R_est','PIESTAR','EPSI_R');
info = stoch_simul(var_list_);
extension =['Baseline'];
save_irf;
Params_list = str2mat('rhoto','xi_b');
Params_vals = [0.5;0.035];
nparams = size(Params_list,1)
pindx = [ ];
for i=1:nparams
pindx = strmatch(Params_list(i,:),M_.param_names,'exact')
M_.params(pindx) = Params_vals(i)
end
warning('OFF');
options_.irf = 100;
options_.nograph = 1;
options_.noprint = 1;
options_.order = 1;
var_list_ = char('D_obs','D_new_obs','Pie_obs','Int_obs','Int_new_obs','Int_D_obs','Y_obs','Rrate','DI_obs','W_obs','Tau_obs','Tax_obs','Int','PIESTAR4','ETA_PIE_est','ETA_R_est','PIESTAR','EPSI_R');
info = stoch_simul(var_list_);
extension =['Taxes'];
save_irf;
plot_irfs(80,'DS_1')
else
steady;
warning('OFF');
options_.irf = 100;
options_.nograph = 1;
options_.noprint = 1;
options_.order = 1;
var_list_ = char('D_obs','D_new_obs','Pie_obs','Int_obs','Int_new_obs','Int_D_obs','Y_obs','Rrate','DI_obs','W_obs','Tau_obs','Tax_obs','Int','PIESTAR4','ETA_PIE_est','ETA_R_est','PIESTAR','EPSI_R');
info = stoch_simul(var_list_);
save_irf;
Learn_Irfs_2(str2mat('D_obs','D_new_obs','Pie_obs','Int_obs','Int_new_obs','Int_D_obs','Y_obs','Rrate','DI_obs','W_obs','Tau_obs','Tax_obs'),80,'Baseline');
end
save('KM_debt_AEJ_results.mat', 'oo_', 'M_', 'options_');
if exist('estim_params_', 'var') == 1
  save('KM_debt_AEJ_results.mat', 'estim_params_', '-append');
end
if exist('bayestopt_', 'var') == 1
  save('KM_debt_AEJ_results.mat', 'bayestopt_', '-append');
end
if exist('dataset_', 'var') == 1
  save('KM_debt_AEJ_results.mat', 'dataset_', '-append');
end
if exist('estimation_info', 'var') == 1
  save('KM_debt_AEJ_results.mat', 'estimation_info', '-append');
end
if exist('dataset_info', 'var') == 1
  save('KM_debt_AEJ_results.mat', 'dataset_info', '-append');
end
if exist('oo_recursive_', 'var') == 1
  save('KM_debt_AEJ_results.mat', 'oo_recursive_', '-append');
end


disp(['Total computing time : ' dynsec2hms(toc(tic0)) ]);
if ~isempty(lastwarn)
  disp('Note: warning(s) encountered in MATLAB/Octave code')
end
diary off