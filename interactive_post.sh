runtime_require_shellenv interactive "$(getmod -n ros_kinetic)"
if [[ -d "$mod_catkin_root/devel" ]]; then
    source "$mod_catkin_root/devel/setup.bash"
else
    log_error "catkin devel not (yet) present in $mod_catkin_root, fix it by initializing the WS?"
fi

export ROS_WORKSPACE="$mod_catkin_root"
export ROS_PACKAGE_PATH="$mod_catkin_root/src:$ROS_PACKAGE_PATH"

# TODO: move graspit into catkin, too
eval "$(tsb -c shellenv_build -p "$mod_graspit_root")"

