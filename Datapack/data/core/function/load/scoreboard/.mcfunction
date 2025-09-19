#> core:load/scoreboard/
#
# define scoreboards
#
# @within core:load/

# add objectives
    function core:load/scoreboard/objectives

# define constant
    function core:load/scoreboard/constant

# show health
    scoreboard objectives setdisplay below_name belowname_display
    scoreboard objectives modify belowname_display displayautoupdate true
    scoreboard objectives modify belowname_display displayname ""
    
    scoreboard objectives setdisplay list health
    scoreboard objectives modify health displayautoupdate true
    scoreboard objectives modify health rendertype hearts