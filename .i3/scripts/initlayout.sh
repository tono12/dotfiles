#!/bin/bash

# First we append the saved layout of worspace N to workspace M
i3-msg "workspace 0001 ; append_layout ~/.i3/initws.json"

# And finally we fill the containers with the programs they had
exec mate-terminal --hide-menubar --profile=cmus -e cmus &
exec mate-terminal --hide-menubar --profile=ssh-hold &
exec mate-terminal --hide-menubar -e glances &
