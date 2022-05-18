### Requirements:

processing 4.0,controlP5(a lib for processing)



### Statement:

In this project, I made a tower generator using shape grammar.  You can use it with the help of processing. If you successfully run it, you can move the slider on the screen to change the size of the bounding box, which will help you get different results. 

The cga file is the gate of the project. The component file is to define different components, where you can define different components to replace the  original ones. The metadata file is to storage the parameters , such as size and gramma. The myfunction file and the myfunction_y file  consists of some functions. The shapeclass file define a shape class, where you can change  the display function. 

The typical grammar is like the following: "C|(W)|[D]2*|(W)|C"

The | is to divide different of the gramma. The letter represents different component. The * means this component can be scaled. The () means the component can be  duplicated infinitely. The [] means the component can be  duplicated only limited times. 



### Declaration:

I learned a lot from this paper, Procedural modeling of buildings, which you can find in the following link: https://dl.acm.org/doi/10.1145/1141911.1141931.

Besides, I also learned from this video made by epic games, which you can find in this link: https://www.bilibili.com/video/BV1W5411D7HT/?spm_id_from=333.788.



