% clingo version 5.6.2
% Reading from test_s5_a2_exchange(hard).lp ...
% Solving...
% Answer: 1
%ANSWER
init(object(shelf,a1),value(at,(5,5))). init(object(shelf,a2),value(at,(1,1))). init(object(robot,a1),value(at,(1,1))). init(object(robot,a2),value(at,(5,5))). init(object(node,1),value(at,(1,1))). init(object(node,1),value(at,(1,2))). init(object(node,1),value(at,(1,3))). init(object(node,1),value(at,(1,4))). init(object(node,1),value(at,(1,5))). init(object(node,1),value(at,(3,1))). init(object(node,1),value(at,(3,2))). init(object(node,1),value(at,(3,3))). init(object(node,1),value(at,(3,4))). init(object(node,1),value(at,(3,5))). init(object(node,1),value(at,(5,1))). init(object(node,1),value(at,(5,2))). init(object(node,1),value(at,(5,3))). init(object(node,1),value(at,(5,4))). init(object(node,1),value(at,(5,5))). init(object(node,1),value(at,(2,1))). init(object(node,1),value(at,(4,1))). init(object(node,1),value(at,(2,5))). init(object(node,1),value(at,(4,5))). move(a2,(5,5),(5,4),0). occurs(object(robot,a2),action(move,(0,-1)),0). move(a1,(1,1),(2,1),0). occurs(object(robot,a1),action(move,(1,0)),0). move(a1,(2,1),(3,1),1). move(a2,(5,4),(5,3),1). move(a2,(5,3),(5,2),2). move(a1,(3,1),(3,2),2). move(a1,(3,2),(3,3),3). move(a2,(5,2),(5,1),3). move(a2,(5,1),(4,1),4). move(a1,(3,3),(3,4),4). move(a1,(3,4),(3,5),5). move(a2,(4,1),(3,1),5). move(a2,(3,1),(2,1),6). move(a1,(3,5),(4,5),6). move(a1,(4,5),(5,5),7). move(a2,(2,1),(1,1),7). occurs(object(robot,a1),action(move,(1,0)),1). occurs(object(robot,a2),action(move,(0,-1)),1). occurs(object(robot,a2),action(move,(0,-1)),2). occurs(object(robot,a1),action(move,(0,1)),2). occurs(object(robot,a1),action(move,(0,1)),3). occurs(object(robot,a2),action(move,(0,-1)),3). occurs(object(robot,a2),action(move,(-1,0)),4). occurs(object(robot,a1),action(move,(0,1)),4). occurs(object(robot,a1),action(move,(0,1)),5). occurs(object(robot,a2),action(move,(-1,0)),5). occurs(object(robot,a2),action(move,(-1,0)),6). occurs(object(robot,a1),action(move,(1,0)),6). occurs(object(robot,a1),action(move,(1,0)),7). occurs(object(robot,a2),action(move,(-1,0)),7).
%COST 3
%OPTIMUM
% 
% Models         : 1
%   Optimum      : yes
% Optimization   : 3
% Calls          : 1
% Time           : 0.031s (Solving: 0.00s 1st Model: 0.00s Unsat: 0.00s)
% CPU Time       : 0.031s
