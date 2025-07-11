# **Farm-Game-Devlog**


## Day 1 (5/28/2025)

#### Progress
- Following a [farming game tutorial](https://www.youtube.com/watch?v=it0lsREGdmc&list=PLWTXKdBN8RZe3ytf6qdR4g1JRy0j-93v9&ab_channel=RapidVectors) in Godot by [Rapid Vectors](https://www.youtube.com/@rapidvectors)  
- Learned nodes, scenes, and tilemaps  
- Used free assets <a href="https://cupnooble.itch.io/sprout-lands-asset-pack">SproutLands by CupNooble</a> on itch.io  
- Set tilesets onto atlas manually  
- Animated animations for player character and tilemap scene  


## Day 2 (5/29/2025)

#### Progress
- Focused in player character movement  
- Learned node states and node state machine for player character movement  
- Used [script](https://github.com/rapidvectors/tutorial-components-and-scripts/tree/main/tutorials/croptails) of node state and node state machine by [rapidvectors](https://github.com/rapidvectors)  
- Provided keyboard input for movement  
- *Included controller support*  
- Learned how to use and debug for node states with idle and walk  


## Day 3 (5/30/2025)

#### Progress
- Learning further player state machines for other actions  
- Created script for tools. Listed object tools  
- Created node states for chopping, watering, and tilling animations  
*Tip: remember to turn looping in animation off*  
- *Edited walking script to allow diagonal movement using x and y axis*  
- Provided input mapping for hit/interaction  
- Added action script for interaction animation  
- *Added cancel action script. Will check if correct usage*  
- Learning tilesets and tilemap layers  
- House scene and physics apply on tilesets  
- Created 2 types of houses. Still unsure about physics layers, collision layers, and collision maps  


## Day 4 (5/31/2025)

#### Progress
- Learn how to create custom components that will be interactable; House door  
- *Understood deeper about collision layers(where the collision is) and collision mask(what will collide with the collision shape)*  
- Using extensible components(if going to use similar actions) to interact with door  
*Note: might use extensible components in crops or similar*  
- Learn dragging nodes onto script while pressing ctrl will create an onready variable  
- *Included collision on edges of ground. Made player collide with edges so water is not accessible.*  
- *Created object scene using Sprite2d node (rocks, trees)*  
- Created hitbox and hurtbox (not yet using fully)  


## Day 5 (6/1/2025)

#### Progress
  - Learn Y-sorting to move behind and infront of objects  
  *Tip: if character and tilemap layer is y-sorted, root node should also be y-sorted*  
  *Tip: adjust y-sorting for each element under select, rendering, and y-sort origin*  
  - Learn to create npc animals (chicken) and navigation agent 2d with avoidance and a navigation region 2d to limit movement of NPC  
  - *Used idea how to create characters to create chicken npc basics on own. Little scripts, no movement*  
  - Learned of Timer method of gdscript (not yet fleshed out, just an introduction)  
  - Learned how to script for npc movement and how to debug the walking animation  
  *Tip: using canvas items (Project Settings, Windows, Stretch) along a navigation agent will have improve interpolation (remove bouncing movement/staircase effect). The movement of the agent can be interpolated to create smoother transitions between path points*  
  - Learned how npc avoid colliding with each other  
  *Error: multiple NPC(chickens) always head to 1 specific pixel within the navigation region (0,0) before getting random position*  
  *Fix: doubled await code on character setup to wait for a random position*  
  - Learn randomized walk cycles for npc  
  *Notes: Might create cow NPC tomorrow, apply all learned*  



## Day 6 (6/2/2025)

#### Progress
  - <i>Creating cow NPC on own with reusable scripts from chicken NPC</i>  
  *Error: Cow NPC unable to transition to walk, stuck on idle*  
  *Fix: did not initialize idle node on parent node so cow doesnt transition*  
  - <i>Provided sprint animation for player character</i>  
  - Learned how to make navigation polygon to work with tilemap  
  *Tip: In geometry of NavigationRegion, make source geometry mode group explicit and copy soure geometry name. Paste source geometry name on necessary tilemap(Node, Groups) then bake navigation polygon*  
  *Tip: If NavigationRegion exceeds the grouped tilemap, NavigationArea will merge to (0,0). Align the NavigationRegion along the necessary tile edges to prevent this from happening*  


## Day 7 (6/3/2025)  

### Progress  
  - Learned UI integration for tools panel  
  - Learned StyleClasses/StyleResources to make different styles for the same type of control control  
    *Tip: this makes different styles for a button or panel*  
    *Error: unable to find region tab on NewAtlasTexture to edit region*  
    *Fix: Somehow worked out, it fixed itself when the NewAtlasTexture was reloaded*  
    *Note: will apply different UI type later on*


## Day 8 (6/4/2025)  

### Progress  
  - Continue with learning UI integration *(actually restarted from start of UI learning)*  
    *Error: margins don't autoset at the button region so button texture is not visible*  
    *Fix: forgot to set custom minumum size x and y of button*  
  - Upon revisiting, undewrstood the UI better and more clearly  
  - *Included an unarmed slot*  
    *Note: Might use the unarmed slot for holding materials*  
    *Note: Made a diagonal UI box. Will edit graphics to match the aesthetic soon*  
  - Learned the game overlay UI to implement the tools UI  
  - Made a tools_manager script and made it global  
  - *Applying a fix to animation wherein animation won't hit if mouse hovers on tool panel UI*  
  - *Figured out a script to identify if UI is hovered/entered by mouse*  
    *Bug: Still unable to fix the animation. Will get back in the future*


## Day 9 (6/5/2025)  


### Progress
  - Learned how to make collectible items using collectible components  
  - *Used idea of collectible components to provide an area that attracts the collectible towards the player*  
    *Note: Will come back to that idea soon*  
  - Learned inventory UI for collected materials
  - *Made inventory UI closable*  


## Day 10 (6/6/2025)


### Progress
  - Continued inventory UI costumizable  
    *Tip: Don't forget to put the string name for the collectable_name under collectable_component*   
  - Learned a global inventory script. *Will implement on the collapsable inventory soon*  
    *Tip: Don't use elif when separately checking as it will check the first argument first and will not consider the other elif statements*  
  - Learned about Day-Night Cycles  
  - Created a Day-Night global script  
    *Note: Replaced one button as next day button but not yet working*  
    *Note: Cannot grab focus of 2 buttons at the same time*  


## Day 11 (6/7/2025)


### Progress
  - Learned how to create farming crops  
  - Created growth cycle component and updated data_types global script with enums for growth cycle  
  - Provided script on corn node to access growth cycle component and hurt components  
    *Tip: Don't forget to put the hit component on the relative node or "tool" to activate hurt component, else script won't work*  
    *Tip: Watch the position of commands in function carefully*  
    *Bug: Visual bug on crop, stuck on seed*  
    *Fix: Changed the data to match seedling*  
    *Bug: Hit component missing scripts*  
    *Fix: Provide change od data type tool on_enter so the tool maches the hit component*  
    *Bug: Cannot collect the corn after cycle ends. Turns back to Mature crop next day*  


## Day 12 (6/8/2025)


### Progress
  - Continued bug fixing corn collect bug  
    *Fix: Needed to connect harvest function from growth cycle component and instantiate the scene to call it and replace global position of the node2d with the current node. Queue free to remove the node. Was incomplete trying to fix using ifelse on processing function*
  - Made tomato plant with the same components  
  - Fix y-sorting for player and necessary object components  


## Day 13 (6/9/2025)


### Progress  
  - Learned to add dynamic tiles for tilling land  
  - Made a component for tlling land  
    *Bug: Land is unable to be tilled*  
    *Fix: Allocated a different terrain from the terrain set onto the component*


## Day 14 (6/10/2025)


### Progress  
  - Continued dynamic tiles and added planting mechanic  
  - *Implemented button that allows you to switch between seeds*   
  - *Created buttons that call scenes*  
    *Error: Unable to switch button scenes*  
  - *Fix: Able to brute force button switching using visibility triggers*  
    *Note: Could approach it differently with instantiating scenes. Will adapt in the future*


 ## Day 15 (6/11/2025)

 ### Progress
   - Learned save states and resource inheritance  
   - Attatched the save data component on necessary resource and create another component on the main scene (game level) which saves all the nodes that have a save data component (Tomato and Corn scenes)  
   - Created a separate test scene save data node to check whether the components and the code works. Allows to save test scenes differently from the main game    


## Day 16 (6/12/2025)


### Progress
  - Pushed project onto GitHub repository (still in a work in progress)  
  - Edited .gitignore for github
  - Continued debugging the save/load components of game    
    *Bug: Encountered a visual bug that allows planting on untilled soil*
    *Fix: Impemented another if statement to check if the source_id under the mouse is a tilled soil or not (-1)*
    *Error: Unable to save due to nonexistent function call in base Resource*  
    *Fix: Script attatched to the resource was not the correct script. The confusion was because it was named the same yet the script was nonexistent, hence the call for the function _save_data was an error since there was no function to be called*
    *Bug: Unable to load the saved data*  
    *Fix: Corrected the mistaken argument at ResourceLoader.load()*  
  - *Note: Will listen back to the full explanation of the save/load components to further understand the workings of the code*  


## Day 17 (6/13/2025)


### Progress
  - Added a few comments on the scripts that enforces how the code works and interacts with each other
  - No extensive coding done  



## Day 18 (6/14/2025)


### Progress
  - Learn interactable NPC characters  
    *Note: Might script out to overridew the interact button*  
  - *Will create own NPC Character*  


## Day 19 (6/15/2025)


### Progress
  - Learn shaders to create different displays for NPC sprites  
  - Understood that script for shaders function differently, more akin to JavaScript or TypeScript language  
  - Created UI indication for when NPC is interactable  
    *Note: tried doing some basics of the script for the NPC interactable component without help from tutorial*  
  - Learned how to access and use the Godot Asset Library  
  - Used add-on plugin Dialogue Manager by nathanhoad from Godot Asset library  
  - Learn creating dialogues with help of DialogueManager plugin  

