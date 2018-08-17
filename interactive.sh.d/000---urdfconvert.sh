# 1: source urdf
# 2: target folder
# varargs: body and finger base joints
urdf2graspit() {
    local source="$1"
    if [[ ! -f "$source" ]]; then
        log_error no file: "source: '$source'"
        return 1
    fi
    shift
    local target="$1"
    if [[ ! -d "$target" ]]; then
        log_error no directory: "target: '$target'"
        return 1
    fi
    shift;
    (
        runtime_require_shellenv interactive "$mod_catkin_root"
        vecho 0 urdf2graspit command: rosrun urdf2graspit urdf2graspit_node "$source" "$target" "$@"
        rosrun urdf2graspit urdf2graspit_node "$source" "$target" "$@"
    )
}
