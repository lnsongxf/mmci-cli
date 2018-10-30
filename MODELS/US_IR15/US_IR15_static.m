function [residual, g1, g2] = US_IR15_static(y, x, params)
%
% Status : Computes static model for Dynare
%
% Inputs : 
%   y         [M_.endo_nbr by 1] double    vector of endogenous variables in declaration order
%   x         [M_.exo_nbr by 1] double     vector of exogenous variables in declaration order
%   params    [M_.param_nbr by 1] double   vector of parameter values in declaration order
%
% Outputs:
%   residual  [M_.endo_nbr by 1] double    vector of residuals of the static model equations 
%                                          in order of declaration of the equations
%   g1        [M_.endo_nbr by M_.endo_nbr] double    Jacobian matrix of the static model equations;
%                                                     columns: variables in declaration order
%                                                     rows: equations in order of declaration
%   g2        [M_.endo_nbr by (M_.endo_nbr)^2] double   Hessian matrix of the static model equations;
%                                                       columns: variables in declaration order
%                                                       rows: equations in order of declaration
%
%
% Warning : this file is generated automatically by Dynare
%           from model file (.mod)

residual = zeros( 59, 1);

%
% Model equations
%

lhs =y(32);
rhs =y(1)*4;
residual(1)= lhs-rhs;
lhs =y(33);
rhs =y(2)+y(2)+y(46)+y(47);
residual(2)= lhs-rhs;
lhs =y(34);
rhs =4*y(2);
residual(3)= lhs-rhs;
lhs =y(35);
rhs =y(3);
residual(4)= lhs-rhs;
lhs =y(36);
rhs =y(3);
residual(5)= lhs-rhs;
lhs =y(32);
rhs =params(32)*x(8)+params(31)*y(45)+params(30)*y(44)+params(29)*y(43)+y(36)*params(28)+params(27)*y(50)+params(26)*y(49)+params(25)*y(48)+y(36)*params(24)+y(36)*params(23)+params(22)*y(42)+params(21)*y(41)+params(20)*y(40)+y(35)*params(19)+params(18)*y(53)+params(17)*y(52)+params(16)*y(51)+y(35)*params(15)+y(35)*params(14)+params(13)*y(39)+params(12)*y(38)+params(11)*y(37)+y(34)*params(10)+y(34)*params(6)+y(34)*params(5)+y(32)*params(1)+params(2)*y(54)+params(3)*y(55)+params(4)*y(56)+params(7)*y(57)+params(8)*y(58)+params(9)*y(59);
residual(6)= lhs-rhs;
lhs =y(31);
rhs =params(32)*x(8);
residual(7)= lhs-rhs;
lhs =y(6);
rhs =y(1)*params(79)+y(2)*params(80)+y(3)*params(81)+params(82)*y(4)+params(83)*y(5);
residual(8)= lhs-rhs;
lhs =y(7);
rhs =y(1)*params(84)+y(2)*params(85)+y(3)*params(86)+y(4)*params(87)+y(5)*params(88);
residual(9)= lhs-rhs;
lhs =y(8);
rhs =y(1)*params(89)+y(2)*params(90)+y(3)*params(91)+y(4)*params(92)+y(5)*params(93);
residual(10)= lhs-rhs;
lhs =y(9);
rhs =y(1)*params(94)+y(2)*params(95)+y(3)*params(96)+y(4)*params(97)+y(5)*params(98)+params(66)*x(5);
residual(11)= lhs-rhs;
lhs =y(10);
rhs =y(1)*params(99)+y(2)*params(100)+y(3)*params(101)+y(4)*params(102)+y(5)*params(103)+params(67)*x(6);
residual(12)= lhs-rhs;
lhs =y(11);
rhs =y(1)*params(104)+y(2)*params(105)+y(3)*params(106)+y(4)*params(107)+y(5)*params(108);
residual(13)= lhs-rhs;
lhs =y(12);
rhs =y(1)*params(109)+y(2)*params(110)+y(3)*params(111)+y(4)*params(112)+y(5)*params(113)+params(68)*x(7);
residual(14)= lhs-rhs;
lhs =y(13);
rhs =y(1)*params(114)+y(2)*params(115)+y(3)*params(116)+y(4)*params(117)+y(5)*params(118);
residual(15)= lhs-rhs;
lhs =y(2);
rhs =y(1)*params(124)+y(2)*params(125)+y(3)*params(126)+y(4)*params(127)+y(5)*params(128)+y(31)*params(174)+params(175)*x(1)+params(176)*x(2)+params(177)*x(3)+params(178)*x(4);
residual(16)= lhs-rhs;
lhs =y(3);
rhs =y(1)*params(129)+y(2)*params(130)+y(3)*params(131)+y(4)*params(132)+y(5)*params(133)+y(31)*params(179)+x(1)*params(180)+x(2)*params(181)+x(3)*params(182)+x(4)*params(183);
residual(17)= lhs-rhs;
lhs =y(4);
rhs =y(1)*params(134)+y(2)*params(135)+y(3)*params(136)+y(4)*params(137)+y(5)*params(138)+y(31)*params(184)+x(1)*params(185)+x(2)*params(186)+x(3)*params(187)+x(4)*params(188);
residual(18)= lhs-rhs;
lhs =y(5);
rhs =y(1)*params(139)+y(2)*params(140)+y(3)*params(141)+y(4)*params(142)+y(5)*params(143)+y(31)*params(189)+x(1)*params(190)+x(2)*params(191)+x(3)*params(192)+x(4)*params(193);
residual(19)= lhs-rhs;
lhs =y(14);
rhs =4*y(9)-y(6);
residual(20)= lhs-rhs;
lhs =y(15);
rhs =4*y(10)-y(6);
residual(21)= lhs-rhs;
lhs =y(16);
rhs =4*y(11)-y(6);
residual(22)= lhs-rhs;
lhs =y(17);
rhs =4*y(12)-y(6);
residual(23)= lhs-rhs;
lhs =y(18);
rhs =4*y(13)-y(6);
residual(24)= lhs-rhs;
lhs =y(19);
rhs =4*y(9);
residual(25)= lhs-rhs;
lhs =y(20);
rhs =4*(y(1)*params(144)+y(2)*params(145)+y(3)*params(146)+y(4)*params(147)+y(5)*params(148));
residual(26)= lhs-rhs;
lhs =y(21);
rhs =4*y(2);
residual(27)= lhs-rhs;
lhs =y(22);
rhs =4*y(10);
residual(28)= lhs-rhs;
lhs =y(23);
rhs =4*(y(1)*params(149)+y(2)*params(150)+y(3)*params(151)+y(4)*params(152)+y(5)*params(153));
residual(29)= lhs-rhs;
lhs =y(24);
rhs =4*y(6);
residual(30)= lhs-rhs;
lhs =y(25);
rhs =4*y(11);
residual(31)= lhs-rhs;
lhs =y(26);
rhs =4*(y(1)*params(154)+y(2)*params(155)+y(3)*params(156)+y(4)*params(157)+y(5)*params(158));
residual(32)= lhs-rhs;
lhs =y(27);
rhs =4*y(12);
residual(33)= lhs-rhs;
lhs =y(28);
rhs =4*(y(1)*params(159)+y(2)*params(160)+y(3)*params(161)+y(4)*params(162)+y(5)*params(163));
residual(34)= lhs-rhs;
lhs =y(29);
rhs =4*y(13);
residual(35)= lhs-rhs;
lhs =y(30);
rhs =4*(y(1)*params(164)+y(2)*params(165)+y(3)*params(166)+y(4)*params(167)+y(5)*params(168));
residual(36)= lhs-rhs;
lhs =y(37);
rhs =y(34);
residual(37)= lhs-rhs;
lhs =y(38);
rhs =y(37);
residual(38)= lhs-rhs;
lhs =y(39);
rhs =y(38);
residual(39)= lhs-rhs;
lhs =y(40);
rhs =y(35);
residual(40)= lhs-rhs;
lhs =y(41);
rhs =y(40);
residual(41)= lhs-rhs;
lhs =y(42);
rhs =y(41);
residual(42)= lhs-rhs;
lhs =y(43);
rhs =y(36);
residual(43)= lhs-rhs;
lhs =y(44);
rhs =y(43);
residual(44)= lhs-rhs;
lhs =y(45);
rhs =y(44);
residual(45)= lhs-rhs;
lhs =y(46);
rhs =y(2);
residual(46)= lhs-rhs;
lhs =y(47);
rhs =y(46);
residual(47)= lhs-rhs;
lhs =y(48);
rhs =y(36);
residual(48)= lhs-rhs;
lhs =y(49);
rhs =y(48);
residual(49)= lhs-rhs;
lhs =y(50);
rhs =y(49);
residual(50)= lhs-rhs;
lhs =y(51);
rhs =y(35);
residual(51)= lhs-rhs;
lhs =y(52);
rhs =y(51);
residual(52)= lhs-rhs;
lhs =y(53);
rhs =y(52);
residual(53)= lhs-rhs;
lhs =y(54);
rhs =y(32);
residual(54)= lhs-rhs;
lhs =y(55);
rhs =y(54);
residual(55)= lhs-rhs;
lhs =y(56);
rhs =y(55);
residual(56)= lhs-rhs;
lhs =y(57);
rhs =y(34);
residual(57)= lhs-rhs;
lhs =y(58);
rhs =y(57);
residual(58)= lhs-rhs;
lhs =y(59);
rhs =y(58);
residual(59)= lhs-rhs;
if ~isreal(residual)
  residual = real(residual)+imag(residual).^2;
