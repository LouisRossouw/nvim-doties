vim.pack.add({
  { src = "https://github.com/goolord/alpha-nvim" },
})

local alpha = require("alpha")
local dashboard = require("alpha.themes.dashboard")

dashboard.section.header.val = {
"            :h-                                  Nhy`               ",
"           -mh.                           h.    `Ndho               ",
"           hmh+                          oNm.   oNdhh               ",
"          `Nmhd`                        /NNmd  /NNhhd               ",
"          -NNhhy                      `hMNmmm`+NNdhhh               ",
"          .NNmhhs              ```....`..-:/./mNdhhh+               ",
"           mNNdhhh-     `.-::///+++////++//:--.`-/sd`               ",
"           oNNNdhhdo..://++//++++++/+++//++///++/-.`                ",
"      y.   `mNNNmhhhdy+/++++//+/////++//+++///++////-` `/oos:       ",
" .    Nmy:  :NNNNmhhhhdy+/++/+++///:.....--:////+++///:.`:s+        ",
" h-   dNmNmy oNNNNNdhhhhy:/+/+++/-         ---:/+++//++//.`         ",
" hd+` -NNNy`./dNNNNNhhhh+-://///    -+oo:`  ::-:+////++///:`        ",
" /Nmhs+oss-:++/dNNNmhho:--::///    /mmmmmo  ../-///++///////.       ",
"  oNNdhhhhhhhs//osso/:---:::///    /yyyyso  ..o+-//////////:/.      ",
"   /mNNNmdhhhh/://+///::://////     -:::- ..+sy+:////////::/:/.     ",
"     /hNNNdhhs--:/+++////++/////.      ..-/yhhs-/////////::/::/`    ",
"       .ooo+/-::::/+///////++++//-/ossyyhhhhs/:///////:::/::::/:    ",
"       -///:::::::////++///+++/////:/+ooo+/::///////.::://::---+`   ",
"       /////+//++++/////+////-..//////////::-:::--`.:///:---:::/:   ",
"       //+++//++++++////+++///::--                 .::::-------::   ",
"       :/++++///////////++++//////.                -:/:----::../-   ",
"       -/++++//++///+//////////////               .::::---:::-.+`   ",
"       `////////////////////////////:.            --::-----...-/    ",
"        -///://////////////////////::::-..      :-:-:-..-::.`.+`    ",
"         :/://///:///::://::://::::::/:::::::-:---::-.-....``/- -   ",
"           ::::://::://::::::::::::::----------..-:....`.../- -+oo/ ",
"            -/:::-:::::---://:-::-::::----::---.-.......`-/.      ``",
"           s-`::--:::------:////----:---.-:::...-.....`./:          ",
"          yMNy.`::-.--::..-dmmhhhs-..-.-.......`.....-/:`           ",
"         oMNNNh. `-::--...:NNNdhhh/.--.`..``.......:/-              ",
"        :dy+:`      .-::-..NNNhhd+``..`...````.-::-`                ",
"                        .-:mNdhh:.......--::::-`                    ",
"                           yNh/..------..`                          ",
"                                                                    ",
}

dashboard.section.buttons.val = {
  dashboard.button("f", "  Find file", ":Telescope find_files <CR>"),
  dashboard.button("g", "  Live grep", ":Telescope live_grep <CR>"),
  dashboard.button("e", "  Browse files", ":Oil <CR>"),
  dashboard.button("n", "  New file", ":ene <BAR> startinsert <CR>"),
  dashboard.button("t", "  Tutor", ":Tutor <CR>"),
  dashboard.button("q", "  Quit", ":qa <CR>"),
}

alpha.setup(dashboard.config)
