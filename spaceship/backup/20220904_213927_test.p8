pico-8 cartridge // http://www.pico-8.com
version 38
__lua__
#include main.lua

--player
#include player/movement.lua
#include player/draw.lua

--config
#include config/config.lua

--background
#include background/movement.lua
#include background/draw.lua

__gfx__
00000000000cc000000cc000000cc000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000cc000000cc000000cc000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700006cc600006c60000006c600000070000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000770000c6cc6c00c6c60000006c6c0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000770000c6cc6c00c6c60000006c6c000000000000a000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700cc6cc6cccc6c60000006c6cc000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000000000c6cc6c00c6c60000006c6c0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000cc000000cc000000cc000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000070000007000000700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000070000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000700000000070000000a000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000000000000900000a0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000000000000000000000000000000000000000000000c0000000000000000000000000000000000000000000000000000000000000000000000000000000000
000000000000090000000a0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000000000900a0000009000000009000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
__map__
0004000000000000000000000000040000000000000004000000001500000000040000000400000400000004000400000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000040000000000150000000000040000000000000000000000000400000000000000000000040000000400000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000004000000000000000000000000000000000000000004000400000004000000000000000000040400000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000400000000000000000000040000000000001500000005000000000000000000000400040005000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000400000000000000000000000400000000000400000000000000040000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0400000000000000000000000000040000000000000000000000000004000004000000000000000000040000000404000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000040000000400000000000000000000000000000400000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000050004000000001500000400000000000000000400000004000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000040000000000000005000000000000000004000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000004000000000000000000000000000000000000000000000004000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000400000000000000000000000000000400000500000000000000050000000000000004000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000040000000000000000000000000000000000050000040000000000000000000000000015000000040415050000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000040000000000000000000000000000000000000000000000000000000000000400000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000400000000000000000000000000000000000400000000001500000000040000000400000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0004000000000000000000000000000000000004000004000000000000000000040000001500000000000000000004000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000004000000000000000004000400000000000400000000000000000400000000000400000000040000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
