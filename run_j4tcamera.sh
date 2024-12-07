docker run -it \
    --name=jetson-j4tcamera-test \
    --network=host \
    -v /home/$USER/Development/Volumes/noetic-pytorch/volume:/home/volume/ \
    --runtime nvidia \
    --env="NVIDIA_DRIVER_CAPABILITIES=all" \
    --env="DISPLAY=$DISPLAY" \
    --env="QT_X11_NO_MITSHM=1" \
    --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" \
    --privileged \
    jetson/j4tcamera:latest
#    --device-cgroup-rule "c 81:* rmw" \
#    --device-cgroup-rule "c 189:* rmw" \