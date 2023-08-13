% clingo version 5.6.2
% Reading from test_s5_a1_smol.lp ...
% Solving...
% Answer: 1
%ANSWER
init(object(shelf,a1),value(at,(3,4))). init(object(robot,a1),value(at,(2,2))). init(object(node,1),value(at,(1,1))). init(object(node,1),value(at,(1,2))). init(object(node,1),value(at,(1,3))). init(object(node,1),value(at,(1,4))). init(object(node,1),value(at,(1,5))). init(object(node,1),value(at,(2,1))). init(object(node,1),value(at,(2,2))). init(object(node,1),value(at,(2,3))). init(object(node,1),value(at,(2,4))). init(object(node,1),value(at,(2,5))). init(object(node,1),value(at,(3,1))). init(object(node,1),value(at,(3,2))). init(object(node,1),value(at,(3,3))). init(object(node,1),value(at,(3,4))). init(object(node,1),value(at,(3,5))). init(object(node,1),value(at,(4,1))). init(object(node,1),value(at,(4,2))). init(object(node,1),value(at,(4,3))). init(object(node,1),value(at,(4,4))). init(object(node,1),value(at,(4,5))). init(object(node,1),value(at,(5,1))). init(object(node,1),value(at,(5,2))). init(object(node,1),value(at,(5,3))). init(object(node,1),value(at,(5,4))). init(object(node,1),value(at,(5,5))). move(a1,(2,2),(2,3),0). occurs(object(robot,a1),action(move,(0,1)),0). move(a1,(2,3),(2,4),1). move(a1,(2,4),(3,4),2). occurs(object(robot,a1),action(move,(0,1)),1). occurs(object(robot,a1),action(move,(1,0)),2).
%COST 0
%OPTIMUM
% 
% Models         : 1
%   Optimum      : yes
% Optimization   : 0
% Calls          : 1
% Time           : 0.017s (Solving: 0.00s 1st Model: 0.00s Unsat: 0.00s)
% CPU Time       : 0.016s
