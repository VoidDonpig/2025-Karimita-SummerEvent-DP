# lib:orb_movement/
#
# orb movement
#
# @public
#
# @context orb

# move
    # get cos
    execute in world:admin_area positioned 0.0 0.0 0.0 run tp 83a-51-1-0-1 ^ ^ ^0.1
    data modify storage lib: cos set from entity 83a-51-1-0-1 Pos[0]
    # move
    function lib:orb_movement/move with storage lib:

# reset
    data remove storage lib: cos