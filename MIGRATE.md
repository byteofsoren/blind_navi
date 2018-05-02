# How to migrate the old work.
First of go to your github account and create a new repository.
Now when you have created the new repo where you want to move your work to, go
ahead to click the button [Clone or Download] then the button that copy the path to this repo.
First send this link to @Magnus Sörensen on our slack.
<br /><br />
In the terminal write
```bash
$ cd
$ git clone [ctrl]+[v]
```

This will clone the git repo down to your home directory like i.e
```bash
$ /home/user/myrepo/
```
Where myrepo in this case is my new repo you just created on git hub.
<br /><br />
Now go in to the directory `catkin_ws/src/mywork` in your home directory and
copy all your files and directory's inside.
And paste them inside your repo file in `/home/user/myrepo/`.
Open a new terminal and:
```bash
$ cd
$ cd myrepo
$ git add .
$ git commit -am "Write what ever you like"
$ git push
```

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
```bash
$ git clone https://github.com/byteofsoren/blind_navi.git catkin_ws
```

## I use ros-env
Delete or rename your `.catkin_ws_kinetic` or `.catkin_ws_lunar` dependent on
what ros distribution you are developing for (in this project it is kinetic).
```bash
$ git clone https://github.com/byteofsoren/blind_navi.git .catkin_ws_kinetic
```
<br /><br />
Now the main project is cloned to disk but if you observe the directory
`~/catkin_ws/src/yourwork/` is empty. To fix this in terminal write.
```bash
$ cd
$ cd catkin_ws
$ git submodule init
$ git submodule update
$ cp ~/.catkin_ws_kinetic_old/devel/ devel -r
```
The last row in the commands was to coppy the devel map so you wont need to
reinit the ros enviorment (This is a quic fix and can be ignored if you want).

This should pull your submodules form your repos in to this repo.
The last row in the commands was to coppy the devel map so you wont need to
reinit the ros enviorment (This is a quic fix and can be ignored if you want).
If you want to clean up a bit you can delete the old folder in you home directory.
<br /><br />
i.e
```bash
    $ cd
    $ rm -r myrepo
```
