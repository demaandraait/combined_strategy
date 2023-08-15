## Pruning for Multi-Agent Path Finding (Warehouse Instances)
Authors: Wolfgang Kellmann, Emil Zank  
In this repository we represent our ASP solution for the project of the MAPF course (summer term 2023).  

## Instances and Output

+ The instances were provided. (TO BE ADDED?)
+ *converted_instances* contains the instances in ASPRILO domain.

+ The output is only supposed  to contain the atoms *path* and *plan* of the models.
+ Some of the output is available in the ASPRILO domain in *plans*, otherwise use *mif_to_asprilo.lp*

## Combined Strategy
We are using the *combined strategy* to solve the MAPF warehouse instances. The pruning idea is originally from "Reduction-based Solving of Multi-agent Pathfinding on Large Maps Using Graph Pruning", see also: http://svancara.net/files/AAMAS_2022.pdf. [Husár, M. et al: *Reduction-based Solving of Multi-agent Pathfinding on Large Maps Using Graph Pruning.* In Proc. of the 21st International Conference on Autonomous Agents and Multiagent Systems (AAMAS 2022), Online, May 9–13, 2022, IFAAMAS, 9 pages.]  
The *combined strategy* is a graph pruning strategy, that not only restricts the graph size for finding a solution, but also the available time (makespan). A lower bound for graph size and available time can be found through the shortest path, the path (agent's start to goal) that an agent would need in a single path finding environment. So for a start the graph size only contains those vertizes that were needed for shortest path of at least one agent; other vertizes are not available. The lower bound for time is the time that an agent needs to travers the longest shortest path (from single path finding). For an instance with these restrictions we then try to find a solution. If that does not work, we add all directly connected nodes (distance==1) (Every nodes that is not yet part of the pruned graph, but has a connection in the orignal graph to a node that is already a part of the pruned graph, is added.) At the same we increase the available time for a solution by one timestep. Then we try to find a solution and in case of failure we extend the graph and time once more in the described way, try to find a solution and repeat. Note that the instances we are dealling with contain a *horizon* (maximum amount of timesteps for finding a solution), further the graph size is limited by the original graph.  
This means that the default *combined strategy* has the issue, that a given *horizon* might not allow to extend the graph to its needed size. 

> **NOTE**  
> Thus if the makespan reaches the *horizon*, we allow to continue the search through increasing the graph size, but not the available time. For this purpose set *\#const maxexpans=0.* properly.

## Encoding

**Our ASP-encoding is available in** ***solver.lp***.  
Not that some of the encoding is inspired or directly from "A Compact Answer Set Programming Encoding of Multi-Agent Pathfinding", see also: https://ieeexplore.ieee.org/abstract/document/9333548. [Gómez, R. N. 
et al: *A Compact Answer Set Programming Encoding of Multi-Agent Pathfinding,* in IEEE Access, vol. 9, pp. 26886-26901, 2021, doi: 10.1109/ACCESS.2021.3053547.]
