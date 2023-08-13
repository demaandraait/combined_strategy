% clingo version 5.6.2
% Reading from test_s5_a2_detour.lp ...
% Solving...
% Answer: 1
%ANSWER
init(object(shelf,a1),value(at,(1,5))). init(object(shelf,a2),value(at,(1,1))). init(object(robot,a1),value(at,(1,1))). init(object(robot,a2),value(at,(1,5))). init(object(node,1),value(at,(1,1))). init(object(node,1),value(at,(1,2))). init(object(node,1),value(at,(1,3))). init(object(node,1),value(at,(1,4))). init(object(node,1),value(at,(1,5))). init(object(node,1),value(at,(5,1))). init(object(node,1),value(at,(5,2))). init(object(node,1),value(at,(5,3))). init(object(node,1),value(at,(5,4))). init(object(node,1),value(at,(5,5))). init(object(node,1),value(at,(2,1))). init(object(node,1),value(at,(3,1))). init(object(node,1),value(at,(4,1))). init(object(node,1),value(at,(2,5))). init(object(node,1),value(at,(3,5))). init(object(node,1),value(at,(4,5))). move(a1,(1,1),(2,1),0). occurs(object(robot,a1),action(move,(1,0)),0). move(a2,(1,5),(1,4),0). occurs(object(robot,a2),action(move,(0,-1)),0). move(a2,(1,4),(1,3),1). move(a1,(2,1),(3,1),1). move(a1,(3,1),(4,1),2). move(a2,(1,3),(1,2),2). move(a2,(1,2),(1,1),3). move(a1,(4,1),(5,1),3). move(a1,(5,1),(5,2),4). move(a2,(1,1),(1,2),4). move(a2,(1,2),(1,3),5). move(a1,(5,2),(5,3),5). move(a1,(5,3),(5,4),6). move(a2,(1,3),(1,3),6). move(a2,(1,3),(1,2),7). move(a1,(5,4),(5,5),7). move(a1,(5,5),(4,5),8). move(a2,(1,2),(1,2),8). move(a2,(1,2),(1,2),9). move(a1,(4,5),(3,5),9). move(a1,(3,5),(2,5),10). move(a2,(1,2),(1,1),10). move(a2,(1,1),(1,1),11). move(a1,(2,5),(1,5),11). occurs(object(robot,a2),action(move,(0,-1)),1). occurs(object(robot,a1),action(move,(1,0)),1). occurs(object(robot,a1),action(move,(1,0)),2). occurs(object(robot,a2),action(move,(0,-1)),2). occurs(object(robot,a2),action(move,(0,-1)),3). occurs(object(robot,a1),action(move,(1,0)),3). occurs(object(robot,a1),action(move,(0,1)),4). occurs(object(robot,a2),action(move,(0,1)),4). occurs(object(robot,a2),action(move,(0,1)),5). occurs(object(robot,a1),action(move,(0,1)),5). occurs(object(robot,a1),action(move,(0,1)),6). occurs(object(robot,a2),action(move,(0,0)),6). occurs(object(robot,a2),action(move,(0,-1)),7). occurs(object(robot,a1),action(move,(0,1)),7). occurs(object(robot,a1),action(move,(-1,0)),8). occurs(object(robot,a2),action(move,(0,0)),8). occurs(object(robot,a2),action(move,(0,0)),9). occurs(object(robot,a1),action(move,(-1,0)),9). occurs(object(robot,a1),action(move,(-1,0)),10). occurs(object(robot,a2),action(move,(0,-1)),10). occurs(object(robot,a2),action(move,(0,0)),11). occurs(object(robot,a1),action(move,(-1,0)),11).
%COST 8
%OPTIMUM
% 
% Models         : 1
%   Optimum      : yes
% Optimization   : 8
% Calls          : 1
% Time           : 0.183s (Solving: 0.08s 1st Model: 0.01s Unsat: 0.07s)
% CPU Time       : 0.172s
