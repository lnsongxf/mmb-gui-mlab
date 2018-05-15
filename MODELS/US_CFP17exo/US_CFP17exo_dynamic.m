function [residual, g1, g2, g3] = US_CFP17exo_dynamic(y, x, params, steady_state, it_)
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

residual = zeros(105, 1);
T185 = 1+params(36)*params(40)^2;
T342 = (-4)*(params(87)-params(41))/params(87);
T384 = params(88)/params(91);
T388 = y(74)*T384+y(72)*(1-T384);
T474 = params(85)/params(83);
T477 = params(84)/params(83);
T526 = (-4)*(params(86)-params(41))/params(86);
lhs =y(118);
rhs =y(83)*100;
residual(1)= lhs-rhs;
lhs =y(119);
rhs =100*(y(68)+y(9)+y(27)+y(28));
residual(2)= lhs-rhs;
lhs =y(120);
rhs =y(68)*400;
residual(3)= lhs-rhs;
lhs =y(121);
rhs =100*y(111);
residual(4)= lhs-rhs;
lhs =y(122);
rhs =100*y(69);
residual(5)= lhs-rhs;
lhs =y(118);
rhs =params(32)*x(it_, 9)+params(31)*y(179)+params(30)*y(178)+params(29)*y(177)+params(28)*y(170)+params(27)*y(31)+params(26)*y(30)+params(25)*y(29)+params(24)*y(26)+y(122)*params(23)+params(22)*y(176)+params(21)*y(175)+params(20)*y(174)+params(19)*y(169)+params(18)*y(34)+params(17)*y(33)+params(16)*y(32)+params(15)*y(25)+y(121)*params(14)+params(13)*y(173)+params(12)*y(172)+params(11)*y(171)+params(10)*y(168)+params(6)*y(24)+y(120)*params(5)+params(1)*y(23)+params(2)*y(35)+params(3)*y(36)+params(4)*y(37)+params(7)*y(38)+params(8)*y(39)+params(9)*y(40);
residual(6)= lhs-rhs;
lhs =y(74);
rhs =(-y(53));
residual(7)= lhs-rhs;
lhs =y(110);
rhs =y(74);
residual(8)= lhs-rhs;
lhs =y(117);
rhs =y(69)-y(62)-y(43);
residual(9)= lhs-rhs;
lhs =y(60);
rhs =(params(36)*params(40)*y(152)-T185*y(61)+params(40)*y(6))/((1-params(36)*params(40))*(1-params(40)))+y(42)*(1-params(36)*params(40)*params(81))/(1-params(36)*params(40));
residual(10)= lhs-rhs;
lhs =y(89);
rhs =y(42)*(1-params(36)*params(40)*params(81))/(1-params(36)*params(40))+(params(36)*params(40)*y(159)-T185*y(90)+params(40)*y(17))/((1-params(36)*params(40))*(1-params(40)));
residual(11)= lhs-rhs;
lhs =y(43);
rhs =y(42)+y(62)*params(38)-y(60);
residual(12)= lhs-rhs;
lhs =y(99);
rhs =y(42)+params(38)*y(98)-y(89);
residual(13)= lhs-rhs;
lhs =y(65)-y(154)+y(151);
rhs =y(60);
residual(14)= lhs-rhs;
lhs =y(91)-y(160)+y(158);
rhs =y(89);
residual(15)= lhs-rhs;
lhs =y(60)+y(78)+y(58);
rhs =y(151)+(1-params(36)*(1-params(37)))*y(153)+params(36)*(1-params(37))*(y(157)+y(150));
residual(16)= lhs-rhs;
lhs =y(89)+y(93)+y(94);
rhs =y(158)+(1-params(36)*(1-params(37)))*y(163)+params(36)*(1-params(37))*(y(161)+y(162));
residual(17)= lhs-rhs;
lhs =y(58)+y(60)+y(57);
rhs =y(151)+params(36)*params(42)*(y(150)+y(149))-y(154);
residual(18)= lhs-rhs;
lhs =y(94)+y(89)+y(96);
rhs =y(158)+params(36)*params(42)*(y(162)+y(164))-y(160);
residual(19)= lhs-rhs;
lhs =(1-params(42))*(y(78)+y(77));
rhs =y(72)-params(42)*(y(57)+y(12)-y(5)-y(68));
residual(20)= lhs-rhs;
lhs =(1-params(42))*(y(93)+y(102));
rhs =y(103)-params(42)*(y(96)+y(22)-y(19)-y(92));
residual(21)= lhs-rhs;
lhs =y(66);
rhs =params(42)*y(149)/params(87)-y(57);
residual(22)= lhs-rhs;
lhs =y(97);
rhs =params(42)*y(164)/params(87)-y(96);
residual(23)= lhs-rhs;
lhs =y(66);
rhs =params(41)*y(155)/params(87)-y(71);
residual(24)= lhs-rhs;
lhs =y(97);
rhs =params(41)*y(167)/params(87)-y(109);
residual(25)= lhs-rhs;
lhs =y(81);
rhs =y(71)*T342;
residual(26)= lhs-rhs;
lhs =y(106);
rhs =y(109)*T342;
residual(27)= lhs-rhs;
lhs =(y(66)-y(65))*(params(39)-1);
rhs =y(59)+(1+params(39)*(params(92)-1))*y(88);
residual(28)= lhs-rhs;
lhs =(params(39)-1)*(y(97)-y(91));
rhs =(1+params(39)*(params(92)-1))*y(88)+y(112);
residual(29)= lhs-rhs;
lhs =params(44)*y(75);
rhs =((y(66)-y(65))*params(39)*params(92)+y(59)*params(39)*(params(92)-1))/(1+params(39)*(params(92)-1));
residual(30)= lhs-rhs;
lhs =params(44)*y(104);
rhs =((y(97)-y(91))*params(39)*params(92)+params(39)*(params(92)-1)*y(112))/(1+params(39)*(params(92)-1));
residual(31)= lhs-rhs;
lhs =y(59);
rhs =T388-y(75);
residual(32)= lhs-rhs;
lhs =y(112);
rhs =y(110)*T384+y(103)*(1-T384)-y(104);
residual(33)= lhs-rhs;
lhs =y(74)*params(88)/params(90)+y(72)*(params(39)-params(88)/params(90));
rhs =y(75)+(params(39)-1)*y(73);
residual(34)= lhs-rhs;
lhs =y(56);
rhs =T388;
residual(35)= lhs-rhs;
lhs =y(63);
rhs =y(69)+y(79)-y(62);
residual(36)= lhs-rhs;
lhs =y(99);
rhs =y(100)-y(98);
residual(37)= lhs-rhs;
lhs =y(67);
rhs =y(69)+y(79)-y(13);
residual(38)= lhs-rhs;
lhs =y(95);
rhs =y(100)-y(20);
residual(39)= lhs-rhs;
lhs =y(68)*(1+params(36)*params(57));
rhs =y(9)*params(57)+y(79)*params(60)+params(36)*y(154)-y(46);
residual(40)= lhs-rhs;
lhs =y(44)-y(9)*params(58);
rhs =params(59)*(y(43)-y(63))+params(36)*(y(147)-y(68)*params(58))-y(45);
residual(41)= lhs-rhs;
lhs =y(78);
rhs =params(43)*(y(77)-y(14)-params(36)*(y(156)-y(77)))-y(86);
residual(42)= lhs-rhs;
lhs =y(93);
rhs =params(43)*(y(102)-y(21)-params(36)*(y(165)-y(102)))-y(86);
residual(43)= lhs-rhs;
lhs =y(61)*T474+y(77)*T477;
rhs =y(69);
residual(44)= lhs-rhs;
lhs =y(90)*T474+y(102)*T477;
rhs =y(100);
residual(45)= lhs-rhs;
lhs =y(69);
rhs =y(64)+y(13)*params(34)+y(62)*(1-params(34));
residual(46)= lhs-rhs;
lhs =y(100);
rhs =y(64)+y(20)*params(34)+y(98)*(1-params(34));
residual(47)= lhs-rhs;
lhs =y(76);
rhs =(1-params(37))*y(13)+params(37)*(y(77)+y(86));
residual(48)= lhs-rhs;
lhs =y(101);
rhs =(1-params(37))*y(20)+params(37)*(y(102)+y(86));
residual(49)= lhs-rhs;
lhs =y(65);
rhs =params(41)*y(148)/params(86)-y(54);
residual(50)= lhs-rhs;
lhs =y(91);
rhs =params(41)*y(166)/params(86)-y(108);
residual(51)= lhs-rhs;
lhs =y(85);
rhs =y(54)*T526;
residual(52)= lhs-rhs;
lhs =y(107);
rhs =y(108)*T526;
residual(53)= lhs-rhs;
lhs =y(84);
rhs =y(81)-y(85);
residual(54)= lhs-rhs;
lhs =y(105);
rhs =y(106)-y(107);
residual(55)= lhs-rhs;
lhs =y(111);
rhs =y(69)-y(100);
residual(56)= lhs-rhs;
lhs =y(47);
rhs =4*(y(69)-y(10));
residual(57)= lhs-rhs;
lhs =y(48);
rhs =4*(y(77)-y(14));
residual(58)= lhs-rhs;
lhs =y(63);
rhs =y(44)+y(7)-y(68);
residual(59)= lhs-rhs;
lhs =y(49);
rhs =y(82)-y(83);
residual(60)= lhs-rhs;
lhs =y(64);
rhs =params(76)*y(8)+x(it_, 1);
residual(61)= lhs-rhs;
lhs =y(88);
rhs =params(79)*y(16)+x(it_, 4);
residual(62)= lhs-rhs;
lhs =y(86);
rhs =params(80)*y(15)+x(it_, 3);
residual(63)= lhs-rhs;
lhs =y(70);
rhs =params(52)*y(11)+x(it_, 2);
residual(64)= lhs-rhs;
lhs =y(42);
rhs =params(81)*y(1)+x(it_, 8)/(1-params(81));
residual(65)= lhs-rhs;
lhs =y(45);
rhs =params(71)*y(2)+x(it_, 6);
residual(66)= lhs-rhs;
lhs =y(46);
rhs =params(72)*y(3)+x(it_, 5);
residual(67)= lhs-rhs;
lhs =y(53);
rhs =x(it_, 7)+params(77)*y(4)+params(78)*y(41);
residual(68)= lhs-rhs;
lhs =y(91);
rhs =y(70)+params(75)*y(18)+(1-params(75))*(y(92)*params(48)+y(105)*params(51)/4);
residual(69)= lhs-rhs;
residual(70) = y(55);
lhs =y(80);
rhs =y(68)*4;
residual(71)= lhs-rhs;
lhs =y(51);
rhs =y(80);
residual(72)= lhs-rhs;
lhs =y(83);
rhs =4*y(65);
residual(73)= lhs-rhs;
lhs =y(82);
rhs =4*y(66);
residual(74)= lhs-rhs;
lhs =y(87);
rhs =y(82);
residual(75)= lhs-rhs;
lhs =y(50);
rhs =y(74);
residual(76)= lhs-rhs;
lhs =y(52);
rhs =y(83);
residual(77)= lhs-rhs;
lhs =y(113);
rhs =y(81);
residual(78)= lhs-rhs;
lhs =y(114);
rhs =y(80);
residual(79)= lhs-rhs;
lhs =y(115);
rhs =y(47);
residual(80)= lhs-rhs;
lhs =y(116);
rhs =y(48);
residual(81)= lhs-rhs;
lhs =y(123);
rhs =y(168);
residual(82)= lhs-rhs;
lhs =y(124);
rhs =y(171);
residual(83)= lhs-rhs;
lhs =y(125);
rhs =y(172);
residual(84)= lhs-rhs;
lhs =y(126);
rhs =y(169);
residual(85)= lhs-rhs;
lhs =y(127);
rhs =y(174);
residual(86)= lhs-rhs;
lhs =y(128);
rhs =y(175);
residual(87)= lhs-rhs;
lhs =y(129);
rhs =y(170);
residual(88)= lhs-rhs;
lhs =y(130);
rhs =y(177);
residual(89)= lhs-rhs;
lhs =y(131);
rhs =y(178);
residual(90)= lhs-rhs;
lhs =y(132);
rhs =y(9);
residual(91)= lhs-rhs;
lhs =y(133);
rhs =y(27);
residual(92)= lhs-rhs;
lhs =y(134);
rhs =y(26);
residual(93)= lhs-rhs;
lhs =y(135);
rhs =y(29);
residual(94)= lhs-rhs;
lhs =y(136);
rhs =y(30);
residual(95)= lhs-rhs;
lhs =y(137);
rhs =y(25);
residual(96)= lhs-rhs;
lhs =y(138);
rhs =y(32);
residual(97)= lhs-rhs;
lhs =y(139);
rhs =y(33);
residual(98)= lhs-rhs;
lhs =y(140);
rhs =y(23);
residual(99)= lhs-rhs;
lhs =y(141);
rhs =y(35);
residual(100)= lhs-rhs;
lhs =y(142);
rhs =y(36);
residual(101)= lhs-rhs;
lhs =y(143);
rhs =y(24);
residual(102)= lhs-rhs;
lhs =y(144);
rhs =y(38);
residual(103)= lhs-rhs;
lhs =y(145);
rhs =y(39);
residual(104)= lhs-rhs;
lhs =y(146);
rhs =y(4);
residual(105)= lhs-rhs;
if nargout >= 2,
  g1 = zeros(105, 188);

  %
  % Jacobian matrix
  %

