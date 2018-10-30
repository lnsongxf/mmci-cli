function [residual, g1, g2, g3] = US_ACELswm_dynamic(y, x, params, steady_state, it_)
%
% Status : Computes dynamic model for Dynare
%
% Inputs :
%   y         [#dynamic variables by 1] double    vector of endogenous variables in the order stored
%                                                 in M_.lead_lag_incidence; see the Manual
%   x         [M_.exo_nbr by nperiods] double     matrix of exogenous variables (in declaration order)
%                                                 for all simulation periods
%   params    [M_.param_nbr by 1] double          vector of parameter values in declaration order
%   it_       scalar double                       time period for exogenous variables for which to evaluate the model
%
% Outputs:
%   residual  [M_.endo_nbr by 1] double    vector of residuals of the dynamic model equations in order of 
%                                          declaration of the equations
%   g1        [M_.endo_nbr by #dynamic variables] double    Jacobian matrix of the dynamic model equations;
%                                                           rows: equations in order of declaration
%                                                           columns: variables in order stored in M_.lead_lag_incidence
%   g2        [M_.endo_nbr by (#dynamic variables)^2] double   Hessian matrix of the dynamic model equations;
%                                                              rows: equations in order of declaration
%                                                              columns: variables in order stored in M_.lead_lag_incidence
%   g3        [M_.endo_nbr by (#dynamic variables)^3] double   Third order derivative matrix of the dynamic model equations;
%                                                              rows: equations in order of declaration
%                                                              columns: variables in order stored in M_.lead_lag_incidence
%
%
% Warning : this file is generated automatically by Dynare
%           from model file (.mod)

%
% Model equations
%

residual = zeros(93, 1);
T3 = (-1);
T167 = (1-params(38))/(1+params(69)-params(38));
T171 = params(69)/(1+params(69)-params(38));
T182 = 1/(1-params(35));
T194 = (params(68)*params(43))^2;
T221 = y(156)*T194*params(37)*params(51)+y(157)*T194*params(37)*params(51)/(1-params(35))-params(51)*T194*y(72)-params(51)*T194/(1-params(35))*y(75);
T228 = T182*params(82)/(params(82)+params(83));
T236 = params(45)*params(71)/(1+params(45)*params(71)-params(45));
T250 = 1/(1-params(35))^2;
T255 = y(72)*T3/(1-params(35))-y(75)*T250+T182*y(118);
T286 = params(35)/(1-params(35));
T288 = params(82)*T286/(params(82)+params(83));
T299 = params(35)/(1-params(35))^2;
T302 = T182*y(118)+y(72)*(-params(35))/(1-params(35))-y(75)*T299;
T311 = params(71)/(params(71)-1)/(2+params(84));
T321 = (1/(params(68)*params(79)-params(36)*params(79)))^2;
T331 = 1/(params(79)*(1-params(36)/params(68)))^2;
T344 = params(79)*T331+params(79)*params(36)*T321*params(37)*params(36)+(2+params(84))*params(86)*params(72)*params(50);
T359 = params(79)*params(36)*T331/params(68);
T375 = y(156)*params(79)*params(68)*T321*params(37)*params(36)+y(157)*params(35)*params(79)*params(68)*T321*params(37)*params(36)/(1-params(35))-y(72)*T359-y(75)*params(35)*T359/(1-params(35));
T430 = params(72)*params(79)^2/params(80);
T436 = (1-(1-params(38))/(params(68)*params(43)))*params(77);
T447 = params(69)*params(77)/(params(68)*params(43))-params(35)*(params(82)+params(83));
T454 = params(35)*(params(82)+params(83))/(1-params(35));
T455 = y(75)*T454;
T464 = params(48)*params(81)/(params(48)*params(81)-params(80));
T469 = params(80)/(params(48)*params(81)-params(80));
T486 = params(35)*(params(82)+params(83))-params(69)*params(77)/(params(68)*params(43));
T494 = 1/params(52);
lhs =y(119);
rhs =4*y(66);
residual(1)= lhs-rhs;
lhs =y(120);
rhs =y(87)+y(20)+y(40)+y(41);
residual(2)= lhs-rhs;
lhs =y(121);
rhs =4*y(87);
residual(3)= lhs-rhs;
lhs =y(122);
rhs =y(65)-y(101);
residual(4)= lhs-rhs;
lhs =y(123);
rhs =y(65);
residual(5)= lhs-rhs;
lhs =y(119);
rhs =params(32)*x(it_, 5)+params(31)*y(178)+params(30)*y(177)+params(29)*y(176)+params(28)*y(169)+params(27)*y(44)+params(26)*y(43)+params(25)*y(42)+params(24)*y(39)+y(123)*params(23)+params(22)*y(175)+params(21)*y(174)+params(20)*y(173)+params(19)*y(168)+params(18)*y(47)+params(17)*y(46)+params(16)*y(45)+params(15)*y(38)+y(122)*params(14)+params(13)*y(172)+params(12)*y(171)+params(11)*y(170)+params(10)*y(167)+params(6)*y(37)+y(121)*params(5)+params(1)*y(36)+params(2)*y(48)+params(3)*y(49)+params(4)*y(50)+params(7)*y(51)+params(8)*y(52)+params(9)*y(53);
residual(6)= lhs-rhs;
lhs =y(149)+T167*y(153)+T171*y(154)-y(56)-y(67);
rhs =y(156)+T182*y(157);
residual(7)= lhs-rhs;
lhs =(-params(37))*params(51)*T194*y(151)-y(89)+params(51)*T194*(1+params(37))*y(61)-params(51)*T194*y(18);
rhs =T221;
residual(8)= lhs-rhs;
lhs =y(81)+y(65)*T228+y(66)*T236-y(68)-T182*y(83)-T182*y(3);
rhs =T255;
residual(9)= lhs-rhs;
lhs =(params(68)*params(43)-(1-params(38)))*y(85)-params(68)*params(43)*y(63)+(1-params(38))*y(3);
rhs =(1-params(38))*y(72)+y(75)*(1-params(38))/(1-params(35));
residual(10)= lhs-rhs;
lhs =params(37)*y(150)-(1+params(37)*params(54))*y(58)+params(53)*y(60);
rhs =y(20)*(-params(54));
residual(11)= lhs-rhs;
lhs =y(66)*T236+y(81)-y(60)+y(65)*T288-y(83)*T286-y(3)*T286;
rhs =T302;
residual(12)= lhs-rhs;
lhs =y(79)-y(64);
rhs =y(66)*T311;
residual(13)= lhs-rhs;
lhs =params(79)*params(68)*(-params(37))*params(36)*T321*y(147)+T344*y(54)+y(56)*params(86)*(1+params(40)+params(72)*params(50))-y(64)*(2+params(84))*params(86)*params(72)*params(50)-T359*y(13);
rhs =T375;
residual(14)= lhs-rhs;
lhs =y(149)-y(150)+y(152)-y(56);
rhs =y(156)+y(157)*T286;
residual(15)= lhs-rhs;
lhs =params(91)*y(148)+y(150)*params(94)+params(90)*y(55)+y(87)*params(93)+params(95)*y(62)+y(56)*params(96)+params(89)*y(15)+y(20)*params(92);
rhs =y(157)*params(35)*(-params(98))/(1-params(35))-y(156)*params(98)-y(75)*params(35)*params(97)/(1-params(35))-y(72)*params(97);
residual(16)= lhs-rhs;
residual(17) = y(79)*(params(79)*(1+params(40))+T430)+y(85)*T436-y(62)*(1-params(35))*(params(82)+params(83))-y(64)*T430+y(83)*T447-y(3)*params(35)*(params(82)+params(83))+y(72)*params(35)*(params(82)+params(83))+T455-(params(82)+params(83))*y(118);
lhs =y(62)+y(81)-T464*y(57)+y(64)*T469;
rhs =T464*y(59);
residual(18)= lhs-rhs;
lhs =(-y(57))-y(87)+y(1)+y(2);
rhs =y(72)+y(75)*T286;
residual(19)= lhs-rhs;
lhs =y(3)*params(35)*(params(82)+params(83))+y(62)*(1-params(35))*(params(82)+params(83))-y(65)*params(82)+y(83)*T486;
rhs =y(72)*params(35)*(params(82)+params(83))+T455-(params(82)+params(83))*y(118);
residual(20)= lhs-rhs;
lhs =y(68)*T494;
rhs =y(69);
residual(21)= lhs-rhs;
lhs =y(78);
rhs =y(147);
residual(22)= lhs-rhs;
lhs =y(79);
rhs =y(12);
residual(23)= lhs-rhs;
lhs =y(80);
rhs =y(148);
residual(24)= lhs-rhs;
lhs =y(81);
rhs =y(14);
residual(25)= lhs-rhs;
lhs =y(82);
rhs =y(155);
residual(26)= lhs-rhs;
lhs =y(83);
rhs =y(16);
residual(27)= lhs-rhs;
lhs =y(84);
rhs =y(151);
residual(28)= lhs-rhs;
lhs =y(85);
rhs =y(17);
residual(29)= lhs-rhs;
lhs =y(86);
rhs =y(150);
residual(30)= lhs-rhs;
lhs =y(87);
rhs =y(19);
residual(31)= lhs-rhs;
lhs =y(88);
rhs =y(153);
residual(32)= lhs-rhs;
lhs =y(89);
rhs =y(21);
residual(33)= lhs-rhs;
lhs =y(160)+T167*y(164)+T171*y(165)-y(92)-y(103);
rhs =y(156)+T182*y(157);
residual(34)= lhs-rhs;
lhs =(-params(37))*params(51)*T194*y(162)-y(117)+params(51)*T194*(1+params(37))*y(97)-params(51)*T194*y(31);
rhs =T221;
residual(35)= lhs-rhs;
lhs =y(109)+y(101)*T228+T236*y(102)-y(104)-T182*y(111)-T182*y(24);
rhs =T255;
residual(36)= lhs-rhs;
lhs =(params(68)*params(43)-(1-params(38)))*y(113)-params(68)*params(43)*y(99)+(1-params(38))*y(24);
rhs =(1-params(38))*y(72)+y(75)*(1-params(38))/(1-params(35));
residual(37)= lhs-rhs;
lhs =params(37)*y(161)-(1+params(37)*params(54))*y(94)+(1-params(111))*(1-params(37)*params(111))/params(111)*y(96);
rhs =(-params(54))*y(33);
residual(38)= lhs-rhs;
lhs =T236*y(102)+y(109)-y(96)+y(101)*T288-T286*y(111)-T286*y(24);
rhs =T302;
residual(39)= lhs-rhs;
lhs =y(107)-y(100);
rhs =T311*y(102);
residual(40)= lhs-rhs;
lhs =params(79)*params(68)*(-params(37))*params(36)*T321*y(158)+T344*y(90)+params(86)*(1+params(40)+params(72)*params(50))*y(92)-(2+params(84))*params(86)*params(72)*params(50)*y(100)-T359*y(26);
rhs =T375;
residual(41)= lhs-rhs;
lhs =y(160)-y(161)+y(163)-y(92);
rhs =y(156)+y(157)*T286;
residual(42)= lhs-rhs;
lhs =params(103)*y(159)+y(161)*params(106)+params(102)*y(91)+params(105)*y(115)+params(107)*y(98)+y(92)*params(108)+params(101)*y(28)+y(33)*params(104);
rhs =y(157)*params(35)*(-params(110))/(1-params(35))-y(156)*params(110)-y(75)*params(35)*params(109)/(1-params(35))-y(72)*params(109);
residual(43)= lhs-rhs;
residual(44) = T455+y(72)*params(35)*(params(82)+params(83))+(params(79)*(1+params(40))+T430)*y(107)+T436*y(113)-(1-params(35))*(params(82)+params(83))*y(98)-T430*y(100)+T447*y(111)-params(35)*(params(82)+params(83))*y(24)-(params(82)+params(83))*y(118);
lhs =y(98)+y(109)-T464*y(93)+T469*y(100);
rhs =T464*y(95);
residual(45)= lhs-rhs;
residual(46) = y(95);
lhs =(-y(93))-y(115)+y(22)+y(23);
rhs =y(72)+y(75)*T286;
residual(47)= lhs-rhs;
lhs =params(35)*(params(82)+params(83))*y(24)+(1-params(35))*(params(82)+params(83))*y(98)-y(101)*params(82)+T486*y(111);
rhs =y(72)*params(35)*(params(82)+params(83))+T455-(params(82)+params(83))*y(118);
residual(48)= lhs-rhs;
lhs =T494*y(104);
rhs =y(105);
residual(49)= lhs-rhs;
lhs =y(106);
rhs =y(158);
residual(50)= lhs-rhs;
lhs =y(107);
rhs =y(25);
residual(51)= lhs-rhs;
lhs =y(108);
rhs =y(159);
residual(52)= lhs-rhs;
lhs =y(109);
rhs =y(27);
residual(53)= lhs-rhs;
lhs =y(110);
rhs =y(166);
residual(54)= lhs-rhs;
lhs =y(111);
rhs =y(29);
residual(55)= lhs-rhs;
lhs =y(112);
rhs =y(162);
residual(56)= lhs-rhs;
lhs =y(113);
rhs =y(30);
residual(57)= lhs-rhs;
lhs =y(114);
rhs =y(161);
residual(58)= lhs-rhs;
lhs =y(115);
rhs =y(32);
residual(59)= lhs-rhs;
lhs =y(116);
rhs =y(164);
residual(60)= lhs-rhs;
lhs =y(117);
rhs =y(34);
residual(61)= lhs-rhs;
lhs =y(70);
rhs =params(56)*y(4)+params(57)*y(5)+x(it_, 1);
residual(62)= lhs-rhs;
lhs =y(71);
rhs =x(it_, 1);
residual(63)= lhs-rhs;
lhs =y(72);
rhs =params(58)*y(6)+params(59)*y(7)+x(it_, 2);
residual(64)= lhs-rhs;
lhs =y(73);
rhs =x(it_, 2);
residual(65)= lhs-rhs;
lhs =y(74);
rhs =y(7)*params(61)+params(62)*y(8)+x(it_, 2)*params(60);
residual(66)= lhs-rhs;
lhs =y(75);
rhs =params(63)*y(9)+params(64)*y(10)+x(it_, 3);
residual(67)= lhs-rhs;
lhs =y(76);
rhs =x(it_, 3);
residual(68)= lhs-rhs;
lhs =y(77);
rhs =y(10)*params(66)+params(67)*y(11)+x(it_, 3)*params(65);
residual(69)= lhs-rhs;
lhs =y(118);
rhs =params(112)*y(35)+0.5187*x(it_, 4);
residual(70)= lhs-rhs;
lhs =y(124);
rhs =y(167);
residual(71)= lhs-rhs;
lhs =y(125);
rhs =y(170);
residual(72)= lhs-rhs;
lhs =y(126);
rhs =y(171);
residual(73)= lhs-rhs;
lhs =y(127);
rhs =y(168);
residual(74)= lhs-rhs;
lhs =y(128);
rhs =y(173);
residual(75)= lhs-rhs;
lhs =y(129);
rhs =y(174);
residual(76)= lhs-rhs;
lhs =y(130);
rhs =y(169);
residual(77)= lhs-rhs;
lhs =y(131);
rhs =y(176);
residual(78)= lhs-rhs;
lhs =y(132);
rhs =y(177);
residual(79)= lhs-rhs;
lhs =y(133);
rhs =y(20);
residual(80)= lhs-rhs;
lhs =y(134);
rhs =y(40);
residual(81)= lhs-rhs;
lhs =y(135);
rhs =y(39);
residual(82)= lhs-rhs;
lhs =y(136);
rhs =y(42);
residual(83)= lhs-rhs;
lhs =y(137);
rhs =y(43);
residual(84)= lhs-rhs;
lhs =y(138);
rhs =y(38);
residual(85)= lhs-rhs;
lhs =y(139);
rhs =y(45);
residual(86)= lhs-rhs;
lhs =y(140);
rhs =y(46);
residual(87)= lhs-rhs;
lhs =y(141);
rhs =y(36);
residual(88)= lhs-rhs;
lhs =y(142);
rhs =y(48);
residual(89)= lhs-rhs;
lhs =y(143);
rhs =y(49);
residual(90)= lhs-rhs;
lhs =y(144);
rhs =y(37);
residual(91)= lhs-rhs;
lhs =y(145);
rhs =y(51);
residual(92)= lhs-rhs;
lhs =y(146);
rhs =y(52);
residual(93)= lhs-rhs;
if nargout >= 2,
  g1 = zeros(93, 183);

  %
  % Jacobian matrix
  %

  g1(1,66)=(-4);
  g1(1,119)=1;
  g1(2,20)=T3;
  g1(2,87)=T3;
  g1(2,120)=1;
  g1(2,40)=T3;
  g1(2,41)=T3;
  g1(3,87)=(-4);
  g1(3,121)=1;
  g1(4,65)=T3;
  g1(4,101)=1;
  g1(4,122)=1;
  g1(5,65)=T3;
  g1(5,123)=1;
  g1(6,36)=(-params(1));
  g1(6,119)=1;
  g1(6,37)=(-params(6));
  g1(6,121)=(-params(5));
  g1(6,167)=(-params(10));
  g1(6,38)=(-params(15));
  g1(6,122)=(-params(14));
  g1(6,168)=(-params(19));
  g1(6,39)=(-params(24));
  g1(6,123)=(-params(23));
  g1(6,169)=(-params(28));
  g1(6,183)=(-params(32));
  g1(6,170)=(-params(11));
  g1(6,171)=(-params(12));
  g1(6,172)=(-params(13));
  g1(6,173)=(-params(20));
  g1(6,174)=(-params(21));
  g1(6,175)=(-params(22));
  g1(6,176)=(-params(29));
  g1(6,177)=(-params(30));
  g1(6,178)=(-params(31));
  g1(6,42)=(-params(25));
  g1(6,43)=(-params(26));
  g1(6,44)=(-params(27));
  g1(6,45)=(-params(16));
  g1(6,46)=(-params(17));
  g1(6,47)=(-params(18));
  g1(6,48)=(-params(2));
  g1(6,49)=(-params(3));
  g1(6,50)=(-params(4));
  g1(6,51)=(-params(7));
  g1(6,52)=(-params(8));
  g1(6,53)=(-params(9));
  g1(7,56)=T3;
  g1(7,149)=1;
  g1(7,67)=T3;
  g1(7,153)=T167;
  g1(7,154)=T171;
  g1(7,156)=T3;
  g1(7,157)=(-T182);
  g1(8,61)=params(51)*T194*(1+params(37));
  g1(8,151)=(-params(37))*params(51)*T194;
  g1(8,72)=params(51)*T194;
  g1(8,156)=(-(T194*params(37)*params(51)));
  g1(8,75)=params(51)*T194/(1-params(35));
  g1(8,157)=(-(T194*params(37)*params(51)/(1-params(35))));
  g1(8,18)=(-(params(51)*T194));
  g1(8,89)=T3;
  g1(9,3)=(-T182);
  g1(9,65)=T228;
  g1(9,66)=T236;
  g1(9,68)=T3;
  g1(9,72)=(-(T3/(1-params(35))));
  g1(9,75)=T250;
  g1(9,81)=1;
  g1(9,83)=(-T182);
  g1(9,118)=(-T182);
  g1(10,3)=1-params(38);
  g1(10,63)=(-(params(68)*params(43)));
  g1(10,72)=(-(1-params(38)));
  g1(10,75)=(-((1-params(38))/(1-params(35))));
  g1(10,85)=params(68)*params(43)-(1-params(38));
  g1(11,58)=(-(1+params(37)*params(54)));
  g1(11,150)=params(37);
  g1(11,60)=params(53);
  g1(11,20)=params(54);
  g1(12,60)=T3;
  g1(12,3)=(-T286);
  g1(12,65)=T288;
  g1(12,66)=T236;
  g1(12,72)=(-((-params(35))/(1-params(35))));
  g1(12,75)=T299;
  g1(12,81)=1;
  g1(12,83)=(-T286);
  g1(12,118)=(-T182);
  g1(13,64)=T3;
  g1(13,66)=(-T311);
  g1(13,79)=1;
  g1(14,54)=T344;
  g1(14,147)=params(79)*params(68)*(-params(37))*params(36)*T321;
  g1(14,56)=params(86)*(1+params(40)+params(72)*params(50));
  g1(14,64)=(-((2+params(84))*params(86)*params(72)*params(50)));
  g1(14,72)=T359;
  g1(14,156)=(-(params(79)*params(68)*T321*params(37)*params(36)));
  g1(14,75)=params(35)*T359/(1-params(35));
  g1(14,157)=(-(params(35)*params(79)*params(68)*T321*params(37)*params(36)/(1-params(35))));
  g1(14,13)=(-T359);
  g1(15,56)=T3;
  g1(15,149)=1;
  g1(15,150)=T3;
  g1(15,152)=1;
  g1(15,156)=T3;
  g1(15,157)=(-T286);
  g1(16,55)=params(90);
  g1(16,148)=params(91);
  g1(16,56)=params(96);
  g1(16,150)=params(94);
  g1(16,62)=params(95);
  g1(16,72)=params(97);
  g1(16,156)=params(98);
  g1(16,75)=params(35)*params(97)/(1-params(35));
  g1(16,157)=(-(params(35)*(-params(98))/(1-params(35))));
  g1(16,15)=params(89);
  g1(16,20)=params(92);
  g1(16,87)=params(93);
  g1(17,62)=(-((1-params(35))*(params(82)+params(83))));
  g1(17,3)=(-(params(35)*(params(82)+params(83))));
  g1(17,64)=(-T430);
  g1(17,72)=params(35)*(params(82)+params(83));
  g1(17,75)=T454;
  g1(17,79)=params(79)*(1+params(40))+T430;
  g1(17,83)=T447;
  g1(17,85)=T436;
  g1(17,118)=(-(params(82)+params(83)));
  g1(18,57)=(-T464);
  g1(18,59)=(-T464);
  g1(18,62)=1;
  g1(18,64)=T469;
  g1(18,81)=1;
  g1(19,1)=1;
  g1(19,57)=T3;
  g1(19,2)=1;
  g1(19,72)=T3;
  g1(19,75)=(-T286);
  g1(19,87)=T3;
  g1(20,62)=(1-params(35))*(params(82)+params(83));
  g1(20,3)=params(35)*(params(82)+params(83));
  g1(20,65)=(-params(82));
  g1(20,72)=(-(params(35)*(params(82)+params(83))));
  g1(20,75)=(-T454);
  g1(20,83)=T486;
  g1(20,118)=params(82)+params(83);
  g1(21,68)=T494;
  g1(21,69)=T3;
  g1(22,147)=T3;
  g1(22,78)=1;
  g1(23,12)=T3;
  g1(23,79)=1;
  g1(24,148)=T3;
  g1(24,80)=1;
  g1(25,14)=T3;
  g1(25,81)=1;
  g1(26,155)=T3;
  g1(26,82)=1;
  g1(27,16)=T3;
  g1(27,83)=1;
  g1(28,151)=T3;
  g1(28,84)=1;
  g1(29,17)=T3;
  g1(29,85)=1;
  g1(30,150)=T3;
  g1(30,86)=1;
  g1(31,19)=T3;
  g1(31,87)=1;
  g1(32,153)=T3;
  g1(32,88)=1;
  g1(33,21)=T3;
  g1(33,89)=1;
  g1(34,156)=T3;
  g1(34,157)=(-T182);
  g1(34,92)=T3;
  g1(34,160)=1;
  g1(34,103)=T3;
  g1(34,164)=T167;
  g1(34,165)=T171;
  g1(35,72)=params(51)*T194;
  g1(35,156)=(-(T194*params(37)*params(51)));
  g1(35,75)=params(51)*T194/(1-params(35));
  g1(35,157)=(-(T194*params(37)*params(51)/(1-params(35))));
  g1(35,97)=params(51)*T194*(1+params(37));
  g1(35,162)=(-params(37))*params(51)*T194;
  g1(35,31)=(-(params(51)*T194));
  g1(35,117)=T3;
  g1(36,72)=(-(T3/(1-params(35))));
  g1(36,75)=T250;
  g1(36,24)=(-T182);
  g1(36,101)=T228;
  g1(36,102)=T236;
  g1(36,104)=T3;
  g1(36,109)=1;
  g1(36,111)=(-T182);
  g1(36,118)=(-T182);
  g1(37,72)=(-(1-params(38)));
  g1(37,75)=(-((1-params(38))/(1-params(35))));
  g1(37,24)=1-params(38);
  g1(37,99)=(-(params(68)*params(43)));
  g1(37,113)=params(68)*params(43)-(1-params(38));
  g1(38,94)=(-(1+params(37)*params(54)));
  g1(38,161)=params(37);
  g1(38,96)=(1-params(111))*(1-params(37)*params(111))/params(111);
  g1(38,33)=params(54);
  g1(39,72)=(-((-params(35))/(1-params(35))));
  g1(39,75)=T299;
  g1(39,96)=T3;
  g1(39,24)=(-T286);
  g1(39,101)=T288;
  g1(39,102)=T236;
  g1(39,109)=1;
  g1(39,111)=(-T286);
  g1(39,118)=(-T182);
  g1(40,100)=T3;
  g1(40,102)=(-T311);
  g1(40,107)=1;
  g1(41,72)=T359;
  g1(41,156)=(-(params(79)*params(68)*T321*params(37)*params(36)));
  g1(41,75)=params(35)*T359/(1-params(35));
  g1(41,157)=(-(params(35)*params(79)*params(68)*T321*params(37)*params(36)/(1-params(35))));
  g1(41,90)=T344;
  g1(41,158)=params(79)*params(68)*(-params(37))*params(36)*T321;
  g1(41,92)=params(86)*(1+params(40)+params(72)*params(50));
  g1(41,100)=(-((2+params(84))*params(86)*params(72)*params(50)));
  g1(41,26)=(-T359);
  g1(42,156)=T3;
  g1(42,157)=(-T286);
  g1(42,92)=T3;
  g1(42,160)=1;
  g1(42,161)=T3;
  g1(42,163)=1;
  g1(43,72)=params(109);
  g1(43,156)=params(110);
  g1(43,75)=params(35)*params(109)/(1-params(35));
  g1(43,157)=(-(params(35)*(-params(110))/(1-params(35))));
  g1(43,91)=params(102);
  g1(43,159)=params(103);
  g1(43,92)=params(108);
  g1(43,161)=params(106);
  g1(43,98)=params(107);
  g1(43,28)=params(101);
  g1(43,33)=params(104);
  g1(43,115)=params(105);
  g1(44,72)=params(35)*(params(82)+params(83));
  g1(44,75)=T454;
  g1(44,98)=(-((1-params(35))*(params(82)+params(83))));
  g1(44,24)=(-(params(35)*(params(82)+params(83))));
  g1(44,100)=(-T430);
  g1(44,107)=params(79)*(1+params(40))+T430;
  g1(44,111)=T447;
  g1(44,113)=T436;
  g1(44,118)=(-(params(82)+params(83)));
  g1(45,93)=(-T464);
  g1(45,95)=(-T464);
  g1(45,98)=1;
  g1(45,100)=T469;
  g1(45,109)=1;
  g1(46,95)=1;
  g1(47,72)=T3;
  g1(47,75)=(-T286);
  g1(47,22)=1;
  g1(47,93)=T3;
  g1(47,23)=1;
  g1(47,115)=T3;
  g1(48,72)=(-(params(35)*(params(82)+params(83))));
  g1(48,75)=(-T454);
  g1(48,98)=(1-params(35))*(params(82)+params(83));
  g1(48,24)=params(35)*(params(82)+params(83));
  g1(48,101)=(-params(82));
  g1(48,111)=T486;
  g1(48,118)=params(82)+params(83);
  g1(49,104)=T494;
  g1(49,105)=T3;
  g1(50,158)=T3;
  g1(50,106)=1;
  g1(51,25)=T3;
  g1(51,107)=1;
  g1(52,159)=T3;
  g1(52,108)=1;
  g1(53,27)=T3;
  g1(53,109)=1;
  g1(54,166)=T3;
  g1(54,110)=1;
  g1(55,29)=T3;
  g1(55,111)=1;
  g1(56,162)=T3;
  g1(56,112)=1;
  g1(57,30)=T3;
  g1(57,113)=1;
  g1(58,161)=T3;
  g1(58,114)=1;
  g1(59,32)=T3;
  g1(59,115)=1;
  g1(60,164)=T3;
  g1(60,116)=1;
  g1(61,34)=T3;
  g1(61,117)=1;
  g1(62,4)=(-params(56));
  g1(62,70)=1;
  g1(62,5)=(-params(57));
  g1(62,179)=T3;
  g1(63,71)=1;
  g1(63,179)=T3;
  g1(64,6)=(-params(58));
  g1(64,72)=1;
  g1(64,7)=(-params(59));
  g1(64,180)=T3;
  g1(65,73)=1;
  g1(65,180)=T3;
  g1(66,7)=(-params(61));
  g1(66,8)=(-params(62));
  g1(66,74)=1;
  g1(66,180)=(-params(60));
  g1(67,9)=(-params(63));
  g1(67,75)=1;
  g1(67,10)=(-params(64));
  g1(67,181)=T3;
  g1(68,76)=1;
  g1(68,181)=T3;
  g1(69,10)=(-params(66));
  g1(69,11)=(-params(67));
  g1(69,77)=1;
  g1(69,181)=(-params(65));
  g1(70,35)=(-params(112));
  g1(70,118)=1;
  g1(70,182)=(-0.5187);
  g1(71,167)=T3;
  g1(71,124)=1;
  g1(72,170)=T3;
  g1(72,125)=1;
  g1(73,171)=T3;
  g1(73,126)=1;
  g1(74,168)=T3;
  g1(74,127)=1;
  g1(75,173)=T3;
  g1(75,128)=1;
  g1(76,174)=T3;
  g1(76,129)=1;
  g1(77,169)=T3;
  g1(77,130)=1;
  g1(78,176)=T3;
  g1(78,131)=1;
  g1(79,177)=T3;
  g1(79,132)=1;
  g1(80,20)=T3;
  g1(80,133)=1;
  g1(81,40)=T3;
  g1(81,134)=1;
  g1(82,39)=T3;
  g1(82,135)=1;
  g1(83,42)=T3;
  g1(83,136)=1;
  g1(84,43)=T3;
  g1(84,137)=1;
  g1(85,38)=T3;
  g1(85,138)=1;
  g1(86,45)=T3;
  g1(86,139)=1;
  g1(87,46)=T3;
  g1(87,140)=1;
  g1(88,36)=T3;
  g1(88,141)=1;
  g1(89,48)=T3;
  g1(89,142)=1;
  g1(90,49)=T3;
  g1(90,143)=1;
  g1(91,37)=T3;
  g1(91,144)=1;
  g1(92,51)=T3;
  g1(92,145)=1;
  g1(93,52)=T3;
  g1(93,146)=1;
end
if nargout >= 3,
  %
  % Hessian matrix
  %

  g2 = sparse([],[],[],93,33489);
end
if nargout >= 4,
  %
  % Third order derivatives
  %

  g3 = sparse([],[],[],93,6128487);
end
end
