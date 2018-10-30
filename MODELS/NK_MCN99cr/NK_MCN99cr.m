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
M_.fname = 'NK_MCN99cr';
M_.dynare_version = '4.5.6';
oo_.dynare_version = '4.5.6';
options_.dynare_version = '4.5.6';
%
% Some global variables initialization
%
global_initialization;
diary off;
diary('NK_MCN99cr.log');
M_.exo_names = 'u_';
M_.exo_names_tex = 'u\_';
M_.exo_names_long = 'u_';
M_.exo_names = char(M_.exo_names, 'e_');
M_.exo_names_tex = char(M_.exo_names_tex, 'e\_');
M_.exo_names_long = char(M_.exo_names_long, 'e_');
M_.exo_names = char(M_.exo_names, 'ey_');
M_.exo_names_tex = char(M_.exo_names_tex, 'ey\_');
M_.exo_names_long = char(M_.exo_names_long, 'ey_');
M_.exo_names = char(M_.exo_names, 'ev_');
M_.exo_names_tex = char(M_.exo_names_tex, 'ev\_');
M_.exo_names_long = char(M_.exo_names_long, 'ev_');
M_.exo_names = char(M_.exo_names, 'interest_');
M_.exo_names_tex = char(M_.exo_names_tex, 'interest\_');
M_.exo_names_long = char(M_.exo_names_long, 'interest_');
M_.endo_names = 'pi';
M_.endo_names_tex = 'pi';
M_.endo_names_long = 'pi';
M_.endo_names = char(M_.endo_names, 'p');
M_.endo_names_tex = char(M_.endo_names_tex, 'p');
M_.endo_names_long = char(M_.endo_names_long, 'p');
M_.endo_names = char(M_.endo_names, 'y');
M_.endo_names_tex = char(M_.endo_names_tex, 'y');
M_.endo_names_long = char(M_.endo_names_long, 'y');
M_.endo_names = char(M_.endo_names, 'R');
M_.endo_names_tex = char(M_.endo_names_tex, 'R');
M_.endo_names_long = char(M_.endo_names_long, 'R');
M_.endo_names = char(M_.endo_names, 'v');
M_.endo_names_tex = char(M_.endo_names_tex, 'v');
M_.endo_names_long = char(M_.endo_names_long, 'v');
M_.endo_names = char(M_.endo_names, 'm');
M_.endo_names_tex = char(M_.endo_names_tex, 'm');
M_.endo_names_long = char(M_.endo_names_long, 'm');
M_.endo_names = char(M_.endo_names, 'i');
M_.endo_names_tex = char(M_.endo_names_tex, 'i');
M_.endo_names_long = char(M_.endo_names_long, 'i');
M_.endo_names = char(M_.endo_names, 'eta');
M_.endo_names_tex = char(M_.endo_names_tex, 'eta');
M_.endo_names_long = char(M_.endo_names_long, 'eta');
M_.endo_names = char(M_.endo_names, 'ytilde');
M_.endo_names_tex = char(M_.endo_names_tex, 'ytilde');
M_.endo_names_long = char(M_.endo_names_long, 'ytilde');
M_.endo_names = char(M_.endo_names, 'ybar');
M_.endo_names_tex = char(M_.endo_names_tex, 'ybar');
M_.endo_names_long = char(M_.endo_names_long, 'ybar');
M_.endo_names = char(M_.endo_names, 'interest');
M_.endo_names_tex = char(M_.endo_names_tex, 'interest');
M_.endo_names_long = char(M_.endo_names_long, 'interest');
M_.endo_names = char(M_.endo_names, 'inflation');
M_.endo_names_tex = char(M_.endo_names_tex, 'inflation');
M_.endo_names_long = char(M_.endo_names_long, 'inflation');
M_.endo_names = char(M_.endo_names, 'inflationq');
M_.endo_names_tex = char(M_.endo_names_tex, 'inflationq');
M_.endo_names_long = char(M_.endo_names_long, 'inflationq');
M_.endo_names = char(M_.endo_names, 'outputgap');
M_.endo_names_tex = char(M_.endo_names_tex, 'outputgap');
M_.endo_names_long = char(M_.endo_names_long, 'outputgap');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LEAD_81');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LEAD\_81');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LEAD_81');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LEAD_85');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LEAD\_85');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LEAD_85');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LEAD_89');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LEAD\_89');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LEAD_89');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LEAD_116');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LEAD\_116');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LEAD_116');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LEAD_120');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LEAD\_120');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LEAD_120');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LEAD_124');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LEAD\_124');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LEAD_124');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_0_1');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_0\_1');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_0_1');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_0_2');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_0\_2');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_0_2');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_13_1');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_13\_1');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_13_1');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_13_2');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_13\_2');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_13_2');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_13_3');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_13\_3');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_13_3');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_10_1');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_10\_1');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_10_1');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_10_2');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_10\_2');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_10_2');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_10_3');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_10\_3');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_10_3');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_12_1');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_12\_1');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_12_1');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_12_2');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_12\_2');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_12_2');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_12_3');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_12\_3');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_12_3');
M_.endo_partitions = struct();
M_.param_names = 'cofintintb1';
M_.param_names_tex = 'cofintintb1';
M_.param_names_long = 'cofintintb1';
M_.param_names = char(M_.param_names, 'cofintintb2');
M_.param_names_tex = char(M_.param_names_tex, 'cofintintb2');
M_.param_names_long = char(M_.param_names_long, 'cofintintb2');
M_.param_names = char(M_.param_names, 'cofintintb3');
M_.param_names_tex = char(M_.param_names_tex, 'cofintintb3');
M_.param_names_long = char(M_.param_names_long, 'cofintintb3');
M_.param_names = char(M_.param_names, 'cofintintb4');
M_.param_names_tex = char(M_.param_names_tex, 'cofintintb4');
M_.param_names_long = char(M_.param_names_long, 'cofintintb4');
M_.param_names = char(M_.param_names, 'cofintinf0');
M_.param_names_tex = char(M_.param_names_tex, 'cofintinf0');
M_.param_names_long = char(M_.param_names_long, 'cofintinf0');
M_.param_names = char(M_.param_names, 'cofintinfb1');
M_.param_names_tex = char(M_.param_names_tex, 'cofintinfb1');
M_.param_names_long = char(M_.param_names_long, 'cofintinfb1');
M_.param_names = char(M_.param_names, 'cofintinfb2');
M_.param_names_tex = char(M_.param_names_tex, 'cofintinfb2');
M_.param_names_long = char(M_.param_names_long, 'cofintinfb2');
M_.param_names = char(M_.param_names, 'cofintinfb3');
M_.param_names_tex = char(M_.param_names_tex, 'cofintinfb3');
M_.param_names_long = char(M_.param_names_long, 'cofintinfb3');
M_.param_names = char(M_.param_names, 'cofintinfb4');
M_.param_names_tex = char(M_.param_names_tex, 'cofintinfb4');
M_.param_names_long = char(M_.param_names_long, 'cofintinfb4');
M_.param_names = char(M_.param_names, 'cofintinff1');
M_.param_names_tex = char(M_.param_names_tex, 'cofintinff1');
M_.param_names_long = char(M_.param_names_long, 'cofintinff1');
M_.param_names = char(M_.param_names, 'cofintinff2');
M_.param_names_tex = char(M_.param_names_tex, 'cofintinff2');
M_.param_names_long = char(M_.param_names_long, 'cofintinff2');
M_.param_names = char(M_.param_names, 'cofintinff3');
M_.param_names_tex = char(M_.param_names_tex, 'cofintinff3');
M_.param_names_long = char(M_.param_names_long, 'cofintinff3');
M_.param_names = char(M_.param_names, 'cofintinff4');
M_.param_names_tex = char(M_.param_names_tex, 'cofintinff4');
M_.param_names_long = char(M_.param_names_long, 'cofintinff4');
M_.param_names = char(M_.param_names, 'cofintout');
M_.param_names_tex = char(M_.param_names_tex, 'cofintout');
M_.param_names_long = char(M_.param_names_long, 'cofintout');
M_.param_names = char(M_.param_names, 'cofintoutb1');
M_.param_names_tex = char(M_.param_names_tex, 'cofintoutb1');
M_.param_names_long = char(M_.param_names_long, 'cofintoutb1');
M_.param_names = char(M_.param_names, 'cofintoutb2');
M_.param_names_tex = char(M_.param_names_tex, 'cofintoutb2');
M_.param_names_long = char(M_.param_names_long, 'cofintoutb2');
M_.param_names = char(M_.param_names, 'cofintoutb3');
M_.param_names_tex = char(M_.param_names_tex, 'cofintoutb3');
M_.param_names_long = char(M_.param_names_long, 'cofintoutb3');
M_.param_names = char(M_.param_names, 'cofintoutb4');
M_.param_names_tex = char(M_.param_names_tex, 'cofintoutb4');
M_.param_names_long = char(M_.param_names_long, 'cofintoutb4');
M_.param_names = char(M_.param_names, 'cofintoutf1');
M_.param_names_tex = char(M_.param_names_tex, 'cofintoutf1');
M_.param_names_long = char(M_.param_names_long, 'cofintoutf1');
M_.param_names = char(M_.param_names, 'cofintoutf2');
M_.param_names_tex = char(M_.param_names_tex, 'cofintoutf2');
M_.param_names_long = char(M_.param_names_long, 'cofintoutf2');
M_.param_names = char(M_.param_names, 'cofintoutf3');
M_.param_names_tex = char(M_.param_names_tex, 'cofintoutf3');
M_.param_names_long = char(M_.param_names_long, 'cofintoutf3');
M_.param_names = char(M_.param_names, 'cofintoutf4');
M_.param_names_tex = char(M_.param_names_tex, 'cofintoutf4');
M_.param_names_long = char(M_.param_names_long, 'cofintoutf4');
M_.param_names = char(M_.param_names, 'cofintoutp');
M_.param_names_tex = char(M_.param_names_tex, 'cofintoutp');
M_.param_names_long = char(M_.param_names_long, 'cofintoutp');
M_.param_names = char(M_.param_names, 'cofintoutpb1');
M_.param_names_tex = char(M_.param_names_tex, 'cofintoutpb1');
M_.param_names_long = char(M_.param_names_long, 'cofintoutpb1');
M_.param_names = char(M_.param_names, 'cofintoutpb2');
M_.param_names_tex = char(M_.param_names_tex, 'cofintoutpb2');
M_.param_names_long = char(M_.param_names_long, 'cofintoutpb2');
M_.param_names = char(M_.param_names, 'cofintoutpb3');
M_.param_names_tex = char(M_.param_names_tex, 'cofintoutpb3');
M_.param_names_long = char(M_.param_names_long, 'cofintoutpb3');
M_.param_names = char(M_.param_names, 'cofintoutpb4');
M_.param_names_tex = char(M_.param_names_tex, 'cofintoutpb4');
M_.param_names_long = char(M_.param_names_long, 'cofintoutpb4');
M_.param_names = char(M_.param_names, 'cofintoutpf1');
M_.param_names_tex = char(M_.param_names_tex, 'cofintoutpf1');
M_.param_names_long = char(M_.param_names_long, 'cofintoutpf1');
M_.param_names = char(M_.param_names, 'cofintoutpf2');
M_.param_names_tex = char(M_.param_names_tex, 'cofintoutpf2');
M_.param_names_long = char(M_.param_names_long, 'cofintoutpf2');
M_.param_names = char(M_.param_names, 'cofintoutpf3');
M_.param_names_tex = char(M_.param_names_tex, 'cofintoutpf3');
M_.param_names_long = char(M_.param_names_long, 'cofintoutpf3');
M_.param_names = char(M_.param_names, 'cofintoutpf4');
M_.param_names_tex = char(M_.param_names_tex, 'cofintoutpf4');
M_.param_names_long = char(M_.param_names_long, 'cofintoutpf4');
M_.param_names = char(M_.param_names, 'std_r_');
M_.param_names_tex = char(M_.param_names_tex, 'std\_r\_');
M_.param_names_long = char(M_.param_names_long, 'std_r_');
M_.param_names = char(M_.param_names, 'std_r_quart');
M_.param_names_tex = char(M_.param_names_tex, 'std\_r\_quart');
M_.param_names_long = char(M_.param_names_long, 'std_r_quart');
M_.param_names = char(M_.param_names, 'coffispol');
M_.param_names_tex = char(M_.param_names_tex, 'coffispol');
M_.param_names_long = char(M_.param_names_long, 'coffispol');
M_.param_names = char(M_.param_names, 'sigm');
M_.param_names_tex = char(M_.param_names_tex, 'sigm');
M_.param_names_long = char(M_.param_names_long, 'sigm');
M_.param_names = char(M_.param_names, 'CssYss');
M_.param_names_tex = char(M_.param_names_tex, 'CssYss');
M_.param_names_long = char(M_.param_names_long, 'CssYss');
M_.param_names = char(M_.param_names, 'YssCss');
M_.param_names_tex = char(M_.param_names_tex, 'YssCss');
M_.param_names_long = char(M_.param_names_long, 'YssCss');
M_.param_names = char(M_.param_names, 'gam');
M_.param_names_tex = char(M_.param_names_tex, 'gam');
M_.param_names_long = char(M_.param_names_long, 'gam');
M_.param_names = char(M_.param_names, 'IssYss');
M_.param_names_tex = char(M_.param_names_tex, 'IssYss');
M_.param_names_long = char(M_.param_names_long, 'IssYss');
M_.param_names = char(M_.param_names, 'Rss');
M_.param_names_tex = char(M_.param_names_tex, 'Rss');
M_.param_names_long = char(M_.param_names_long, 'Rss');
M_.param_names = char(M_.param_names, 'rhov');
M_.param_names_tex = char(M_.param_names_tex, 'rhov');
M_.param_names_long = char(M_.param_names_long, 'rhov');
M_.param_names = char(M_.param_names, 'rhoeta');
M_.param_names_tex = char(M_.param_names_tex, 'rhoeta');
M_.param_names_long = char(M_.param_names_long, 'rhoeta');
M_.param_names = char(M_.param_names, 'gk');
M_.param_names_tex = char(M_.param_names_tex, 'gk');
M_.param_names_long = char(M_.param_names_long, 'gk');
M_.param_names = char(M_.param_names, 'stigma');
M_.param_names_tex = char(M_.param_names_tex, 'stigma');
M_.param_names_long = char(M_.param_names_long, 'stigma');
M_.param_names = char(M_.param_names, 'rhoybar');
M_.param_names_tex = char(M_.param_names_tex, 'rhoybar');
M_.param_names_long = char(M_.param_names_long, 'rhoybar');
M_.param_names = char(M_.param_names, 'bet');
M_.param_names_tex = char(M_.param_names_tex, 'bet');
M_.param_names_long = char(M_.param_names_long, 'bet');
M_.param_names = char(M_.param_names, 'thetac1');
M_.param_names_tex = char(M_.param_names_tex, 'thetac1');
M_.param_names_long = char(M_.param_names_long, 'thetac1');
M_.param_names = char(M_.param_names, 'mu1');
M_.param_names_tex = char(M_.param_names_tex, 'mu1');
M_.param_names_long = char(M_.param_names_long, 'mu1');
M_.param_names = char(M_.param_names, 'mu2');
M_.param_names_tex = char(M_.param_names_tex, 'mu2');
M_.param_names_long = char(M_.param_names_long, 'mu2');
M_.param_names = char(M_.param_names, 'mu3');
M_.param_names_tex = char(M_.param_names_tex, 'mu3');
M_.param_names_long = char(M_.param_names_long, 'mu3');
M_.param_partitions = struct();
M_.exo_det_nbr = 0;
M_.exo_nbr = 5;
M_.endo_nbr = 31;
M_.param_nbr = 50;
M_.orig_endo_nbr = 14;
M_.aux_vars(1).endo_index = 15;
M_.aux_vars(1).type = 0;
M_.aux_vars(2).endo_index = 16;
M_.aux_vars(2).type = 0;
M_.aux_vars(3).endo_index = 17;
M_.aux_vars(3).type = 0;
M_.aux_vars(4).endo_index = 18;
M_.aux_vars(4).type = 0;
M_.aux_vars(5).endo_index = 19;
M_.aux_vars(5).type = 0;
M_.aux_vars(6).endo_index = 20;
M_.aux_vars(6).type = 0;
M_.aux_vars(7).endo_index = 21;
M_.aux_vars(7).type = 1;
M_.aux_vars(7).orig_index = 1;
M_.aux_vars(7).orig_lead_lag = -1;
M_.aux_vars(8).endo_index = 22;
M_.aux_vars(8).type = 1;
M_.aux_vars(8).orig_index = 1;
M_.aux_vars(8).orig_lead_lag = -2;
M_.aux_vars(9).endo_index = 23;
M_.aux_vars(9).type = 1;
M_.aux_vars(9).orig_index = 14;
M_.aux_vars(9).orig_lead_lag = -1;
M_.aux_vars(10).endo_index = 24;
M_.aux_vars(10).type = 1;
M_.aux_vars(10).orig_index = 14;
M_.aux_vars(10).orig_lead_lag = -2;
M_.aux_vars(11).endo_index = 25;
M_.aux_vars(11).type = 1;
M_.aux_vars(11).orig_index = 14;
M_.aux_vars(11).orig_lead_lag = -3;
M_.aux_vars(12).endo_index = 26;
M_.aux_vars(12).type = 1;
M_.aux_vars(12).orig_index = 11;
M_.aux_vars(12).orig_lead_lag = -1;
M_.aux_vars(13).endo_index = 27;
M_.aux_vars(13).type = 1;
M_.aux_vars(13).orig_index = 11;
M_.aux_vars(13).orig_lead_lag = -2;
M_.aux_vars(14).endo_index = 28;
M_.aux_vars(14).type = 1;
M_.aux_vars(14).orig_index = 11;
M_.aux_vars(14).orig_lead_lag = -3;
M_.aux_vars(15).endo_index = 29;
M_.aux_vars(15).type = 1;
M_.aux_vars(15).orig_index = 13;
M_.aux_vars(15).orig_lead_lag = -1;
M_.aux_vars(16).endo_index = 30;
M_.aux_vars(16).type = 1;
M_.aux_vars(16).orig_index = 13;
M_.aux_vars(16).orig_lead_lag = -2;
M_.aux_vars(17).endo_index = 31;
M_.aux_vars(17).type = 1;
M_.aux_vars(17).orig_index = 13;
M_.aux_vars(17).orig_lead_lag = -3;
M_.Sigma_e = zeros(5, 5);
M_.Correlation_matrix = eye(5, 5);
M_.H = 0;
M_.Correlation_matrix_ME = 1;
M_.sigma_e_is_diagonal = 1;
M_.det_shocks = [];
options_.linear = 1;
options_.block=0;
options_.bytecode=0;
options_.use_dll=0;
M_.hessian_eq_zero = 1;
erase_compiled_function('NK_MCN99cr_static');
erase_compiled_function('NK_MCN99cr_dynamic');
M_.orig_eq_nbr = 14;
M_.eq_nbr = 31;
M_.ramsey_eq_nbr = 0;
M_.set_auxiliary_variables = exist(['./' M_.fname '_set_auxiliary_variables.m'], 'file') == 2;
M_.lead_lag_incidence = [
 1 21 52;
 2 22 0;
 0 23 53;
 0 24 0;
 3 25 0;
 0 26 0;
 4 27 0;
 5 28 0;
 0 29 0;
 6 30 0;
 7 31 0;
 0 32 0;
 8 33 54;
 9 34 55;
 0 35 56;
 0 36 57;
 0 37 58;
 0 38 59;
 0 39 60;
 0 40 61;
 10 41 0;
 11 42 0;
 12 43 0;
 13 44 0;
 14 45 0;
 15 46 0;
 16 47 0;
 17 48 0;
 18 49 0;
 19 50 0;
 20 51 0;]';
