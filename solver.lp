 % solver.lp 
 % MAPF project summer term 2023
 % Authors: Wolfgang Kellmann, Emil Zank 
 % As pruning idea we are using the "combined strategy" as proposed in "Reduction-based Solving of Multi-agent Pathfinding on Large Maps Using Graph Pruning", see also: https://moodle2.uni-potsdam.de/mod/pdfannotator/view.php?id=1896721. 
 %			[Husár, M. et al: Reduction-based Solving of Multi-agent Pathfinding on Large Maps Using Graph Pruning. 
 %			In Proc. of the 21st International Conference on Autonomous Agents and Multiagent Systems (AAMAS 2022), Online,
 %			May 9–13, 2022, IFAAMAS, 9 pages.]
 % A default "combined strategy" might not find a solution despite the fact that there might be one even within the given makespan; 
 % this is because the needed graph size might never be available. 
 % So after the given (makespan) horizon is reached only the graph sizes gets extended for further expansion, the maximum time is not further extended.

#const maxexpans=0.
 
 % We take the largest given shortest path (that any of the agents has in a single-pathfinding environment) 
 % and use it as lower bound for the makespan:
	maxshortespath(N) 	:- #max{NN,1:spath(_,_,_,NN)}=N.
	
 % Due to the lower bound (above) and the given horizon there are N possibilities to expand the makespan:
	1{expansion(0..N+maxexpans)}1 :- N=horizon-M, maxshortespath(M). %% Änderung N+maxexpans
	#minimise{N:expansion(N)}.
	
 % Amount of timesteps available:
	maxtime(N) :- expansion(A), maxshortespath(B), N=A+B. %, horizon>=N. %% Änderung horizon>=N
	maxtime(horizon) :- expansion(A), maxshortespath(B), N=A+B, horizon<=N. %% Änderung: Neue Zeile
	time(0..T) :- maxtime(T). 			% modeling individual timesteps
 %% N=A, N=A+b?  
 %% Sollte N=A+B sein; die minimale "expansion" kann ja durchaus Null sein (immer dann, wenn es zu keine Konfliken zwischen den "agents" kommt)
 %% mind. muss aber immer die Zeit vom Lower-Bound des Makespan zur Verfügung stehen.
 
 % Pruning: 	
 % Setting up the minimal graph (consists only of those grids that are used for the shortest paths ("spath")):
	vertex((X,Y),0) :- spath(_,(X,Y),_,_).
	vertex((X,Y),0) :- spath(_,_,(X,Y),_).
 % For every expansion add the neighbouring girds to the (sub-)graph:
	vertex((X,Y),N+1) :- vertex((X,Y),N), expansion(M), N<M.
	vertex((X,Y),N+1) :- edge((X',Y'),(X,Y)), vertex((X',Y'),N), expansion(M), N<M. % [Info: edges are given in both directions]
  
 % The following is inspired by/ is from: "A Compact Answer Set Programming Encoding of Multi-Agent Pathfinding", see also: https://moodle2.uni-potsdam.de/mod/pdfannotator/view.php?id=1737502 .

 % Setting up the possible moves:
	delta(right,(X,Y),(X+1,Y)) 	:- edge((X,Y),(X+1,Y)).
	delta(up,(X,Y),(X,Y+1)) 	:- edge((X,Y),(X,Y+1)).
	delta(left,(X,Y),(X-1,Y)) 	:- edge((X,Y),(X-1,Y)).
	delta(down,(X,Y),(X,Y-1)) 	:- edge((X,Y),(X,Y-1)).
	delta(stay,(X,Y),(X,Y)) 	:- vertex((X,Y)).
	
	action(right). action(left). action(up). action(down). action(stay).
	
 % Start and goal restrictions:
	at(A,(X,Y),0) :- start(A,(X,Y)). % Agent A has to start at its designated start.
	
	at_goal(A,T) :- at(A,(X,Y),T), goal(A,(X,Y)). 
	:- agent(A), not at_goal(A,N), maxtime(N). % Eliminating those plans that do not end at the given goal vertex of an agent.

 % At every timestep an agent has to perform an action ("stay" is an action too).
	1{plan(A,M,T-1):action(M)}1 :- agent(A), time(T), T>0.
	
 % Executing the moves, that the plan demands:
	at(A,(X,Y),T) :- plan(A,M,T-1), at(A,(X',Y'),T-1), delta(M,(X',Y'),(X,Y)). 
 
 % Ruling out that an agent is at a vertex that does not exist (in the current expansion stage):
	:- at(_,(X,Y),_), not vertex((X,Y),_).
	
 % Integrity constraints that tackle conflicts between agents.
	:- at(A,(X,Y),T), at(A',(X,Y),T), A!=A',time(T). % Adressing vertex conflicts. (Due to discretized time this also prevents edge conflicts, except swapping).
	:- at(A,(X+1,Y),T-1),at(A',(X,Y),T-1),at(A,(X,Y),T),at(A',(X+1,Y),T),time(T). % Adressing swapping conflicts.
	:- at(A,(X,Y+1),T-1),at(A',(X,Y),T-1),at(A,(X,Y),T),at(A',(X,Y+1),T),time(T). % Adressing swapping conflicts.
 
 % Formulating the path + using "move" for visualizer input:

	move(A,(X,Y),(X',Y'),T):- at(A,(X,Y),T), at(A,(X',Y'),T+1) , maxtime(N), T<N. 
	path(A,(X,Y),(X',Y'))  :- move(A,(X,Y),(X',Y'),T). 

%#show plan/3.
%#show path/3.
#show move/4.

%% Änderungen/Kommentare: 
%% 				- leichte Umstellung der Reihenfolge des Codes (hinter "delta")
%%  	
%%				- Zeilen 12; 19; 23-24: 
%%					Hinzufügen weiterer Expansionsstufen: Falls die letzte Expansionsstufe durchlaufen wurde und wegen des gegebenen (makespan) Horizon
%%                	kein weiterer Durchlauf erfolgt, dann werden weitere Durchläufe ausgeführt: Das Timelimit ist jeweils der (makespan) Horizon; 
%%					der Graph wird weiter vergrößert ggf. bis zum Maximum (das Limit durch const maxexpans) erweitert.
%%					(Das war das Problem von test_s5_a2_exchange(hard).lp) 
%%