T3 = (-1);
  g1(1,83)=(-100);
  g1(1,118)=1;
  g1(2,9)=(-100);
  g1(2,68)=(-100);
  g1(2,119)=1;
  g1(2,27)=(-100);
  g1(2,28)=(-100);
  g1(3,68)=(-400);
  g1(3,120)=1;
  g1(4,111)=(-100);
  g1(4,121)=1;
  g1(5,69)=(-100);
  g1(5,122)=1;
  g1(6,23)=(-params(1));
  g1(6,118)=1;
  g1(6,24)=(-params(6));
  g1(6,120)=(-params(5));
  g1(6,168)=(-params(10));
  g1(6,25)=(-params(15));
  g1(6,121)=(-params(14));
  g1(6,169)=(-params(19));
  g1(6,26)=(-params(24));
  g1(6,122)=(-params(23));
  g1(6,170)=(-params(28));
  g1(6,188)=(-params(32));
  g1(6,171)=(-params(11));
  g1(6,172)=(-params(12));
  g1(6,173)=(-params(13));
  g1(6,174)=(-params(20));
  g1(6,175)=(-params(21));
  g1(6,176)=(-params(22));
  g1(6,177)=(-params(29));
  g1(6,178)=(-params(30));
  g1(6,179)=(-params(31));
  g1(6,29)=(-params(25));
  g1(6,30)=(-params(26));
  g1(6,31)=(-params(27));
  g1(6,32)=(-params(16));
  g1(6,33)=(-params(17));
  g1(6,34)=(-params(18));
  g1(6,35)=(-params(2));
  g1(6,36)=(-params(3));
  g1(6,37)=(-params(4));
  g1(6,38)=(-params(7));
  g1(6,39)=(-params(8));
  g1(6,40)=(-params(9));
  g1(7,53)=1;
  g1(7,74)=1;
  g1(8,74)=T3;
  g1(8,110)=1;
  g1(9,43)=1;
  g1(9,62)=1;
  g1(9,69)=T3;
  g1(9,117)=1;
  g1(10,42)=(-((1-params(36)*params(40)*params(81))/(1-params(36)*params(40))));
  g1(10,60)=1;
  g1(10,6)=(-(params(40)/((1-params(36)*params(40))*(1-params(40)))));
  g1(10,61)=(-((-T185)/((1-params(36)*params(40))*(1-params(40)))));
  g1(10,152)=(-(params(36)*params(40)/((1-params(36)*params(40))*(1-params(40)))));
  g1(11,42)=(-((1-params(36)*params(40)*params(81))/(1-params(36)*params(40))));
  g1(11,89)=1;
  g1(11,17)=(-(params(40)/((1-params(36)*params(40))*(1-params(40)))));
  g1(11,90)=(-((-T185)/((1-params(36)*params(40))*(1-params(40)))));
  g1(11,159)=(-(params(36)*params(40)/((1-params(36)*params(40))*(1-params(40)))));
  g1(12,42)=T3;
  g1(12,43)=1;
  g1(12,60)=1;
  g1(12,62)=(-params(38));
  g1(13,42)=T3;
  g1(13,89)=1;
  g1(13,98)=(-params(38));
  g1(13,99)=1;
  g1(14,60)=T3;
  g1(14,151)=1;
  g1(14,65)=1;
  g1(14,154)=T3;
  g1(15,89)=T3;
  g1(15,158)=1;
  g1(15,91)=1;
  g1(15,160)=T3;
  g1(16,58)=1;
  g1(16,150)=(-(params(36)*(1-params(37))));
  g1(16,60)=1;
  g1(16,151)=T3;
  g1(16,153)=(-(1-params(36)*(1-params(37))));
  g1(16,78)=1;
  g1(16,157)=(-(params(36)*(1-params(37))));
  g1(17,89)=1;
  g1(17,158)=T3;
  g1(17,93)=1;
  g1(17,161)=(-(params(36)*(1-params(37))));
  g1(17,94)=1;
  g1(17,162)=(-(params(36)*(1-params(37))));
  g1(17,163)=(-(1-params(36)*(1-params(37))));
  g1(18,57)=1;
  g1(18,149)=(-(params(36)*params(42)));
  g1(18,58)=1;
  g1(18,150)=(-(params(36)*params(42)));
  g1(18,60)=1;
  g1(18,151)=T3;
  g1(18,154)=1;
  g1(19,89)=1;
  g1(19,158)=T3;
  g1(19,160)=1;
  g1(19,94)=1;
  g1(19,162)=(-(params(36)*params(42)));
  g1(19,96)=1;
  g1(19,164)=(-(params(36)*params(42)));
  g1(20,5)=(-params(42));
  g1(20,57)=params(42);
  g1(20,68)=(-params(42));
  g1(20,12)=params(42);
  g1(20,72)=T3;
  g1(20,77)=1-params(42);
  g1(20,78)=1-params(42);
  g1(21,92)=(-params(42));
  g1(21,93)=1-params(42);
  g1(21,19)=(-params(42));
  g1(21,96)=params(42);
  g1(21,102)=1-params(42);
  g1(21,22)=params(42);
  g1(21,103)=T3;
  g1(22,57)=1;
  g1(22,149)=(-(params(42)/params(87)));
  g1(22,66)=1;
  g1(23,96)=1;
  g1(23,164)=(-(params(42)/params(87)));
  g1(23,97)=1;
  g1(24,66)=1;
  g1(24,71)=1;
  g1(24,155)=(-(params(41)/params(87)));
  g1(25,97)=1;
  g1(25,109)=1;
  g1(25,167)=(-(params(41)/params(87)));
  g1(26,71)=(-T342);
  g1(26,81)=1;
  g1(27,106)=1;
  g1(27,109)=(-T342);
  g1(28,59)=T3;
  g1(28,65)=(-(params(39)-1));
  g1(28,66)=params(39)-1;
  g1(28,88)=(-(1+params(39)*(params(92)-1)));
  g1(29,88)=(-(1+params(39)*(params(92)-1)));
  g1(29,91)=(-(params(39)-1));
  g1(29,97)=params(39)-1;
  g1(29,112)=T3;
  g1(30,59)=(-(params(39)*(params(92)-1)/(1+params(39)*(params(92)-1))));
  g1(30,65)=(-((-(params(39)*params(92)))/(1+params(39)*(params(92)-1))));
  g1(30,66)=(-(params(39)*params(92)/(1+params(39)*(params(92)-1))));
  g1(30,75)=params(44);
  g1(31,91)=(-((-(params(39)*params(92)))/(1+params(39)*(params(92)-1))));
  g1(31,97)=(-(params(39)*params(92)/(1+params(39)*(params(92)-1))));
  g1(31,104)=params(44);
  g1(31,112)=(-(params(39)*(params(92)-1)/(1+params(39)*(params(92)-1))));
  g1(32,59)=1;
  g1(32,72)=(-(1-T384));
  g1(32,74)=(-T384);
  g1(32,75)=1;
  g1(33,103)=(-(1-T384));
  g1(33,104)=1;
  g1(33,110)=(-T384);
  g1(33,112)=1;
  g1(34,72)=params(39)-params(88)/params(90);
  g1(34,73)=(-(params(39)-1));
  g1(34,74)=params(88)/params(90);
  g1(34,75)=T3;
  g1(35,56)=1;
  g1(35,72)=(-(1-T384));
  g1(35,74)=(-T384);
  g1(36,62)=1;
  g1(36,63)=1;
  g1(36,69)=T3;
  g1(36,79)=T3;
  g1(37,98)=1;
  g1(37,99)=1;
  g1(37,100)=T3;
  g1(38,67)=1;
  g1(38,69)=T3;
  g1(38,13)=1;
  g1(38,79)=T3;
  g1(39,95)=1;
  g1(39,100)=T3;
  g1(39,20)=1;
  g1(40,46)=1;
  g1(40,9)=(-params(57));
  g1(40,68)=1+params(36)*params(57);
  g1(40,154)=(-params(36));
  g1(40,79)=(-params(60));
  g1(41,43)=(-params(59));
  g1(41,44)=1;
  g1(41,147)=(-params(36));
  g1(41,45)=1;
  g1(41,63)=params(59);
  g1(41,9)=(-params(58));
  g1(41,68)=(-(params(36)*(-params(58))));
  g1(42,14)=params(43);
  g1(42,77)=(-(params(43)*(1-(-params(36)))));
  g1(42,156)=(-(params(43)*(-params(36))));
  g1(42,78)=1;
  g1(42,86)=1;
  g1(43,86)=1;
  g1(43,93)=1;
  g1(43,21)=params(43);
  g1(43,102)=(-(params(43)*(1-(-params(36)))));
  g1(43,165)=(-(params(43)*(-params(36))));
  g1(44,61)=T474;
  g1(44,69)=T3;
  g1(44,77)=T477;
  g1(45,90)=T474;
  g1(45,100)=T3;
  g1(45,102)=T477;
  g1(46,62)=(-(1-params(34)));
  g1(46,64)=T3;
  g1(46,69)=1;
  g1(46,13)=(-params(34));
  g1(47,64)=T3;
  g1(47,98)=(-(1-params(34)));
  g1(47,100)=1;
  g1(47,20)=(-params(34));
  g1(48,13)=(-(1-params(37)));
  g1(48,76)=1;
  g1(48,77)=(-params(37));
  g1(48,86)=(-params(37));
  g1(49,86)=(-params(37));
  g1(49,20)=(-(1-params(37)));
  g1(49,101)=1;
  g1(49,102)=(-params(37));
  g1(50,54)=1;
  g1(50,148)=(-(params(41)/params(86)));
  g1(50,65)=1;
  g1(51,91)=1;
  g1(51,108)=1;
  g1(51,166)=(-(params(41)/params(86)));
  g1(52,54)=(-T526);
  g1(52,85)=1;
  g1(53,107)=1;
  g1(53,108)=(-T526);
  g1(54,81)=T3;
  g1(54,84)=1;
  g1(54,85)=1;
  g1(55,105)=1;
  g1(55,106)=T3;
  g1(55,107)=1;
  g1(56,69)=T3;
  g1(56,100)=1;
  g1(56,111)=1;
  g1(57,47)=1;
  g1(57,10)=4;
  g1(57,69)=(-4);
  g1(58,48)=1;
  g1(58,14)=4;
  g1(58,77)=(-4);
  g1(59,44)=T3;
  g1(59,7)=T3;
  g1(59,63)=1;
  g1(59,68)=1;
  g1(60,49)=1;
  g1(60,82)=T3;
  g1(60,83)=1;
  g1(61,8)=(-params(76));
  g1(61,64)=1;
  g1(61,180)=T3;
  g1(62,16)=(-params(79));
  g1(62,88)=1;
  g1(62,183)=T3;
  g1(63,15)=(-params(80));
  g1(63,86)=1;
  g1(63,182)=T3;
  g1(64,11)=(-params(52));
  g1(64,70)=1;
  g1(64,181)=T3;
  g1(65,1)=(-params(81));
  g1(65,42)=1;
  g1(65,187)=(-(1/(1-params(81))));
  g1(66,2)=(-params(71));
  g1(66,45)=1;
  g1(66,185)=T3;
  g1(67,3)=(-params(72));
  g1(67,46)=1;
  g1(67,184)=T3;
  g1(68,4)=(-params(77));
  g1(68,53)=1;
  g1(68,186)=T3;
  g1(68,41)=(-params(78));
  g1(69,70)=T3;
  g1(69,18)=(-params(75));
  g1(69,91)=1;
  g1(69,92)=(-((1-params(75))*params(48)));
  g1(69,105)=(-((1-params(75))*params(51)/4));
  g1(70,55)=1;
  g1(71,68)=(-4);
  g1(71,80)=1;
  g1(72,51)=1;
  g1(72,80)=T3;
  g1(73,65)=(-4);
  g1(73,83)=1;
  g1(74,66)=(-4);
  g1(74,82)=1;
  g1(75,82)=T3;
  g1(75,87)=1;
  g1(76,50)=1;
  g1(76,74)=T3;
  g1(77,52)=1;
  g1(77,83)=T3;
  g1(78,81)=T3;
  g1(78,113)=1;
  g1(79,80)=T3;
  g1(79,114)=1;
  g1(80,47)=T3;
  g1(80,115)=1;
  g1(81,48)=T3;
  g1(81,116)=1;
  g1(82,168)=T3;
  g1(82,123)=1;
  g1(83,171)=T3;
  g1(83,124)=1;
  g1(84,172)=T3;
  g1(84,125)=1;
  g1(85,169)=T3;
  g1(85,126)=1;
  g1(86,174)=T3;
  g1(86,127)=1;
  g1(87,175)=T3;
  g1(87,128)=1;
  g1(88,170)=T3;
  g1(88,129)=1;
  g1(89,177)=T3;
  g1(89,130)=1;
  g1(90,178)=T3;
  g1(90,131)=1;
  g1(91,9)=T3;
  g1(91,132)=1;
  g1(92,27)=T3;
  g1(92,133)=1;
  g1(93,26)=T3;
  g1(93,134)=1;
  g1(94,29)=T3;
  g1(94,135)=1;
  g1(95,30)=T3;
  g1(95,136)=1;
  g1(96,25)=T3;
  g1(96,137)=1;
  g1(97,32)=T3;
  g1(97,138)=1;
  g1(98,33)=T3;
  g1(98,139)=1;
  g1(99,23)=T3;
  g1(99,140)=1;
  g1(100,35)=T3;
  g1(100,141)=1;
  g1(101,36)=T3;
  g1(101,142)=1;
  g1(102,24)=T3;
  g1(102,143)=1;
  g1(103,38)=T3;
  g1(103,144)=1;
  g1(104,39)=T3;
  g1(104,145)=1;
  g1(105,4)=T3;
  g1(105,146)=1;

if nargout >= 3,
  %
  % Hessian matrix
  %

  g2 = sparse([],[],[],105,35344);
if nargout >= 4,
  %
  % Third order derivatives
  %

  g3 = sparse([],[],[],105,6644672);
end
end
end
end