M_.nstatic = 4;
M_.nfwrd   = 7;
M_.npred   = 17;
M_.nboth   = 3;
M_.nsfwrd   = 10;
M_.nspred   = 20;
M_.ndynamic   = 27;
M_.equations_tags = {
};
M_.static_and_dynamic_models_differ = 0;
M_.exo_names_orig_ord = [1:5];
M_.maximum_lag = 1;
M_.maximum_lead = 1;
M_.maximum_endo_lag = 1;
M_.maximum_endo_lead = 1;
oo_.steady_state = zeros(31, 1);
M_.maximum_exo_lag = 0;
M_.maximum_exo_lead = 0;
oo_.exo_steady_state = zeros(5, 1);
M_.params = NaN(50, 1);
M_.NNZDerivatives = [101; 0; -1];
M_.params( 35 ) = .203;
sigm = M_.params( 35 );
M_.params( 36 ) = .81;
CssYss = M_.params( 36 );
M_.params( 37 ) = 1/M_.params(36);
YssCss = M_.params( 37 );
M_.params( 38 ) = 6.579;
gam = M_.params( 38 );
M_.params( 39 ) = .19;
IssYss = M_.params( 39 );
M_.params( 40 ) = .014;
Rss = M_.params( 40 );
M_.params( 41 ) = .3233;
rhov = M_.params( 41 );
M_.params( 42 ) = .9346;
rhoeta = M_.params( 42 );
M_.params( 43 ) = 0;
gk = M_.params( 43 );
M_.params( 44 ) = 0;
stigma = M_.params( 44 );
M_.params( 45 ) = 1;
rhoybar = M_.params( 45 );
M_.params( 46 ) = .99;
bet = M_.params( 46 );
M_.params( 47 ) = .3;
thetac1 = M_.params( 47 );
M_.params( 48 ) = 1.5;
mu1 = M_.params( 48 );
M_.params( 49 ) = 0;
mu2 = M_.params( 49 );
M_.params( 50 ) = 0;
mu3 = M_.params( 50 );
thispath = cd;                                                           
cd('..');                                                                
load policy_param.mat;                                                   
for i=1:33                                                               
deep_parameter_name = M_.param_names(i,:);                           
eval(['M_.params(i)  = ' deep_parameter_name ' ;'])                  
end                                                                      
cd(thispath);
M_.params( 32 ) = 100;
std_r_ = M_.params( 32 );
%
% SHOCKS instructions
%
M_.exo_det_length = 0;
M_.Sigma_e(1, 1) = 0.00050625;
M_.Sigma_e(2, 2) = 0.0006250000000000001;
M_.Sigma_e(3, 3) = 4.900000000000001e-005;
M_.Sigma_e(4, 4) = 0.00012996;
save('NK_MCN99cr_results.mat', 'oo_', 'M_', 'options_');
if exist('estim_params_', 'var') == 1
  save('NK_MCN99cr_results.mat', 'estim_params_', '-append');
end
if exist('bayestopt_', 'var') == 1
  save('NK_MCN99cr_results.mat', 'bayestopt_', '-append');
end
if exist('dataset_', 'var') == 1
  save('NK_MCN99cr_results.mat', 'dataset_', '-append');
end
if exist('estimation_info', 'var') == 1
  save('NK_MCN99cr_results.mat', 'estimation_info', '-append');
end
if exist('dataset_info', 'var') == 1
  save('NK_MCN99cr_results.mat', 'dataset_info', '-append');
end
if exist('oo_recursive_', 'var') == 1
  save('NK_MCN99cr_results.mat', 'oo_recursive_', '-append');
end


disp(['Total computing time : ' dynsec2hms(toc(tic0)) ]);
if ~isempty(lastwarn)
  disp('Note: warning(s) encountered in MATLAB/Octave code')
end
diary off
