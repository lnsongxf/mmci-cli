function [residual, g1, g2, g3] = NK_RA16_dynamic(y, x, params, steady_state, it_)
%
% Status : Computes dynamic model for Dynare
%
% Inputs :
%   y         [#dynamic variables by 1] double    vector of endogenous variables in the order stored
%                                                 in M_.lead_lag_incidence; see the Manual
%   x         [nperiods by M_.exo_nbr] double     matrix of exogenous variables (in declaration order)
%                                                 for all simulation periods
%   steady_state  [M_.endo_nbr by 1] double       vector of steady state values
%   params    [M_.param_nbr by 1] double          vector of parameter values in declaration order
%   it_       scalar double                       time period for exogenous variables for which to evaluate the model
%
% Outputs:
%   residual  [M_.endo_nbr by 1] double    vector of residuals of the dynamic model equations in order of 
%                                          declaration of the equations.
%                                          Dynare may prepend auxiliary equations, see M_.aux_vars
%   g1        [M_.endo_nbr by #dynamic variables] double    Jacobian matrix of the dynamic model equations;
%                                                           rows: equations in order of declaration
%                                                           columns: variables in order stored in M_.lead_lag_incidence followed by the ones in M_.exo_names
%   g2        [M_.endo_nbr by (#dynamic variables)^2] double   Hessian matrix of the dynamic model equations;
%                                                              rows: equations in order of declaration
%                                                              columns: variables in order stored in M_.lead_lag_incidence followed by the ones in M_.exo_names
%   g3        [M_.endo_nbr by (#dynamic variables)^3] double   Third order derivative matrix of the dynamic model equations;
%                                                              rows: equations in order of declaration
%                                                              columns: variables in order stored in M_.lead_lag_incidence followed by the ones in M_.exo_names
%
%
% Warning : this file is generated automatically by Dynare
%           from model file (.mod)

%
% Model equations
%

residual = zeros(98, 1);
T50 = 1/((1-params(37))*(1-params(37)*params(35)));
T81 = 1/(1+params(35));
T113 = 1/(1+params(35)*params(109));
T209 = params(43)*params(35)^2*params(97)^2;
T213 = params(76)*params(96)/params(73);
T261 = params(66)*params(59)/(1-params(65));
T326 = params(62)*params(47)*params(84)*params(75)/params(72);
T331 = params(59)*params(63)/params(62);
lhs =y(43);
rhs =y(86);
residual(1)= lhs-rhs;
lhs =y(45);
rhs =y(68)*4;
residual(2)= lhs-rhs;
lhs =y(44);
rhs =0.25*(y(45)+y(2)+y(31)+y(32));
residual(3)= lhs-rhs;
lhs =y(47);
rhs =y(49);
residual(4)= lhs-rhs;
lhs =y(46);
rhs =y(49)-y(89);
residual(5)= lhs-rhs;
lhs =y(48);
rhs =y(88);
residual(6)= lhs-rhs;
lhs =y(48);
rhs =params(34)*x(it_, 3);
residual(7)= lhs-rhs;
lhs =y(59);
rhs =T50*((-(y(56)-params(37)*y(7)))+params(37)*params(35)*(y(145)-params(37)*y(56)));
residual(8)= lhs-rhs;
residual(9) = y(60)+y(150)-y(148);
lhs =y(81);
rhs =y(59)-y(8);
residual(10)= lhs-rhs;
lhs =params(36)*y(53);
rhs =y(59)+y(65);
residual(11)= lhs-rhs;
lhs =y(51);
rhs =T81*(y(5)+params(35)*y(144)+y(67)/params(40));
residual(12)= lhs-rhs;
lhs =y(52);
rhs =(1-params(39))*y(6)+y(51)*params(39);
residual(13)= lhs-rhs;
lhs =y(49);
rhs =params(38)*(y(6)+y(54))+(1-params(38))*(y(53)+y(66));
residual(14)= lhs-rhs;
lhs =y(68);
rhs =T113*(params(35)*y(148)+params(109)*y(12)+(1-params(35)*params(42))*(1-params(42))/params(42)*y(69));
residual(15)= lhs-rhs;
lhs =y(65)*params(82)*(1+params(44)*(params(73)-1))+y(60)*params(73)*params(82)*params(44);
rhs =params(82)*(1+params(44)*(params(73)-1))*(y(49)+y(69)-y(53));
residual(16)= lhs-rhs;
lhs =y(62)/params(80)+params(73)*y(60)*params(45)/(1+(params(73)-1)*params(45));
rhs =y(49)+y(69)-y(6)-y(54);
residual(17)= lhs-rhs;
lhs =y(75)*params(92);
rhs =params(82)*params(44)*params(83)*(y(53)+y(65))+params(80)*params(45)*params(84)*(y(6)+y(54)+y(62)/params(80));
residual(18)= lhs-rhs;
lhs =y(79);
rhs =y(76)-y(78);
residual(19)= lhs-rhs;
lhs =y(78);
rhs =params(43)*params(97)*(y(80)+y(17));
residual(20)= lhs-rhs;
lhs =y(58);
rhs =y(80)+y(17);
residual(21)= lhs-rhs;
lhs =params(97)*params(72)*(y(68)+y(80));
rhs =params(73)*y(9)+((params(76)-params(73))*y(18)+params(76)*y(63)-params(73)*y(9))*params(96);
residual(22)= lhs-rhs;
lhs =y(79);
rhs =T209*y(149)+T213*(y(147)-y(60));
residual(23)= lhs-rhs;
lhs =y(57);
rhs =y(71);
residual(24)= lhs-rhs;
lhs =y(70)*params(90);
rhs =y(71)*params(48)*params(89);
residual(25)= lhs-rhs;
lhs =params(75)*(y(61)+y(11));
rhs =y(68)*params(75)+params(72)*(y(62)+y(67)*(1-params(39)));
residual(26)= lhs-rhs;
lhs =y(72);
rhs =y(67)+y(52)-y(70);
residual(27)= lhs-rhs;
lhs =y(76)-y(70);
rhs =y(72)*params(71)/(params(71)-1);
residual(28)= lhs-rhs;
lhs =y(71);
rhs =y(61)+y(13)-y(68)+y(14)-T261*(y(15)-y(61));
residual(29)= lhs-rhs;
lhs =y(62);
rhs =y(54)*params(80)*params(113);
residual(30)= lhs-rhs;
lhs =y(146)-y(147);
rhs =y(72)*params(112);
residual(31)= lhs-rhs;
lhs =y(73);
rhs =y(64)+y(72)*1/(params(71)-1);
residual(32)= lhs-rhs;
lhs =y(61)*(params(75)*(params(65)-params(47)*params(62))-params(88)*(params(66)-params(47)*params(63)))+y(15)*params(88)*(params(66)-params(47)*params(63));
rhs =params(76)*(y(14)/params(71)+y(63)*(params(71)-1)/params(71));
residual(33)= lhs-rhs;
lhs =y(55)*params(105);
rhs =y(56)*params(104)+y(57)*params(95)+y(58)*params(103);
residual(34)= lhs-rhs;
lhs =y(49)*params(85);
rhs =y(55)*params(105)+y(51)*params(87)+params(57)*y(77)+T326*(y(6)+y(11)+y(61)-y(68)+(y(15)-y(61))*T331)+y(54)*params(80)*params(84);
residual(35)= lhs-rhs;
lhs =y(50)*params(106);
rhs =y(55)*params(105)+y(51)*params(87)+params(57)*y(77);
residual(36)= lhs-rhs;
lhs =params(93)*y(74);
rhs =y(75)*params(92)+y(76)*params(91);
residual(37)= lhs-rhs;
lhs =y(66);
rhs =params(54)*y(10)+x(it_, 1);
residual(38)= lhs-rhs;
lhs =y(77);
rhs =y(88)+params(68)*y(16);
residual(39)= lhs-rhs;
lhs =y(86);
rhs =4*y(60);
residual(40)= lhs-rhs;
lhs =y(87);
rhs =y(68)*4;
residual(41)= lhs-rhs;
lhs =y(82);
rhs =4*(y(64)-y(60));
residual(42)= lhs-rhs;
lhs =y(83);
rhs =4*(y(146)-y(60));
residual(43)= lhs-rhs;
lhs =y(84);
rhs =4*(y(147)-y(60));
residual(44)= lhs-rhs;
lhs =y(85);
rhs =4*(y(146)-y(147));
residual(45)= lhs-rhs;
lhs =y(43);
rhs =params(32)/100*x(it_, 2)+params(31)*y(166)+params(30)*y(165)+params(29)*y(164)+params(28)*y(143)+params(27)*y(35)+params(26)*y(34)+params(25)*y(33)+params(24)*y(4)+y(47)*params(23)+params(22)*y(163)+params(21)*y(162)+params(20)*y(161)+params(19)*y(142)+params(18)*y(38)+params(17)*y(37)+params(16)*y(36)+params(15)*y(3)+y(46)*params(14)+params(13)*y(160)+params(12)*y(159)+params(11)*y(158)+params(10)*y(141)+y(2)*params(6)+y(45)*params(5)+params(1)*y(1)+params(2)*y(39)+params(3)*y(40)+params(4)*y(41)+params(7)*y(31)+params(8)*y(32)+params(9)*y(42);
residual(46)= lhs-rhs;
lhs =y(99);
rhs =T50*((-(y(96)-params(37)*y(21)))+params(37)*params(35)*(y(152)-params(37)*y(96)));
residual(47)= lhs-rhs;
residual(48) = y(100)+y(157)-y(155);
lhs =y(119);
rhs =y(99)-y(22);
residual(49)= lhs-rhs;
lhs =params(36)*y(93);
rhs =y(99)+y(105);
residual(50)= lhs-rhs;
lhs =y(91);
rhs =T81*(y(19)+params(35)*y(151)+y(106)/params(40));
residual(51)= lhs-rhs;
lhs =y(92);
rhs =(1-params(39))*y(20)+params(39)*y(91);
residual(52)= lhs-rhs;
lhs =y(89);
rhs =params(38)*(y(20)+y(94))+(1-params(38))*(y(66)+y(93));
residual(53)= lhs-rhs;
lhs =y(107);
rhs =T113*(params(35)*y(155)+params(109)*y(25)+(1-params(35)*params(114))*(1-params(114))/params(114)*y(108));
residual(54)= lhs-rhs;
lhs =params(82)*(1+params(44)*(params(73)-1))*y(105)+params(73)*params(82)*params(44)*y(100);
rhs =params(82)*(1+params(44)*(params(73)-1))*(y(89)+y(108)-y(93));
residual(55)= lhs-rhs;
lhs =y(102)/params(80)+params(73)*params(45)*y(100)/(1+(params(73)-1)*params(45));
rhs =y(89)+y(108)-y(20)-y(94);
residual(56)= lhs-rhs;
lhs =params(92)*y(114);
rhs =params(82)*params(44)*params(83)*(y(93)+y(105))+params(80)*params(45)*params(84)*(y(20)+y(94)+y(102)/params(80));
residual(57)= lhs-rhs;
lhs =y(117);
rhs =y(115)-y(116);
residual(58)= lhs-rhs;
lhs =y(116);
rhs =params(43)*params(97)*(y(118)+y(29));
residual(59)= lhs-rhs;
lhs =y(98);
rhs =y(118)+y(29);
residual(60)= lhs-rhs;
lhs =params(97)*params(72)*(y(107)+y(118));
rhs =params(73)*y(23)+params(96)*((params(76)-params(73))*y(30)+params(76)*y(103)-params(73)*y(23));
residual(61)= lhs-rhs;
lhs =y(117);
rhs =T209*y(156)+T213*(y(154)-y(100));
residual(62)= lhs-rhs;
lhs =y(97);
rhs =y(110);
residual(63)= lhs-rhs;
lhs =params(90)*y(109);
rhs =params(89)*params(48)*y(110);
residual(64)= lhs-rhs;
lhs =params(75)*(y(101)+y(24));
rhs =params(75)*y(107)+params(72)*(y(102)+(1-params(39))*y(106));
residual(65)= lhs-rhs;
lhs =y(111);
rhs =y(106)+y(92)-y(109);
residual(66)= lhs-rhs;
lhs =y(115)-y(109);
rhs =params(71)/(params(71)-1)*y(111);
residual(67)= lhs-rhs;
lhs =y(110);
rhs =y(101)+y(26)-y(107)+y(27)-T261*(y(28)-y(101));
residual(68)= lhs-rhs;
lhs =y(102);
rhs =params(80)*params(113)*y(94);
residual(69)= lhs-rhs;
lhs =y(153)-y(154);
rhs =params(112)*y(111);
residual(70)= lhs-rhs;
lhs =y(112);
rhs =y(104)+1/(params(71)-1)*y(111);
residual(71)= lhs-rhs;
lhs =(params(75)*(params(65)-params(47)*params(62))-params(88)*(params(66)-params(47)*params(63)))*y(101)+params(88)*(params(66)-params(47)*params(63))*y(28);
rhs =params(76)*(y(27)/params(71)+(params(71)-1)/params(71)*y(103));
residual(72)= lhs-rhs;
lhs =params(73)*y(100);
rhs =(1-params(53))*(y(107)*params(51)+y(108)*params(52))+params(73)*y(23)*params(53);
residual(73)= lhs-rhs;
lhs =params(105)*y(95);
rhs =params(104)*y(96)+params(95)*y(97)+params(103)*y(98);
residual(74)= lhs-rhs;
lhs =y(89)*params(85);
rhs =params(57)*y(77)+params(105)*y(95)+params(87)*y(91)+T326*(y(20)+y(24)+y(101)-y(107)+T331*(y(28)-y(101)))+params(80)*params(84)*y(94);
residual(75)= lhs-rhs;
lhs =params(106)*y(90);
rhs =params(57)*y(77)+params(105)*y(95)+params(87)*y(91);
residual(76)= lhs-rhs;
lhs =params(93)*y(113);
rhs =params(92)*y(114)+params(91)*y(115);
residual(77)= lhs-rhs;
lhs =y(120);
rhs =y(141);
residual(78)= lhs-rhs;
lhs =y(121);
rhs =y(158);
residual(79)= lhs-rhs;
lhs =y(122);
rhs =y(159);
residual(80)= lhs-rhs;
lhs =y(123);
rhs =y(142);
residual(81)= lhs-rhs;
lhs =y(124);
rhs =y(161);
residual(82)= lhs-rhs;
lhs =y(125);
rhs =y(162);
residual(83)= lhs-rhs;
lhs =y(126);
rhs =y(143);
residual(84)= lhs-rhs;
lhs =y(127);
rhs =y(164);
residual(85)= lhs-rhs;
lhs =y(128);
rhs =y(165);
residual(86)= lhs-rhs;
lhs =y(129);
rhs =y(2);
residual(87)= lhs-rhs;
lhs =y(130);
rhs =y(31);
residual(88)= lhs-rhs;
lhs =y(131);
rhs =y(4);
residual(89)= lhs-rhs;
lhs =y(132);
rhs =y(33);
residual(90)= lhs-rhs;
lhs =y(133);
rhs =y(34);
residual(91)= lhs-rhs;
lhs =y(134);
rhs =y(3);
residual(92)= lhs-rhs;
lhs =y(135);
rhs =y(36);
residual(93)= lhs-rhs;
lhs =y(136);
rhs =y(37);
residual(94)= lhs-rhs;
lhs =y(137);
rhs =y(1);
residual(95)= lhs-rhs;
lhs =y(138);
rhs =y(39);
residual(96)= lhs-rhs;
lhs =y(139);
rhs =y(40);
residual(97)= lhs-rhs;
lhs =y(140);
rhs =y(32);
residual(98)= lhs-rhs;
if nargout >= 2,
  g1 = zeros(98, 169);

  %
  % Jacobian matrix
  %

T3 = (-1);
  g1(1,43)=1;
  g1(1,86)=T3;
  g1(2,45)=1;
  g1(2,68)=(-4);
  g1(3,44)=1;
  g1(3,2)=(-0.25);
  g1(3,45)=(-0.25);
  g1(3,31)=(-0.25);
  g1(3,32)=(-0.25);
  g1(4,47)=1;
  g1(4,49)=T3;
  g1(5,46)=1;
  g1(5,49)=T3;
  g1(5,89)=1;
  g1(6,48)=1;
  g1(6,88)=T3;
  g1(7,48)=1;
  g1(7,169)=(-params(34));
  g1(8,7)=(-(params(37)*T50));
  g1(8,56)=(-(T50*(T3+params(37)*params(35)*(-params(37)))));
  g1(8,145)=(-(params(37)*params(35)*T50));
  g1(8,59)=1;
  g1(9,60)=1;
  g1(9,148)=T3;
  g1(9,150)=1;
  g1(10,8)=1;
  g1(10,59)=T3;
  g1(10,81)=1;
  g1(11,53)=params(36);
  g1(11,59)=T3;
  g1(11,65)=T3;
  g1(12,5)=(-T81);
  g1(12,51)=1;
  g1(12,144)=(-(params(35)*T81));
  g1(12,67)=(-(T81*1/params(40)));
  g1(13,51)=(-params(39));
  g1(13,6)=(-(1-params(39)));
  g1(13,52)=1;
  g1(14,49)=1;
  g1(14,6)=(-params(38));
  g1(14,53)=(-(1-params(38)));
  g1(14,54)=(-params(38));
  g1(14,66)=(-(1-params(38)));
  g1(15,12)=(-(params(109)*T113));
  g1(15,68)=1;
  g1(15,148)=(-(params(35)*T113));
  g1(15,69)=(-(T113*(1-params(35)*params(42))*(1-params(42))/params(42)));
  g1(16,49)=(-(params(82)*(1+params(44)*(params(73)-1))));
  g1(16,53)=params(82)*(1+params(44)*(params(73)-1));
  g1(16,60)=params(73)*params(82)*params(44);
  g1(16,65)=params(82)*(1+params(44)*(params(73)-1));
  g1(16,69)=(-(params(82)*(1+params(44)*(params(73)-1))));
  g1(17,49)=T3;
  g1(17,6)=1;
  g1(17,54)=1;
  g1(17,60)=params(73)*params(45)/(1+(params(73)-1)*params(45));
  g1(17,62)=1/params(80);
  g1(17,69)=T3;
  g1(18,6)=(-(params(80)*params(45)*params(84)));
  g1(18,53)=(-(params(82)*params(44)*params(83)));
  g1(18,54)=(-(params(80)*params(45)*params(84)));
  g1(18,62)=(-(params(80)*params(45)*params(84)*1/params(80)));
  g1(18,65)=(-(params(82)*params(44)*params(83)));
  g1(18,75)=params(92);
  g1(19,76)=T3;
  g1(19,78)=1;
  g1(19,79)=1;
  g1(20,17)=(-(params(43)*params(97)));
  g1(20,78)=1;
  g1(20,80)=(-(params(43)*params(97)));
  g1(21,58)=1;
  g1(21,17)=T3;
  g1(21,80)=T3;
  g1(22,9)=(-(params(73)+params(96)*(-params(73))));
  g1(22,63)=(-(params(76)*params(96)));
  g1(22,68)=params(97)*params(72);
  g1(22,18)=(-((params(76)-params(73))*params(96)));
  g1(22,80)=params(97)*params(72);
  g1(23,60)=T213;
  g1(23,147)=(-T213);
  g1(23,79)=1;
  g1(23,149)=(-T209);
  g1(24,57)=1;
  g1(24,71)=T3;
  g1(25,70)=params(90);
  g1(25,71)=(-(params(48)*params(89)));
  g1(26,61)=params(75);
  g1(26,62)=(-params(72));
  g1(26,11)=params(75);
  g1(26,67)=(-((1-params(39))*params(72)));
  g1(26,68)=(-params(75));
  g1(27,52)=T3;
  g1(27,67)=T3;
  g1(27,70)=1;
  g1(27,72)=1;
  g1(28,70)=T3;
  g1(28,72)=(-(params(71)/(params(71)-1)));
  g1(28,76)=1;
  g1(29,61)=(-(1-(-T261)));
  g1(29,68)=1;
  g1(29,13)=T3;
  g1(29,71)=1;
  g1(29,14)=T3;
  g1(29,15)=T261;
  g1(30,54)=(-(params(80)*params(113)));
  g1(30,62)=1;
  g1(31,146)=1;
  g1(31,147)=T3;
  g1(31,72)=(-params(112));
  g1(32,64)=T3;
  g1(32,72)=(-(1/(params(71)-1)));
  g1(32,73)=1;
  g1(33,61)=params(75)*(params(65)-params(47)*params(62))-params(88)*(params(66)-params(47)*params(63));
  g1(33,63)=(-(params(76)*(params(71)-1)/params(71)));
  g1(33,14)=(-(params(76)*1/params(71)));
  g1(33,15)=params(88)*(params(66)-params(47)*params(63));
  g1(34,55)=params(105);
  g1(34,56)=(-params(104));
  g1(34,57)=(-params(95));
  g1(34,58)=(-params(103));
  g1(35,49)=params(85);
  g1(35,51)=(-params(87));
  g1(35,6)=(-T326);
  g1(35,54)=(-(params(80)*params(84)));
  g1(35,55)=(-params(105));
  g1(35,61)=(-(T326*(1-T331)));
  g1(35,11)=(-T326);
  g1(35,68)=T326;
  g1(35,15)=(-(T326*T331));
  g1(35,77)=(-params(57));
  g1(36,50)=params(106);
  g1(36,51)=(-params(87));
  g1(36,55)=(-params(105));
  g1(36,77)=(-params(57));
  g1(37,74)=params(93);
  g1(37,75)=(-params(92));
  g1(37,76)=(-params(91));
  g1(38,10)=(-params(54));
  g1(38,66)=1;
  g1(38,167)=T3;
  g1(39,16)=(-params(68));
  g1(39,77)=1;
  g1(39,88)=T3;
  g1(40,60)=(-4);
  g1(40,86)=1;
  g1(41,68)=(-4);
  g1(41,87)=1;
  g1(42,60)=4;
  g1(42,64)=(-4);
  g1(42,82)=1;
  g1(43,60)=4;
  g1(43,146)=(-4);
  g1(43,83)=1;
  g1(44,60)=4;
  g1(44,147)=(-4);
  g1(44,84)=1;
  g1(45,146)=(-4);
  g1(45,147)=4;
  g1(45,85)=1;
  g1(46,1)=(-params(1));
  g1(46,43)=1;
  g1(46,2)=(-params(6));
  g1(46,45)=(-params(5));
  g1(46,141)=(-params(10));
  g1(46,3)=(-params(15));
  g1(46,46)=(-params(14));
  g1(46,142)=(-params(19));
  g1(46,4)=(-params(24));
  g1(46,47)=(-params(23));
  g1(46,143)=(-params(28));
  g1(46,168)=(-(params(32)/100));
  g1(46,158)=(-params(11));
  g1(46,159)=(-params(12));
  g1(46,160)=(-params(13));
  g1(46,161)=(-params(20));
  g1(46,162)=(-params(21));
  g1(46,163)=(-params(22));
  g1(46,164)=(-params(29));
  g1(46,165)=(-params(30));
  g1(46,166)=(-params(31));
  g1(46,31)=(-params(7));
  g1(46,32)=(-params(8));
  g1(46,33)=(-params(25));
  g1(46,34)=(-params(26));
  g1(46,35)=(-params(27));
  g1(46,36)=(-params(16));
  g1(46,37)=(-params(17));
  g1(46,38)=(-params(18));
  g1(46,39)=(-params(2));
  g1(46,40)=(-params(3));
  g1(46,41)=(-params(4));
  g1(46,42)=(-params(9));
  g1(47,21)=(-(params(37)*T50));
  g1(47,96)=(-(T50*(T3+params(37)*params(35)*(-params(37)))));
  g1(47,152)=(-(params(37)*params(35)*T50));
  g1(47,99)=1;
  g1(48,100)=1;
  g1(48,155)=T3;
  g1(48,157)=1;
  g1(49,22)=1;
  g1(49,99)=T3;
  g1(49,119)=1;
  g1(50,93)=params(36);
  g1(50,99)=T3;
  g1(50,105)=T3;
  g1(51,19)=(-T81);
  g1(51,91)=1;
  g1(51,151)=(-(params(35)*T81));
  g1(51,106)=(-(T81*1/params(40)));
  g1(52,91)=(-params(39));
  g1(52,20)=(-(1-params(39)));
  g1(52,92)=1;
  g1(53,66)=(-(1-params(38)));
  g1(53,89)=1;
  g1(53,20)=(-params(38));
  g1(53,93)=(-(1-params(38)));
  g1(53,94)=(-params(38));
  g1(54,25)=(-(params(109)*T113));
  g1(54,107)=1;
  g1(54,155)=(-(params(35)*T113));
  g1(54,108)=(-(T113*(1-params(35)*params(114))*(1-params(114))/params(114)));
  g1(55,89)=(-(params(82)*(1+params(44)*(params(73)-1))));
  g1(55,93)=params(82)*(1+params(44)*(params(73)-1));
  g1(55,100)=params(73)*params(82)*params(44);
  g1(55,105)=params(82)*(1+params(44)*(params(73)-1));
  g1(55,108)=(-(params(82)*(1+params(44)*(params(73)-1))));
  g1(56,89)=T3;
  g1(56,20)=1;
  g1(56,94)=1;
  g1(56,100)=params(73)*params(45)/(1+(params(73)-1)*params(45));
  g1(56,102)=1/params(80);
  g1(56,108)=T3;
  g1(57,20)=(-(params(80)*params(45)*params(84)));
  g1(57,93)=(-(params(82)*params(44)*params(83)));
  g1(57,94)=(-(params(80)*params(45)*params(84)));
  g1(57,102)=(-(params(80)*params(45)*params(84)*1/params(80)));
  g1(57,105)=(-(params(82)*params(44)*params(83)));
  g1(57,114)=params(92);
  g1(58,115)=T3;
  g1(58,116)=1;
  g1(58,117)=1;
  g1(59,29)=(-(params(43)*params(97)));
  g1(59,116)=1;
  g1(59,118)=(-(params(43)*params(97)));
  g1(60,98)=1;
  g1(60,29)=T3;
  g1(60,118)=T3;
  g1(61,23)=(-(params(73)+params(96)*(-params(73))));
  g1(61,103)=(-(params(76)*params(96)));
  g1(61,107)=params(97)*params(72);
  g1(61,30)=(-((params(76)-params(73))*params(96)));
  g1(61,118)=params(97)*params(72);
  g1(62,100)=T213;
  g1(62,154)=(-T213);
  g1(62,117)=1;
  g1(62,156)=(-T209);
  g1(63,97)=1;
  g1(63,110)=T3;
  g1(64,109)=params(90);
  g1(64,110)=(-(params(48)*params(89)));
  g1(65,101)=params(75);
  g1(65,102)=(-params(72));
  g1(65,24)=params(75);
  g1(65,106)=(-((1-params(39))*params(72)));
  g1(65,107)=(-params(75));
  g1(66,92)=T3;
  g1(66,106)=T3;
  g1(66,109)=1;
  g1(66,111)=1;
  g1(67,109)=T3;
  g1(67,111)=(-(params(71)/(params(71)-1)));
  g1(67,115)=1;
  g1(68,101)=(-(1-(-T261)));
  g1(68,107)=1;
  g1(68,26)=T3;
  g1(68,110)=1;
  g1(68,27)=T3;
  g1(68,28)=T261;
  g1(69,94)=(-(params(80)*params(113)));
  g1(69,102)=1;
  g1(70,153)=1;
  g1(70,154)=T3;
  g1(70,111)=(-params(112));
  g1(71,104)=T3;
  g1(71,111)=(-(1/(params(71)-1)));
  g1(71,112)=1;
  g1(72,101)=params(75)*(params(65)-params(47)*params(62))-params(88)*(params(66)-params(47)*params(63));
  g1(72,103)=(-(params(76)*(params(71)-1)/params(71)));
  g1(72,27)=(-(params(76)*1/params(71)));
  g1(72,28)=params(88)*(params(66)-params(47)*params(63));
  g1(73,23)=(-(params(73)*params(53)));
  g1(73,100)=params(73);
  g1(73,107)=(-((1-params(53))*params(51)));
  g1(73,108)=(-((1-params(53))*params(52)));
  g1(74,95)=params(105);
  g1(74,96)=(-params(104));
  g1(74,97)=(-params(95));
  g1(74,98)=(-params(103));
  g1(75,77)=(-params(57));
  g1(75,89)=params(85);
  g1(75,91)=(-params(87));
  g1(75,20)=(-T326);
  g1(75,94)=(-(params(80)*params(84)));
  g1(75,95)=(-params(105));
  g1(75,101)=(-(T326*(1-T331)));
  g1(75,24)=(-T326);
  g1(75,107)=T326;
  g1(75,28)=(-(T326*T331));
  g1(76,77)=(-params(57));
  g1(76,90)=params(106);
  g1(76,91)=(-params(87));
  g1(76,95)=(-params(105));
  g1(77,113)=params(93);
  g1(77,114)=(-params(92));
  g1(77,115)=(-params(91));
  g1(78,141)=T3;
  g1(78,120)=1;
  g1(79,158)=T3;
  g1(79,121)=1;
  g1(80,159)=T3;
  g1(80,122)=1;
  g1(81,142)=T3;
  g1(81,123)=1;
  g1(82,161)=T3;
  g1(82,124)=1;
  g1(83,162)=T3;
  g1(83,125)=1;
  g1(84,143)=T3;
  g1(84,126)=1;
  g1(85,164)=T3;
  g1(85,127)=1;
  g1(86,165)=T3;
  g1(86,128)=1;
  g1(87,2)=T3;
  g1(87,129)=1;
  g1(88,31)=T3;
  g1(88,130)=1;
  g1(89,4)=T3;
  g1(89,131)=1;
  g1(90,33)=T3;
  g1(90,132)=1;
  g1(91,34)=T3;
  g1(91,133)=1;
  g1(92,3)=T3;
  g1(92,134)=1;
  g1(93,36)=T3;
  g1(93,135)=1;
  g1(94,37)=T3;
  g1(94,136)=1;
  g1(95,1)=T3;
  g1(95,137)=1;
  g1(96,39)=T3;
  g1(96,138)=1;
  g1(97,40)=T3;
  g1(97,139)=1;
  g1(98,32)=T3;
  g1(98,140)=1;

if nargout >= 3,
  %
  % Hessian matrix
  %

  g2 = sparse([],[],[],98,28561);
if nargout >= 4,
  %
  % Third order derivatives
  %

  g3 = sparse([],[],[],98,4826809);
end
end
end
end