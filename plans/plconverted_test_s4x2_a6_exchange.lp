% clingo version 5.6.2
% Reading from test_s4x2_a6_exchange.lp ...
% Solving...
% Answer: 1
%ANSWER
init(object(shelf,a1),value(at,(1,2))). init(object(shelf,a2),value(at,(2,2))). init(object(shelf,a3),value(at,(3,2))). init(object(shelf,a1b),value(at,(1,1))). init(object(shelf,a2b),value(at,(2,1))). init(object(shelf,a3b),value(at,(3,1))). init(object(robot,a1),value(at,(1,1))). init(object(robot,a2),value(at,(2,1))). init(object(robot,a3),value(at,(3,1))). init(object(robot,a1b),value(at,(1,2))). init(object(robot,a2b),value(at,(2,2))). init(object(robot,a3b),value(at,(3,2))). init(object(node,1),value(at,(1,1))). init(object(node,1),value(at,(2,1))). init(object(node,1),value(at,(3,1))). init(object(node,1),value(at,(4,1))). init(object(node,1),value(at,(1,2))). init(object(node,1),value(at,(2,2))). init(object(node,1),value(at,(3,2))). init(object(node,1),value(at,(4,2))). move(a3b,(3,2),(4,2),0). occurs(object(robot,a3b),action(move,(1,0)),0). move(a2b,(2,2),(3,2),0). occurs(object(robot,a2b),action(move,(1,0)),0). move(a1b,(1,2),(2,2),0). occurs(object(robot,a1b),action(move,(1,0)),0). move(a3,(3,1),(4,1),0). occurs(object(robot,a3),action(move,(1,0)),0). move(a2,(2,1),(3,1),0). occurs(object(robot,a2),action(move,(1,0)),0). move(a1,(1,1),(2,1),0). occurs(object(robot,a1),action(move,(1,0)),0). move(a1,(2,1),(2,2),1). move(a2,(3,1),(2,1),1). move(a3,(4,1),(4,2),1). move(a1b,(2,2),(1,2),1). occurs(object(robot,a1b),action(move,(-1,0)),1). move(a2b,(3,2),(3,1),1). move(a3b,(4,2),(3,2),1). move(a3b,(3,2),(3,1),2). move(a2b,(3,1),(2,1),2). move(a1b,(1,2),(1,1),2). move(a3,(4,2),(3,2),2). move(a2,(2,1),(2,2),2). move(a1,(2,2),(1,2),2). occurs(object(robot,a1),action(move,(0,1)),1). occurs(object(robot,a2),action(move,(-1,0)),1). occurs(object(robot,a3),action(move,(0,1)),1). occurs(object(robot,a2b),action(move,(0,-1)),1). occurs(object(robot,a3b),action(move,(-1,0)),1). occurs(object(robot,a3b),action(move,(0,-1)),2). occurs(object(robot,a2b),action(move,(-1,0)),2). occurs(object(robot,a1b),action(move,(0,-1)),2). occurs(object(robot,a3),action(move,(-1,0)),2). occurs(object(robot,a2),action(move,(0,1)),2). occurs(object(robot,a1),action(move,(-1,0)),2).
%COST 2
%OPTIMUM
% 
% Models         : 1
%   Optimum      : yes
% Optimization   : 2
% Calls          : 1
% Time           : 0.020s (Solving: 0.00s 1st Model: 0.00s Unsat: 0.00s)
% CPU Time       : 0.016s
