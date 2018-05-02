# How to migrate the old work.
First of go to your github account and create a new repository.
Now when you have created the new repo where you want to move your work to, go
ahead to click the button [Clone or Download] then the button that copy the path to this repo.
First send this link to @Magnus Sörensen on our slack.
<br /><br />
In the terminal write
    $ cd
    $ git clone [ctrl]+[v]

This will clone the git repo down to your home directory like i.e
   $ /home/user/myrepo/
Where myrepo in this case is my new repo you just created on git hub.
<br /><br />
Now go in to the directory `catkin_ws/src/mywork` in your home directory and
copy all your files and directory's inside.
And paste them inside your repo file in `/home/user/myrepo/`.
Open a new terminal and:
    $ cd
    $ cd myrepo
    $ git add .
    $ git commit -am "Write what ever you like"
    $ git push

Then go back to github and bubble check if your repo have been updated (can
take a few moments).
If you did not get the update place contact @Magnus Sörensen on our slack
channel.
<br /><br />
Ass soon as I respond that your work have been connected to the new repo.
Dependent on if you use https://github.com/byteofsoren/ros-env.git to manage
your environment settings.

## I don't use ros-env
Delete or rename your `catkin_ws` directory and write this in to a terminal.
    $ git clone https://github.com/byteofsoren/blind_navi.git catkin_ws

## I use ros-env
Delete or rename your `.catkin_ws_kinetic` or `.catkin_ws_lunar` dependent on
what ros distribution you are developing for (in this project it is kinetic).
    $ git clone https://github.com/byteofsoren/blind_navi.git .catkin_ws_kinetic
<br /><br />
Now the main project is cloned to disk but if you observe the directory
`~/catkin_ws/src/yourwork/` is empty. To fix this in terminal write.
    $ cd
    $ cd catkin_ws
    $ git submodule init
    $ git submodule update

This should pull your submodules form your repos in to this repo.
If you want to clean up a bit you can delete the old folder in you home directory.
<br /><br />
i.e
    $ cd
    $ rm -r myrepo
