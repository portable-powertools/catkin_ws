rviz_urdf() {
    here roslaunch urdf_tutorial handconvert.launch rvizconfig:="$(here rospack find urdf_tutorial)/rviz/handconvert_urdf.rviz"
}
