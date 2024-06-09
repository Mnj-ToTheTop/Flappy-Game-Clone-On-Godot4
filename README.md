# Flappy-Game-On-Godot4
This is my attempt at Flappy game on Godot4 done from the scratch.
The sprites and audio belong to their creators. 


https://github.com/Mnj-ToTheTop/Flappy-Game-On-Godot4/assets/153396359/fd28d4bd-1b4a-4dd9-8029-2a60facf61c7



I first created a background for the whole game, and used `Timer` to switch between the sprites for the background.

Then I started working on the Bird or Player. I allowed the bird to fall with gravity and only gave a jump speed. The illusion of movement about the x-axis is due to the movement of the obstacles.

After working with the player, I moved on to the obstacles portion, where I imported two sprites of the pipes and arranged it in the exact manner, as well as created a score area between them. I created the score area as well as kill(?) area with `Area2D` and used `Collision2D` for detecting collision with the pipes or the ground.

Using similar technique I created the ground scene and created an animation for the gound movement using the `Animation2D` node present in Godot4.

I imported the bird, ground, and background onto the level scene, and created a `Node2D` for spawning of obstacles. Here, I got stuck, as I was unable to spawn the obstacles aka pipes in a proper position. I asked for help in the Godot4 Forum where I got a solution for my problem. I instantiated the each obstacles as the child of the Obstacle node instead of instantiating it as a child of the Level scene.

I created a Start and an End scene, added the audios using `AudioStreamPlayer` and viola a simple flappy game was created.

I had a lot of fun creating this. There are of course areas of improvement which I plan to improve later on. 