end
if nargout >= 2,
  g1 = zeros(59, 59);

  %
  % Jacobian matrix
  %

  g1(1,1)=(-4);
  g1(1,32)=1;
  g1(2,2)=(-2);
  g1(2,33)=1;
  g1(2,46)=(-1);
  g1(2,47)=(-1);
  g1(3,2)=(-4);
  g1(3,34)=1;
  g1(4,3)=(-1);
  g1(4,35)=1;
  g1(5,3)=(-1);
  g1(5,36)=1;
  g1(6,32)=1-params(1);
  g1(6,34)=(-(params(10)+params(6)+params(5)));
  g1(6,35)=(-(params(19)+params(15)+params(14)));
  g1(6,36)=(-(params(28)+params(24)+params(23)));
  g1(6,37)=(-params(11));
  g1(6,38)=(-params(12));
  g1(6,39)=(-params(13));
  g1(6,40)=(-params(20));
  g1(6,41)=(-params(21));
  g1(6,42)=(-params(22));
  g1(6,43)=(-params(29));
  g1(6,44)=(-params(30));
  g1(6,45)=(-params(31));
  g1(6,48)=(-params(25));
  g1(6,49)=(-params(26));
  g1(6,50)=(-params(27));
  g1(6,51)=(-params(16));
  g1(6,52)=(-params(17));
  g1(6,53)=(-params(18));
  g1(6,54)=(-params(2));
  g1(6,55)=(-params(3));
  g1(6,56)=(-params(4));
  g1(6,57)=(-params(7));
  g1(6,58)=(-params(8));
  g1(6,59)=(-params(9));
  g1(7,31)=1;
  g1(8,1)=(-params(79));
  g1(8,2)=(-params(80));
  g1(8,3)=(-params(81));
  g1(8,4)=(-params(82));
  g1(8,5)=(-params(83));
  g1(8,6)=1;
  g1(9,1)=(-params(84));
  g1(9,2)=(-params(85));
  g1(9,3)=(-params(86));
  g1(9,4)=(-params(87));
  g1(9,5)=(-params(88));
  g1(9,7)=1;
  g1(10,1)=(-params(89));
  g1(10,2)=(-params(90));
  g1(10,3)=(-params(91));
  g1(10,4)=(-params(92));
  g1(10,5)=(-params(93));
  g1(10,8)=1;
  g1(11,1)=(-params(94));
  g1(11,2)=(-params(95));
  g1(11,3)=(-params(96));
  g1(11,4)=(-params(97));
  g1(11,5)=(-params(98));
  g1(11,9)=1;
  g1(12,1)=(-params(99));
  g1(12,2)=(-params(100));
  g1(12,3)=(-params(101));
  g1(12,4)=(-params(102));
  g1(12,5)=(-params(103));
  g1(12,10)=1;
  g1(13,1)=(-params(104));
  g1(13,2)=(-params(105));
  g1(13,3)=(-params(106));
  g1(13,4)=(-params(107));
  g1(13,5)=(-params(108));
  g1(13,11)=1;
  g1(14,1)=(-params(109));
  g1(14,2)=(-params(110));
  g1(14,3)=(-params(111));
  g1(14,4)=(-params(112));
  g1(14,5)=(-params(113));
  g1(14,12)=1;
  g1(15,1)=(-params(114));
  g1(15,2)=(-params(115));
  g1(15,3)=(-params(116));
  g1(15,4)=(-params(117));
  g1(15,5)=(-params(118));
  g1(15,13)=1;
  g1(16,1)=(-params(124));
  g1(16,2)=1-params(125);
  g1(16,3)=(-params(126));
  g1(16,4)=(-params(127));
  g1(16,5)=(-params(128));
  g1(16,31)=(-params(174));
  g1(17,1)=(-params(129));
  g1(17,2)=(-params(130));
  g1(17,3)=1-params(131);
  g1(17,4)=(-params(132));
  g1(17,5)=(-params(133));
  g1(17,31)=(-params(179));
  g1(18,1)=(-params(134));
  g1(18,2)=(-params(135));
  g1(18,3)=(-params(136));
  g1(18,4)=1-params(137);
  g1(18,5)=(-params(138));
  g1(18,31)=(-params(184));
  g1(19,1)=(-params(139));
  g1(19,2)=(-params(140));
  g1(19,3)=(-params(141));
  g1(19,4)=(-params(142));
  g1(19,5)=1-params(143);
  g1(19,31)=(-params(189));
  g1(20,6)=1;
  g1(20,9)=(-4);
  g1(20,14)=1;
  g1(21,6)=1;
  g1(21,10)=(-4);
  g1(21,15)=1;
  g1(22,6)=1;
  g1(22,11)=(-4);
  g1(22,16)=1;
  g1(23,6)=1;
  g1(23,12)=(-4);
  g1(23,17)=1;
  g1(24,6)=1;
  g1(24,13)=(-4);
  g1(24,18)=1;
  g1(25,9)=(-4);
  g1(25,19)=1;
  g1(26,1)=(-(4*params(144)));
  g1(26,2)=(-(4*params(145)));
  g1(26,3)=(-(4*params(146)));
  g1(26,4)=(-(4*params(147)));
  g1(26,5)=(-(4*params(148)));
  g1(26,20)=1;
  g1(27,2)=(-4);
  g1(27,21)=1;
  g1(28,10)=(-4);
  g1(28,22)=1;
  g1(29,1)=(-(4*params(149)));
  g1(29,2)=(-(4*params(150)));
  g1(29,3)=(-(4*params(151)));
  g1(29,4)=(-(4*params(152)));
  g1(29,5)=(-(4*params(153)));
  g1(29,23)=1;
  g1(30,6)=(-4);
  g1(30,24)=1;
  g1(31,11)=(-4);
  g1(31,25)=1;
  g1(32,1)=(-(4*params(154)));
  g1(32,2)=(-(4*params(155)));
  g1(32,3)=(-(4*params(156)));
  g1(32,4)=(-(4*params(157)));
  g1(32,5)=(-(4*params(158)));
  g1(32,26)=1;
  g1(33,12)=(-4);
  g1(33,27)=1;
  g1(34,1)=(-(4*params(159)));
  g1(34,2)=(-(4*params(160)));
  g1(34,3)=(-(4*params(161)));
  g1(34,4)=(-(4*params(162)));
  g1(34,5)=(-(4*params(163)));
  g1(34,28)=1;
  g1(35,13)=(-4);
  g1(35,29)=1;
  g1(36,1)=(-(4*params(164)));
  g1(36,2)=(-(4*params(165)));
  g1(36,3)=(-(4*params(166)));
  g1(36,4)=(-(4*params(167)));
  g1(36,5)=(-(4*params(168)));
  g1(36,30)=1;
  g1(37,34)=(-1);
  g1(37,37)=1;
  g1(38,37)=(-1);
  g1(38,38)=1;
  g1(39,38)=(-1);
  g1(39,39)=1;
  g1(40,35)=(-1);
  g1(40,40)=1;
  g1(41,40)=(-1);
  g1(41,41)=1;
  g1(42,41)=(-1);
  g1(42,42)=1;
  g1(43,36)=(-1);
  g1(43,43)=1;
  g1(44,43)=(-1);
  g1(44,44)=1;
  g1(45,44)=(-1);
  g1(45,45)=1;
  g1(46,2)=(-1);
  g1(46,46)=1;
  g1(47,46)=(-1);
  g1(47,47)=1;
  g1(48,36)=(-1);
  g1(48,48)=1;
  g1(49,48)=(-1);
  g1(49,49)=1;
  g1(50,49)=(-1);
  g1(50,50)=1;
  g1(51,35)=(-1);
  g1(51,51)=1;
  g1(52,51)=(-1);
  g1(52,52)=1;
  g1(53,52)=(-1);
  g1(53,53)=1;
  g1(54,32)=(-1);
  g1(54,54)=1;
  g1(55,54)=(-1);
  g1(55,55)=1;
  g1(56,55)=(-1);
  g1(56,56)=1;
  g1(57,34)=(-1);
  g1(57,57)=1;
  g1(58,57)=(-1);
  g1(58,58)=1;
  g1(59,58)=(-1);
  g1(59,59)=1;
  if ~isreal(g1)
    g1 = real(g1)+2*imag(g1);
  end
end
if nargout >= 3,
  %
  % Hessian matrix
  %

  g2 = sparse([],[],[],59,3481);
end
end
