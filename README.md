### Build Command
```
E:\Xilinx\14.7\ISE_DS\PlanAhead\bin\planAhead.bat -nojournal -nolog -mode batch -source ./project.tcl
```

### Build Output
```
****** PlanAhead v14.7
  **** Build 321239 by xbuild on Fri Sep 27 19:31:35 MDT 2013
    ** Copyright 1986-1999, 2001-2013 Xilinx, Inc. All Rights Reserved.

INFO: [Common 17-78] Attempting to get a license: PlanAhead
INFO: [Common 17-290] Got license for PlanAhead
INFO: [Common 17-86] Your PlanAhead license expires in -362 day(s)
INFO: [Device 21-36] Loading parts and site information from E:/Xilinx/14.7/ISE_DS/PlanAhead/data/parts/arch.xml
Parsing RTL primitives file [E:/Xilinx/14.7/ISE_DS/PlanAhead/data/parts/xilinx/rtl/prims/rtl_prims.xml]
Finished parsing RTL primitives file [E:/Xilinx/14.7/ISE_DS/PlanAhead/data/parts/xilinx/rtl/prims/rtl_prims.xml]
source ./project.tcl
# set projDir "./Matrix/build"
# set srcDir "./Matrix"
# set projName "Matrix"
# set topName top
# set device xc6slx9-2tqg144
# if {[file exists "$projDir/$projName"]} { file delete -force "$projDir/$projName" }
# create_project $projName "$projDir/$projName" -part $device
# set_property design_mode RTL [get_filesets sources_1]
# set verilogSources [list "$srcDir/mojo_top.v" "$srcDir/display.v" "$srcDir/ram.v" "$srcDir/evaluator.v" "$srcDir/sub_evaluator.v" "$srcDir/game.v"]
# import_files -fileset [get_filesets sources_1] -force -norecurse $verilogSources
# set ucfSources [list "$srcDir/mojo.ucf"]
# import_files -fileset [get_filesets constrs_1] -force -norecurse $ucfSources
# set_property -name {steps.bitgen.args.More Options} -value {-g Binary:Yes -g Compress} -objects [get_runs impl_1]
# set_property steps.map.args.mt on [get_runs impl_1]
# set_property steps.map.args.pr b [get_runs impl_1]
# set_property steps.par.args.mt on [get_runs impl_1]
# update_compile_order -fileset sources_1
# launch_runs -runs synth_1
[Sat Apr 27 10:11:18 2019] Launched synth_1...
Run output will be captured here: ./Matrix/build/Matrix/Matrix.runs/synth_1/runme.log
# wait_on_run synth_1
[Sat Apr 27 10:11:18 2019] Waiting for synth_1 to finish...

*** Running xst
    with args -ifn "mojo_top.xst" -ofn "mojo_top.srp" -intstyle ise

Reading design: mojo_top.prj

=========================================================================
*                          HDL Parsing                                  *
=========================================================================
Analyzing Verilog file "./Matrix/build/Matrix/Matrix.srcs/sources_1/imports/Matrix/ram.v" into library work
Parsing module <ram>.
Analyzing Verilog file "./Matrix/build/Matrix/Matrix.srcs/sources_1/imports/Matrix/sub_evaluator.v" into library work
Parsing module <sub_evaluator>.
Analyzing Verilog file "./Matrix/build/Matrix/Matrix.srcs/sources_1/imports/Matrix/evaluator.v" into library work
Parsing module <evaluator>.
Analyzing Verilog file "./Matrix/build/Matrix/Matrix.srcs/sources_1/imports/Matrix/game.v" into library work
Parsing module <game>.
WARNING:HDLCompiler:751 - "./Matrix/build/Matrix/Matrix.srcs/sources_1/imports/Matrix/game.v" Line 162: Redeclaration of ansi port score is not allowed
Analyzing Verilog file "./Matrix/build/Matrix/Matrix.srcs/sources_1/imports/Matrix/display.v" into library work
Parsing module <display>.
Analyzing Verilog file "./Matrix/build/Matrix/Matrix.srcs/sources_1/imports/Matrix/mojo_top.v" into library work
Parsing module <mojo_top>.

=========================================================================
*                            HDL Elaboration                            *
=========================================================================

Elaborating module <mojo_top>.
WARNING:HDLCompiler:872 - "./Matrix/build/Matrix/Matrix.srcs/sources_1/imports/Matrix/mojo_top.v" Line 209: Using initial value of piece_color since it is never assigned
WARNING:HDLCompiler:413 - "./Matrix/build/Matrix/Matrix.srcs/sources_1/imports/Matrix/mojo_top.v" Line 72: Result of 32-bit expression is truncated to fit in 1-bit target.
WARNING:HDLCompiler:413 - "./Matrix/build/Matrix/Matrix.srcs/sources_1/imports/Matrix/mojo_top.v" Line 73: Result of 32-bit expression is truncated to fit in 1-bit target.
WARNING:HDLCompiler:413 - "./Matrix/build/Matrix/Matrix.srcs/sources_1/imports/Matrix/mojo_top.v" Line 74: Result of 32-bit expression is truncated to fit in 1-bit target.
WARNING:HDLCompiler:413 - "./Matrix/build/Matrix/Matrix.srcs/sources_1/imports/Matrix/mojo_top.v" Line 75: Result of 32-bit expression is truncated to fit in 1-bit target.
WARNING:HDLCompiler:413 - "./Matrix/build/Matrix/Matrix.srcs/sources_1/imports/Matrix/mojo_top.v" Line 76: Result of 32-bit expression is truncated to fit in 1-bit target.
WARNING:HDLCompiler:413 - "./Matrix/build/Matrix/Matrix.srcs/sources_1/imports/Matrix/mojo_top.v" Line 77: Result of 32-bit expression is truncated to fit in 1-bit target.
WARNING:HDLCompiler:413 - "./Matrix/build/Matrix/Matrix.srcs/sources_1/imports/Matrix/mojo_top.v" Line 78: Result of 32-bit expression is truncated to fit in 1-bit target.
WARNING:HDLCompiler:413 - "./Matrix/build/Matrix/Matrix.srcs/sources_1/imports/Matrix/mojo_top.v" Line 79: Result of 32-bit expression is truncated to fit in 1-bit target.

Elaborating module <display>.

Elaborating module <ram(SIZE=24,DEPTH=512)>.
WARNING:HDLCompiler:413 - "./Matrix/build/Matrix/Matrix.srcs/sources_1/imports/Matrix/display.v" Line 89: Result of 10-bit expression is truncated to fit in 9-bit target.
WARNING:HDLCompiler:413 - "./Matrix/build/Matrix/Matrix.srcs/sources_1/imports/Matrix/display.v" Line 137: Result of 6-bit expression is truncated to fit in 5-bit target.
WARNING:HDLCompiler:413 - "./Matrix/build/Matrix/Matrix.srcs/sources_1/imports/Matrix/display.v" Line 138: Result of 10-bit expression is truncated to fit in 9-bit target.
WARNING:HDLCompiler:413 - "./Matrix/build/Matrix/Matrix.srcs/sources_1/imports/Matrix/display.v" Line 155: Result of 32-bit expression is truncated to fit in 13-bit target.
WARNING:HDLCompiler:413 - "./Matrix/build/Matrix/Matrix.srcs/sources_1/imports/Matrix/display.v" Line 164: Result of 5-bit expression is truncated to fit in 4-bit target.
WARNING:HDLCompiler:413 - "./Matrix/build/Matrix/Matrix.srcs/sources_1/imports/Matrix/display.v" Line 167: Result of 32-bit expression is truncated to fit in 5-bit target.
WARNING:HDLCompiler:413 - "./Matrix/build/Matrix/Matrix.srcs/sources_1/imports/Matrix/display.v" Line 168: Result of 32-bit expression is truncated to fit in 5-bit target.
WARNING:HDLCompiler:413 - "./Matrix/build/Matrix/Matrix.srcs/sources_1/imports/Matrix/display.v" Line 169: Result of 32-bit expression is truncated to fit in 5-bit target.
WARNING:HDLCompiler:413 - "./Matrix/build/Matrix/Matrix.srcs/sources_1/imports/Matrix/display.v" Line 172: Result of 32-bit expression is truncated to fit in 3-bit target.

Elaborating module <game(INITIAL=0)>.
WARNING:HDLCompiler:413 - "./Matrix/build/Matrix/Matrix.srcs/sources_1/imports/Matrix/game.v" Line 43: Result of 4-bit expression is truncated to fit in 3-bit target.
WARNING:HDLCompiler:413 - "./Matrix/build/Matrix/Matrix.srcs/sources_1/imports/Matrix/game.v" Line 44: Result of 32-bit expression is truncated to fit in 1-bit target.

Elaborating module <ram(SIZE=30,DEPTH=32)>.

Elaborating module <ram(SIZE=10,DEPTH=32)>.

Elaborating module <evaluator>.

Elaborating module <sub_evaluator>.
WARNING:HDLCompiler:413 - "./Matrix/build/Matrix/Matrix.srcs/sources_1/imports/Matrix/sub_evaluator.v" Line 117: Result of 6-bit expression is truncated to fit in 5-bit target.
WARNING:HDLCompiler:413 - "./Matrix/build/Matrix/Matrix.srcs/sources_1/imports/Matrix/sub_evaluator.v" Line 121: Result of 6-bit expression is truncated to fit in 5-bit target.
WARNING:HDLCompiler:413 - "./Matrix/build/Matrix/Matrix.srcs/sources_1/imports/Matrix/sub_evaluator.v" Line 129: Result of 6-bit expression is truncated to fit in 5-bit target.
WARNING:HDLCompiler:413 - "./Matrix/build/Matrix/Matrix.srcs/sources_1/imports/Matrix/sub_evaluator.v" Line 130: Result of 6-bit expression is truncated to fit in 5-bit target.
WARNING:HDLCompiler:413 - "./Matrix/build/Matrix/Matrix.srcs/sources_1/imports/Matrix/sub_evaluator.v" Line 145: Result of 6-bit expression is truncated to fit in 5-bit target.
WARNING:HDLCompiler:413 - "./Matrix/build/Matrix/Matrix.srcs/sources_1/imports/Matrix/sub_evaluator.v" Line 156: Result of 6-bit expression is truncated to fit in 5-bit target.
WARNING:HDLCompiler:413 - "./Matrix/build/Matrix/Matrix.srcs/sources_1/imports/Matrix/sub_evaluator.v" Line 160: Result of 6-bit expression is truncated to fit in 5-bit target.
WARNING:HDLCompiler:413 - "./Matrix/build/Matrix/Matrix.srcs/sources_1/imports/Matrix/sub_evaluator.v" Line 190: Result of 17-bit expression is truncated to fit in 16-bit target.
WARNING:HDLCompiler:413 - "./Matrix/build/Matrix/Matrix.srcs/sources_1/imports/Matrix/sub_evaluator.v" Line 194: Result of 32-bit expression is truncated to fit in 16-bit target.
WARNING:HDLCompiler:413 - "./Matrix/build/Matrix/Matrix.srcs/sources_1/imports/Matrix/sub_evaluator.v" Line 242: Result of 32-bit expression is truncated to fit in 6-bit target.
WARNING:HDLCompiler:413 - "./Matrix/build/Matrix/Matrix.srcs/sources_1/imports/Matrix/sub_evaluator.v" Line 243: Result of 32-bit expression is truncated to fit in 6-bit target.
WARNING:HDLCompiler:413 - "./Matrix/build/Matrix/Matrix.srcs/sources_1/imports/Matrix/sub_evaluator.v" Line 244: Result of 32-bit expression is truncated to fit in 6-bit target.
WARNING:HDLCompiler:413 - "./Matrix/build/Matrix/Matrix.srcs/sources_1/imports/Matrix/sub_evaluator.v" Line 245: Result of 32-bit expression is truncated to fit in 6-bit target.
WARNING:HDLCompiler:413 - "./Matrix/build/Matrix/Matrix.srcs/sources_1/imports/Matrix/sub_evaluator.v" Line 246: Result of 32-bit expression is truncated to fit in 6-bit target.
WARNING:HDLCompiler:413 - "./Matrix/build/Matrix/Matrix.srcs/sources_1/imports/Matrix/sub_evaluator.v" Line 247: Result of 32-bit expression is truncated to fit in 6-bit target.
WARNING:HDLCompiler:413 - "./Matrix/build/Matrix/Matrix.srcs/sources_1/imports/Matrix/sub_evaluator.v" Line 248: Result of 32-bit expression is truncated to fit in 6-bit target.
WARNING:HDLCompiler:413 - "./Matrix/build/Matrix/Matrix.srcs/sources_1/imports/Matrix/sub_evaluator.v" Line 249: Result of 32-bit expression is truncated to fit in 6-bit target.
WARNING:HDLCompiler:413 - "./Matrix/build/Matrix/Matrix.srcs/sources_1/imports/Matrix/sub_evaluator.v" Line 250: Result of 32-bit expression is truncated to fit in 6-bit target.
WARNING:HDLCompiler:413 - "./Matrix/build/Matrix/Matrix.srcs/sources_1/imports/Matrix/sub_evaluator.v" Line 251: Result of 32-bit expression is truncated to fit in 6-bit target.
WARNING:HDLCompiler:413 - "./Matrix/build/Matrix/Matrix.srcs/sources_1/imports/Matrix/sub_evaluator.v" Line 266: Result of 6-bit expression is truncated to fit in 5-bit target.
WARNING:HDLCompiler:413 - "./Matrix/build/Matrix/Matrix.srcs/sources_1/imports/Matrix/sub_evaluator.v" Line 271: Result of 32-bit expression is truncated to fit in 16-bit target.
WARNING:HDLCompiler:413 - "./Matrix/build/Matrix/Matrix.srcs/sources_1/imports/Matrix/sub_evaluator.v" Line 278: Result of 20-bit expression is truncated to fit in 16-bit target.
WARNING:HDLCompiler:413 - "./Matrix/build/Matrix/Matrix.srcs/sources_1/imports/Matrix/sub_evaluator.v" Line 279: Result of 20-bit expression is truncated to fit in 16-bit target.
WARNING:HDLCompiler:413 - "./Matrix/build/Matrix/Matrix.srcs/sources_1/imports/Matrix/sub_evaluator.v" Line 280: Result of 20-bit expression is truncated to fit in 16-bit target.
WARNING:HDLCompiler:413 - "./Matrix/build/Matrix/Matrix.srcs/sources_1/imports/Matrix/sub_evaluator.v" Line 281: Result of 22-bit expression is truncated to fit in 16-bit target.
WARNING:HDLCompiler:413 - "./Matrix/build/Matrix/Matrix.srcs/sources_1/imports/Matrix/sub_evaluator.v" Line 282: Result of 20-bit expression is truncated to fit in 16-bit target.
WARNING:HDLCompiler:1127 - "./Matrix/build/Matrix/Matrix.srcs/sources_1/imports/Matrix/sub_evaluator.v" Line 76: Assignment to fail ignored, since the identifier is never used
WARNING:HDLCompiler:413 - "./Matrix/build/Matrix/Matrix.srcs/sources_1/imports/Matrix/evaluator.v" Line 73: Result of 6-bit expression is truncated to fit in 5-bit target.
WARNING:HDLCompiler:413 - "./Matrix/build/Matrix/Matrix.srcs/sources_1/imports/Matrix/evaluator.v" Line 108: Result of 7-bit expression is truncated to fit in 6-bit target.
WARNING:HDLCompiler:413 - "./Matrix/build/Matrix/Matrix.srcs/sources_1/imports/Matrix/game.v" Line 184: Result of 27-bit expression is truncated to fit in 26-bit target.
WARNING:HDLCompiler:413 - "./Matrix/build/Matrix/Matrix.srcs/sources_1/imports/Matrix/game.v" Line 192: Result of 6-bit expression is truncated to fit in 5-bit target.
WARNING:HDLCompiler:413 - "./Matrix/build/Matrix/Matrix.srcs/sources_1/imports/Matrix/game.v" Line 193: Result of 6-bit expression is truncated to fit in 5-bit target.
WARNING:HDLCompiler:413 - "./Matrix/build/Matrix/Matrix.srcs/sources_1/imports/Matrix/game.v" Line 205: Result of 7-bit expression is truncated to fit in 6-bit target.
WARNING:HDLCompiler:413 - "./Matrix/build/Matrix/Matrix.srcs/sources_1/imports/Matrix/game.v" Line 218: Result of 3-bit expression is truncated to fit in 2-bit target.
WARNING:HDLCompiler:413 - "./Matrix/build/Matrix/Matrix.srcs/sources_1/imports/Matrix/game.v" Line 219: Result of 32-bit expression is truncated to fit in 4-bit target.
WARNING:HDLCompiler:413 - "./Matrix/build/Matrix/Matrix.srcs/sources_1/imports/Matrix/game.v" Line 220: Result of 5-bit expression is truncated to fit in 4-bit target.
WARNING:HDLCompiler:413 - "./Matrix/build/Matrix/Matrix.srcs/sources_1/imports/Matrix/game.v" Line 221: Result of 6-bit expression is truncated to fit in 5-bit target.
WARNING:HDLCompiler:413 - "./Matrix/build/Matrix/Matrix.srcs/sources_1/imports/Matrix/game.v" Line 268: Result of 6-bit expression is truncated to fit in 5-bit target.
WARNING:HDLCompiler:413 - "./Matrix/build/Matrix/Matrix.srcs/sources_1/imports/Matrix/game.v" Line 272: Result of 7-bit expression is truncated to fit in 6-bit target.
WARNING:HDLCompiler:413 - "./Matrix/build/Matrix/Matrix.srcs/sources_1/imports/Matrix/game.v" Line 296: Result of 6-bit expression is truncated to fit in 5-bit target.
WARNING:HDLCompiler:413 - "./Matrix/build/Matrix/Matrix.srcs/sources_1/imports/Matrix/game.v" Line 297: Result of 6-bit expression is truncated to fit in 5-bit target.
WARNING:HDLCompiler:413 - "./Matrix/build/Matrix/Matrix.srcs/sources_1/imports/Matrix/game.v" Line 301: Result of 7-bit expression is truncated to fit in 6-bit target.
WARNING:HDLCompiler:413 - "./Matrix/build/Matrix/Matrix.srcs/sources_1/imports/Matrix/game.v" Line 368: Result of 32-bit expression is truncated to fit in 5-bit target.
WARNING:HDLCompiler:413 - "./Matrix/build/Matrix/Matrix.srcs/sources_1/imports/Matrix/game.v" Line 369: Result of 32-bit expression is truncated to fit in 5-bit target.
WARNING:HDLCompiler:413 - "./Matrix/build/Matrix/Matrix.srcs/sources_1/imports/Matrix/game.v" Line 377: Result of 32-bit expression is truncated to fit in 5-bit target.
WARNING:HDLCompiler:413 - "./Matrix/build/Matrix/Matrix.srcs/sources_1/imports/Matrix/game.v" Line 378: Result of 32-bit expression is truncated to fit in 5-bit target.
WARNING:HDLCompiler:413 - "./Matrix/build/Matrix/Matrix.srcs/sources_1/imports/Matrix/game.v" Line 385: Result of 32-bit expression is truncated to fit in 5-bit target.
WARNING:HDLCompiler:413 - "./Matrix/build/Matrix/Matrix.srcs/sources_1/imports/Matrix/game.v" Line 386: Result of 32-bit expression is truncated to fit in 5-bit target.

Elaborating module <game(INITIAL=1)>.
WARNING:HDLCompiler:413 - "./Matrix/build/Matrix/Matrix.srcs/sources_1/imports/Matrix/game.v" Line 43: Result of 4-bit expression is truncated to fit in 3-bit target.
WARNING:HDLCompiler:413 - "./Matrix/build/Matrix/Matrix.srcs/sources_1/imports/Matrix/game.v" Line 44: Result of 32-bit expression is truncated to fit in 1-bit target.
WARNING:HDLCompiler:413 - "./Matrix/build/Matrix/Matrix.srcs/sources_1/imports/Matrix/game.v" Line 184: Result of 27-bit expression is truncated to fit in 26-bit target.
WARNING:HDLCompiler:413 - "./Matrix/build/Matrix/Matrix.srcs/sources_1/imports/Matrix/game.v" Line 192: Result of 6-bit expression is truncated to fit in 5-bit target.
WARNING:HDLCompiler:413 - "./Matrix/build/Matrix/Matrix.srcs/sources_1/imports/Matrix/game.v" Line 193: Result of 6-bit expression is truncated to fit in 5-bit target.
WARNING:HDLCompiler:413 - "./Matrix/build/Matrix/Matrix.srcs/sources_1/imports/Matrix/game.v" Line 205: Result of 7-bit expression is truncated to fit in 6-bit target.
WARNING:HDLCompiler:413 - "./Matrix/build/Matrix/Matrix.srcs/sources_1/imports/Matrix/game.v" Line 218: Result of 3-bit expression is truncated to fit in 2-bit target.
WARNING:HDLCompiler:413 - "./Matrix/build/Matrix/Matrix.srcs/sources_1/imports/Matrix/game.v" Line 219: Result of 32-bit expression is truncated to fit in 4-bit target.
WARNING:HDLCompiler:413 - "./Matrix/build/Matrix/Matrix.srcs/sources_1/imports/Matrix/game.v" Line 220: Result of 5-bit expression is truncated to fit in 4-bit target.
WARNING:HDLCompiler:413 - "./Matrix/build/Matrix/Matrix.srcs/sources_1/imports/Matrix/game.v" Line 221: Result of 6-bit expression is truncated to fit in 5-bit target.
WARNING:HDLCompiler:413 - "./Matrix/build/Matrix/Matrix.srcs/sources_1/imports/Matrix/game.v" Line 268: Result of 6-bit expression is truncated to fit in 5-bit target.
WARNING:HDLCompiler:413 - "./Matrix/build/Matrix/Matrix.srcs/sources_1/imports/Matrix/game.v" Line 272: Result of 7-bit expression is truncated to fit in 6-bit target.
WARNING:HDLCompiler:413 - "./Matrix/build/Matrix/Matrix.srcs/sources_1/imports/Matrix/game.v" Line 296: Result of 6-bit expression is truncated to fit in 5-bit target.
WARNING:HDLCompiler:413 - "./Matrix/build/Matrix/Matrix.srcs/sources_1/imports/Matrix/game.v" Line 297: Result of 6-bit expression is truncated to fit in 5-bit target.
WARNING:HDLCompiler:413 - "./Matrix/build/Matrix/Matrix.srcs/sources_1/imports/Matrix/game.v" Line 301: Result of 7-bit expression is truncated to fit in 6-bit target.
WARNING:HDLCompiler:413 - "./Matrix/build/Matrix/Matrix.srcs/sources_1/imports/Matrix/game.v" Line 368: Result of 32-bit expression is truncated to fit in 5-bit target.
WARNING:HDLCompiler:413 - "./Matrix/build/Matrix/Matrix.srcs/sources_1/imports/Matrix/game.v" Line 369: Result of 32-bit expression is truncated to fit in 5-bit target.
WARNING:HDLCompiler:413 - "./Matrix/build/Matrix/Matrix.srcs/sources_1/imports/Matrix/game.v" Line 377: Result of 32-bit expression is truncated to fit in 5-bit target.
WARNING:HDLCompiler:413 - "./Matrix/build/Matrix/Matrix.srcs/sources_1/imports/Matrix/game.v" Line 378: Result of 32-bit expression is truncated to fit in 5-bit target.
WARNING:HDLCompiler:413 - "./Matrix/build/Matrix/Matrix.srcs/sources_1/imports/Matrix/game.v" Line 385: Result of 32-bit expression is truncated to fit in 5-bit target.
WARNING:HDLCompiler:413 - "./Matrix/build/Matrix/Matrix.srcs/sources_1/imports/Matrix/game.v" Line 386: Result of 32-bit expression is truncated to fit in 5-bit target.

Elaborating module <game(INITIAL=2)>.
WARNING:HDLCompiler:413 - "./Matrix/build/Matrix/Matrix.srcs/sources_1/imports/Matrix/game.v" Line 43: Result of 4-bit expression is truncated to fit in 3-bit target.
WARNING:HDLCompiler:413 - "./Matrix/build/Matrix/Matrix.srcs/sources_1/imports/Matrix/game.v" Line 44: Result of 32-bit expression is truncated to fit in 1-bit target.
WARNING:HDLCompiler:413 - "./Matrix/build/Matrix/Matrix.srcs/sources_1/imports/Matrix/game.v" Line 184: Result of 27-bit expression is truncated to fit in 26-bit target.
WARNING:HDLCompiler:413 - "./Matrix/build/Matrix/Matrix.srcs/sources_1/imports/Matrix/game.v" Line 192: Result of 6-bit expression is truncated to fit in 5-bit target.
WARNING:HDLCompiler:413 - "./Matrix/build/Matrix/Matrix.srcs/sources_1/imports/Matrix/game.v" Line 193: Result of 6-bit expression is truncated to fit in 5-bit target.
WARNING:HDLCompiler:413 - "./Matrix/build/Matrix/Matrix.srcs/sources_1/imports/Matrix/game.v" Line 205: Result of 7-bit expression is truncated to fit in 6-bit target.
WARNING:HDLCompiler:413 - "./Matrix/build/Matrix/Matrix.srcs/sources_1/imports/Matrix/game.v" Line 218: Result of 3-bit expression is truncated to fit in 2-bit target.
WARNING:HDLCompiler:413 - "./Matrix/build/Matrix/Matrix.srcs/sources_1/imports/Matrix/game.v" Line 219: Result of 32-bit expression is truncated to fit in 4-bit target.
WARNING:HDLCompiler:413 - "./Matrix/build/Matrix/Matrix.srcs/sources_1/imports/Matrix/game.v" Line 220: Result of 5-bit expression is truncated to fit in 4-bit target.
WARNING:HDLCompiler:413 - "./Matrix/build/Matrix/Matrix.srcs/sources_1/imports/Matrix/game.v" Line 221: Result of 6-bit expression is truncated to fit in 5-bit target.
WARNING:HDLCompiler:413 - "./Matrix/build/Matrix/Matrix.srcs/sources_1/imports/Matrix/game.v" Line 268: Result of 6-bit expression is truncated to fit in 5-bit target.
WARNING:HDLCompiler:413 - "./Matrix/build/Matrix/Matrix.srcs/sources_1/imports/Matrix/game.v" Line 272: Result of 7-bit expression is truncated to fit in 6-bit target.
WARNING:HDLCompiler:413 - "./Matrix/build/Matrix/Matrix.srcs/sources_1/imports/Matrix/game.v" Line 296: Result of 6-bit expression is truncated to fit in 5-bit target.
WARNING:HDLCompiler:413 - "./Matrix/build/Matrix/Matrix.srcs/sources_1/imports/Matrix/game.v" Line 297: Result of 6-bit expression is truncated to fit in 5-bit target.
WARNING:HDLCompiler:413 - "./Matrix/build/Matrix/Matrix.srcs/sources_1/imports/Matrix/game.v" Line 301: Result of 7-bit expression is truncated to fit in 6-bit target.
WARNING:HDLCompiler:413 - "./Matrix/build/Matrix/Matrix.srcs/sources_1/imports/Matrix/game.v" Line 368: Result of 32-bit expression is truncated to fit in 5-bit target.
WARNING:HDLCompiler:413 - "./Matrix/build/Matrix/Matrix.srcs/sources_1/imports/Matrix/game.v" Line 369: Result of 32-bit expression is truncated to fit in 5-bit target.
WARNING:HDLCompiler:413 - "./Matrix/build/Matrix/Matrix.srcs/sources_1/imports/Matrix/game.v" Line 377: Result of 32-bit expression is truncated to fit in 5-bit target.
WARNING:HDLCompiler:413 - "./Matrix/build/Matrix/Matrix.srcs/sources_1/imports/Matrix/game.v" Line 378: Result of 32-bit expression is truncated to fit in 5-bit target.
WARNING:HDLCompiler:413 - "./Matrix/build/Matrix/Matrix.srcs/sources_1/imports/Matrix/game.v" Line 385: Result of 32-bit expression is truncated to fit in 5-bit target.
WARNING:HDLCompiler:413 - "./Matrix/build/Matrix/Matrix.srcs/sources_1/imports/Matrix/game.v" Line 386: Result of 32-bit expression is truncated to fit in 5-bit target.
WARNING:HDLCompiler:413 - "./Matrix/build/Matrix/Matrix.srcs/sources_1/imports/Matrix/mojo_top.v" Line 222: Result of 14-bit expression is truncated to fit in 13-bit target.
WARNING:HDLCompiler:413 - "./Matrix/build/Matrix/Matrix.srcs/sources_1/imports/Matrix/mojo_top.v" Line 229: Result of 14-bit expression is truncated to fit in 13-bit target.
WARNING:HDLCompiler:413 - "./Matrix/build/Matrix/Matrix.srcs/sources_1/imports/Matrix/mojo_top.v" Line 231: Result of 14-bit expression is truncated to fit in 13-bit target.
WARNING:HDLCompiler:413 - "./Matrix/build/Matrix/Matrix.srcs/sources_1/imports/Matrix/mojo_top.v" Line 246: Result of 14-bit expression is truncated to fit in 13-bit target.
WARNING:HDLCompiler:413 - "./Matrix/build/Matrix/Matrix.srcs/sources_1/imports/Matrix/mojo_top.v" Line 247: Result of 10-bit expression is truncated to fit in 8-bit target.
WARNING:HDLCompiler:413 - "./Matrix/build/Matrix/Matrix.srcs/sources_1/imports/Matrix/mojo_top.v" Line 249: Result of 14-bit expression is truncated to fit in 13-bit target.
WARNING:HDLCompiler:413 - "./Matrix/build/Matrix/Matrix.srcs/sources_1/imports/Matrix/mojo_top.v" Line 252: Result of 4-bit expression is truncated to fit in 3-bit target.
WARNING:HDLCompiler:413 - "./Matrix/build/Matrix/Matrix.srcs/sources_1/imports/Matrix/mojo_top.v" Line 276: Result of 32-bit expression is truncated to fit in 4-bit target.
WARNING:HDLCompiler:413 - "./Matrix/build/Matrix/Matrix.srcs/sources_1/imports/Matrix/mojo_top.v" Line 285: Result of 3-bit expression is truncated to fit in 2-bit target.
WARNING:HDLCompiler:413 - "./Matrix/build/Matrix/Matrix.srcs/sources_1/imports/Matrix/mojo_top.v" Line 303: Result of 3-bit expression is truncated to fit in 2-bit target.
WARNING:HDLCompiler:413 - "./Matrix/build/Matrix/Matrix.srcs/sources_1/imports/Matrix/mojo_top.v" Line 330: Result of 3-bit expression is truncated to fit in 2-bit target.
WARNING:HDLCompiler:413 - "./Matrix/build/Matrix/Matrix.srcs/sources_1/imports/Matrix/mojo_top.v" Line 336: Result of 32-bit expression is truncated to fit in 15-bit target.
WARNING:HDLCompiler:413 - "./Matrix/build/Matrix/Matrix.srcs/sources_1/imports/Matrix/mojo_top.v" Line 349: Result of 32-bit expression is truncated to fit in 29-bit target.
WARNING:HDLCompiler:413 - "./Matrix/build/Matrix/Matrix.srcs/sources_1/imports/Matrix/mojo_top.v" Line 357: Result of 17-bit expression is truncated to fit in 16-bit target.
WARNING:HDLCompiler:413 - "./Matrix/build/Matrix/Matrix.srcs/sources_1/imports/Matrix/mojo_top.v" Line 359: Result of 3-bit expression is truncated to fit in 2-bit target.
WARNING:HDLCompiler:413 - "./Matrix/build/Matrix/Matrix.srcs/sources_1/imports/Matrix/mojo_top.v" Line 369: Result of 22-bit expression is truncated to fit in 21-bit target.
WARNING:HDLCompiler:413 - "./Matrix/build/Matrix/Matrix.srcs/sources_1/imports/Matrix/mojo_top.v" Line 375: Result of 12-bit expression is truncated to fit in 10-bit target.
WARNING:HDLCompiler:413 - "./Matrix/build/Matrix/Matrix.srcs/sources_1/imports/Matrix/mojo_top.v" Line 386: Result of 7-bit expression is truncated to fit in 6-bit target.
WARNING:HDLCompiler:413 - "./Matrix/build/Matrix/Matrix.srcs/sources_1/imports/Matrix/mojo_top.v" Line 391: Result of 7-bit expression is truncated to fit in 6-bit target.
WARNING:HDLCompiler:413 - "./Matrix/build/Matrix/Matrix.srcs/sources_1/imports/Matrix/mojo_top.v" Line 408: Result of 32-bit expression is truncated to fit in 10-bit target.
WARNING:HDLCompiler:413 - "./Matrix/build/Matrix/Matrix.srcs/sources_1/imports/Matrix/mojo_top.v" Line 423: Result of 7-bit expression is truncated to fit in 6-bit target.
WARNING:HDLCompiler:413 - "./Matrix/build/Matrix/Matrix.srcs/sources_1/imports/Matrix/mojo_top.v" Line 430: Result of 6-bit expression is truncated to fit in 5-bit target.
WARNING:HDLCompiler:413 - "./Matrix/build/Matrix/Matrix.srcs/sources_1/imports/Matrix/mojo_top.v" Line 449: Result of 15-bit expression is truncated to fit in 10-bit target.
WARNING:HDLCompiler:413 - "./Matrix/build/Matrix/Matrix.srcs/sources_1/imports/Matrix/mojo_top.v" Line 457: Result of 7-bit expression is truncated to fit in 6-bit target.
WARNING:HDLCompiler:413 - "./Matrix/build/Matrix/Matrix.srcs/sources_1/imports/Matrix/mojo_top.v" Line 483: Result of 11-bit expression is truncated to fit in 10-bit target.
WARNING:HDLCompiler:413 - "./Matrix/build/Matrix/Matrix.srcs/sources_1/imports/Matrix/mojo_top.v" Line 510: Result of 32-bit expression is truncated to fit in 10-bit target.
WARNING:HDLCompiler:413 - "./Matrix/build/Matrix/Matrix.srcs/sources_1/imports/Matrix/mojo_top.v" Line 512: Result of 11-bit expression is truncated to fit in 10-bit target.
WARNING:HDLCompiler:413 - "./Matrix/build/Matrix/Matrix.srcs/sources_1/imports/Matrix/mojo_top.v" Line 520: Result of 7-bit expression is truncated to fit in 6-bit target.
WARNING:HDLCompiler:413 - "./Matrix/build/Matrix/Matrix.srcs/sources_1/imports/Matrix/mojo_top.v" Line 523: Result of 7-bit expression is truncated to fit in 6-bit target.
WARNING:HDLCompiler:413 - "./Matrix/build/Matrix/Matrix.srcs/sources_1/imports/Matrix/mojo_top.v" Line 538: Result of 32-bit expression is truncated to fit in 24-bit target.
WARNING:HDLCompiler:413 - "./Matrix/build/Matrix/Matrix.srcs/sources_1/imports/Matrix/mojo_top.v" Line 540: Result of 32-bit expression is truncated to fit in 24-bit target.
WARNING:HDLCompiler:413 - "./Matrix/build/Matrix/Matrix.srcs/sources_1/imports/Matrix/mojo_top.v" Line 542: Result of 32-bit expression is truncated to fit in 24-bit target.
WARNING:HDLCompiler:413 - "./Matrix/build/Matrix/Matrix.srcs/sources_1/imports/Matrix/mojo_top.v" Line 544: Result of 32-bit expression is truncated to fit in 24-bit target.
WARNING:HDLCompiler:413 - "./Matrix/build/Matrix/Matrix.srcs/sources_1/imports/Matrix/mojo_top.v" Line 554: Result of 11-bit expression is truncated to fit in 10-bit target.
WARNING:HDLCompiler:413 - "./Matrix/build/Matrix/Matrix.srcs/sources_1/imports/Matrix/mojo_top.v" Line 555: Result of 7-bit expression is truncated to fit in 6-bit target.
WARNING:HDLCompiler:413 - "./Matrix/build/Matrix/Matrix.srcs/sources_1/imports/Matrix/mojo_top.v" Line 564: Result of 11-bit expression is truncated to fit in 10-bit target.
WARNING:HDLCompiler:413 - "./Matrix/build/Matrix/Matrix.srcs/sources_1/imports/Matrix/mojo_top.v" Line 582: Result of 11-bit expression is truncated to fit in 10-bit target.
WARNING:HDLCompiler:413 - "./Matrix/build/Matrix/Matrix.srcs/sources_1/imports/Matrix/mojo_top.v" Line 583: Result of 7-bit expression is truncated to fit in 6-bit target.

=========================================================================
*                           HDL Synthesis                               *
=========================================================================

Synthesizing Unit <mojo_top>.
    Related source file is "./Matrix/build/Matrix/Matrix.srcs/sources_1/imports/Matrix/mojo_top.v".
WARNING:Xst:647 - Input <cclk> is never used. This port will be preserved and left unconnected if it belongs to a top-level block or it belongs to a sub-block and the hierarchy of this sub-block is preserved.
WARNING:Xst:647 - Input <spi_ss> is never used. This port will be preserved and left unconnected if it belongs to a top-level block or it belongs to a sub-block and the hierarchy of this sub-block is preserved.
WARNING:Xst:647 - Input <spi_mosi> is never used. This port will be preserved and left unconnected if it belongs to a top-level block or it belongs to a sub-block and the hierarchy of this sub-block is preserved.
WARNING:Xst:647 - Input <spi_sck> is never used. This port will be preserved and left unconnected if it belongs to a top-level block or it belongs to a sub-block and the hierarchy of this sub-block is preserved.
WARNING:Xst:647 - Input <avr_tx> is never used. This port will be preserved and left unconnected if it belongs to a top-level block or it belongs to a sub-block and the hierarchy of this sub-block is preserved.
WARNING:Xst:647 - Input <avr_rx_busy> is never used. This port will be preserved and left unconnected if it belongs to a top-level block or it belongs to a sub-block and the hierarchy of this sub-block is preserved.
    Found 1-bit register for signal <random_rawbias>.
    Found 1-bit register for signal <random_rawcount<1><12>>.
    Found 1-bit register for signal <random_rawcount<1><11>>.
    Found 1-bit register for signal <random_rawcount<1><10>>.
    Found 1-bit register for signal <random_rawcount<1><9>>.
    Found 1-bit register for signal <random_rawcount<1><8>>.
    Found 1-bit register for signal <random_rawcount<1><7>>.
    Found 1-bit register for signal <random_rawcount<1><6>>.
    Found 1-bit register for signal <random_rawcount<1><5>>.
    Found 1-bit register for signal <random_rawcount<1><4>>.
    Found 1-bit register for signal <random_rawcount<1><3>>.
    Found 1-bit register for signal <random_rawcount<1><2>>.
    Found 1-bit register for signal <random_rawcount<1><1>>.
    Found 1-bit register for signal <random_rawcount<1><0>>.
    Found 1-bit register for signal <random_rawcount<0><12>>.
    Found 1-bit register for signal <random_rawcount<0><11>>.
    Found 1-bit register for signal <random_rawcount<0><10>>.
    Found 1-bit register for signal <random_rawcount<0><9>>.
    Found 1-bit register for signal <random_rawcount<0><8>>.
    Found 1-bit register for signal <random_rawcount<0><7>>.
    Found 1-bit register for signal <random_rawcount<0><6>>.
    Found 1-bit register for signal <random_rawcount<0><5>>.
    Found 1-bit register for signal <random_rawcount<0><4>>.
    Found 1-bit register for signal <random_rawcount<0><3>>.
    Found 1-bit register for signal <random_rawcount<0><2>>.
    Found 1-bit register for signal <random_rawcount<0><1>>.
    Found 1-bit register for signal <random_rawcount<0><0>>.
    Found 1-bit register for signal <random_bias>.
    Found 26-bit register for signal <n0738[25:0]>.
    Found 1-bit register for signal <random_rawbitnum>.
    Found 1-bit register for signal <random_firstbit>.
    Found 8-bit register for signal <random_prevalue>.
    Found 3-bit register for signal <random_valuestep>.
    Found 8-bit register for signal <random_value>.
    Found 16-bit register for signal <n0737[15:0]>.
    Found 2-bit register for signal <selected_variable>.
    Found 2-bit register for signal <mode>.
    Found 1-bit register for signal <clear_needed>.
    Found 1-bit register for signal <rotary_increment>.
    Found 1-bit register for signal <rotary_decrement>.
    Found 2-bit register for signal <cycle_leftbound>.
    Found 2-bit register for signal <cycle_rightbound>.
    Found 1-bit register for signal <cycle_direction>.
    Found 2-bit register for signal <cycle_position>.
    Found 2-bit register for signal <cycle_previous>.
    Found 1-bit register for signal <knob_state>.
    Found 15-bit register for signal <debouncer>.
    Found 29-bit register for signal <setting_timeout>.
    Found 1-bit register for signal <button_state>.
    Found 2-bit register for signal <game_id>.
    Found 5-bit register for signal <state>.
    Found 672-bit register for signal <n0729[671:0]>.
    Found 6-bit register for signal <sub_state>.
    Found 6-bit register for signal <sup_state>.
    Found 10-bit register for signal <scr_write_address>.
    Found 1-bit register for signal <scr_write_enable>.
    Found 24-bit register for signal <scr_write_color>.
    Found 5-bit register for signal <read_addr>.
    Found 13-bit register for signal <primary_counter>.
    Found finite state machine <FSM_0> for signal <state>.
    -----------------------------------------------------------------------
    | States             | 22                                             |
    | Transitions        | 45                                             |
    | Inputs             | 17                                             |
    | Outputs            | 8                                              |
    | Clock              | clk (rising_edge)                              |
    | Power Up State     | 00000                                          |
    | Encoding           | auto                                           |
    | Implementation     | LUT                                            |
    -----------------------------------------------------------------------
    Found 32-bit subtractor for signal <GND_1_o_GND_1_o_sub_100_OUT> created at line 276.
    Found 13-bit adder for signal <primary_counter[12]_GND_1_o_add_47_OUT> created at line 222.
    Found 13-bit adder for signal <random_rawcount[0][12]_GND_1_o_add_51_OUT> created at line 229.
    Found 13-bit adder for signal <random_rawcount[1][12]_GND_1_o_add_53_OUT> created at line 231.
    Found 13-bit adder for signal <random_count[1][12]_GND_1_o_add_62_OUT> created at line 246.
    Found 9-bit adder for signal <n0757> created at line 247.
    Found 13-bit adder for signal <random_count[0][12]_GND_1_o_add_64_OUT> created at line 249.
    Found 3-bit adder for signal <random_valuestep[2]_GND_1_o_add_67_OUT> created at line 252.
    Found 32-bit adder for signal <GND_1_o_GND_1_o_add_95_OUT> created at line 276.
    Found 2-bit adder for signal <cycle_current[1]_PWR_1_o_add_122_OUT> created at line 285.
    Found 2-bit adder for signal <selected_variable[1]_GND_1_o_add_169_OUT> created at line 330.
    Found 2-bit adder for signal <game_id[1]_GND_1_o_add_194_OUT> created at line 359.
    Found 21-bit adder for signal <gradientbar[0][20]_GND_1_o_add_204_OUT> created at line 369.
    Found 11-bit adder for signal <n0898> created at line 375.
    Found 12-bit adder for signal <n1434[11:0]> created at line 408.
    Found 5-bit adder for signal <read_addr[4]_GND_1_o_add_314_OUT> created at line 430.
    Found 6-bit adder for signal <n1439[5:0]> created at line 449.
    Found 12-bit adder for signal <n1442[11:0]> created at line 449.
    Found 13-bit adder for signal <n1445[12:0]> created at line 449.
    Found 14-bit adder for signal <n1448> created at line 449.
    Found 32-bit adder for signal <n0939> created at line 510.
    Found 6-bit adder for signal <sup_state[5]_GND_1_o_add_370_OUT> created at line 523.
    Found 5-bit adder for signal <PWR_1_o_GND_1_o_add_402_OUT> created at line 564.
    Found 11-bit adder for signal <n1458[10:0]> created at line 582.
    Found 6-bit adder for signal <sub_state[5]_GND_1_o_add_410_OUT> created at line 583.
    Found 15-bit subtractor for signal <GND_1_o_GND_1_o_sub_174_OUT<14:0>> created at line 336.
    Found 29-bit subtractor for signal <GND_1_o_GND_1_o_sub_187_OUT<28:0>> created at line 349.
    Found 22-bit adder for signal <n0867> created at line 369.
    Found 22-bit adder for signal <n0877> created at line 369.
    Found 22-bit adder for signal <n0883> created at line 369.
    Found 22-bit adder for signal <n0861> created at line 369.
    Found 22-bit adder for signal <n0857> created at line 369.
    Found 22-bit adder for signal <n0873> created at line 369.
    Found 22-bit adder for signal <n0855> created at line 369.
    Found 22-bit adder for signal <n0851> created at line 369.
    Found 22-bit adder for signal <n0849> created at line 369.
    Found 22-bit adder for signal <n0893> created at line 369.
    Found 22-bit adder for signal <n0895> created at line 369.
    Found 22-bit adder for signal <n0875> created at line 369.
    Found 22-bit adder for signal <n0891> created at line 369.
    Found 22-bit adder for signal <n0865> created at line 369.
    Found 22-bit adder for signal <n0897> created at line 369.
    Found 22-bit adder for signal <n0841> created at line 369.
    Found 22-bit adder for signal <n0889> created at line 369.
    Found 22-bit adder for signal <n0887> created at line 369.
    Found 22-bit adder for signal <n0885> created at line 369.
    Found 22-bit adder for signal <n0881> created at line 369.
    Found 22-bit adder for signal <n0879> created at line 369.
    Found 22-bit adder for signal <n0871> created at line 369.
    Found 22-bit adder for signal <n0869> created at line 369.
    Found 22-bit adder for signal <n0863> created at line 369.
    Found 22-bit adder for signal <n0859> created at line 369.
    Found 22-bit adder for signal <n0853> created at line 369.
    Found 22-bit adder for signal <n0847> created at line 369.
    Found 22-bit adder for signal <n0845> created at line 369.
    Found 22-bit adder for signal <n0843> created at line 369.
    Found 22-bit adder for signal <n0839> created at line 369.
    Found 22-bit adder for signal <n0837> created at line 369.
    Found 6x2-bit multiplier for signal <n0909> created at line 418.
    Found 57-bit shifter logical right for signal <n0910> created at line 418
    Found 4-bit 4-to-1 multiplexer for signal <_n1772> created at line 276.
    Found 8-bit 32-to-1 multiplexer for signal <sub_state[4]_gradientbar[31][19]_wide_mux_270_OUT> created at line 380.
    Found 4-bit 4-to-1 multiplexer for signal <_n1739> created at line 442.
    Found 1-bit 16-to-1 multiplexer for signal <GND_1_o_GND_1_o_equal_329_o> created at line 451.
    Found 4-bit 4-to-1 multiplexer for signal <sub_state[1]_variable_variable[3][3]_wide_mux_348_OUT> created at line 500.
    Found 1-bit 32-to-1 multiplexer for signal <GND_1_o_GND_1_o_equal_406_o> created at line 569.
    Found 1-bit tristate buffer for signal <spi_miso> created at line 68
    Found 1-bit tristate buffer for signal <avr_rx> created at line 69
    Found 1-bit tristate buffer for signal <spi_channel<3>> created at line 70
    Found 1-bit tristate buffer for signal <spi_channel<2>> created at line 70
    Found 1-bit tristate buffer for signal <spi_channel<1>> created at line 70
    Found 1-bit tristate buffer for signal <spi_channel<0>> created at line 70
    Found 13-bit comparator lessequal for signal <random_rawcount[1][12]_random_rawcount[0][12]_LessThan_50_o> created at line 225
    Found 13-bit comparator lessequal for signal <random_count[1][12]_random_count[0][12]_LessThan_58_o> created at line 235
    Found 1-bit comparator equal for signal <n0064> created at line 244
    Found 2-bit comparator equal for signal <cycle_previous[1]_cycle_current[1]_equal_88_o> created at line 273
    Found 2-bit comparator not equal for signal <cycle_position[1]_cycle_current[1]_equal_125_o> created at line 292
    Found 1-bit comparator equal for signal <n0213> created at line 322
    Found 1-bit comparator not equal for signal <n0216> created at line 326
    Found 5-bit comparator greater for signal <read_addr[4]_PWR_1_o_LessThan_314_o> created at line 429
    Found 6-bit comparator greater for signal <sub_state[5]_GND_1_o_LessThan_332_o> created at line 456
    Found 6-bit comparator equal for signal <GND_1_o_sup_state[5]_equal_350_o> created at line 500
    Found 6-bit comparator equal for signal <GND_1_o_sub_state[5]_equal_353_o> created at line 503
    Summary:
        inferred   1 Multiplier(s).
        inferred  58 Adder/Subtractor(s).
        inferred 892 D-type flip-flop(s).
        inferred  11 Comparator(s).
        inferred 134 Multiplexer(s).
        inferred   1 Combinational logic shifter(s).
        inferred   6 Tristate(s).
        inferred   1 Finite State Machine(s).
Unit <mojo_top> synthesized.

Synthesizing Unit <display>.
    Related source file is "./Matrix/build/Matrix/Matrix.srcs/sources_1/imports/Matrix/display.v".
WARNING:Xst:2999 - Signal 'phasecycles', unconnected in block 'display', is tied to its initial value.
    Found 8x13-bit single-port Read Only RAM <Mram_phasecycles> for signal <phasecycles>.
    Found 24-bit register for signal <write_scr>.
    Found 1-bit register for signal <write_scr_en_top>.
    Found 1-bit register for signal <write_scr_en_bot>.
    Found 3-bit register for signal <active_phase>.
    Found 5-bit register for signal <bitR>.
    Found 5-bit register for signal <bitG>.
    Found 5-bit register for signal <bitB>.
    Found 5-bit register for signal <active_column>.
    Found 9-bit register for signal <screen_address>.
    Found 4-bit register for signal <active_state>.
    Found 1-bit register for signal <row_latch>.
    Found 9-bit register for signal <read_scr_topddr_top>.
    Found 9-bit register for signal <read_scr_topddr_bot>.
    Found 1-bit register for signal <output_clock>.
    Found 4-bit register for signal <output_row>.
    Found 13-bit register for signal <phasedelay>.
    Found 1-bit register for signal <display_enable>.
    Found 4-bit register for signal <active_row>.
    Found 9-bit register for signal <write_scr_addr>.
    Found finite state machine <FSM_1> for signal <active_state>.
    -----------------------------------------------------------------------
    | States             | 10                                             |
    | Transitions        | 13                                             |
    | Inputs             | 3                                              |
    | Outputs            | 8                                              |
    | Clock              | clk (rising_edge)                              |
    | Power Up State     | 0000                                           |
    | Encoding           | auto                                           |
    | Implementation     | LUT                                            |
    -----------------------------------------------------------------------
    Found 5-bit adder for signal <active_column[4]_GND_8_o_add_20_OUT> created at line 137.
    Found 9-bit adder for signal <screen_address[8]_GND_8_o_add_21_OUT> created at line 138.
    Found 4-bit adder for signal <active_row[3]_GND_8_o_add_33_OUT> created at line 164.
    Found 13-bit subtractor for signal <GND_8_o_GND_8_o_sub_29_OUT<12:0>> created at line 155.
    Found 5-bit subtractor for signal <GND_8_o_GND_8_o_sub_35_OUT<4:0>> created at line 167.
    Found 5-bit subtractor for signal <GND_8_o_GND_8_o_sub_36_OUT<4:0>> created at line 168.
    Found 5-bit subtractor for signal <GND_8_o_GND_8_o_sub_37_OUT<4:0>> created at line 169.
    Found 3-bit subtractor for signal <GND_8_o_GND_8_o_sub_38_OUT<2:0>> created at line 172.
    Found 1-bit 24-to-1 multiplexer for signal <output_color<0>> created at line 33.
    Found 1-bit 24-to-1 multiplexer for signal <output_color<1>> created at line 34.
    Found 1-bit 24-to-1 multiplexer for signal <output_color<2>> created at line 35.
    Found 1-bit 24-to-1 multiplexer for signal <output_color<3>> created at line 36.
    Found 1-bit 24-to-1 multiplexer for signal <output_color<4>> created at line 37.
    Found 1-bit 24-to-1 multiplexer for signal <output_color<5>> created at line 38.
    Summary:
        inferred   1 RAM(s).
        inferred   8 Adder/Subtractor(s).
        inferred 109 D-type flip-flop(s).
        inferred  15 Multiplexer(s).
        inferred   1 Finite State Machine(s).
Unit <display> synthesized.

Synthesizing Unit <ram_1>.
    Related source file is "./Matrix/build/Matrix/Matrix.srcs/sources_1/imports/Matrix/ram.v".
        SIZE = 24
        DEPTH = 512
    Found 512x24-bit dual-port RAM <Mram_mem> for signal <mem>.
    Found 24-bit register for signal <read_data>.
    Summary:
        inferred   1 RAM(s).
        inferred  24 D-type flip-flop(s).
Unit <ram_1> synthesized.

Synthesizing Unit <game_1>.
    Related source file is "./Matrix/build/Matrix/Matrix.srcs/sources_1/imports/Matrix/game.v".
        INITIAL = 0
WARNING:Xst:2999 - Signal 'z1', unconnected in block 'game_1', is tied to its initial value.
WARNING:Xst:2999 - Signal 'z3', unconnected in block 'game_1', is tied to its initial value.
WARNING:Xst:2999 - Signal 'adjustable_speed', unconnected in block 'game_1', is tied to its initial value.
WARNING:Xst:3035 - Index value(s) does not match array range for signal <z3>, simulation mismatch.
    Found 28x48-bit single-port Read Only RAM <Mram_z3> for signal <z3>.
WARNING:Xst:3035 - Index value(s) does not match array range for signal <adjustable_speed>, simulation mismatch.
    Found 11x21-bit single-port Read Only RAM <Mram_adjustable_speed> for signal <adjustable_speed>.
    Found 6-bit register for signal <sub_state>.
    Found 5-bit register for signal <state>.
    Found 1-bit register for signal <need_highlight>.
    Found 1-bit register for signal <need_sweep>.
    Found 5-bit register for signal <fld_write_addr>.
    Found 5-bit register for signal <fldclr_write_addr>.
    Found 10-bit register for signal <fld_write_data>.
    Found 30-bit register for signal <fldclr_write_data>.
    Found 1-bit register for signal <fld_write_enable>.
    Found 1-bit register for signal <fldclr_write_enable>.
    Found 32-bit register for signal <score>.
    Found 2-bit register for signal <shapei>.
    Found 4-bit register for signal <shapex>.
    Found 5-bit register for signal <shapey>.
    Found 2-bit register for signal <oshapei>.
    Found 4-bit register for signal <oshapex>.
    Found 5-bit register for signal <oshapey>.
    Found 16-bit register for signal <z1b>.
    Found 48-bit register for signal <z3b>.
    Found 5-bit register for signal <fld_read_addr>.
    Found 5-bit register for signal <fldclr_read_addr>.
    Found 1-bit register for signal <test_pass>.
    Found 64-bit register for signal <evaluator_shape>.
    Found 1-bit register for signal <evaluator_start>.
    Found 5-bit register for signal <shape>.
    Found 26-bit register for signal <second>.
    Found finite state machine <FSM_2> for signal <state>.
    -----------------------------------------------------------------------
    | States             | 22                                             |
    | Transitions        | 35                                             |
    | Inputs             | 12                                             |
    | Outputs            | 11                                             |
    | Clock              | clk (rising_edge)                              |
    | Power Up State     | 00001                                          |
    | Encoding           | auto                                           |
    | Implementation     | LUT                                            |
    -----------------------------------------------------------------------
    Found 3-bit adder for signal <shape_index> created at line 43.
    Found 26-bit adder for signal <second[25]_GND_10_o_add_13_OUT> created at line 184.
    Found 6-bit adder for signal <sub_state[5]_GND_10_o_add_22_OUT> created at line 205.
    Found 2-bit adder for signal <shapei[1]_GND_10_o_add_27_OUT> created at line 218.
    Found 4-bit adder for signal <shapex[3]_GND_10_o_add_31_OUT> created at line 220.
    Found 5-bit adder for signal <shapey[4]_GND_10_o_add_32_OUT> created at line 221.
    Found 5-bit adder for signal <shape[4]_GND_10_o_add_46_OUT> created at line 239.
    Found 5-bit adder for signal <shape[4]_GND_10_o_add_81_OUT> created at line 277.
    Found 5-bit adder for signal <fld_read_addr[4]_GND_10_o_add_95_OUT> created at line 296.
    Found 5-bit adder for signal <fldclr_read_addr[4]_GND_10_o_add_96_OUT> created at line 297.
    Found 6-bit adder for signal <sub_state[5]_GND_10_o_add_98_OUT> created at line 301.
    Found 5-bit adder for signal <shape[4]_GND_10_o_add_103_OUT> created at line 313.
    Found 5-bit adder for signal <shape[4]_GND_10_o_add_105_OUT> created at line 313.
    Found 5-bit adder for signal <shape[4]_GND_10_o_add_107_OUT> created at line 313.
    Found 32-bit adder for signal <score[31]_GND_10_o_add_125_OUT> created at line 371.
    Found 4-bit subtractor for signal <GND_10_o_GND_10_o_sub_30_OUT<3:0>> created at line 219.
    Found 5-bit subtractor for signal <GND_10_o_GND_10_o_sub_132_OUT<4:0>> created at line 377.
    Found 5-bit subtractor for signal <GND_10_o_GND_10_o_sub_133_OUT<4:0>> created at line 378.
    Found 5-bit subtractor for signal <GND_10_o_GND_10_o_sub_134_OUT<4:0>> created at line 385.
    Found 5-bit subtractor for signal <GND_10_o_GND_10_o_sub_135_OUT<4:0>> created at line 386.
    Found 10-bit shifter logical left for signal <GND_10_o_shapex[3]_shift_left_69_OUT> created at line 263
    Found 28-bit shifter logical right for signal <n0619> created at line 290
    Found 10-bit shifter logical left for signal <GND_10_o_oshapex[3]_shift_left_86_OUT> created at line 290
    Found 6x2-bit multiplier for signal <n0622> created at line 291.
    Found 84-bit shifter logical right for signal <n0623> created at line 291
    Found 4x2-bit multiplier for signal <oshapex[3]_PWR_7_o_MuLt_90_OUT> created at line 291.
    Found 30-bit shifter logical left for signal <GND_10_o_oshapex[3]_shift_left_91_OUT> created at line 291
WARNING:Xst:3035 - Index value(s) does not match array range for signal <z1>, simulation mismatch.
    Found 28x16-bit dual-port Read Only RAM <Mram_z1> for signal <z1>.
    Found 26-bit comparator greater for signal <n0004> created at line 166
    Found 6-bit comparator greater for signal <sub_state[5]_GND_10_o_LessThan_19_o> created at line 194
    Found 6-bit comparator greater for signal <sub_state[5]_GND_10_o_LessThan_22_o> created at line 202
    Found 2-bit comparator equal for signal <n0034> created at line 218
    Found 4-bit comparator greater for signal <bestx[3]_shapex[3]_LessThan_29_o> created at line 219
    Found 4-bit comparator greater for signal <shapex[3]_bestx[3]_LessThan_31_o> created at line 220
    Found 5-bit comparator greater for signal <PWR_7_o_fld_read_addr[4]_LessThan_73_o> created at line 264
    Found 5-bit comparator greater for signal <fld_read_addr[4]_PWR_7_o_LessThan_85_o> created at line 287
    Found 5-bit comparator equal for signal <n0116> created at line 348
    Summary:
        inferred   5 RAM(s).
        inferred   2 Multiplier(s).
        inferred  18 Adder/Subtractor(s).
        inferred 285 D-type flip-flop(s).
        inferred   9 Comparator(s).
        inferred  67 Multiplexer(s).
        inferred   5 Combinational logic shifter(s).
        inferred   1 Finite State Machine(s).
Unit <game_1> synthesized.

Synthesizing Unit <ram_2>.
    Related source file is "./Matrix/build/Matrix/Matrix.srcs/sources_1/imports/Matrix/ram.v".
        SIZE = 30
        DEPTH = 32
    Found 32x30-bit dual-port RAM <Mram_mem> for signal <mem>.
    Found 30-bit register for signal <read_data>.
    Summary:
        inferred   1 RAM(s).
        inferred  30 D-type flip-flop(s).
Unit <ram_2> synthesized.

Synthesizing Unit <ram_3>.
    Related source file is "./Matrix/build/Matrix/Matrix.srcs/sources_1/imports/Matrix/ram.v".
        SIZE = 10
        DEPTH = 32
    Found 32x10-bit dual-port RAM <Mram_mem> for signal <mem>.
    Found 10-bit register for signal <read_data>.
    Summary:
        inferred   1 RAM(s).
        inferred  10 D-type flip-flop(s).
Unit <ram_3> synthesized.

Synthesizing Unit <evaluator>.
    Related source file is "./Matrix/build/Matrix/Matrix.srcs/sources_1/imports/Matrix/evaluator.v".
    Found 6-bit register for signal <sub_state>.
    Found 1-bit register for signal <busy>.
    Found 4-bit register for signal <state>.
    Found 5-bit register for signal <fld_read_addr>.
    Found 10-bit register for signal <eval_write_data>.
    Found 1-bit register for signal <eval_write_enable>.
    Found 5-bit register for signal <eval_write_addr>.
    Found 1-bit register for signal <sub_start>.
    Found 4-bit register for signal <best_x>.
    Found 2-bit register for signal <best_i>.
    Found 32-bit register for signal <best_score>.
    Found finite state machine <FSM_3> for signal <state>.
    -----------------------------------------------------------------------
    | States             | 9                                              |
    | Transitions        | 13                                             |
    | Inputs             | 4                                              |
    | Outputs            | 8                                              |
    | Clock              | clk (rising_edge)                              |
    | Power Up State     | 0000                                           |
    | Encoding           | auto                                           |
    | Implementation     | LUT                                            |
    -----------------------------------------------------------------------
    Found 5-bit adder for signal <fld_read_addr[4]_GND_13_o_add_8_OUT> created at line 73.
    Found 6-bit adder for signal <sub_state[5]_GND_13_o_add_26_OUT> created at line 108.
    Found 112-bit shifter logical right for signal <n0117> created at line 28
    Found 5-bit comparator greater for signal <fld_read_addr[4]_PWR_10_o_LessThan_8_o> created at line 69
    Found 32-bit comparator greater for signal <n0020> created at line 96
    Summary:
        inferred   2 Adder/Subtractor(s).
        inferred  67 D-type flip-flop(s).
        inferred   2 Comparator(s).
        inferred   1 Combinational logic shifter(s).
        inferred   1 Finite State Machine(s).
Unit <evaluator> synthesized.

Synthesizing Unit <sub_evaluator>.
    Related source file is "./Matrix/build/Matrix/Matrix.srcs/sources_1/imports/Matrix/sub_evaluator.v".
    Found 10-bit register for signal <blocked>.
    Found 10-bit register for signal <btype>.
    Found 5-bit register for signal <sub_state>.
    Found 1-bit register for signal <test_pass>.
    Found 5-bit register for signal <oshapey>.
    Found 5-bit register for signal <shapey>.
    Found 5-bit register for signal <fld_read_addr>.
    Found 5-bit register for signal <state>.
    Found 1-bit register for signal <fld_write_enable>.
    Found 10-bit register for signal <fld_write_data>.
    Found 5-bit register for signal <fld_write_addr>.
    Found 16-bit register for signal <HighestBlock>.
    Found 16-bit register for signal <HorizontalTransitions>.
    Found 16-bit register for signal <Wells>.
    Found 16-bit register for signal <VerticalTransitions>.
    Found 16-bit register for signal <BlockedCells>.
    Found 16-bit register for signal <FilledLines>.
    Found 60-bit register for signal <n0586[59:0]>.
    Found 32-bit register for signal <score>.
    Found 1-bit register for signal <busy>.
    Found 6-bit subtractor for signal <GND_14_o_GND_14_o_sub_74_OUT> created at line 194.
    Found 21-bit subtractor for signal <GND_14_o_GND_14_o_sub_250_OUT> created at line 287.
    Found 5-bit adder for signal <shapey[4]_GND_14_o_add_41_OUT> created at line 130.
    Found 5-bit adder for signal <state[4]_GND_14_o_add_54_OUT> created at line 145.
    Found 5-bit adder for signal <sub_state[4]_GND_14_o_add_63_OUT> created at line 160.
    Found 16-bit adder for signal <FilledLines[15]_GND_14_o_add_71_OUT> created at line 190.
    Found 16-bit adder for signal <n1168> created at line 218.
    Found 16-bit adder for signal <n1171> created at line 218.
    Found 16-bit adder for signal <n1174> created at line 218.
    Found 16-bit adder for signal <n1177> created at line 218.
    Found 16-bit adder for signal <n1180> created at line 218.
    Found 16-bit adder for signal <n1183> created at line 218.
    Found 16-bit adder for signal <n1186> created at line 218.
    Found 16-bit adder for signal <n1189> created at line 218.
    Found 16-bit adder for signal <n1192> created at line 218.
    Found 16-bit adder for signal <BlockedCells[15]_GND_14_o_add_139_OUT> created at line 218.
    Found 16-bit adder for signal <n1198> created at line 230.
    Found 16-bit adder for signal <n1201> created at line 230.
    Found 16-bit adder for signal <n1204> created at line 230.
    Found 16-bit adder for signal <n1207> created at line 230.
    Found 16-bit adder for signal <n1210> created at line 230.
    Found 16-bit adder for signal <n1213> created at line 230.
    Found 16-bit adder for signal <n1216> created at line 230.
    Found 16-bit adder for signal <n1219> created at line 230.
    Found 16-bit adder for signal <n1222> created at line 230.
    Found 16-bit adder for signal <VerticalTransitions[15]_GND_14_o_add_159_OUT> created at line 230.
    Found 7-bit adder for signal <n1226[6:0]> created at line 242.
    Found 7-bit adder for signal <n1228[6:0]> created at line 243.
    Found 7-bit adder for signal <n1230[6:0]> created at line 244.
    Found 7-bit adder for signal <n1232[6:0]> created at line 245.
    Found 7-bit adder for signal <n1234[6:0]> created at line 246.
    Found 7-bit adder for signal <n1236[6:0]> created at line 247.
    Found 7-bit adder for signal <n1238[6:0]> created at line 248.
    Found 7-bit adder for signal <n1240[6:0]> created at line 249.
    Found 7-bit adder for signal <n1242[6:0]> created at line 250.
    Found 7-bit adder for signal <n1244[6:0]> created at line 251.
    Found 5-bit adder for signal <fld_read_addr[4]_GND_14_o_add_204_OUT> created at line 266.
    Found 32-bit adder for signal <n1280> created at line 271.
    Found 32-bit adder for signal <n1283> created at line 271.
    Found 32-bit adder for signal <n1286> created at line 271.
    Found 32-bit adder for signal <n1289> created at line 271.
    Found 32-bit adder for signal <n1292> created at line 271.
    Found 32-bit adder for signal <n1295> created at line 271.
    Found 32-bit adder for signal <n1298> created at line 271.
    Found 32-bit adder for signal <n1301> created at line 271.
    Found 32-bit adder for signal <n1304> created at line 271.
    Found 32-bit adder for signal <n0743> created at line 271.
    Found 17-bit adder for signal <n1309[16:0]> created at line 287.
    Found 18-bit adder for signal <n1312[17:0]> created at line 287.
    Found 19-bit adder for signal <n1315[18:0]> created at line 287.
    Found 20-bit adder for signal <n1318[19:0]> created at line 287.
    Found 16-bit adder for signal <_n1446> created at line 205.
    Found 16-bit adder for signal <_n1447> created at line 205.
    Found 16-bit adder for signal <_n1448> created at line 205.
    Found 16-bit adder for signal <_n1449> created at line 205.
    Found 16-bit adder for signal <_n1450> created at line 205.
    Found 16-bit adder for signal <_n1451> created at line 205.
    Found 16-bit adder for signal <_n1452> created at line 205.
    Found 16-bit adder for signal <_n1453> created at line 205.
    Found 16-bit adder for signal <_n1454> created at line 205.
    Found 16-bit adder for signal <_n1455> created at line 205.
    Found 16-bit adder for signal <HorizontalTransitions[15]_GND_14_o_add_109_OUT> created at line 205.
    Found 16-bit adder for signal <_n1457> created at line 255.
    Found 16-bit adder for signal <_n1458> created at line 255.
    Found 16-bit adder for signal <_n1459> created at line 255.
    Found 16-bit adder for signal <_n1460> created at line 255.
    Found 16-bit adder for signal <_n1461> created at line 255.
    Found 16-bit adder for signal <_n1462> created at line 255.
    Found 16-bit adder for signal <_n1463> created at line 255.
    Found 16-bit adder for signal <_n1464> created at line 255.
    Found 16-bit adder for signal <_n1465> created at line 255.
    Found 16-bit adder for signal <Wells[15]_GND_14_o_add_200_OUT> created at line 255.
    Found 28-bit shifter logical right for signal <n0590> created at line 112
    Found 10-bit shifter logical left for signal <GND_14_o_shapex[3]_shift_left_27_OUT> created at line 112
    Found 4x16-bit multiplier for signal <n0744> created at line 278.
    Found 4x16-bit multiplier for signal <n0745> created at line 279.
    Found 4x16-bit multiplier for signal <n0746> created at line 280.
    Found 6x16-bit multiplier for signal <n0747> created at line 281.
    Found 4x16-bit multiplier for signal <n0748> created at line 282.
    Found 4-bit comparator lessequal for signal <n0006> created at line 91
    Found 4-bit comparator lessequal for signal <n0017> created at line 92
    Found 4-bit comparator lessequal for signal <n0028> created at line 93
    Found 5-bit comparator greater for signal <fld_read_addr[4]_PWR_11_o_LessThan_26_o> created at line 112
    Found 5-bit comparator greater for signal <PWR_11_o_fld_read_addr[4]_LessThan_31_o> created at line 113
    Found 1-bit comparator not equal for signal <n0096> created at line 206
    Found 1-bit comparator not equal for signal <n0099> created at line 207
    Found 1-bit comparator not equal for signal <n0102> created at line 208
    Found 1-bit comparator not equal for signal <n0105> created at line 209
    Found 1-bit comparator not equal for signal <n0108> created at line 210
    Found 1-bit comparator not equal for signal <n0111> created at line 211
    Found 1-bit comparator not equal for signal <n0114> created at line 212
    Found 1-bit comparator not equal for signal <n0117> created at line 213
    Found 1-bit comparator not equal for signal <n0120> created at line 214
    Summary:
        inferred   5 Multiplier(s).
        inferred  72 Adder/Subtractor(s).
        inferred 251 D-type flip-flop(s).
        inferred  14 Comparator(s).
        inferred  65 Multiplexer(s).
        inferred   2 Combinational logic shifter(s).
Unit <sub_evaluator> synthesized.

Synthesizing Unit <game_2>.
    Related source file is "./Matrix/build/Matrix/Matrix.srcs/sources_1/imports/Matrix/game.v".
        INITIAL = 1
WARNING:Xst:2999 - Signal 'z1', unconnected in block 'game_2', is tied to its initial value.
WARNING:Xst:2999 - Signal 'z3', unconnected in block 'game_2', is tied to its initial value.
WARNING:Xst:2999 - Signal 'adjustable_speed', unconnected in block 'game_2', is tied to its initial value.
WARNING:Xst:3035 - Index value(s) does not match array range for signal <z3>, simulation mismatch.
    Found 28x48-bit single-port Read Only RAM <Mram_z3> for signal <z3>.
WARNING:Xst:3035 - Index value(s) does not match array range for signal <adjustable_speed>, simulation mismatch.
    Found 11x21-bit single-port Read Only RAM <Mram_adjustable_speed> for signal <adjustable_speed>.
    Found 6-bit register for signal <sub_state>.
    Found 5-bit register for signal <state>.
    Found 1-bit register for signal <need_highlight>.
    Found 1-bit register for signal <need_sweep>.
    Found 5-bit register for signal <fld_write_addr>.
    Found 5-bit register for signal <fldclr_write_addr>.
    Found 10-bit register for signal <fld_write_data>.
    Found 30-bit register for signal <fldclr_write_data>.
    Found 1-bit register for signal <fld_write_enable>.
    Found 1-bit register for signal <fldclr_write_enable>.
    Found 32-bit register for signal <score>.
    Found 2-bit register for signal <shapei>.
    Found 4-bit register for signal <shapex>.
    Found 5-bit register for signal <shapey>.
    Found 2-bit register for signal <oshapei>.
    Found 4-bit register for signal <oshapex>.
    Found 5-bit register for signal <oshapey>.
    Found 16-bit register for signal <z1b>.
    Found 48-bit register for signal <z3b>.
    Found 5-bit register for signal <fld_read_addr>.
    Found 5-bit register for signal <fldclr_read_addr>.
    Found 1-bit register for signal <test_pass>.
    Found 64-bit register for signal <evaluator_shape>.
    Found 1-bit register for signal <evaluator_start>.
    Found 5-bit register for signal <shape>.
    Found 26-bit register for signal <second>.
    Found finite state machine <FSM_4> for signal <state>.
    -----------------------------------------------------------------------
    | States             | 22                                             |
    | Transitions        | 35                                             |
    | Inputs             | 12                                             |
    | Outputs            | 11                                             |
    | Clock              | clk (rising_edge)                              |
    | Power Up State     | 00001                                          |
    | Encoding           | auto                                           |
    | Implementation     | LUT                                            |
    -----------------------------------------------------------------------
    Found 3-bit adder for signal <shape_index> created at line 43.
    Found 26-bit adder for signal <second[25]_GND_20_o_add_13_OUT> created at line 184.
    Found 6-bit adder for signal <sub_state[5]_GND_20_o_add_22_OUT> created at line 205.
    Found 2-bit adder for signal <shapei[1]_GND_20_o_add_27_OUT> created at line 218.
    Found 4-bit adder for signal <shapex[3]_GND_20_o_add_31_OUT> created at line 220.
    Found 5-bit adder for signal <shapey[4]_GND_20_o_add_32_OUT> created at line 221.
    Found 5-bit adder for signal <shape[4]_GND_20_o_add_46_OUT> created at line 239.
    Found 5-bit adder for signal <shape[4]_GND_20_o_add_81_OUT> created at line 277.
    Found 5-bit adder for signal <fld_read_addr[4]_GND_20_o_add_95_OUT> created at line 296.
    Found 5-bit adder for signal <fldclr_read_addr[4]_GND_20_o_add_96_OUT> created at line 297.
    Found 6-bit adder for signal <sub_state[5]_GND_20_o_add_98_OUT> created at line 301.
    Found 5-bit adder for signal <shape[4]_GND_20_o_add_103_OUT> created at line 313.
    Found 5-bit adder for signal <shape[4]_GND_20_o_add_105_OUT> created at line 313.
    Found 5-bit adder for signal <shape[4]_GND_20_o_add_107_OUT> created at line 313.
    Found 32-bit adder for signal <score[31]_GND_20_o_add_125_OUT> created at line 371.
    Found 4-bit subtractor for signal <GND_20_o_GND_20_o_sub_30_OUT<3:0>> created at line 219.
    Found 5-bit subtractor for signal <GND_20_o_GND_20_o_sub_132_OUT<4:0>> created at line 377.
    Found 5-bit subtractor for signal <GND_20_o_GND_20_o_sub_133_OUT<4:0>> created at line 378.
    Found 5-bit subtractor for signal <GND_20_o_GND_20_o_sub_134_OUT<4:0>> created at line 385.
    Found 5-bit subtractor for signal <GND_20_o_GND_20_o_sub_135_OUT<4:0>> created at line 386.
    Found 10-bit shifter logical left for signal <GND_20_o_shapex[3]_shift_left_69_OUT> created at line 263
    Found 28-bit shifter logical right for signal <n0619> created at line 290
    Found 10-bit shifter logical left for signal <GND_20_o_oshapex[3]_shift_left_86_OUT> created at line 290
    Found 6x2-bit multiplier for signal <n0622> created at line 291.
    Found 84-bit shifter logical right for signal <n0623> created at line 291
    Found 4x2-bit multiplier for signal <oshapex[3]_PWR_14_o_MuLt_90_OUT> created at line 291.
    Found 30-bit shifter logical left for signal <GND_20_o_oshapex[3]_shift_left_91_OUT> created at line 291
WARNING:Xst:3035 - Index value(s) does not match array range for signal <z1>, simulation mismatch.
    Found 28x16-bit dual-port Read Only RAM <Mram_z1> for signal <z1>.
    Found 26-bit comparator greater for signal <n0004> created at line 166
    Found 6-bit comparator greater for signal <sub_state[5]_GND_20_o_LessThan_19_o> created at line 194
    Found 6-bit comparator greater for signal <sub_state[5]_GND_20_o_LessThan_22_o> created at line 202
    Found 2-bit comparator equal for signal <n0034> created at line 218
    Found 4-bit comparator greater for signal <bestx[3]_shapex[3]_LessThan_29_o> created at line 219
    Found 4-bit comparator greater for signal <shapex[3]_bestx[3]_LessThan_31_o> created at line 220
    Found 5-bit comparator greater for signal <PWR_14_o_fld_read_addr[4]_LessThan_73_o> created at line 264
    Found 5-bit comparator greater for signal <fld_read_addr[4]_PWR_14_o_LessThan_85_o> created at line 287
    Found 5-bit comparator equal for signal <n0116> created at line 348
    Summary:
        inferred   5 RAM(s).
        inferred   2 Multiplier(s).
        inferred  18 Adder/Subtractor(s).
        inferred 285 D-type flip-flop(s).
        inferred   9 Comparator(s).
        inferred  67 Multiplexer(s).
        inferred   5 Combinational logic shifter(s).
        inferred   1 Finite State Machine(s).
Unit <game_2> synthesized.

Synthesizing Unit <game_3>.
    Related source file is "./Matrix/build/Matrix/Matrix.srcs/sources_1/imports/Matrix/game.v".
        INITIAL = 2
WARNING:Xst:2999 - Signal 'z1', unconnected in block 'game_3', is tied to its initial value.
WARNING:Xst:2999 - Signal 'z3', unconnected in block 'game_3', is tied to its initial value.
WARNING:Xst:2999 - Signal 'adjustable_speed', unconnected in block 'game_3', is tied to its initial value.
WARNING:Xst:3035 - Index value(s) does not match array range for signal <z3>, simulation mismatch.
    Found 28x48-bit single-port Read Only RAM <Mram_z3> for signal <z3>.
WARNING:Xst:3035 - Index value(s) does not match array range for signal <adjustable_speed>, simulation mismatch.
    Found 11x21-bit single-port Read Only RAM <Mram_adjustable_speed> for signal <adjustable_speed>.
    Found 6-bit register for signal <sub_state>.
    Found 5-bit register for signal <state>.
    Found 1-bit register for signal <need_highlight>.
    Found 1-bit register for signal <need_sweep>.
    Found 5-bit register for signal <fld_write_addr>.
    Found 5-bit register for signal <fldclr_write_addr>.
    Found 10-bit register for signal <fld_write_data>.
    Found 30-bit register for signal <fldclr_write_data>.
    Found 1-bit register for signal <fld_write_enable>.
    Found 1-bit register for signal <fldclr_write_enable>.
    Found 32-bit register for signal <score>.
    Found 2-bit register for signal <shapei>.
    Found 4-bit register for signal <shapex>.
    Found 5-bit register for signal <shapey>.
    Found 2-bit register for signal <oshapei>.
    Found 4-bit register for signal <oshapex>.
    Found 5-bit register for signal <oshapey>.
    Found 16-bit register for signal <z1b>.
    Found 48-bit register for signal <z3b>.
    Found 5-bit register for signal <fld_read_addr>.
    Found 5-bit register for signal <fldclr_read_addr>.
    Found 1-bit register for signal <test_pass>.
    Found 64-bit register for signal <evaluator_shape>.
    Found 1-bit register for signal <evaluator_start>.
    Found 5-bit register for signal <shape>.
    Found 26-bit register for signal <second>.
    Found finite state machine <FSM_5> for signal <state>.
    -----------------------------------------------------------------------
    | States             | 22                                             |
    | Transitions        | 35                                             |
    | Inputs             | 12                                             |
    | Outputs            | 11                                             |
    | Clock              | clk (rising_edge)                              |
    | Power Up State     | 00001                                          |
    | Encoding           | auto                                           |
    | Implementation     | LUT                                            |
    -----------------------------------------------------------------------
    Found 3-bit adder for signal <shape_index> created at line 43.
    Found 26-bit adder for signal <second[25]_GND_21_o_add_13_OUT> created at line 184.
    Found 6-bit adder for signal <sub_state[5]_GND_21_o_add_22_OUT> created at line 205.
    Found 2-bit adder for signal <shapei[1]_GND_21_o_add_27_OUT> created at line 218.
    Found 4-bit adder for signal <shapex[3]_GND_21_o_add_31_OUT> created at line 220.
    Found 5-bit adder for signal <shapey[4]_GND_21_o_add_32_OUT> created at line 221.
    Found 5-bit adder for signal <shape[4]_GND_21_o_add_46_OUT> created at line 239.
    Found 5-bit adder for signal <shape[4]_GND_21_o_add_81_OUT> created at line 277.
    Found 5-bit adder for signal <fld_read_addr[4]_GND_21_o_add_95_OUT> created at line 296.
    Found 5-bit adder for signal <fldclr_read_addr[4]_GND_21_o_add_96_OUT> created at line 297.
    Found 6-bit adder for signal <sub_state[5]_GND_21_o_add_98_OUT> created at line 301.
    Found 5-bit adder for signal <shape[4]_GND_21_o_add_103_OUT> created at line 313.
    Found 5-bit adder for signal <shape[4]_GND_21_o_add_105_OUT> created at line 313.
    Found 5-bit adder for signal <shape[4]_GND_21_o_add_107_OUT> created at line 313.
    Found 32-bit adder for signal <score[31]_GND_21_o_add_125_OUT> created at line 371.
    Found 4-bit subtractor for signal <GND_21_o_GND_21_o_sub_30_OUT<3:0>> created at line 219.
    Found 5-bit subtractor for signal <GND_21_o_GND_21_o_sub_132_OUT<4:0>> created at line 377.
    Found 5-bit subtractor for signal <GND_21_o_GND_21_o_sub_133_OUT<4:0>> created at line 378.
    Found 5-bit subtractor for signal <GND_21_o_GND_21_o_sub_134_OUT<4:0>> created at line 385.
    Found 5-bit subtractor for signal <GND_21_o_GND_21_o_sub_135_OUT<4:0>> created at line 386.
    Found 10-bit shifter logical left for signal <GND_21_o_shapex[3]_shift_left_69_OUT> created at line 263
    Found 28-bit shifter logical right for signal <n0619> created at line 290
    Found 10-bit shifter logical left for signal <GND_21_o_oshapex[3]_shift_left_86_OUT> created at line 290
    Found 6x2-bit multiplier for signal <n0622> created at line 291.
    Found 84-bit shifter logical right for signal <n0623> created at line 291
    Found 4x2-bit multiplier for signal <oshapex[3]_PWR_15_o_MuLt_90_OUT> created at line 291.
    Found 30-bit shifter logical left for signal <GND_21_o_oshapex[3]_shift_left_91_OUT> created at line 291
WARNING:Xst:3035 - Index value(s) does not match array range for signal <z1>, simulation mismatch.
    Found 28x16-bit dual-port Read Only RAM <Mram_z1> for signal <z1>.
    Found 26-bit comparator greater for signal <n0004> created at line 166
    Found 6-bit comparator greater for signal <sub_state[5]_GND_21_o_LessThan_19_o> created at line 194
    Found 6-bit comparator greater for signal <sub_state[5]_GND_21_o_LessThan_22_o> created at line 202
    Found 2-bit comparator equal for signal <n0034> created at line 218
    Found 4-bit comparator greater for signal <bestx[3]_shapex[3]_LessThan_29_o> created at line 219
    Found 4-bit comparator greater for signal <shapex[3]_bestx[3]_LessThan_31_o> created at line 220
    Found 5-bit comparator greater for signal <PWR_15_o_fld_read_addr[4]_LessThan_73_o> created at line 264
    Found 5-bit comparator greater for signal <fld_read_addr[4]_PWR_15_o_LessThan_85_o> created at line 287
    Found 5-bit comparator equal for signal <n0116> created at line 348
    Summary:
        inferred   5 RAM(s).
        inferred   2 Multiplier(s).
        inferred  18 Adder/Subtractor(s).
        inferred 285 D-type flip-flop(s).
        inferred   9 Comparator(s).
        inferred  67 Multiplexer(s).
        inferred   5 Combinational logic shifter(s).
        inferred   1 Finite State Machine(s).
Unit <game_3> synthesized.

=========================================================================
HDL Synthesis Report

Macro Statistics
# RAMs                                                 : 33
 11x21-bit single-port Read Only RAM                   : 3
 28x16-bit dual-port Read Only RAM                     : 9
 28x48-bit single-port Read Only RAM                   : 3
 32x10-bit dual-port RAM                               : 9
 32x30-bit dual-port RAM                               : 6
 512x24-bit dual-port RAM                              : 2
 8x13-bit single-port Read Only RAM                    : 1
# Multipliers                                          : 22
 16x4-bit multiplier                                   : 12
 16x6-bit multiplier                                   : 3
 4x2-bit multiplier                                    : 3
 6x2-bit multiplier                                    : 4
# Adders/Subtractors                                   : 342
 11-bit adder                                          : 2
 12-bit adder                                          : 2
 13-bit adder                                          : 6
 13-bit subtractor                                     : 1
 14-bit adder                                          : 1
 15-bit subtractor                                     : 1
 16-bit adder                                          : 126
 17-bit adder                                          : 3
 18-bit adder                                          : 3
 19-bit adder                                          : 3
 2-bit adder                                           : 6
 20-bit adder                                          : 3
 21-bit adder                                          : 1
 21-bit subtractor                                     : 3
 22-bit adder                                          : 31
 26-bit adder                                          : 3
 29-bit subtractor                                     : 1
 3-bit adder                                           : 4
 3-bit subtractor                                      : 1
 32-bit adder                                          : 35
 32-bit subtractor                                     : 1
 4-bit adder                                           : 1
 4-bit addsub                                          : 3
 5-bit adder                                           : 39
 5-bit addsub                                          : 3
 5-bit subtractor                                      : 12
 6-bit adder                                           : 12
 6-bit subtractor                                      : 3
 7-bit adder                                           : 30
 9-bit adder                                           : 2
# Registers                                            : 231
 1-bit register                                        : 52
 10-bit register                                       : 25
 13-bit register                                       : 4
 15-bit register                                       : 1
 16-bit register                                       : 22
 2-bit register                                        : 13
 24-bit register                                       : 4
 26-bit register                                       : 4
 29-bit register                                       : 1
 3-bit register                                        : 2
 30-bit register                                       : 9
 32-bit register                                       : 9
 4-bit register                                        : 8
 48-bit register                                       : 3
 5-bit register                                        : 50
 6-bit register                                        : 11
 60-bit register                                       : 3
 64-bit register                                       : 3
 672-bit register                                      : 1
 8-bit register                                        : 2
 9-bit register                                        : 4
# Comparators                                          : 86
 1-bit comparator equal                                : 2
 1-bit comparator not equal                            : 28
 13-bit comparator lessequal                           : 2
 2-bit comparator equal                                : 4
 2-bit comparator not equal                            : 1
 26-bit comparator greater                             : 3
 32-bit comparator greater                             : 3
 4-bit comparator greater                              : 6
 4-bit comparator lessequal                            : 9
 5-bit comparator equal                                : 3
 5-bit comparator greater                              : 16
 6-bit comparator equal                                : 2
 6-bit comparator greater                              : 7
# Multiplexers                                         : 545
 1-bit 16-to-1 multiplexer                             : 1
 1-bit 2-to-1 multiplexer                              : 109
 1-bit 24-to-1 multiplexer                             : 6
 1-bit 32-to-1 multiplexer                             : 1
 10-bit 2-to-1 multiplexer                             : 29
 13-bit 2-to-1 multiplexer                             : 1
 16-bit 2-to-1 multiplexer                             : 45
 2-bit 2-to-1 multiplexer                              : 11
 24-bit 2-to-1 multiplexer                             : 12
 26-bit 2-to-1 multiplexer                             : 1
 29-bit 2-to-1 multiplexer                             : 3
 3-bit 2-to-1 multiplexer                              : 1
 30-bit 2-to-1 multiplexer                             : 13
 32-bit 2-to-1 multiplexer                             : 74
 4-bit 2-to-1 multiplexer                              : 13
 4-bit 4-to-1 multiplexer                              : 3
 5-bit 2-to-1 multiplexer                              : 154
 6-bit 2-to-1 multiplexer                              : 61
 60-bit 2-to-1 multiplexer                             : 3
 8-bit 2-to-1 multiplexer                              : 1
 8-bit 32-to-1 multiplexer                             : 1
 9-bit 2-to-1 multiplexer                              : 2
# Logic shifters                                       : 25
 10-bit shifter logical left                           : 9
 112-bit shifter logical right                         : 3
 28-bit shifter logical right                          : 6
 30-bit shifter logical left                           : 3
 57-bit shifter logical right                          : 1
 84-bit shifter logical right                          : 3
# Tristates                                            : 6
 1-bit tristate buffer                                 : 6
# FSMs                                                 : 8
# Xors                                                 : 30
 16-bit xor2                                           : 30

=========================================================================
INFO:Xst:1767 - HDL ADVISOR - Resource sharing has identified that some arithmetic operations in this design can share the same physical resources for reduced device utilization. For improved clock frequency you may try to disable resource sharing.

=========================================================================
*                       Advanced HDL Synthesis                          *
=========================================================================


Synthesizing (advanced) Unit <display>.
The following registers are absorbed into counter <active_phase>: 1 register on signal <active_phase>.
The following registers are absorbed into counter <bitR>: 1 register on signal <bitR>.
The following registers are absorbed into counter <bitG>: 1 register on signal <bitG>.
The following registers are absorbed into counter <bitB>: 1 register on signal <bitB>.
The following registers are absorbed into counter <active_row>: 1 register on signal <active_row>.
The following registers are absorbed into counter <phasedelay>: 1 register on signal <phasedelay>.
INFO:Xst:3226 - The RAM <ram_b/Mram_mem> will be implemented as a BLOCK RAM, absorbing the following register(s): <ram_b/read_data>
    -----------------------------------------------------------------------
    | ram_type           | Block                               |          |
    -----------------------------------------------------------------------
    | Port A                                                              |
    |     aspect ratio   | 512-word x 24-bit                   |          |
    |     mode           | read-first                          |          |
    |     clkA           | connected to signal <clk>           | rise     |
    |     weA            | connected to signal <write_scr_en_bot> | high     |
    |     addrA          | connected to signal <write_scr_addr> |          |
    |     diA            | connected to signal <write_scr>     |          |
    -----------------------------------------------------------------------
    | optimization       | speed                               |          |
    -----------------------------------------------------------------------
    | Port B                                                              |
    |     aspect ratio   | 512-word x 24-bit                   |          |
    |     mode           | write-first                         |          |
    |     clkB           | connected to signal <clk>           | rise     |
    |     addrB          | connected to signal <read_scr_topddr_bot> |          |
    |     doB            | connected to signal <read_scr_bot>  |          |
    -----------------------------------------------------------------------
    | optimization       | speed                               |          |
    -----------------------------------------------------------------------
INFO:Xst:3226 - The RAM <ram_a/Mram_mem> will be implemented as a BLOCK RAM, absorbing the following register(s): <ram_a/read_data>
    -----------------------------------------------------------------------
    | ram_type           | Block                               |          |
    -----------------------------------------------------------------------
    | Port A                                                              |
    |     aspect ratio   | 512-word x 24-bit                   |          |
    |     mode           | read-first                          |          |
    |     clkA           | connected to signal <clk>           | rise     |
    |     weA            | connected to signal <write_scr_en_top> | high     |
    |     addrA          | connected to signal <write_scr_addr> |          |
    |     diA            | connected to signal <write_scr>     |          |
    -----------------------------------------------------------------------
    | optimization       | speed                               |          |
    -----------------------------------------------------------------------
    | Port B                                                              |
    |     aspect ratio   | 512-word x 24-bit                   |          |
    |     mode           | write-first                         |          |
    |     clkB           | connected to signal <clk>           | rise     |
    |     addrB          | connected to signal <read_scr_topddr_top> |          |
    |     doB            | connected to signal <read_scr_top>  |          |
    -----------------------------------------------------------------------
    | optimization       | speed                               |          |
    -----------------------------------------------------------------------
INFO:Xst:3218 - HDL ADVISOR - The RAM <Mram_phasecycles> will be implemented on LUTs either because you have described an asynchronous read or because of currently unsupported block RAM features. If you have described an asynchronous read, making it synchronous would allow you to take advantage of available block RAM resources, for optimized device usage and improved timings. Please refer to your documentation for coding guidelines.
    -----------------------------------------------------------------------
    | ram_type           | Distributed                         |          |
    -----------------------------------------------------------------------
    | Port A                                                              |
    |     aspect ratio   | 8-word x 13-bit                     |          |
    |     weA            | connected to signal <GND>           | high     |
    |     addrA          | connected to signal <active_phase>  |          |
    |     diA            | connected to signal <GND>           |          |
    |     doA            | connected to internal node          |          |
    -----------------------------------------------------------------------
Unit <display> synthesized (advanced).

Synthesizing (advanced) Unit <evaluator>.
The following registers are absorbed into counter <sub_state>: 1 register on signal <sub_state>.
The following registers are absorbed into counter <fld_read_addr>: 1 register on signal <fld_read_addr>.
Unit <evaluator> synthesized (advanced).

Synthesizing (advanced) Unit <game_1>.
The following registers are absorbed into counter <second>: 1 register on signal <second>.
The following registers are absorbed into counter <shapei>: 1 register on signal <shapei>.
The following registers are absorbed into counter <score>: 1 register on signal <score>.
INFO:Xst:3231 - The small RAM <Mram_z12> will be implemented on LUTs in order to maximize performance and save block RAM resources. If you want to force its implementation on block, use option/constraint ram_style.
    -----------------------------------------------------------------------
    | ram_type           | Distributed                         |          |
    -----------------------------------------------------------------------
    | Port A                                                              |
    |     aspect ratio   | 28-word x 16-bit                    |          |
    |     weA            | connected to signal <GND>           | high     |
    |     addrA          | connected to signal <shape>         |          |
    |     diA            | connected to signal <GND>           |          |
    |     doA            | connected to internal node          |          |
    -----------------------------------------------------------------------
    | Port B                                                              |
    |     aspect ratio   | 28-word x 16-bit                    |          |
    |     addrB          | connected to signal <_n1042>        |          |
    |     doB            | connected to internal node          |          |
    -----------------------------------------------------------------------
INFO:Xst:3231 - The small RAM <Mram_z3> will be implemented on LUTs in order to maximize performance and save block RAM resources. If you want to force its implementation on block, use option/constraint ram_style.
    -----------------------------------------------------------------------
    | ram_type           | Distributed                         |          |
    -----------------------------------------------------------------------
    | Port A                                                              |
    |     aspect ratio   | 28-word x 48-bit                    |          |
    |     weA            | connected to signal <GND>           | high     |
    |     addrA          | connected to signal <_n1042>        |          |
    |     diA            | connected to signal <GND>           |          |
    |     doA            | connected to internal node          |          |
    -----------------------------------------------------------------------
INFO:Xst:3231 - The small RAM <Mram_z1> will be implemented on LUTs in order to maximize performance and save block RAM resources. If you want to force its implementation on block, use option/constraint ram_style.
    -----------------------------------------------------------------------
    | ram_type           | Distributed                         |          |
    -----------------------------------------------------------------------
    | Port A                                                              |
    |     aspect ratio   | 28-word x 16-bit                    |          |
    |     weA            | connected to signal <GND>           | high     |
    |     addrA          | connected to signal <shape[4]_GND_10_o_add_81_OUT> |          |
    |     diA            | connected to signal <GND>           |          |
    |     doA            | connected to internal node          |          |
    -----------------------------------------------------------------------
    | Port B                                                              |
    |     aspect ratio   | 28-word x 16-bit                    |          |
    |     addrB          | connected to signal <shape[4]_GND_10_o_add_103_OUT> |          |
    |     doB            | connected to internal node          |          |
    -----------------------------------------------------------------------
INFO:Xst:3231 - The small RAM <Mram_z11> will be implemented on LUTs in order to maximize performance and save block RAM resources. If you want to force its implementation on block, use option/constraint ram_style.
    -----------------------------------------------------------------------
    | ram_type           | Distributed                         |          |
    -----------------------------------------------------------------------
    | Port A                                                              |
    |     aspect ratio   | 28-word x 16-bit                    |          |
    |     weA            | connected to signal <GND>           | high     |
    |     addrA          | connected to signal <shape[4]_GND_10_o_add_105_OUT> |          |
    |     diA            | connected to signal <GND>           |          |
    |     doA            | connected to internal node          |          |
    -----------------------------------------------------------------------
    | Port B                                                              |
    |     aspect ratio   | 28-word x 16-bit                    |          |
    |     addrB          | connected to signal <shape[4]_GND_10_o_add_107_OUT> |          |
    |     doB            | connected to internal node          |          |
    -----------------------------------------------------------------------
INFO:Xst:3231 - The small RAM <Mram_adjustable_speed> will be implemented on LUTs in order to maximize performance and save block RAM resources. If you want to force its implementation on block, use option/constraint ram_style.
    -----------------------------------------------------------------------
    | ram_type           | Distributed                         |          |
    -----------------------------------------------------------------------
    | Port A                                                              |
    |     aspect ratio   | 11-word x 21-bit                    |          |
    |     weA            | connected to signal <GND>           | high     |
    |     addrA          | connected to signal <speed>         |          |
    |     diA            | connected to signal <GND>           |          |
    |     doA            | connected to internal node          |          |
    -----------------------------------------------------------------------
INFO:Xst:3226 - The RAM <field_output/Mram_mem> will be implemented as a BLOCK RAM, absorbing the following register(s): <field_output/read_data>
    -----------------------------------------------------------------------
    | ram_type           | Block                               |          |
    -----------------------------------------------------------------------
    | Port A                                                              |
    |     aspect ratio   | 32-word x 30-bit                    |          |
    |     mode           | read-first                          |          |
    |     clkA           | connected to signal <clk>           | rise     |
    |     weA            | connected to signal <fldclr_write_enable> | high     |
    |     addrA          | connected to signal <fldclr_write_addr> |          |
    |     diA            | connected to signal <fldclr_write_data> |          |
    -----------------------------------------------------------------------
    | optimization       | speed                               |          |
    -----------------------------------------------------------------------
    | Port B                                                              |
    |     aspect ratio   | 32-word x 30-bit                    |          |
    |     mode           | read-first                          |          |
    |     clkB           | connected to signal <clk>           | rise     |
    |     addrB          | connected to signal <output_read_addr> |          |
    |     doB            | connected to signal <output_read_data> |          |
    -----------------------------------------------------------------------
    | optimization       | speed                               |          |
    -----------------------------------------------------------------------
INFO:Xst:3226 - The RAM <field_colour/Mram_mem> will be implemented as a BLOCK RAM, absorbing the following register(s): <field_colour/read_data>
    -----------------------------------------------------------------------
    | ram_type           | Block                               |          |
    -----------------------------------------------------------------------
    | Port A                                                              |
    |     aspect ratio   | 32-word x 30-bit                    |          |
    |     mode           | read-first                          |          |
    |     clkA           | connected to signal <clk>           | rise     |
    |     weA            | connected to signal <fldclr_write_enable> | high     |
    |     addrA          | connected to signal <fldclr_write_addr> |          |
    |     diA            | connected to signal <fldclr_write_data> |          |
    -----------------------------------------------------------------------
    | optimization       | speed                               |          |
    -----------------------------------------------------------------------
    | Port B                                                              |
    |     aspect ratio   | 32-word x 30-bit                    |          |
    |     mode           | read-first                          |          |
    |     clkB           | connected to signal <clk>           | rise     |
    |     addrB          | connected to signal <fldclr_read_addr> |          |
    |     doB            | connected to signal <fldclr_read_data> |          |
    -----------------------------------------------------------------------
    | optimization       | speed                               |          |
    -----------------------------------------------------------------------
Unit <game_1> synthesized (advanced).

Synthesizing (advanced) Unit <game_2>.
The following registers are absorbed into counter <second>: 1 register on signal <second>.
The following registers are absorbed into counter <shapei>: 1 register on signal <shapei>.
The following registers are absorbed into counter <score>: 1 register on signal <score>.
INFO:Xst:3231 - The small RAM <Mram_z12> will be implemented on LUTs in order to maximize performance and save block RAM resources. If you want to force its implementation on block, use option/constraint ram_style.
    -----------------------------------------------------------------------
    | ram_type           | Distributed                         |          |
    -----------------------------------------------------------------------
    | Port A                                                              |
    |     aspect ratio   | 28-word x 16-bit                    |          |
    |     weA            | connected to signal <GND>           | high     |
    |     addrA          | connected to signal <shape>         |          |
    |     diA            | connected to signal <GND>           |          |
    |     doA            | connected to internal node          |          |
    -----------------------------------------------------------------------
    | Port B                                                              |
    |     aspect ratio   | 28-word x 16-bit                    |          |
    |     addrB          | connected to signal <_n1042>        |          |
    |     doB            | connected to internal node          |          |
    -----------------------------------------------------------------------
INFO:Xst:3231 - The small RAM <Mram_z3> will be implemented on LUTs in order to maximize performance and save block RAM resources. If you want to force its implementation on block, use option/constraint ram_style.
    -----------------------------------------------------------------------
    | ram_type           | Distributed                         |          |
    -----------------------------------------------------------------------
    | Port A                                                              |
    |     aspect ratio   | 28-word x 48-bit                    |          |
    |     weA            | connected to signal <GND>           | high     |
    |     addrA          | connected to signal <_n1042>        |          |
    |     diA            | connected to signal <GND>           |          |
    |     doA            | connected to internal node          |          |
    -----------------------------------------------------------------------
INFO:Xst:3231 - The small RAM <Mram_z1> will be implemented on LUTs in order to maximize performance and save block RAM resources. If you want to force its implementation on block, use option/constraint ram_style.
    -----------------------------------------------------------------------
    | ram_type           | Distributed                         |          |
    -----------------------------------------------------------------------
    | Port A                                                              |
    |     aspect ratio   | 28-word x 16-bit                    |          |
    |     weA            | connected to signal <GND>           | high     |
    |     addrA          | connected to signal <shape[4]_GND_20_o_add_81_OUT> |          |
    |     diA            | connected to signal <GND>           |          |
    |     doA            | connected to internal node          |          |
    -----------------------------------------------------------------------
    | Port B                                                              |
    |     aspect ratio   | 28-word x 16-bit                    |          |
    |     addrB          | connected to signal <shape[4]_GND_20_o_add_103_OUT> |          |
    |     doB            | connected to internal node          |          |
    -----------------------------------------------------------------------
INFO:Xst:3231 - The small RAM <Mram_z11> will be implemented on LUTs in order to maximize performance and save block RAM resources. If you want to force its implementation on block, use option/constraint ram_style.
    -----------------------------------------------------------------------
    | ram_type           | Distributed                         |          |
    -----------------------------------------------------------------------
    | Port A                                                              |
    |     aspect ratio   | 28-word x 16-bit                    |          |
    |     weA            | connected to signal <GND>           | high     |
    |     addrA          | connected to signal <shape[4]_GND_20_o_add_105_OUT> |          |
    |     diA            | connected to signal <GND>           |          |
    |     doA            | connected to internal node          |          |
    -----------------------------------------------------------------------
    | Port B                                                              |
    |     aspect ratio   | 28-word x 16-bit                    |          |
    |     addrB          | connected to signal <shape[4]_GND_20_o_add_107_OUT> |          |
    |     doB            | connected to internal node          |          |
    -----------------------------------------------------------------------
INFO:Xst:3231 - The small RAM <Mram_adjustable_speed> will be implemented on LUTs in order to maximize performance and save block RAM resources. If you want to force its implementation on block, use option/constraint ram_style.
    -----------------------------------------------------------------------
    | ram_type           | Distributed                         |          |
    -----------------------------------------------------------------------
    | Port A                                                              |
    |     aspect ratio   | 11-word x 21-bit                    |          |
    |     weA            | connected to signal <GND>           | high     |
    |     addrA          | connected to signal <speed>         |          |
    |     diA            | connected to signal <GND>           |          |
    |     doA            | connected to internal node          |          |
    -----------------------------------------------------------------------
INFO:Xst:3226 - The RAM <field_output/Mram_mem> will be implemented as a BLOCK RAM, absorbing the following register(s): <field_output/read_data>
    -----------------------------------------------------------------------
    | ram_type           | Block                               |          |
    -----------------------------------------------------------------------
    | Port A                                                              |
    |     aspect ratio   | 32-word x 30-bit                    |          |
    |     mode           | read-first                          |          |
    |     clkA           | connected to signal <clk>           | rise     |
    |     weA            | connected to signal <fldclr_write_enable> | high     |
    |     addrA          | connected to signal <fldclr_write_addr> |          |
    |     diA            | connected to signal <fldclr_write_data> |          |
    -----------------------------------------------------------------------
    | optimization       | speed                               |          |
    -----------------------------------------------------------------------
    | Port B                                                              |
    |     aspect ratio   | 32-word x 30-bit                    |          |
    |     mode           | read-first                          |          |
    |     clkB           | connected to signal <clk>           | rise     |
    |     addrB          | connected to signal <output_read_addr> |          |
    |     doB            | connected to signal <output_read_data> |          |
    -----------------------------------------------------------------------
    | optimization       | speed                               |          |
    -----------------------------------------------------------------------
INFO:Xst:3226 - The RAM <field_colour/Mram_mem> will be implemented as a BLOCK RAM, absorbing the following register(s): <field_colour/read_data>
    -----------------------------------------------------------------------
    | ram_type           | Block                               |          |
    -----------------------------------------------------------------------
    | Port A                                                              |
    |     aspect ratio   | 32-word x 30-bit                    |          |
    |     mode           | read-first                          |          |
    |     clkA           | connected to signal <clk>           | rise     |
    |     weA            | connected to signal <fldclr_write_enable> | high     |
    |     addrA          | connected to signal <fldclr_write_addr> |          |
    |     diA            | connected to signal <fldclr_write_data> |          |
    -----------------------------------------------------------------------
    | optimization       | speed                               |          |
    -----------------------------------------------------------------------
    | Port B                                                              |
    |     aspect ratio   | 32-word x 30-bit                    |          |
    |     mode           | read-first                          |          |
    |     clkB           | connected to signal <clk>           | rise     |
    |     addrB          | connected to signal <fldclr_read_addr> |          |
    |     doB            | connected to signal <fldclr_read_data> |          |
    -----------------------------------------------------------------------
    | optimization       | speed                               |          |
    -----------------------------------------------------------------------
Unit <game_2> synthesized (advanced).

Synthesizing (advanced) Unit <game_3>.
The following registers are absorbed into counter <second>: 1 register on signal <second>.
The following registers are absorbed into counter <shapei>: 1 register on signal <shapei>.
The following registers are absorbed into counter <score>: 1 register on signal <score>.
INFO:Xst:3231 - The small RAM <Mram_z12> will be implemented on LUTs in order to maximize performance and save block RAM resources. If you want to force its implementation on block, use option/constraint ram_style.
    -----------------------------------------------------------------------
    | ram_type           | Distributed                         |          |
    -----------------------------------------------------------------------
    | Port A                                                              |
    |     aspect ratio   | 28-word x 16-bit                    |          |
    |     weA            | connected to signal <GND>           | high     |
    |     addrA          | connected to signal <shape>         |          |
    |     diA            | connected to signal <GND>           |          |
    |     doA            | connected to internal node          |          |
    -----------------------------------------------------------------------
    | Port B                                                              |
    |     aspect ratio   | 28-word x 16-bit                    |          |
    |     addrB          | connected to signal <_n1042>        |          |
    |     doB            | connected to internal node          |          |
    -----------------------------------------------------------------------
INFO:Xst:3231 - The small RAM <Mram_z3> will be implemented on LUTs in order to maximize performance and save block RAM resources. If you want to force its implementation on block, use option/constraint ram_style.
    -----------------------------------------------------------------------
    | ram_type           | Distributed                         |          |
    -----------------------------------------------------------------------
    | Port A                                                              |
    |     aspect ratio   | 28-word x 48-bit                    |          |
    |     weA            | connected to signal <GND>           | high     |
    |     addrA          | connected to signal <_n1042>        |          |
    |     diA            | connected to signal <GND>           |          |
    |     doA            | connected to internal node          |          |
    -----------------------------------------------------------------------
INFO:Xst:3231 - The small RAM <Mram_z1> will be implemented on LUTs in order to maximize performance and save block RAM resources. If you want to force its implementation on block, use option/constraint ram_style.
    -----------------------------------------------------------------------
    | ram_type           | Distributed                         |          |
    -----------------------------------------------------------------------
    | Port A                                                              |
    |     aspect ratio   | 28-word x 16-bit                    |          |
    |     weA            | connected to signal <GND>           | high     |
    |     addrA          | connected to signal <shape[4]_GND_21_o_add_81_OUT> |          |
    |     diA            | connected to signal <GND>           |          |
    |     doA            | connected to internal node          |          |
    -----------------------------------------------------------------------
    | Port B                                                              |
    |     aspect ratio   | 28-word x 16-bit                    |          |
    |     addrB          | connected to signal <shape[4]_GND_21_o_add_103_OUT> |          |
    |     doB            | connected to internal node          |          |
    -----------------------------------------------------------------------
INFO:Xst:3231 - The small RAM <Mram_z11> will be implemented on LUTs in order to maximize performance and save block RAM resources. If you want to force its implementation on block, use option/constraint ram_style.
    -----------------------------------------------------------------------
    | ram_type           | Distributed                         |          |
    -----------------------------------------------------------------------
    | Port A                                                              |
    |     aspect ratio   | 28-word x 16-bit                    |          |
    |     weA            | connected to signal <GND>           | high     |
    |     addrA          | connected to signal <shape[4]_GND_21_o_add_105_OUT> |          |
    |     diA            | connected to signal <GND>           |          |
    |     doA            | connected to internal node          |          |
    -----------------------------------------------------------------------
    | Port B                                                              |
    |     aspect ratio   | 28-word x 16-bit                    |          |
    |     addrB          | connected to signal <shape[4]_GND_21_o_add_107_OUT> |          |
    |     doB            | connected to internal node          |          |
    -----------------------------------------------------------------------
INFO:Xst:3231 - The small RAM <Mram_adjustable_speed> will be implemented on LUTs in order to maximize performance and save block RAM resources. If you want to force its implementation on block, use option/constraint ram_style.
    -----------------------------------------------------------------------
    | ram_type           | Distributed                         |          |
    -----------------------------------------------------------------------
    | Port A                                                              |
    |     aspect ratio   | 11-word x 21-bit                    |          |
    |     weA            | connected to signal <GND>           | high     |
    |     addrA          | connected to signal <speed>         |          |
    |     diA            | connected to signal <GND>           |          |
    |     doA            | connected to internal node          |          |
    -----------------------------------------------------------------------
INFO:Xst:3226 - The RAM <field_output/Mram_mem> will be implemented as a BLOCK RAM, absorbing the following register(s): <field_output/read_data>
    -----------------------------------------------------------------------
    | ram_type           | Block                               |          |
    -----------------------------------------------------------------------
    | Port A                                                              |
    |     aspect ratio   | 32-word x 30-bit                    |          |
    |     mode           | read-first                          |          |
    |     clkA           | connected to signal <clk>           | rise     |
    |     weA            | connected to signal <fldclr_write_enable> | high     |
    |     addrA          | connected to signal <fldclr_write_addr> |          |
    |     diA            | connected to signal <fldclr_write_data> |          |
    -----------------------------------------------------------------------
    | optimization       | speed                               |          |
    -----------------------------------------------------------------------
    | Port B                                                              |
    |     aspect ratio   | 32-word x 30-bit                    |          |
    |     mode           | read-first                          |          |
    |     clkB           | connected to signal <clk>           | rise     |
    |     addrB          | connected to signal <output_read_addr> |          |
    |     doB            | connected to signal <output_read_data> |          |
    -----------------------------------------------------------------------
    | optimization       | speed                               |          |
    -----------------------------------------------------------------------
INFO:Xst:3226 - The RAM <field_colour/Mram_mem> will be implemented as a BLOCK RAM, absorbing the following register(s): <field_colour/read_data>
    -----------------------------------------------------------------------
    | ram_type           | Block                               |          |
    -----------------------------------------------------------------------
    | Port A                                                              |
    |     aspect ratio   | 32-word x 30-bit                    |          |
    |     mode           | read-first                          |          |
    |     clkA           | connected to signal <clk>           | rise     |
    |     weA            | connected to signal <fldclr_write_enable> | high     |
    |     addrA          | connected to signal <fldclr_write_addr> |          |
    |     diA            | connected to signal <fldclr_write_data> |          |
    -----------------------------------------------------------------------
    | optimization       | speed                               |          |
    -----------------------------------------------------------------------
    | Port B                                                              |
    |     aspect ratio   | 32-word x 30-bit                    |          |
    |     mode           | read-first                          |          |
    |     clkB           | connected to signal <clk>           | rise     |
    |     addrB          | connected to signal <fldclr_read_addr> |          |
    |     doB            | connected to signal <fldclr_read_data> |          |
    -----------------------------------------------------------------------
    | optimization       | speed                               |          |
    -----------------------------------------------------------------------
Unit <game_3> synthesized (advanced).

Synthesizing (advanced) Unit <mojo_top>.
The following registers are absorbed into counter <primary_counter>: 1 register on signal <primary_counter>.
The following registers are absorbed into counter <random_valuestep>: 1 register on signal <random_valuestep>.
The following registers are absorbed into counter <read_addr>: 1 register on signal <read_addr>.
The following registers are absorbed into counter <game_id>: 1 register on signal <game_id>.
The following registers are absorbed into counter <debouncer>: 1 register on signal <debouncer>.
The following registers are absorbed into counter <random_rawcount<1><12:0>>: 1 register on signal <random_rawcount<1><12:0>>.
The following registers are absorbed into counter <random_rawcount<0><12:0>>: 1 register on signal <random_rawcount<0><12:0>>.
        The following adders/subtractors are grouped into adder tree <Madd_n1448_Madd1> :
        <Madd_n1442[11:0]_Madd> in block <mojo_top>,    <Madd_n1445[12:0]_Madd> in block <mojo_top>,    <Madd_n1448_Madd> in block <mojo_top>.
Unit <mojo_top> synthesized (advanced).

Synthesizing (advanced) Unit <ram_3>.
INFO:Xst:3231 - The small RAM <Mram_mem> will be implemented on LUTs in order to maximize performance and save block RAM resources. If you want to force its implementation on block, use option/constraint ram_style.
    -----------------------------------------------------------------------
    | ram_type           | Distributed                         |          |
    -----------------------------------------------------------------------
    | Port A                                                              |
    |     aspect ratio   | 32-word x 10-bit                    |          |
    |     clkA           | connected to signal <wclk>          | rise     |
    |     weA            | connected to signal <write_en>      | high     |
    |     addrA          | connected to signal <waddr>         |          |
    |     diA            | connected to signal <write_data>    |          |
    -----------------------------------------------------------------------
    | Port B                                                              |
    |     aspect ratio   | 32-word x 10-bit                    |          |
    |     addrB          | connected to signal <raddr>         |          |
    |     doB            | connected to internal node          |          |
    -----------------------------------------------------------------------
INFO:Xst:3212 - HDL ADVISOR - Asynchronous or synchronous initialization of the register <fld_read_addr> prevents it from being combined with the RAM <Mram_mem> for implementation as read-only block RAM.
Unit <ram_3> synthesized (advanced).

Synthesizing (advanced) Unit <sub_evaluator>.
The following registers are absorbed into counter <FilledLines>: 1 register on signal <FilledLines>.
        The following adders/subtractors are grouped into adder tree <Msub_GND_14_o_GND_14_o_sub_250_OUT1> :
        <Madd_n1309[16:0]> in block <sub_evaluator>,    <Madd_n1312[17:0]> in block <sub_evaluator>,    <Madd_n1315[18:0]> in block <sub_evaluator>,    <Madd_n1318[19:0]> in block <sub_evaluator>,    <Msub_GND_14_o_GND_14_o_sub_250_OUT> in block <sub_evaluator>.
        The following adders/subtractors are grouped into adder tree <Madd_VerticalTransitions[15]_GND_14_o_add_159_OUT1> :
        <Madd_n1198> in block <sub_evaluator>,  <Madd_n1201> in block <sub_evaluator>,  <Madd_n1204> in block <sub_evaluator>,  <Madd_n1207> in block <sub_evaluator>,  <Madd_n1210> in block <sub_evaluator>,  <Madd_n1213> in block <sub_evaluator>,  <Madd_n1216> in block <sub_evaluator>,     <Madd_n1219> in block <sub_evaluator>,  <Madd_n1222> in block <sub_evaluator>,  <Madd_VerticalTransitions[15]_GND_14_o_add_159_OUT> in block <sub_evaluator>.
        The following adders/subtractors are grouped into adder tree <Madd__n14651> :
        <Madd__n1457> in block <sub_evaluator>,         <Madd__n1458> in block <sub_evaluator>,         <Madd__n1460> in block <sub_evaluator>,         <Madd__n1461> in block <sub_evaluator>,         <Madd__n1462> in block <sub_evaluator>.
        The following adders/subtractors are grouped into adder tree <Madd__n14551> :
        <Madd__n1446> in block <sub_evaluator>,         <Madd__n1448_Madd> in block <sub_evaluator>,    <Madd__n1452> in block <sub_evaluator>,         <Madd__n1453_Madd> in block <sub_evaluator>,    <Madd__n1449> in block <sub_evaluator>,         <Madd__n1454_Madd> in block <sub_evaluator>.
        The following adders/subtractors are grouped into adder tree <Madd_BlockedCells[15]_GND_14_o_add_139_OUT_Madd1> :
        <Madd_n1171_Madd> in block <sub_evaluator>,     <Madd_n1177_Madd> in block <sub_evaluator>,     <Madd_n1183_Madd> in block <sub_evaluator>,     <Madd_n1189_Madd> in block <sub_evaluator>,     <Madd_BlockedCells[15]_GND_14_o_add_139_OUT_Madd> in block <sub_evaluator>.
        The following adders/subtractors are grouped into adder tree <Madd_n1298_Madd1> :
        <Madd_n1280> in block <sub_evaluator>,  <Madd_n1286_Madd> in block <sub_evaluator>,     <Madd_n1292_Madd> in block <sub_evaluator>,     <Madd_n1298_Madd> in block <sub_evaluator>.
Unit <sub_evaluator> synthesized (advanced).
WARNING:Xst:2677 - Node <mode_1> of sequential type is unconnected in block <mojo_top>.
WARNING:Xst:2677 - Node <random_prevalue_7> of sequential type is unconnected in block <mojo_top>.
WARNING:Xst:2677 - Node <random_value_7> of sequential type is unconnected in block <mojo_top>.

=========================================================================
Advanced HDL Synthesis Report

Macro Statistics
# RAMs                                                 : 33
 11x21-bit single-port distributed Read Only RAM       : 3
 28x16-bit dual-port distributed Read Only RAM         : 9
 28x48-bit single-port distributed Read Only RAM       : 3
 32x10-bit dual-port distributed RAM                   : 9
 32x30-bit dual-port block RAM                         : 6
 512x24-bit dual-port block RAM                        : 2
 8x13-bit single-port distributed Read Only RAM        : 1
# Multipliers                                          : 22
 16x4-bit multiplier                                   : 12
 16x6-bit multiplier                                   : 3
 4x2-bit multiplier                                    : 3
 6x2-bit multiplier                                    : 4
# Adders/Subtractors                                   : 152
 10-bit adder                                          : 2
 11-bit adder                                          : 1
 12-bit adder                                          : 1
 13-bit adder                                          : 2
 16-bit adder                                          : 9
 16-bit adder carry in                                 : 3
 2-bit adder                                           : 2
 21-bit adder                                          : 32
 29-bit subtractor                                     : 1
 3-bit adder                                           : 3
 32-bit adder                                          : 1
 32-bit subtractor                                     : 1
 4-bit addsub                                          : 3
 5-bit adder                                           : 35
 5-bit addsub                                          : 3
 5-bit subtractor                                      : 9
 6-bit adder                                           : 9
 6-bit subtractor                                      : 3
 7-bit adder                                           : 30
 8-bit adder                                           : 1
 9-bit adder                                           : 1
# Adder Trees                                          : 19
 10-bit / 4-inputs adder tree                          : 1
 16-bit / 10-inputs adder tree                         : 3
 16-bit / 11-inputs adder tree                         : 3
 16-bit / 6-inputs adder tree                          : 3
 16-bit / 8-inputs adder tree                          : 3
 21-bit / 6-inputs adder tree                          : 3
 32-bit / 5-inputs adder tree                          : 3
# Counters                                             : 31
 13-bit down counter                                   : 1
 13-bit up counter                                     : 3
 15-bit down counter                                   : 1
 16-bit up counter                                     : 3
 2-bit up counter                                      : 4
 26-bit up counter                                     : 3
 3-bit down counter                                    : 1
 3-bit up counter                                      : 1
 32-bit up counter                                     : 3
 4-bit up counter                                      : 1
 5-bit down counter                                    : 3
 5-bit up counter                                      : 4
 6-bit up counter                                      : 3
# Registers                                            : 2537
 Flip-Flops                                            : 2537
# Comparators                                          : 86
 1-bit comparator equal                                : 2
 1-bit comparator not equal                            : 28
 13-bit comparator lessequal                           : 2
 2-bit comparator equal                                : 4
 2-bit comparator not equal                            : 1
 26-bit comparator greater                             : 3
 32-bit comparator greater                             : 3
 4-bit comparator greater                              : 6
 4-bit comparator lessequal                            : 9
 5-bit comparator equal                                : 3
 5-bit comparator greater                              : 16
 6-bit comparator equal                                : 2
 6-bit comparator greater                              : 7
# Multiplexers                                         : 576
 1-bit 16-to-1 multiplexer                             : 1
 1-bit 2-to-1 multiplexer                              : 160
 1-bit 24-to-1 multiplexer                             : 6
 1-bit 32-to-1 multiplexer                             : 9
 10-bit 2-to-1 multiplexer                             : 29
 16-bit 2-to-1 multiplexer                             : 42
 2-bit 2-to-1 multiplexer                              : 5
 24-bit 2-to-1 multiplexer                             : 12
 26-bit 2-to-1 multiplexer                             : 1
 29-bit 2-to-1 multiplexer                             : 3
 30-bit 2-to-1 multiplexer                             : 13
 32-bit 2-to-1 multiplexer                             : 71
 4-bit 2-to-1 multiplexer                              : 13
 4-bit 4-to-1 multiplexer                              : 3
 5-bit 2-to-1 multiplexer                              : 141
 6-bit 2-to-1 multiplexer                              : 61
 60-bit 2-to-1 multiplexer                             : 3
 8-bit 2-to-1 multiplexer                              : 1
 9-bit 2-to-1 multiplexer                              : 2
# Logic shifters                                       : 25
 10-bit shifter logical left                           : 9
 112-bit shifter logical right                         : 3
 28-bit shifter logical right                          : 6
 30-bit shifter logical left                           : 3
 57-bit shifter logical right                          : 1
 84-bit shifter logical right                          : 3
# FSMs                                                 : 8
# Xors                                                 : 30
 16-bit xor2                                           : 30

=========================================================================

=========================================================================
*                         Low Level Synthesis                           *
=========================================================================
WARNING:Xst:1293 - FF/Latch <shape_0> has a constant value of 0 in block <game_1>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1896 - Due to other FF/Latch trimming, FF/Latch <shape_1> has a constant value of 0 in block <game_1>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1293 - FF/Latch <shape_0> has a constant value of 0 in block <game_2>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1896 - Due to other FF/Latch trimming, FF/Latch <shape_1> has a constant value of 0 in block <game_2>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1293 - FF/Latch <shape_0> has a constant value of 0 in block <game_3>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1896 - Due to other FF/Latch trimming, FF/Latch <shape_1> has a constant value of 0 in block <game_3>. This FF/Latch will be trimmed during the optimization process.
INFO:Xst:2261 - The FF/Latch <read_scr_topddr_top_0> in Unit <display> is equivalent to the following FF/Latch, which will be removed : <read_scr_topddr_bot_0>
INFO:Xst:2261 - The FF/Latch <read_scr_topddr_top_1> in Unit <display> is equivalent to the following FF/Latch, which will be removed : <read_scr_topddr_bot_1>
INFO:Xst:2261 - The FF/Latch <read_scr_topddr_top_2> in Unit <display> is equivalent to the following FF/Latch, which will be removed : <read_scr_topddr_bot_2>
INFO:Xst:2261 - The FF/Latch <read_scr_topddr_top_3> in Unit <display> is equivalent to the following FF/Latch, which will be removed : <read_scr_topddr_bot_3>
INFO:Xst:2261 - The FF/Latch <read_scr_topddr_top_4> in Unit <display> is equivalent to the following FF/Latch, which will be removed : <read_scr_topddr_bot_4>
INFO:Xst:2261 - The FF/Latch <read_scr_topddr_top_5> in Unit <display> is equivalent to the following FF/Latch, which will be removed : <read_scr_topddr_bot_5>
INFO:Xst:2261 - The FF/Latch <read_scr_topddr_top_6> in Unit <display> is equivalent to the following FF/Latch, which will be removed : <read_scr_topddr_bot_6>
INFO:Xst:2261 - The FF/Latch <read_scr_topddr_top_7> in Unit <display> is equivalent to the following FF/Latch, which will be removed : <read_scr_topddr_bot_7>
INFO:Xst:2261 - The FF/Latch <read_scr_topddr_top_8> in Unit <display> is equivalent to the following FF/Latch, which will be removed : <read_scr_topddr_bot_8>
Analyzing FSM <MFsm> for best encoding.
Optimizing FSM <FSM_0> on signal <state[1:22]> with one-hot encoding.
---------------------------------
 State | Encoding
---------------------------------
 00000 | 0000000000000000000001
 00001 | 0000000000000000000010
 10001 | 0000000000000000000100
 00010 | 0000000000000000001000
 00011 | 0000000000000000010000
 00100 | 0000000000000000100000
 00101 | 0000000000000001000000
 00110 | 0000000000000010000000
 10100 | 0000000000000100000000
 00111 | 0000000000001000000000
 01001 | 0000000000010000000000
 01110 | 0000000000100000000000
 01010 | 0000000001000000000000
 01011 | 0000000010000000000000
 01100 | 0000000100000000000000
 01101 | 0000001000000000000000
 01111 | 0000010000000000000000
 10000 | 0000100000000000000000
 10010 | 0001000000000000000000
 10011 | 0010000000000000000000
 01000 | 0100000000000000000000
 10101 | 1000000000000000000000
---------------------------------
Analyzing FSM <MFsm> for best encoding.
Optimizing FSM <mtrx/FSM_1> on signal <active_state[1:4]> with user encoding.
-------------------
 State | Encoding
-------------------
 0000  | 0000
 0001  | 0001
 0010  | 0010
 0011  | 0011
 0101  | 0101
 0111  | 0111
 1000  | 1000
 1001  | 1001
 1010  | 1010
 1011  | 1011
-------------------
Analyzing FSM <MFsm> for best encoding.
Optimizing FSM <tetro1/FSM_2> on signal <state[1:22]> with one-hot encoding.
---------------------------------
 State | Encoding
---------------------------------
 00001 | 0000000000000000000001
 00000 | 0000000000000000000010
 00011 | 0000000000000000000100
 10000 | 0000000000000000001000
 01111 | 0000000000000000010000
 00010 | 0000000000000000100000
 01110 | 0000000000000001000000
 00100 | 0000000000000010000000
 00110 | 0000000000000100000000
 00111 | 0000000000001000000000
 00101 | 0000000000010000000000
 01001 | 0000000000100000000000
 01000 | 0000000001000000000000
 01100 | 0000000010000000000000
 01101 | 0000000100000000000000
 01011 | 0000001000000000000000
 10001 | 0000010000000000000000
 10100 | 0000100000000000000000
 10010 | 0001000000000000000000
 10011 | 0010000000000000000000
 10101 | 0100000000000000000000
 10110 | 1000000000000000000000
---------------------------------
Analyzing FSM <MFsm> for best encoding.
Optimizing FSM <tetro1/FSM_3> on signal <state[1:4]> with user encoding.
-------------------
 State | Encoding
-------------------
 0000  | 0000
 0011  | 0011
 0100  | 0100
 0010  | 0010
 0101  | 0101
 0110  | 0110
 0111  | 0111
 1000  | 1000
 0001  | 0001
-------------------
Analyzing FSM <MFsm> for best encoding.
Optimizing FSM <tetro2/FSM_4> on signal <state[1:22]> with one-hot encoding.
---------------------------------
 State | Encoding
---------------------------------
 00001 | 0000000000000000000001
 00000 | 0000000000000000000010
 00011 | 0000000000000000000100
 10000 | 0000000000000000001000
 01111 | 0000000000000000010000
 00010 | 0000000000000000100000
 01110 | 0000000000000001000000
 00100 | 0000000000000010000000
 00110 | 0000000000000100000000
 00111 | 0000000000001000000000
 00101 | 0000000000010000000000
 01001 | 0000000000100000000000
 01000 | 0000000001000000000000
 01100 | 0000000010000000000000
 01101 | 0000000100000000000000
 01011 | 0000001000000000000000
 10001 | 0000010000000000000000
 10100 | 0000100000000000000000
 10010 | 0001000000000000000000
 10011 | 0010000000000000000000
 10101 | 0100000000000000000000
 10110 | 1000000000000000000000
---------------------------------
Analyzing FSM <MFsm> for best encoding.
Optimizing FSM <tetro2/FSM_3> on signal <state[1:4]> with user encoding.
-------------------
 State | Encoding
-------------------
 0000  | 0000
 0011  | 0011
 0100  | 0100
 0010  | 0010
 0101  | 0101
 0110  | 0110
 0111  | 0111
 1000  | 1000
 0001  | 0001
-------------------
Analyzing FSM <MFsm> for best encoding.
Optimizing FSM <tetro3/FSM_5> on signal <state[1:22]> with one-hot encoding.
---------------------------------
 State | Encoding
---------------------------------
 00001 | 0000000000000000000001
 00000 | 0000000000000000000010
 00011 | 0000000000000000000100
 10000 | 0000000000000000001000
 01111 | 0000000000000000010000
 00010 | 0000000000000000100000
 01110 | 0000000000000001000000
 00100 | 0000000000000010000000
 00110 | 0000000000000100000000
 00111 | 0000000000001000000000
 00101 | 0000000000010000000000
 01001 | 0000000000100000000000
 01000 | 0000000001000000000000
 01100 | 0000000010000000000000
 01101 | 0000000100000000000000
 01011 | 0000001000000000000000
 10001 | 0000010000000000000000
 10100 | 0000100000000000000000
 10010 | 0001000000000000000000
 10011 | 0010000000000000000000
 10101 | 0100000000000000000000
 10110 | 1000000000000000000000
---------------------------------
Analyzing FSM <MFsm> for best encoding.
Optimizing FSM <tetro3/FSM_3> on signal <state[1:4]> with user encoding.
-------------------
 State | Encoding
-------------------
 0000  | 0000
 0011  | 0011
 0100  | 0100
 0010  | 0010
 0101  | 0101
 0110  | 0110
 0111  | 0111
 1000  | 1000
 0001  | 0001
-------------------
WARNING:Xst:1710 - FF/Latch <z3b_47> (without init value) has a constant value of 0 in block <game_1>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <z3b_46> (without init value) has a constant value of 0 in block <game_1>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <z3b_45> (without init value) has a constant value of 0 in block <game_1>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <z3b_44> (without init value) has a constant value of 0 in block <game_1>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <z3b_43> (without init value) has a constant value of 0 in block <game_1>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <z3b_42> (without init value) has a constant value of 0 in block <game_1>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <z3b_41> (without init value) has a constant value of 0 in block <game_1>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <z3b_40> (without init value) has a constant value of 0 in block <game_1>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <z3b_39> (without init value) has a constant value of 0 in block <game_1>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <z3b_38> (without init value) has a constant value of 0 in block <game_1>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <z3b_37> (without init value) has a constant value of 0 in block <game_1>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <z3b_35> (without init value) has a constant value of 0 in block <game_1>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <z3b_34> (without init value) has a constant value of 0 in block <game_1>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <z3b_33> (without init value) has a constant value of 0 in block <game_1>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <z3b_23> (without init value) has a constant value of 0 in block <game_1>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <z3b_22> (without init value) has a constant value of 0 in block <game_1>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <z3b_11> (without init value) has a constant value of 0 in block <game_1>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <z3b_10> (without init value) has a constant value of 0 in block <game_1>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <z3b_9> (without init value) has a constant value of 0 in block <game_1>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1710 - FF/Latch <z3b_47> (without init value) has a constant value of 0 in block <game_2>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <z3b_46> (without init value) has a constant value of 0 in block <game_2>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <z3b_45> (without init value) has a constant value of 0 in block <game_2>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <z3b_44> (without init value) has a constant value of 0 in block <game_2>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <z3b_43> (without init value) has a constant value of 0 in block <game_2>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <z3b_42> (without init value) has a constant value of 0 in block <game_2>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <z3b_41> (without init value) has a constant value of 0 in block <game_2>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <z3b_40> (without init value) has a constant value of 0 in block <game_2>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <z3b_39> (without init value) has a constant value of 0 in block <game_2>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <z3b_38> (without init value) has a constant value of 0 in block <game_2>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <z3b_37> (without init value) has a constant value of 0 in block <game_2>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <z3b_35> (without init value) has a constant value of 0 in block <game_2>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <z3b_34> (without init value) has a constant value of 0 in block <game_2>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <z3b_33> (without init value) has a constant value of 0 in block <game_2>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <z3b_23> (without init value) has a constant value of 0 in block <game_2>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <z3b_22> (without init value) has a constant value of 0 in block <game_2>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <z3b_11> (without init value) has a constant value of 0 in block <game_2>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <z3b_10> (without init value) has a constant value of 0 in block <game_2>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <z3b_9> (without init value) has a constant value of 0 in block <game_2>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1710 - FF/Latch <z3b_47> (without init value) has a constant value of 0 in block <game_3>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <z3b_46> (without init value) has a constant value of 0 in block <game_3>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <z3b_45> (without init value) has a constant value of 0 in block <game_3>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <z3b_44> (without init value) has a constant value of 0 in block <game_3>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <z3b_43> (without init value) has a constant value of 0 in block <game_3>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <z3b_42> (without init value) has a constant value of 0 in block <game_3>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <z3b_41> (without init value) has a constant value of 0 in block <game_3>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <z3b_40> (without init value) has a constant value of 0 in block <game_3>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <z3b_39> (without init value) has a constant value of 0 in block <game_3>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <z3b_38> (without init value) has a constant value of 0 in block <game_3>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <z3b_37> (without init value) has a constant value of 0 in block <game_3>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <z3b_35> (without init value) has a constant value of 0 in block <game_3>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <z3b_34> (without init value) has a constant value of 0 in block <game_3>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <z3b_33> (without init value) has a constant value of 0 in block <game_3>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <z3b_23> (without init value) has a constant value of 0 in block <game_3>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <z3b_22> (without init value) has a constant value of 0 in block <game_3>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <z3b_11> (without init value) has a constant value of 0 in block <game_3>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <z3b_10> (without init value) has a constant value of 0 in block <game_3>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <z3b_9> (without init value) has a constant value of 0 in block <game_3>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1710 - FF/Latch <sub_state_0> (without init value) has a constant value of 0 in block <sub_evaluator>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <sub_state_1> (without init value) has a constant value of 0 in block <sub_evaluator>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1293 - FF/Latch <state_FSM_FFd20> has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_441> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_442> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_443> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_444> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_445> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_446> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_447> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_448> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_449> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_450> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_451> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_452> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_453> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_454> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_455> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_456> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_457> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_458> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_417> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_418> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_423> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_424> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_425> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_426> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_427> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_428> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_429> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_430> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_431> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_432> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_433> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_434> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_435> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_436> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_437> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_438> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_439> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_480> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_481> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_483> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_484> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_485> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_486> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_487> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_488> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_489> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_490> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_491> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_492> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_493> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_494> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_495> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_496> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_497> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_498> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_499> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_459> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_460> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_463> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_464> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_465> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_466> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_467> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_468> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_469> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_470> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_471> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_472> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_473> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_474> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_475> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_476> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_477> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_478> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_479> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_357> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_358> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_359> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_360> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_361> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_362> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_363> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_364> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_365> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_366> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_367> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_368> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_369> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_370> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_371> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_372> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_373> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_374> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_375> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_334> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_338> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_339> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_340> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_341> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_342> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_343> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_344> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_345> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_346> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_347> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_348> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_349> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_350> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_351> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_352> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_353> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_354> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_355> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_397> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_399> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_400> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_401> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_402> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_403> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_404> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_405> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_406> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_407> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_408> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_409> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_410> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_411> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_412> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_413> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_414> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_415> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_416> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_376> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_379> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_380> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_381> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_382> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_383> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_384> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_385> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_386> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_387> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_388> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_389> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_390> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_391> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_392> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_393> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_394> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_395> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_396> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_611> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_612> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_613> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_614> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_615> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_616> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_617> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_618> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_619> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_620> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_621> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_622> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_623> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_624> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_625> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_626> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_627> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_628> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_631> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_583> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_584> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_585> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_586> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_595> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_596> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_597> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_598> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_599> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_600> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_601> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_602> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_603> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_604> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_605> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_606> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_607> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_609> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_610> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_652> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_653> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_654> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_655> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_656> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_657> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_658> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_659> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_660> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_661> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_662> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_663> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_664> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_665> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_666> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_667> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_668> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_669> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_670> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_632> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_633> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_634> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_635> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_636> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_637> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_638> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_639> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_640> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_641> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_642> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_643> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_644> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_645> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_646> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_647> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_648> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_649> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_651> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_522> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_523> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_525> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_526> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_527> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_528> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_529> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_530> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_531> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_532> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_533> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_534> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_535> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_536> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_537> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_538> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_539> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_540> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_541> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_500> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_501> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_502> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_506> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_507> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_508> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_509> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_510> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_511> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_512> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_513> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_514> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_515> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_516> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_517> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_518> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_519> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_520> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_521> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_563> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_564> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_565> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_567> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_568> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_569> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_570> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_571> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_572> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_573> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_574> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_575> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_576> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_577> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_578> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_579> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_580> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_581> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_582> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_542> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_543> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_544> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_547> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_548> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_549> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_550> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_551> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_552> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_553> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_554> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_555> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_556> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_557> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_558> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_559> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_560> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_561> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_562> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_106> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_107> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_108> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_109> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_110> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_111> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_112> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_113> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_114> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_115> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_116> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_117> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_118> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_119> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_120> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_121> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_122> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_123> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_124> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_82> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_87> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_88> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_89> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_90> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_91> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_92> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_93> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_94> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_95> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_96> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_97> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_98> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_99> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_100> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_101> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_102> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_103> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_105> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_147> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_148> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_149> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_150> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_151> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_152> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_153> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_154> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_155> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_156> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_157> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_158> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_159> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_160> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_161> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_162> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_163> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_164> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_165> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_127> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_128> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_129> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_130> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_131> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_132> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_133> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_134> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_135> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_136> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_137> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_138> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_139> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_140> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_141> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_142> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_143> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_144> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_145> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_22> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_23> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_24> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_25> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_26> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_27> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_28> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_29> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_30> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_31> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_32> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_33> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_34> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_35> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_36> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_37> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_38> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_39> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_40> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_2> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_3> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_4> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_5> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_6> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_7> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_8> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_9> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_10> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_11> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_12> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_13> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_14> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_15> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_16> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_17> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_18> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_19> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_21> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_63> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_64> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_65> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_66> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_67> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_68> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_69> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_70> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_71> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_72> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_73> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_74> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_75> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_76> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_77> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_78> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_79> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_80> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_81> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_43> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_44> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_45> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_46> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_47> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_48> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_49> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_50> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_51> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_52> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_53> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_54> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_55> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_56> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_57> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_58> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_59> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_60> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_61> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_274> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_275> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_276> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_277> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_278> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_279> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_280> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_281> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_282> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_283> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_284> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_285> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_286> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_287> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_288> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_289> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_290> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_291> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_292> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_249> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_250> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_256> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_257> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_258> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_259> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_260> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_261> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_262> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_263> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_264> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_265> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_266> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_267> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_268> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_269> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_270> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_271> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_273> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_315> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_316> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_317> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_318> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_319> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_320> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_321> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_322> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_323> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_324> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_325> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_326> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_327> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_328> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_329> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_330> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_331> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_332> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_333> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_295> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_296> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_297> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_298> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_299> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_300> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_301> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_302> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_303> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_304> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_305> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_306> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_307> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_308> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_309> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_310> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_311> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_312> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_313> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_189> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_190> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_191> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_192> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_193> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_194> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_195> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_196> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_197> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_198> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_199> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_200> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_201> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_202> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_203> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_204> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_205> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_206> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_207> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_166> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_170> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_171> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_172> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_173> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_174> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_175> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_176> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_177> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_178> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_179> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_180> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_181> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_182> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_183> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_184> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_185> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_186> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_187> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_229> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_231> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_232> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_233> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_234> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_235> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_236> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_237> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_238> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_239> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_240> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_241> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_242> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_243> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_244> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_245> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_246> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_247> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_248> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_208> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_211> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_212> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_213> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_214> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_215> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_216> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_217> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_218> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_219> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_220> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_221> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_222> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_223> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_224> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_225> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_226> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_227> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <gradientbar_0_228> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:2677 - Node <gradientbar_0_0> of sequential type is unconnected in block <mojo_top>.
WARNING:Xst:2677 - Node <gradientbar_0_1> of sequential type is unconnected in block <mojo_top>.
WARNING:Xst:2677 - Node <gradientbar_0_20> of sequential type is unconnected in block <mojo_top>.
WARNING:Xst:2677 - Node <gradientbar_0_41> of sequential type is unconnected in block <mojo_top>.
WARNING:Xst:2677 - Node <gradientbar_0_42> of sequential type is unconnected in block <mojo_top>.
WARNING:Xst:2677 - Node <gradientbar_0_62> of sequential type is unconnected in block <mojo_top>.
WARNING:Xst:2677 - Node <gradientbar_0_83> of sequential type is unconnected in block <mojo_top>.
WARNING:Xst:2677 - Node <gradientbar_0_84> of sequential type is unconnected in block <mojo_top>.
WARNING:Xst:2677 - Node <gradientbar_0_85> of sequential type is unconnected in block <mojo_top>.
WARNING:Xst:2677 - Node <gradientbar_0_86> of sequential type is unconnected in block <mojo_top>.
WARNING:Xst:2677 - Node <gradientbar_0_104> of sequential type is unconnected in block <mojo_top>.
WARNING:Xst:2677 - Node <gradientbar_0_125> of sequential type is unconnected in block <mojo_top>.
WARNING:Xst:2677 - Node <gradientbar_0_126> of sequential type is unconnected in block <mojo_top>.
WARNING:Xst:2677 - Node <gradientbar_0_146> of sequential type is unconnected in block <mojo_top>.
WARNING:Xst:2677 - Node <gradientbar_0_167> of sequential type is unconnected in block <mojo_top>.
WARNING:Xst:2677 - Node <gradientbar_0_168> of sequential type is unconnected in block <mojo_top>.
WARNING:Xst:2677 - Node <gradientbar_0_169> of sequential type is unconnected in block <mojo_top>.
WARNING:Xst:2677 - Node <gradientbar_0_188> of sequential type is unconnected in block <mojo_top>.
WARNING:Xst:2677 - Node <gradientbar_0_209> of sequential type is unconnected in block <mojo_top>.
WARNING:Xst:2677 - Node <gradientbar_0_210> of sequential type is unconnected in block <mojo_top>.
WARNING:Xst:2677 - Node <gradientbar_0_230> of sequential type is unconnected in block <mojo_top>.
WARNING:Xst:2677 - Node <gradientbar_0_251> of sequential type is unconnected in block <mojo_top>.
WARNING:Xst:2677 - Node <gradientbar_0_252> of sequential type is unconnected in block <mojo_top>.
WARNING:Xst:2677 - Node <gradientbar_0_253> of sequential type is unconnected in block <mojo_top>.
WARNING:Xst:2677 - Node <gradientbar_0_254> of sequential type is unconnected in block <mojo_top>.
WARNING:Xst:2677 - Node <gradientbar_0_255> of sequential type is unconnected in block <mojo_top>.
WARNING:Xst:2677 - Node <gradientbar_0_272> of sequential type is unconnected in block <mojo_top>.
WARNING:Xst:2677 - Node <gradientbar_0_293> of sequential type is unconnected in block <mojo_top>.
WARNING:Xst:2677 - Node <gradientbar_0_294> of sequential type is unconnected in block <mojo_top>.
WARNING:Xst:2677 - Node <gradientbar_0_314> of sequential type is unconnected in block <mojo_top>.
WARNING:Xst:2677 - Node <gradientbar_0_335> of sequential type is unconnected in block <mojo_top>.
WARNING:Xst:2677 - Node <gradientbar_0_336> of sequential type is unconnected in block <mojo_top>.
WARNING:Xst:2677 - Node <gradientbar_0_337> of sequential type is unconnected in block <mojo_top>.
WARNING:Xst:2677 - Node <gradientbar_0_356> of sequential type is unconnected in block <mojo_top>.
WARNING:Xst:2677 - Node <gradientbar_0_377> of sequential type is unconnected in block <mojo_top>.
WARNING:Xst:2677 - Node <gradientbar_0_378> of sequential type is unconnected in block <mojo_top>.
WARNING:Xst:2677 - Node <gradientbar_0_398> of sequential type is unconnected in block <mojo_top>.
WARNING:Xst:2677 - Node <gradientbar_0_419> of sequential type is unconnected in block <mojo_top>.
WARNING:Xst:2677 - Node <gradientbar_0_420> of sequential type is unconnected in block <mojo_top>.
WARNING:Xst:2677 - Node <gradientbar_0_421> of sequential type is unconnected in block <mojo_top>.
WARNING:Xst:2677 - Node <gradientbar_0_422> of sequential type is unconnected in block <mojo_top>.
WARNING:Xst:2677 - Node <gradientbar_0_440> of sequential type is unconnected in block <mojo_top>.
WARNING:Xst:2677 - Node <gradientbar_0_461> of sequential type is unconnected in block <mojo_top>.
WARNING:Xst:2677 - Node <gradientbar_0_462> of sequential type is unconnected in block <mojo_top>.
WARNING:Xst:2677 - Node <gradientbar_0_482> of sequential type is unconnected in block <mojo_top>.
WARNING:Xst:2677 - Node <gradientbar_0_503> of sequential type is unconnected in block <mojo_top>.
WARNING:Xst:2677 - Node <gradientbar_0_504> of sequential type is unconnected in block <mojo_top>.
WARNING:Xst:2677 - Node <gradientbar_0_505> of sequential type is unconnected in block <mojo_top>.
WARNING:Xst:2677 - Node <gradientbar_0_524> of sequential type is unconnected in block <mojo_top>.
WARNING:Xst:2677 - Node <gradientbar_0_545> of sequential type is unconnected in block <mojo_top>.
WARNING:Xst:2677 - Node <gradientbar_0_546> of sequential type is unconnected in block <mojo_top>.
WARNING:Xst:2677 - Node <gradientbar_0_566> of sequential type is unconnected in block <mojo_top>.
WARNING:Xst:2677 - Node <gradientbar_0_587> of sequential type is unconnected in block <mojo_top>.
WARNING:Xst:2677 - Node <gradientbar_0_588> of sequential type is unconnected in block <mojo_top>.
WARNING:Xst:2677 - Node <gradientbar_0_589> of sequential type is unconnected in block <mojo_top>.
WARNING:Xst:2677 - Node <gradientbar_0_590> of sequential type is unconnected in block <mojo_top>.
WARNING:Xst:2677 - Node <gradientbar_0_591> of sequential type is unconnected in block <mojo_top>.
WARNING:Xst:2677 - Node <gradientbar_0_592> of sequential type is unconnected in block <mojo_top>.
WARNING:Xst:2677 - Node <gradientbar_0_593> of sequential type is unconnected in block <mojo_top>.
WARNING:Xst:2677 - Node <gradientbar_0_594> of sequential type is unconnected in block <mojo_top>.
WARNING:Xst:2677 - Node <gradientbar_0_608> of sequential type is unconnected in block <mojo_top>.
WARNING:Xst:2677 - Node <gradientbar_0_629> of sequential type is unconnected in block <mojo_top>.
WARNING:Xst:2677 - Node <gradientbar_0_630> of sequential type is unconnected in block <mojo_top>.
WARNING:Xst:2677 - Node <gradientbar_0_650> of sequential type is unconnected in block <mojo_top>.
WARNING:Xst:2677 - Node <gradientbar_0_671> of sequential type is unconnected in block <mojo_top>.
INFO:Xst:2261 - The FF/Latch <cycle_leftbound_0> in Unit <mojo_top> is equivalent to the following FF/Latch, which will be removed : <cycle_rightbound_0>
INFO:Xst:2261 - The FF/Latch <z3b_6> in Unit <game_1> is equivalent to the following 2 FFs/Latches, which will be removed : <z3b_7> <z3b_8>
INFO:Xst:2261 - The FF/Latch <score_20> in Unit <sub_evaluator> is equivalent to the following 11 FFs/Latches, which will be removed : <score_21> <score_22> <score_23> <score_24> <score_25> <score_26> <score_27> <score_28> <score_29> <score_30> <score_31>
INFO:Xst:2261 - The FF/Latch <z3b_6> in Unit <game_2> is equivalent to the following 2 FFs/Latches, which will be removed : <z3b_7> <z3b_8>
INFO:Xst:2261 - The FF/Latch <z3b_6> in Unit <game_3> is equivalent to the following 2 FFs/Latches, which will be removed : <z3b_7> <z3b_8>

Optimizing unit <ram_3> ...

Optimizing unit <mojo_top> ...
INFO:Xst:2261 - The FF/Latch <scr_write_color_11> in Unit <mojo_top> is equivalent to the following FF/Latch, which will be removed : <scr_write_color_15>
INFO:Xst:2261 - The FF/Latch <scr_write_color_11> in Unit <mojo_top> is equivalent to the following FF/Latch, which will be removed : <scr_write_color_15>

Optimizing unit <display> ...

Optimizing unit <game_1> ...
INFO:Xst:2261 - The FF/Latch <fld_write_enable> in Unit <game_1> is equivalent to the following FF/Latch, which will be removed : <fldclr_write_enable>
INFO:Xst:2261 - The FF/Latch <fld_write_enable> in Unit <game_1> is equivalent to the following FF/Latch, which will be removed : <fldclr_write_enable>

Optimizing unit <sub_evaluator> ...

Optimizing unit <game_2> ...
INFO:Xst:2261 - The FF/Latch <fld_write_enable> in Unit <game_2> is equivalent to the following FF/Latch, which will be removed : <fldclr_write_enable>
INFO:Xst:2261 - The FF/Latch <fld_write_enable> in Unit <game_2> is equivalent to the following FF/Latch, which will be removed : <fldclr_write_enable>

Optimizing unit <game_3> ...
INFO:Xst:2261 - The FF/Latch <fld_write_enable> in Unit <game_3> is equivalent to the following FF/Latch, which will be removed : <fldclr_write_enable>
INFO:Xst:2261 - The FF/Latch <fld_write_enable> in Unit <game_3> is equivalent to the following FF/Latch, which will be removed : <fldclr_write_enable>
INFO:Xst:2399 - RAMs <tetro1/Mram_z1222>, <tetro1/Mram_z1221> are equivalent, second RAM is removed
INFO:Xst:2399 - RAMs <tetro1/Mram_z1222>, <tetro1/Mram_z1218> are equivalent, second RAM is removed
INFO:Xst:2399 - RAMs <tetro1/Mram_z1222>, <tetro1/Mram_z1220> are equivalent, second RAM is removed
INFO:Xst:2399 - RAMs <tetro1/Mram_z1222>, <tetro1/Mram_z1210> are equivalent, second RAM is removed
INFO:Xst:2399 - RAMs <tetro1/Mram_z125>, <tetro1/Mram_z124> are equivalent, second RAM is removed
INFO:Xst:2399 - RAMs <tetro1/Mram_z125>, <tetro1/Mram_z126> are equivalent, second RAM is removed
INFO:Xst:2399 - RAMs <tetro1/Mram_z125>, <tetro1/Mram_z122> are equivalent, second RAM is removed
INFO:Xst:2399 - RAMs <tetro1/Mram_z125>, <tetro1/Mram_z15> are equivalent, second RAM is removed
INFO:Xst:2399 - RAMs <tetro1/Mram_z1116>, <tetro1/Mram_z1115> are equivalent, second RAM is removed
INFO:Xst:2399 - RAMs <tetro1/Mram_z1116>, <tetro1/Mram_z1112> are equivalent, second RAM is removed
INFO:Xst:2399 - RAMs <tetro1/Mram_z1116>, <tetro1/Mram_z1114> are equivalent, second RAM is removed
INFO:Xst:2399 - RAMs <tetro1/Mram_z1116>, <tetro1/Mram_z114> are equivalent, second RAM is removed
INFO:Xst:2399 - RAMs <tetro2/Mram_z1222>, <tetro2/Mram_z1221> are equivalent, second RAM is removed
INFO:Xst:2399 - RAMs <tetro2/Mram_z1222>, <tetro2/Mram_z1218> are equivalent, second RAM is removed
INFO:Xst:2399 - RAMs <tetro2/Mram_z1222>, <tetro2/Mram_z1220> are equivalent, second RAM is removed
INFO:Xst:2399 - RAMs <tetro2/Mram_z1222>, <tetro2/Mram_z1210> are equivalent, second RAM is removed
INFO:Xst:2399 - RAMs <tetro2/Mram_z125>, <tetro2/Mram_z124> are equivalent, second RAM is removed
INFO:Xst:2399 - RAMs <tetro2/Mram_z125>, <tetro2/Mram_z126> are equivalent, second RAM is removed
INFO:Xst:2399 - RAMs <tetro2/Mram_z125>, <tetro2/Mram_z122> are equivalent, second RAM is removed
INFO:Xst:2399 - RAMs <tetro2/Mram_z125>, <tetro2/Mram_z15> are equivalent, second RAM is removed
INFO:Xst:2399 - RAMs <tetro2/Mram_z1116>, <tetro2/Mram_z1115> are equivalent, second RAM is removed
INFO:Xst:2399 - RAMs <tetro2/Mram_z1116>, <tetro2/Mram_z1112> are equivalent, second RAM is removed
INFO:Xst:2399 - RAMs <tetro2/Mram_z1116>, <tetro2/Mram_z1114> are equivalent, second RAM is removed
INFO:Xst:2399 - RAMs <tetro2/Mram_z1116>, <tetro2/Mram_z114> are equivalent, second RAM is removed
INFO:Xst:2399 - RAMs <tetro3/Mram_z1222>, <tetro3/Mram_z1221> are equivalent, second RAM is removed
INFO:Xst:2399 - RAMs <tetro3/Mram_z1222>, <tetro3/Mram_z1218> are equivalent, second RAM is removed
INFO:Xst:2399 - RAMs <tetro3/Mram_z1222>, <tetro3/Mram_z1220> are equivalent, second RAM is removed
INFO:Xst:2399 - RAMs <tetro3/Mram_z1222>, <tetro3/Mram_z1210> are equivalent, second RAM is removed
INFO:Xst:2399 - RAMs <tetro3/Mram_z125>, <tetro3/Mram_z124> are equivalent, second RAM is removed
INFO:Xst:2399 - RAMs <tetro3/Mram_z125>, <tetro3/Mram_z126> are equivalent, second RAM is removed
INFO:Xst:2399 - RAMs <tetro3/Mram_z125>, <tetro3/Mram_z122> are equivalent, second RAM is removed
INFO:Xst:2399 - RAMs <tetro3/Mram_z125>, <tetro3/Mram_z15> are equivalent, second RAM is removed
INFO:Xst:2399 - RAMs <tetro3/Mram_z1116>, <tetro3/Mram_z1115> are equivalent, second RAM is removed
INFO:Xst:2399 - RAMs <tetro3/Mram_z1116>, <tetro3/Mram_z1112> are equivalent, second RAM is removed
INFO:Xst:2399 - RAMs <tetro3/Mram_z1116>, <tetro3/Mram_z1114> are equivalent, second RAM is removed
INFO:Xst:2399 - RAMs <tetro3/Mram_z1116>, <tetro3/Mram_z114> are equivalent, second RAM is removed
WARNING:Xst:1710 - FF/Latch <tetro3/second_21> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <tetro3/second_22> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <tetro3/second_23> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <tetro3/second_24> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <tetro3/second_25> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <tetro3/evaluator/evaluator/sub_state_4> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <tetro2/second_21> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <tetro2/second_22> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <tetro2/second_23> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <tetro2/second_24> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <tetro2/second_25> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <tetro2/evaluator/evaluator/sub_state_4> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <tetro1/evaluator/evaluator/sub_state_4> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <tetro1/second_21> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <tetro1/second_22> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <tetro1/second_23> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <tetro1/second_24> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <tetro1/second_25> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <mtrx/bitR_3> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <mtrx/bitR_4> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <mtrx/bitG_4> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
WARNING:Xst:1895 - Due to other FF/Latch trimming, FF/Latch <mtrx/bitB_3> (without init value) has a constant value of 0 in block <mojo_top>. This FF/Latch will be trimmed during the optimization process.
INFO:Xst:2261 - The FF/Latch <tetro3/evaluator_shape_sliced_0> in Unit <mojo_top> is equivalent to the following 4 FFs/Latches, which will be removed : <tetro3/evaluator_shape_sliced_1> <tetro3/evaluator_shape_sliced_2> <tetro3/evaluator_shape_sliced_4> <tetro3/evaluator_shape_sliced_12>
INFO:Xst:2261 - The FF/Latch <tetro1/evaluator_shape_sliced_sliced_sliced_0> in Unit <mojo_top> is equivalent to the following 4 FFs/Latches, which will be removed : <tetro1/evaluator_shape_sliced_sliced_sliced_1> <tetro1/evaluator_shape_sliced_sliced_sliced_2> <tetro1/evaluator_shape_sliced_sliced_sliced_4> <tetro1/evaluator_shape_sliced_sliced_sliced_12>
INFO:Xst:2261 - The FF/Latch <tetro2/evaluator_shape_sliced_sliced_sliced1_0> in Unit <mojo_top> is equivalent to the following 4 FFs/Latches, which will be removed : <tetro2/evaluator_shape_sliced_sliced_sliced1_1> <tetro2/evaluator_shape_sliced_sliced_sliced1_2> <tetro2/evaluator_shape_sliced_sliced_sliced1_4> <tetro2/evaluator_shape_sliced_sliced_sliced1_12>
INFO:Xst:2261 - The FF/Latch <tetro1/evaluator/evaluator/score_20> in Unit <mojo_top> is equivalent to the following FF/Latch, which will be removed : <tetro1/evaluator/evaluator/score_19>
INFO:Xst:2261 - The FF/Latch <tetro2/evaluator_shape_15> in Unit <mojo_top> is equivalent to the following 4 FFs/Latches, which will be removed : <tetro2/evaluator_shape_14> <tetro2/evaluator_shape_13> <tetro2/evaluator_shape_11> <tetro2/evaluator_shape_3>
INFO:Xst:2261 - The FF/Latch <tetro1/evaluator/best_score_19> in Unit <mojo_top> is equivalent to the following 12 FFs/Latches, which will be removed : <tetro1/evaluator/best_score_20> <tetro1/evaluator/best_score_21> <tetro1/evaluator/best_score_22> <tetro1/evaluator/best_score_23> <tetro1/evaluator/best_score_24> <tetro1/evaluator/best_score_25> <tetro1/evaluator/best_score_26> <tetro1/evaluator/best_score_27> <tetro1/evaluator/best_score_28> <tetro1/evaluator/best_score_29> <tetro1/evaluator/best_score_30> <tetro1/evaluator/best_score_31>
INFO:Xst:2261 - The FF/Latch <mtrx/screen_address_0> in Unit <mojo_top> is equivalent to the following FF/Latch, which will be removed : <mtrx/active_column_0>
INFO:Xst:2261 - The FF/Latch <mtrx/screen_address_1> in Unit <mojo_top> is equivalent to the following FF/Latch, which will be removed : <mtrx/active_column_1>
INFO:Xst:2261 - The FF/Latch <mtrx/screen_address_2> in Unit <mojo_top> is equivalent to the following FF/Latch, which will be removed : <mtrx/active_column_2>
INFO:Xst:2261 - The FF/Latch <mtrx/screen_address_3> in Unit <mojo_top> is equivalent to the following FF/Latch, which will be removed : <mtrx/active_column_3>
INFO:Xst:2261 - The FF/Latch <mtrx/screen_address_4> in Unit <mojo_top> is equivalent to the following FF/Latch, which will be removed : <mtrx/active_column_4>
INFO:Xst:2261 - The FF/Latch <tetro3/z1b_15> in Unit <mojo_top> is equivalent to the following 4 FFs/Latches, which will be removed : <tetro3/z1b_14> <tetro3/z1b_13> <tetro3/z1b_11> <tetro3/z1b_3>
INFO:Xst:2261 - The FF/Latch <tetro3/evaluator/evaluator/score_19> in Unit <mojo_top> is equivalent to the following FF/Latch, which will be removed : <tetro3/evaluator/evaluator/score_20>
INFO:Xst:2261 - The FF/Latch <tetro2/evaluator/evaluator/score_19> in Unit <mojo_top> is equivalent to the following FF/Latch, which will be removed : <tetro2/evaluator/evaluator/score_20>
INFO:Xst:2261 - The FF/Latch <tetro2/evaluator_shape_sliced_0> in Unit <mojo_top> is equivalent to the following 4 FFs/Latches, which will be removed : <tetro2/evaluator_shape_sliced_1> <tetro2/evaluator_shape_sliced_2> <tetro2/evaluator_shape_sliced_4> <tetro2/evaluator_shape_sliced_12>
INFO:Xst:2261 - The FF/Latch <mtrx/bitB_0> in Unit <mojo_top> is equivalent to the following 3 FFs/Latches, which will be removed : <mtrx/active_phase_0> <mtrx/bitG_0> <mtrx/bitR_0>
INFO:Xst:2261 - The FF/Latch <tetro1/evaluator_shape_sliced_sliced_sliced1_0> in Unit <mojo_top> is equivalent to the following 4 FFs/Latches, which will be removed : <tetro1/evaluator_shape_sliced_sliced_sliced1_1> <tetro1/evaluator_shape_sliced_sliced_sliced1_2> <tetro1/evaluator_shape_sliced_sliced_sliced1_4> <tetro1/evaluator_shape_sliced_sliced_sliced1_12>
INFO:Xst:2261 - The FF/Latch <mtrx/bitB_1> in Unit <mojo_top> is equivalent to the following 3 FFs/Latches, which will be removed : <mtrx/active_phase_1> <mtrx/bitG_1> <mtrx/bitR_1>
INFO:Xst:2261 - The FF/Latch <mtrx/bitB_2> in Unit <mojo_top> is equivalent to the following 3 FFs/Latches, which will be removed : <mtrx/active_phase_2> <mtrx/bitG_2> <mtrx/bitR_2>
INFO:Xst:2261 - The FF/Latch <mtrx/bitB_4> in Unit <mojo_top> is equivalent to the following FF/Latch, which will be removed : <mtrx/bitG_3>
INFO:Xst:2261 - The FF/Latch <tetro2/z1b_15> in Unit <mojo_top> is equivalent to the following 4 FFs/Latches, which will be removed : <tetro2/z1b_14> <tetro2/z1b_13> <tetro2/z1b_11> <tetro2/z1b_3>
INFO:Xst:2261 - The FF/Latch <mtrx/write_scr_15> in Unit <mojo_top> is equivalent to the following FF/Latch, which will be removed : <mtrx/write_scr_11>
INFO:Xst:2261 - The FF/Latch <tetro3/evaluator/best_score_19> in Unit <mojo_top> is equivalent to the following 12 FFs/Latches, which will be removed : <tetro3/evaluator/best_score_20> <tetro3/evaluator/best_score_21> <tetro3/evaluator/best_score_22> <tetro3/evaluator/best_score_23> <tetro3/evaluator/best_score_24> <tetro3/evaluator/best_score_25> <tetro3/evaluator/best_score_26> <tetro3/evaluator/best_score_27> <tetro3/evaluator/best_score_28> <tetro3/evaluator/best_score_29> <tetro3/evaluator/best_score_30> <tetro3/evaluator/best_score_31>
INFO:Xst:2261 - The FF/Latch <tetro2/evaluator_shape_sliced_sliced_sliced_0> in Unit <mojo_top> is equivalent to the following 4 FFs/Latches, which will be removed : <tetro2/evaluator_shape_sliced_sliced_sliced_1> <tetro2/evaluator_shape_sliced_sliced_sliced_2> <tetro2/evaluator_shape_sliced_sliced_sliced_4> <tetro2/evaluator_shape_sliced_sliced_sliced_12>
INFO:Xst:2261 - The FF/Latch <tetro2/evaluator/best_score_19> in Unit <mojo_top> is equivalent to the following 12 FFs/Latches, which will be removed : <tetro2/evaluator/best_score_20> <tetro2/evaluator/best_score_21> <tetro2/evaluator/best_score_22> <tetro2/evaluator/best_score_23> <tetro2/evaluator/best_score_24> <tetro2/evaluator/best_score_25> <tetro2/evaluator/best_score_26> <tetro2/evaluator/best_score_27> <tetro2/evaluator/best_score_28> <tetro2/evaluator/best_score_29> <tetro2/evaluator/best_score_30> <tetro2/evaluator/best_score_31>
INFO:Xst:2261 - The FF/Latch <tetro3/evaluator_shape_sliced_sliced_sliced_0> in Unit <mojo_top> is equivalent to the following 4 FFs/Latches, which will be removed : <tetro3/evaluator_shape_sliced_sliced_sliced_1> <tetro3/evaluator_shape_sliced_sliced_sliced_2> <tetro3/evaluator_shape_sliced_sliced_sliced_4> <tetro3/evaluator_shape_sliced_sliced_sliced_12>
INFO:Xst:2261 - The FF/Latch <tetro1/z1b_15> in Unit <mojo_top> is equivalent to the following 4 FFs/Latches, which will be removed : <tetro1/z1b_14> <tetro1/z1b_13> <tetro1/z1b_11> <tetro1/z1b_3>
INFO:Xst:2261 - The FF/Latch <tetro3/evaluator_shape_15> in Unit <mojo_top> is equivalent to the following 4 FFs/Latches, which will be removed : <tetro3/evaluator_shape_14> <tetro3/evaluator_shape_13> <tetro3/evaluator_shape_11> <tetro3/evaluator_shape_3>
INFO:Xst:2261 - The FF/Latch <tetro3/evaluator_shape_sliced_sliced_sliced1_0> in Unit <mojo_top> is equivalent to the following 4 FFs/Latches, which will be removed : <tetro3/evaluator_shape_sliced_sliced_sliced1_1> <tetro3/evaluator_shape_sliced_sliced_sliced1_2> <tetro3/evaluator_shape_sliced_sliced_sliced1_4> <tetro3/evaluator_shape_sliced_sliced_sliced1_12>
INFO:Xst:2261 - The FF/Latch <tetro1/evaluator_shape_sliced_0> in Unit <mojo_top> is equivalent to the following 4 FFs/Latches, which will be removed : <tetro1/evaluator_shape_sliced_1> <tetro1/evaluator_shape_sliced_2> <tetro1/evaluator_shape_sliced_4> <tetro1/evaluator_shape_sliced_12>
INFO:Xst:2261 - The FF/Latch <tetro1/evaluator_shape_15> in Unit <mojo_top> is equivalent to the following 4 FFs/Latches, which will be removed : <tetro1/evaluator_shape_14> <tetro1/evaluator_shape_13> <tetro1/evaluator_shape_11> <tetro1/evaluator_shape_3>

Mapping all equations...
Building and optimizing final netlist ...
Found area constraint ratio of 100 (+ 0) on block mojo_top, actual ratio is 119.
Optimizing block <mojo_top> to meet ratio 100 (+ 0) of 1430 slices :
WARNING:Xst:1426 - The value init of the FF/Latch mode_0 hinder the constant cleaning in the block mojo_top.
   You should achieve better results by setting this init to 1.
WARNING:Xst:2254 - Area constraint could not be met for block <mojo_top>, final ratio is 126.
FlipFlop tetro1/evaluator/evaluator/field/read_data_5 has been replicated 1 time(s)
FlipFlop tetro1/evaluator/evaluator/field/read_data_6 has been replicated 2 time(s)
FlipFlop tetro1/evaluator/evaluator/field/read_data_7 has been replicated 2 time(s)
FlipFlop tetro1/sub_state_0 has been replicated 3 time(s)
FlipFlop tetro1/sub_state_1 has been replicated 3 time(s)
FlipFlop tetro1/sub_state_2 has been replicated 1 time(s)
FlipFlop tetro1/sub_state_3 has been replicated 1 time(s)
FlipFlop tetro1/sub_state_4 has been replicated 1 time(s)
FlipFlop tetro2/evaluator/evaluator/field/read_data_5 has been replicated 1 time(s)
FlipFlop tetro2/evaluator/evaluator/field/read_data_6 has been replicated 2 time(s)
FlipFlop tetro2/evaluator/evaluator/field/read_data_7 has been replicated 2 time(s)
FlipFlop tetro2/sub_state_0 has been replicated 3 time(s)
FlipFlop tetro2/sub_state_1 has been replicated 3 time(s)
FlipFlop tetro2/sub_state_2 has been replicated 2 time(s)
FlipFlop tetro2/sub_state_3 has been replicated 2 time(s)
FlipFlop tetro3/evaluator/evaluator/field/read_data_5 has been replicated 1 time(s)
FlipFlop tetro3/evaluator/evaluator/field/read_data_6 has been replicated 2 time(s)
FlipFlop tetro3/evaluator/evaluator/field/read_data_7 has been replicated 2 time(s)
FlipFlop tetro3/sub_state_0 has been replicated 1 time(s)
FlipFlop tetro3/sub_state_1 has been replicated 3 time(s)
FlipFlop tetro3/sub_state_2 has been replicated 2 time(s)
FlipFlop tetro3/sub_state_3 has been replicated 2 time(s)

Final Macro Processing ...

=========================================================================
Final Register Report

Macro Statistics
# Registers                                            : 2111
 Flip-Flops                                            : 2111

=========================================================================

=========================================================================
*                           Partition Report                            *
=========================================================================

Partition Implementation Status
-------------------------------

  No Partitions were found in this design.

-------------------------------

=========================================================================
*                            Design Summary                             *
=========================================================================
WARNING:Xst:1336 -  (*) More than 100% of Device resources are used

Clock Information:
------------------
-----------------------------------+------------------------+-------+
Clock Signal                       | Clock buffer(FF name)  | Load  |
-----------------------------------+------------------------+-------+
clk                                | BUFGP                  | 2167  |
tetro1/Mcompar_n0004_lut<9>        | NONE(tetro1/Mram_z1222)| 36    |
tetro2/Mcompar_n0004_lut<9>        | NONE(tetro2/Mram_z1222)| 36    |
tetro3/Mcompar_n0004_lut<9>        | NONE(tetro3/Mram_z1222)| 36    |
-----------------------------------+------------------------+-------+
INFO:Xst:2169 - HDL ADVISOR - Some clock signals were not automatically buffered by XST with BUFG/BUFR resources. Please use the buffer_type constraint in order to insert these buffers to the clock signals to help prevent skew problems.

Asynchronous Control Signals Information:
----------------------------------------
No asynchronous control signals found in this design

Timing Summary:
---------------
Speed Grade: -2

   Minimum period: 10.217ns (Maximum Frequency: 97.876MHz)
   Minimum input arrival time before clock: 8.516ns
   Maximum output required time after clock: 8.201ns
   Maximum combinational path delay: No path found

=========================================================================
[Sat Apr 27 10:11:53 2019] synth_1 finished
wait_on_run: Time (s): elapsed = 00:00:36 . Memory (MB): peak = 220.691 ; gain = 0.000
# launch_runs -runs impl_1
Release 14.7 - ngc2edif P.20131013 (nt)
Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.

Release 14.7 - ngc2edif P.20131013 (nt)
Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
Reading design mojo_top.ngc ...
WARNING:NetListWriters:298 - No output is written to mojo_top.xncf, ignored.
Processing design ...
   Preping design's networks ...
   Preping design's macros ...
WARNING:NetListWriters:304 - Port bus score<20 : 0> on block sub_evaluator_NO2
   is not reconstructed, because there are some missing bus pins.
WARNING:NetListWriters:304 - Port bus shape<15 : 1> on block sub_evaluator_NO2
   is not reconstructed, because there are some missing bus pins.
WARNING:NetListWriters:304 - Port bus shape<60 : 0> on block evaluator_NO2 is
   not reconstructed, because there are some missing bus pins.
WARNING:NetListWriters:306 - Signal bus evaluator_score<20 : 0> on block
   evaluator_NO2 is not reconstructed, because there are some missing bus
   signals.
WARNING:NetListWriters:304 - Port bus z1b<12 : 0> on block game_3 is not
   reconstructed, because there are some missing bus pins.
WARNING:NetListWriters:306 - Signal bus shape[4]_read_port_109_OUT<15 : 0> on
   block game_3 is not reconstructed, because there are some missing bus
   signals.
WARNING:NetListWriters:306 - Signal bus PWR_15_o?z1[@_n1042]<15 : 0> on block
   game_3 is not reconstructed, because there are some missing bus signals.
WARNING:NetListWriters:306 - Signal bus shape[4]_read_port_65_OUT<14 : 0> on
   block game_3 is not reconstructed, because there are some missing bus
   signals.
WARNING:NetListWriters:306 - Signal bus shape[4]_read_port_104_OUT<14 : 0> on
   block game_3 is not reconstructed, because there are some missing bus
   signals.
WARNING:NetListWriters:306 - Signal bus shape[4]_read_port_106_OUT<15 : 0> on
   block game_3 is not reconstructed, because there are some missing bus
   signals.
WARNING:NetListWriters:306 - Signal bus shape[4]_read_port_108_OUT<15 : 0> on
   block game_3 is not reconstructed, because there are some missing bus
   signals.
WARNING:NetListWriters:306 - Signal bus _n1768<15 : 0> on block game_3 is not
   reconstructed, because there are some missing bus signals.
WARNING:NetListWriters:306 - Signal bus evaluator_shape<15 : 0> on block game_3
   is not reconstructed, because there are some missing bus signals.
WARNING:NetListWriters:306 - Signal bus z3b<36 : 0> on block game_3 is not
   reconstructed, because there are some missing bus signals.
WARNING:NetListWriters:306 - Signal bus oshapey[4]_shapey[4]_mux_54_OUT<4 : 2>
   on block game_3 is not reconstructed, because there are some missing bus
   signals.
WARNING:NetListWriters:306 - Signal bus
   state_fldclr_write_data[29]_GND_21_o_mux_431_OUT<25 : 15> on block game_3 is
   not reconstructed, because there are some missing bus signals.
WARNING:NetListWriters:306 - Signal bus
   state_fld_write_data[9]_PWR_15_o_mux_430_OUT<9 : 2> on block game_3 is not
   reconstructed, because there are some missing bus signals.
WARNING:NetListWriters:306 - Signal bus
   state_sub_state[5]_sub_state[5]_mux_434_OUT<5 : 2> on block game_3 is not
   reconstructed, because there are some missing bus signals.
WARNING:NetListWriters:304 - Port bus score<20 : 0> on block sub_evaluator_NO1
   is not reconstructed, because there are some missing bus pins.
WARNING:NetListWriters:304 - Port bus shape<15 : 1> on block sub_evaluator_NO1
   is not reconstructed, because there are some missing bus pins.
WARNING:NetListWriters:304 - Port bus shape<60 : 0> on block evaluator_NO1 is
   not reconstructed, because there are some missing bus pins.
WARNING:NetListWriters:306 - Signal bus evaluator_score<20 : 0> on block
   evaluator_NO1 is not reconstructed, because there are some missing bus
   signals.
WARNING:NetListWriters:304 - Port bus z1b<12 : 0> on block game_2 is not
   reconstructed, because there are some missing bus pins.
WARNING:NetListWriters:306 - Signal bus shape[4]_read_port_109_OUT<15 : 0> on
   block game_2 is not reconstructed, because there are some missing bus
   signals.
WARNING:NetListWriters:306 - Signal bus PWR_14_o?z1[@_n1042]<15 : 0> on block
   game_2 is not reconstructed, because there are some missing bus signals.
WARNING:NetListWriters:306 - Signal bus shape[4]_read_port_65_OUT<14 : 0> on
   block game_2 is not reconstructed, because there are some missing bus
   signals.
WARNING:NetListWriters:306 - Signal bus shape[4]_read_port_104_OUT<14 : 0> on
   block game_2 is not reconstructed, because there are some missing bus
   signals.
WARNING:NetListWriters:306 - Signal bus shape[4]_read_port_106_OUT<15 : 0> on
   block game_2 is not reconstructed, because there are some missing bus
   signals.
WARNING:NetListWriters:306 - Signal bus shape[4]_read_port_108_OUT<15 : 0> on
   block game_2 is not reconstructed, because there are some missing bus
   signals.
WARNING:NetListWriters:306 - Signal bus _n1768<15 : 0> on block game_2 is not
   reconstructed, because there are some missing bus signals.
WARNING:NetListWriters:306 - Signal bus evaluator_shape<15 : 0> on block game_2
   is not reconstructed, because there are some missing bus signals.
WARNING:NetListWriters:306 - Signal bus z3b<36 : 0> on block game_2 is not
   reconstructed, because there are some missing bus signals.
WARNING:NetListWriters:306 - Signal bus oshapey[4]_shapey[4]_mux_54_OUT<4 : 2>
   on block game_2 is not reconstructed, because there are some missing bus
   signals.
WARNING:NetListWriters:306 - Signal bus
   state_fldclr_write_data[29]_GND_20_o_mux_431_OUT<24 : 15> on block game_2 is
   not reconstructed, because there are some missing bus signals.
WARNING:NetListWriters:306 - Signal bus
   state_fld_write_data[9]_PWR_14_o_mux_430_OUT<9 : 2> on block game_2 is not
   reconstructed, because there are some missing bus signals.
WARNING:NetListWriters:306 - Signal bus
   state_sub_state[5]_sub_state[5]_mux_434_OUT<5 : 2> on block game_2 is not
   reconstructed, because there are some missing bus signals.
WARNING:NetListWriters:304 - Port bus score<20 : 0> on block sub_evaluator is
   not reconstructed, because there are some missing bus pins.
WARNING:NetListWriters:304 - Port bus shape<15 : 1> on block sub_evaluator is
   not reconstructed, because there are some missing bus pins.
WARNING:NetListWriters:306 - Signal bus score[31]_score[31]_mux_448_OUT<20 : 0>
   on block sub_evaluator is not reconstructed, because there are some missing
   bus signals.
WARNING:NetListWriters:304 - Port bus shape<60 : 0> on block evaluator is not
   reconstructed, because there are some missing bus pins.
WARNING:NetListWriters:306 - Signal bus evaluator_score<20 : 0> on block
   evaluator is not reconstructed, because there are some missing bus signals.
WARNING:NetListWriters:304 - Port bus z1b<12 : 0> on block game_1 is not
   reconstructed, because there are some missing bus pins.
WARNING:NetListWriters:306 - Signal bus shape[4]_read_port_109_OUT<15 : 0> on
   block game_1 is not reconstructed, because there are some missing bus
   signals.
WARNING:NetListWriters:306 - Signal bus PWR_7_o?z1[@_n1042]<15 : 0> on block
   game_1 is not reconstructed, because there are some missing bus signals.
WARNING:NetListWriters:306 - Signal bus shape[4]_read_port_65_OUT<14 : 0> on
   block game_1 is not reconstructed, because there are some missing bus
   signals.
WARNING:NetListWriters:306 - Signal bus shape[4]_read_port_104_OUT<14 : 0> on
   block game_1 is not reconstructed, because there are some missing bus
   signals.
WARNING:NetListWriters:306 - Signal bus shape[4]_read_port_106_OUT<15 : 0> on
   block game_1 is not reconstructed, because there are some missing bus
   signals.
WARNING:NetListWriters:306 - Signal bus shape[4]_read_port_108_OUT<15 : 0> on
   block game_1 is not reconstructed, because there are some missing bus
   signals.
WARNING:NetListWriters:306 - Signal bus _n1768<15 : 0> on block game_1 is not
   reconstructed, because there are some missing bus signals.
WARNING:NetListWriters:306 - Signal bus evaluator_shape<15 : 0> on block game_1
   is not reconstructed, because there are some missing bus signals.
WARNING:NetListWriters:306 - Signal bus z3b<36 : 0> on block game_1 is not
   reconstructed, because there are some missing bus signals.
WARNING:NetListWriters:306 - Signal bus oshapey[4]_shapey[4]_mux_54_OUT<4 : 2>
   on block game_1 is not reconstructed, because there are some missing bus
   signals.
WARNING:NetListWriters:306 - Signal bus
   state_fldclr_write_data[29]_GND_10_o_mux_431_OUT<23 : 15> on block game_1 is
   not reconstructed, because there are some missing bus signals.
WARNING:NetListWriters:306 - Signal bus
   state_fld_write_data[9]_PWR_7_o_mux_430_OUT<8 : 2> on block game_1 is not
   reconstructed, because there are some missing bus signals.
WARNING:NetListWriters:306 - Signal bus
   state_sub_state[5]_sub_state[5]_mux_434_OUT<5 : 2> on block game_1 is not
   reconstructed, because there are some missing bus signals.
WARNING:NetListWriters:304 - Port bus write_data<23 : 0> on block ram_1_NO1 is
   not reconstructed, because there are some missing bus pins.
WARNING:NetListWriters:304 - Port bus write_data<23 : 0> on block ram_1 is not
   reconstructed, because there are some missing bus pins.
WARNING:NetListWriters:304 - Port bus write_color<23 : 0> on block display is
   not reconstructed, because there are some missing bus pins.
WARNING:NetListWriters:306 - Signal bus bitB<4 : 0> on block display is not
   reconstructed, because there are some missing bus signals.
WARNING:NetListWriters:306 - Signal bus write_scr<23 : 0> on block display is
   not reconstructed, because there are some missing bus signals.
WARNING:NetListWriters:306 - Signal bus a_shapeb<12 : 0> on block mojo_top is
   not reconstructed, because there are some missing bus signals.
WARNING:NetListWriters:306 - Signal bus b_shapeb<12 : 0> on block mojo_top is
   not reconstructed, because there are some missing bus signals.
WARNING:NetListWriters:306 - Signal bus c_shapeb<12 : 0> on block mojo_top is
   not reconstructed, because there are some missing bus signals.
WARNING:NetListWriters:306 - Signal bus scr_write_color<23 : 0> on block
   mojo_top is not reconstructed, because there are some missing bus signals.
WARNING:NetListWriters:306 - Signal bus
   scr_write_color[23]_scr_write_color[23]_mux_518_OUT<23 : 0> on block mojo_top
   is not reconstructed, because there are some missing bus signals.
WARNING:NetListWriters:306 - Signal bus shapeb<15 : 0> on block mojo_top is not
   reconstructed, because there are some missing bus signals.
WARNING:NetListWriters:306 - Signal bus
   state_scr_write_address[9]_scr_write_address[9]_mux_517_OUT<9 : 1> on block
   mojo_top is not reconstructed, because there are some missing bus signals.
WARNING:NetListWriters:306 - Signal bus
   state_scr_write_color[23]_scr_write_color[23]_mux_518_OUT<9 : 0> on block
   mojo_top is not reconstructed, because there are some missing bus signals.
  finished :Prep
Writing EDIF netlist file mojo_top.edif ...
ngc2edif: Total memory usage is 88380 kilobytes

Parsing EDIF File [./build/Matrix/Matrix.data/cache/mojo_top_ngc_zx.edif]
Finished Parsing EDIF File [./build/Matrix/Matrix.data/cache/mojo_top_ngc_zx.edif]
INFO: [Netlist 29-17] Analyzing 154 Unisim elements for replacement
INFO: [Netlist 29-28] Unisim Transformation completed in 0 CPU seconds
Loading clock regions from E:/Xilinx/14.7/ISE_DS/PlanAhead/data\parts/xilinx/spartan6/spartan6lx/xc6slx9/ClockRegion.xml
Loading clock buffers from E:/Xilinx/14.7/ISE_DS/PlanAhead/data\parts/xilinx/spartan6/spartan6lx/xc6slx9/ClockBuffers.xml
Loading package pin functions from E:/Xilinx/14.7/ISE_DS/PlanAhead/data\parts/xilinx/spartan6/PinFunctions.xml...
Loading package from E:/Xilinx/14.7/ISE_DS/PlanAhead/data\parts/xilinx/spartan6/spartan6lx/xc6slx9/tqg144/Package.xml
Loading io standards from E:/Xilinx/14.7/ISE_DS/PlanAhead/data\./parts/xilinx/spartan6/IOStandards.xml
Loading device configuration modes from E:/Xilinx/14.7/ISE_DS/PlanAhead/data\parts/xilinx/spartan6/ConfigModes.xml
Loading list of drcs for the architecture : E:/Xilinx/14.7/ISE_DS/PlanAhead/data\./parts/xilinx/spartan6/drc.xml
Parsing UCF File [./Matrix/build/Matrix/Matrix.srcs/constrs_1/imports/Matrix/mojo.ucf]
Finished Parsing UCF File [./Matrix/build/Matrix/Matrix.srcs/constrs_1/imports/Matrix/mojo.ucf]
[Sat Apr 27 10:11:58 2019] Launched impl_1...
Run output will be captured here: ./Matrix/build/Matrix/Matrix.runs/impl_1/runme.log
launch_runs: Time (s): elapsed = 00:00:05 . Memory (MB): peak = 310.863 ; gain = 90.172
# wait_on_run impl_1
[Sat Apr 27 10:11:58 2019] Waiting for impl_1 to finish...

*** Running ngdbuild
    with args -intstyle ise -p xc6slx9tqg144-2 -dd _ngo -uc "mojo_top.ucf" "mojo_top.edf"


Command Line: E:\Xilinx\14.7\ISE_DS\ISE\bin\nt\unwrapped\ngdbuild.exe -intstyle
ise -p xc6slx9tqg144-2 -dd _ngo -uc mojo_top.ucf mojo_top.edf

Executing edif2ngd -quiet "mojo_top.edf" "_ngo\mojo_top.ngo"
Release 14.7 - edif2ngd P.20131013 (nt)
Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
Reading NGO file
"./Matrix/build/Matrix/Matrix.runs/impl_1/_ngo/mojo_top.ngo"
...
Gathering constraint information from source properties...
Done.

Annotating constraints to design from ucf file "mojo_top.ucf" ...
Resolving constraint associations...
Checking Constraint Associations...
Done...

Checking expanded design ...

Partition Implementation Status
-------------------------------

  No Partitions were found in this design.

-------------------------------

NGDBUILD Design Results Summary:
  Number of errors:     0
  Number of warnings:   0

Writing NGD file "mojo_top.ngd" ...
Total REAL time to NGDBUILD completion:  11 sec
Total CPU time to NGDBUILD completion:   3 sec

Writing NGDBUILD log file "mojo_top.bld"...

NGDBUILD done.

*** Running map
    with args -intstyle pa -w -pr b -mt on "mojo_top.ngd"

Using target part "6slx9tqg144-2".
INFO:Map:284 - Map is running with the multi-threading option on. Map currently
   supports the use of up to 2 processors. Based on the the user options and
   machine load, Map will use 2 processors during this run.
Mapping design into LUTs...
WARNING:MapLib:701 - Signal spi_miso connected to top level port spi_miso has
   been removed.
WARNING:MapLib:701 - Signal spi_channel[0] connected to top level port
   spi_channel(0) has been removed.
WARNING:MapLib:701 - Signal spi_channel[1] connected to top level port
   spi_channel(1) has been removed.
WARNING:MapLib:701 - Signal spi_channel[2] connected to top level port
   spi_channel(2) has been removed.
WARNING:MapLib:701 - Signal spi_channel[3] connected to top level port
   spi_channel(3) has been removed.
WARNING:MapLib:701 - Signal avr_rx connected to top level port avr_rx has been
   removed.
Running directed packing...
Running delay-based LUT packing...
Updating timing models...
INFO:Map:215 - The Interim Design Summary has been generated in the MAP Report
   (.mrp).
Running timing-driven placement...
Total REAL time at the beginning of Placer: 6 secs
Total CPU  time at the beginning of Placer: 6 secs

Phase 1.1  Initial Placement Analysis
Phase 1.1  Initial Placement Analysis (Checksum:89bc74c2) REAL time: 7 secs

Phase 2.7  Design Feasibility Check
Phase 2.7  Design Feasibility Check (Checksum:89bc74c2) REAL time: 7 secs

Phase 3.31  Local Placement Optimization
Phase 3.31  Local Placement Optimization (Checksum:89bc74c2) REAL time: 7 secs

Phase 4.2  Initial Placement for Architecture Specific Features

Phase 4.2  Initial Placement for Architecture Specific Features
(Checksum:c02ac242) REAL time: 10 secs

Phase 5.36  Local Placement Optimization
Phase 5.36  Local Placement Optimization (Checksum:c02ac242) REAL time: 10 secs

Phase 6.30  Global Clock Region Assignment
Phase 6.30  Global Clock Region Assignment (Checksum:c02ac242) REAL time: 10 secs

Phase 7.3  Local Placement Optimization
Phase 7.3  Local Placement Optimization (Checksum:c02ac242) REAL time: 10 secs

Phase 8.5  Local Placement Optimization
Phase 8.5  Local Placement Optimization (Checksum:c02ac242) REAL time: 10 secs

Phase 9.8  Global Placement
.............................
.............................................................................................
...............................................................................................................................................................................................................
................................................................................................................................................................................................................................
...........................................................................
Phase 9.8  Global Placement (Checksum:a221aef3) REAL time: 32 secs

Phase 10.5  Local Placement Optimization
Phase 10.5  Local Placement Optimization (Checksum:a221aef3) REAL time: 32 secs

Phase 11.18  Placement Optimization
Phase 11.18  Placement Optimization (Checksum:71b2f733) REAL time: 35 secs

Phase 12.5  Local Placement Optimization
Phase 12.5  Local Placement Optimization (Checksum:71b2f733) REAL time: 36 secs

Phase 13.34  Placement Validation
Phase 13.34  Placement Validation (Checksum:52ec437b) REAL time: 36 secs

Total REAL time to Placer completion: 36 secs
Total CPU  time to Placer completion: 39 secs
Running post-placement packing...
Writing output files...

Design Summary:
Number of errors:      0
Number of warnings:   16
Slice Logic Utilization:
  Number of Slice Registers:                 2,291 out of  11,440   20%
    Number used as Flip Flops:               2,101
    Number used as Latches:                      0
    Number used as Latch-thrus:                  0
    Number used as AND/OR logics:              190
  Number of Slice LUTs:                      4,682 out of   5,720   81%
    Number used as logic:                    4,459 out of   5,720   77%
      Number using O6 output only:           2,947
      Number using O5 output only:             467
      Number using O5 and O6:                1,045
      Number used as ROM:                        0
    Number used as Memory:                     180 out of   1,440   12%
      Number used as Dual Port RAM:            180
        Number using O6 output only:             0
        Number using O5 output only:             0
        Number using O5 and O6:                180
      Number used as Single Port RAM:            0
      Number used as Shift Register:             0
    Number used exclusively as route-thrus:     43
      Number with same-slice register load:      1
      Number with same-slice carry load:        42
      Number with other load:                    0

Slice Logic Distribution:
  Number of occupied Slices:                 1,363 out of   1,430   95%
  Number of MUXCYs used:                     1,612 out of   2,860   56%
  Number of LUT Flip Flop pairs used:        4,788
    Number with an unused Flip Flop:         2,667 out of   4,788   55%
    Number with an unused LUT:                 106 out of   4,788    2%
    Number of fully used LUT-FF pairs:       2,015 out of   4,788   42%
    Number of unique control sets:             169
    Number of slice register sites lost
      to control set restrictions:             627 out of  11,440    5%

  A LUT Flip Flop pair for this architecture represents one LUT paired with
  one Flip Flop within a slice.  A control set is a unique combination of
  clock, reset, set, and enable signals for a registered element.
  The Slice Logic Distribution report is not meaningful if the design is
  over-mapped for a non-slice resource or if Placement fails.

IO Utilization:
  Number of bonded IOBs:                        39 out of     102   38%
    Number of LOCed IOBs:                       39 out of      39  100%
    IOB Flip Flops:                             10

Specific Feature Utilization:
  Number of RAMB16BWERs:                         2 out of      32    6%
  Number of RAMB8BWERs:                          6 out of      64    9%
  Number of BUFIO2/BUFIO2_2CLKs:                 0 out of      32    0%
  Number of BUFIO2FB/BUFIO2FB_2CLKs:             0 out of      32    0%
  Number of BUFG/BUFGMUXs:                       1 out of      16    6%
    Number used as BUFGs:                        1
    Number used as BUFGMUX:                      0
  Number of DCM/DCM_CLKGENs:                     0 out of       4    0%
  Number of ILOGIC2/ISERDES2s:                   3 out of     200    1%
    Number used as ILOGIC2s:                     3
    Number used as ISERDES2s:                    0
  Number of IODELAY2/IODRP2/IODRP2_MCBs:         0 out of     200    0%
  Number of OLOGIC2/OSERDES2s:                   7 out of     200    3%
    Number used as OLOGIC2s:                     7
    Number used as OSERDES2s:                    0
  Number of BSCANs:                              0 out of       4    0%
  Number of BUFHs:                               0 out of     128    0%
  Number of BUFPLLs:                             0 out of       8    0%
  Number of BUFPLL_MCBs:                         0 out of       4    0%
  Number of DSP48A1s:                            3 out of      16   18%
  Number of ICAPs:                               0 out of       1    0%
  Number of MCBs:                                0 out of       2    0%
  Number of PCILOGICSEs:                         0 out of       2    0%
  Number of PLL_ADVs:                            0 out of       2    0%
  Number of PMVs:                                0 out of       1    0%
  Number of STARTUPs:                            0 out of       1    0%
  Number of SUSPEND_SYNCs:                       0 out of       1    0%

Average Fanout of Non-Clock Nets:                3.62

Peak Memory Usage:  388 MB
Total REAL time to MAP completion:  38 secs
Total CPU time to MAP completion (all processors):   41 secs

Mapping completed.
See MAP report file "mojo_top.mrp" for details.

*** Running par
    with args -intstyle pa "mojo_top.ncd" -w "mojo_top_routed.ncd" -mt on




Constraints file: mojo_top.pcf.
Loading device for application Rf_Device from file '6slx9.nph' in environment E:\Xilinx\14.7\ISE_DS\ISE\.
   "mojo_top" is an NCD, version 3.2, device xc6slx9, package tqg144, speed -2

Initializing temperature to 85.000 Celsius. (default - Range: 0.000 to 85.000 Celsius)
Initializing voltage to 1.140 Volts. (default - Range: 1.140 to 1.260 Volts)


Device speed data version:  "PRODUCTION 1.23 2013-10-13".



Device Utilization Summary:

Slice Logic Utilization:
  Number of Slice Registers:                 2,291 out of  11,440   20%
    Number used as Flip Flops:               2,101
    Number used as Latches:                      0
    Number used as Latch-thrus:                  0
    Number used as AND/OR logics:              190
  Number of Slice LUTs:                      4,682 out of   5,720   81%
    Number used as logic:                    4,459 out of   5,720   77%
      Number using O6 output only:           2,947
      Number using O5 output only:             467
      Number using O5 and O6:                1,045
      Number used as ROM:                        0
    Number used as Memory:                     180 out of   1,440   12%
      Number used as Dual Port RAM:            180
        Number using O6 output only:             0
        Number using O5 output only:             0
        Number using O5 and O6:                180
      Number used as Single Port RAM:            0
      Number used as Shift Register:             0
    Number used exclusively as route-thrus:     43
      Number with same-slice register load:      1
      Number with same-slice carry load:        42
      Number with other load:                    0

Slice Logic Distribution:
  Number of occupied Slices:                 1,363 out of   1,430   95%
  Number of MUXCYs used:                     1,612 out of   2,860   56%
  Number of LUT Flip Flop pairs used:        4,788
    Number with an unused Flip Flop:         2,667 out of   4,788   55%
    Number with an unused LUT:                 106 out of   4,788    2%
    Number of fully used LUT-FF pairs:       2,015 out of   4,788   42%
    Number of slice register sites lost
      to control set restrictions:               0 out of  11,440    0%

  A LUT Flip Flop pair for this architecture represents one LUT paired with
  one Flip Flop within a slice.  A control set is a unique combination of
  clock, reset, set, and enable signals for a registered element.
  The Slice Logic Distribution report is not meaningful if the design is
  over-mapped for a non-slice resource or if Placement fails.

IO Utilization:
  Number of bonded IOBs:                        39 out of     102   38%
    Number of LOCed IOBs:                       39 out of      39  100%
    IOB Flip Flops:                             10

Specific Feature Utilization:
  Number of RAMB16BWERs:                         2 out of      32    6%
  Number of RAMB8BWERs:                          6 out of      64    9%
  Number of BUFIO2/BUFIO2_2CLKs:                 0 out of      32    0%
  Number of BUFIO2FB/BUFIO2FB_2CLKs:             0 out of      32    0%
  Number of BUFG/BUFGMUXs:                       1 out of      16    6%
    Number used as BUFGs:                        1
    Number used as BUFGMUX:                      0
  Number of DCM/DCM_CLKGENs:                     0 out of       4    0%
  Number of ILOGIC2/ISERDES2s:                   3 out of     200    1%
    Number used as ILOGIC2s:                     3
    Number used as ISERDES2s:                    0
  Number of IODELAY2/IODRP2/IODRP2_MCBs:         0 out of     200    0%
  Number of OLOGIC2/OSERDES2s:                   7 out of     200    3%
    Number used as OLOGIC2s:                     7
    Number used as OSERDES2s:                    0
  Number of BSCANs:                              0 out of       4    0%
  Number of BUFHs:                               0 out of     128    0%
  Number of BUFPLLs:                             0 out of       8    0%
  Number of BUFPLL_MCBs:                         0 out of       4    0%
  Number of DSP48A1s:                            3 out of      16   18%
  Number of ICAPs:                               0 out of       1    0%
  Number of MCBs:                                0 out of       2    0%
  Number of PCILOGICSEs:                         0 out of       2    0%
  Number of PLL_ADVs:                            0 out of       2    0%
  Number of PMVs:                                0 out of       1    0%
  Number of STARTUPs:                            0 out of       1    0%
  Number of SUSPEND_SYNCs:                       0 out of       1    0%


Overall effort level (-ol):   Standard
Router effort level (-rl):    High

PAR will use up to 2 processors
WARNING:Par:288 - The signal cclk_IBUF has no load.  PAR will not attempt to route this signal.
WARNING:Par:288 - The signal spi_sck_IBUF has no load.  PAR will not attempt to route this signal.
WARNING:Par:288 - The signal avr_rx_busy_IBUF has no load.  PAR will not attempt to route this signal.
WARNING:Par:288 - The signal avr_tx_IBUF has no load.  PAR will not attempt to route this signal.
WARNING:Par:288 - The signal spi_ss_IBUF has no load.  PAR will not attempt to route this signal.
WARNING:Par:288 - The signal spi_mosi_IBUF has no load.  PAR will not attempt to route this signal.
WARNING:Par:288 - The signal tetro2/field/Mram_mem1_RAMD_D1_O has no load.  PAR will not attempt to route this signal.
WARNING:Par:288 - The signal tetro2/evaluator/field/Mram_mem1_RAMD_D1_O has no load.  PAR will not attempt to route this signal.
WARNING:Par:288 - The signal tetro3/field/Mram_mem1_RAMD_D1_O has no load.  PAR will not attempt to route this signal.
WARNING:Par:288 - The signal tetro3/evaluator/field/Mram_mem1_RAMD_D1_O has no load.  PAR will not attempt to route this signal.
WARNING:Par:288 - The signal tetro2/evaluator/evaluator/field/Mram_mem1_RAMD_D1_O has no load.  PAR will not attempt to route this signal.
WARNING:Par:288 - The signal tetro3/evaluator/evaluator/field/Mram_mem1_RAMD_D1_O has no load.  PAR will not attempt to route this signal.
WARNING:Par:288 - The signal tetro1/field/Mram_mem1_RAMD_D1_O has no load.  PAR will not attempt to route this signal.
WARNING:Par:288 - The signal tetro1/evaluator/field/Mram_mem1_RAMD_D1_O has no load.  PAR will not attempt to route this signal.
WARNING:Par:288 - The signal tetro1/evaluator/evaluator/field/Mram_mem1_RAMD_D1_O has no load.  PAR will not attempt to route this signal.
Starting Multi-threaded Router


Phase  1  : 25592 unrouted;      REAL time: 3 secs

Phase  2  : 22056 unrouted;      REAL time: 4 secs

Phase  3  : 11273 unrouted;      REAL time: 6 secs

Phase  4  : 11273 unrouted; (Setup:0, Hold:403, Component Switching Limit:0)     REAL time: 7 secs

Updating file: mojo_top_routed.ncd with current fully routed design.

Phase  5  : 0 unrouted; (Setup:0, Hold:288, Component Switching Limit:0)     REAL time: 11 secs

Phase  6  : 0 unrouted; (Setup:0, Hold:288, Component Switching Limit:0)     REAL time: 11 secs

Phase  7  : 0 unrouted; (Setup:0, Hold:288, Component Switching Limit:0)     REAL time: 11 secs

Phase  8  : 0 unrouted; (Setup:0, Hold:288, Component Switching Limit:0)     REAL time: 11 secs

Phase  9  : 0 unrouted; (Setup:0, Hold:0, Component Switching Limit:0)     REAL time: 11 secs

Phase 10  : 0 unrouted; (Setup:0, Hold:0, Component Switching Limit:0)     REAL time: 12 secs
Total REAL time to Router completion: 12 secs
Total CPU time to Router completion (all processors): 17 secs

Generating "PAR" statistics.

**************************
Generating Clock Report
**************************

+---------------------+--------------+------+------+------------+-------------+
|        Clock Net    |   Resource   |Locked|Fanout|Net Skew(ns)|Max Delay(ns)|
+---------------------+--------------+------+------+------------+-------------+
|           clk_BUFGP | BUFGMUX_X2Y11| No   |  777 |  0.697     |  2.088      |
+---------------------+--------------+------+------+------------+-------------+

* Net Skew is the difference between the minimum and maximum routing
only delays for the net. Note this is different from Clock Skew which
is reported in TRCE timing report. Clock Skew is the difference between
the minimum and maximum path delays which includes logic delays.

* The fanout is the number of component pins not the individual BEL loads,
for example SLICE loads not FF loads.

Timing Score: 0 (Setup: 0, Hold: 0, Component Switching Limit: 0)

Asterisk (*) preceding a constraint indicates it was not met.
   This may be due to a setup or hold violation.

----------------------------------------------------------------------------------------------------------
  Constraint                                |    Check    | Worst Case |  Best Case | Timing |   Timing
                                            |             |    Slack   | Achievable | Errors |    Score
----------------------------------------------------------------------------------------------------------
  TS_clk = PERIOD TIMEGRP "clk" 50 MHz HIGH | SETUP       |     7.298ns|    12.702ns|       0|           0
   50%                                      | HOLD        |     0.305ns|            |       0|           0
----------------------------------------------------------------------------------------------------------


All constraints were met.


Generating Pad Report.

All signals are completely routed.

WARNING:Par:283 - There are 15 loadless signals in this design. This design will cause Bitgen to issue DRC warnings.

Total REAL time to PAR completion: 13 secs
Total CPU time to PAR completion (all processors): 18 secs

Peak Memory Usage:  328 MB

Placer: Placement generated during map.
Routing: Completed - No errors found.
Timing: Completed - No errors found.

Number of error messages: 0
Number of warning messages: 17
Number of info messages: 0

Writing design to file mojo_top_routed.ncd



PAR done!

*** Running trce
    with args -intstyle ise -o "mojo_top.twr" -v 30 -l 30 "mojo_top_routed.ncd" "mojo_top.pcf"

Loading device for application Rf_Device from file '6slx9.nph' in environment
E:\Xilinx\14.7\ISE_DS\ISE\.
   "mojo_top" is an NCD, version 3.2, device xc6slx9, package tqg144, speed -2

Analysis completed Sat Apr 27 10:13:09 2019
--------------------------------------------------------------------------------

Generating Report ...

Number of warnings: 0
Total time: 4 secs

*** Running xdl
    with args -secure -ncd2xdl -nopips "mojo_top_routed.ncd" "mojo_top_routed.xdl"

Release 14.7 - xdl P.20131013 (nt)
Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.

WARNING:XDL:213 - The resulting xdl output will not have LUT equation strings or RAM INIT strings.
Loading device for application Rf_Device from file '6slx9.nph' in environment E:\Xilinx\14.7\ISE_DS\ISE\.
   "mojo_top" is an NCD, version 3.2, device xc6slx9, package tqg144, speed -2
Successfully converted design 'mojo_top_routed.ncd' to 'mojo_top_routed.xdl'.
[Sat Apr 27 10:13:14 2019] impl_1 finished
wait_on_run: Time (s): elapsed = 00:01:16 . Memory (MB): peak = 310.863 ; gain = 0.000
# launch_runs impl_1 -to_step Bitgen
[Sat Apr 27 10:13:14 2019] Launched impl_1...
Run output will be captured here: ./Matrix/build/Matrix/Matrix.runs/impl_1/runme.log
# wait_on_run impl_1
[Sat Apr 27 10:13:14 2019] Waiting for impl_1 to finish...

*** Running ngdbuild
    with args -intstyle ise -p xc6slx9tqg144-2 -dd _ngo -uc "mojo_top.ucf" "mojo_top.edf"


Command Line: E:\Xilinx\14.7\ISE_DS\ISE\bin\nt\unwrapped\ngdbuild.exe -intstyle
ise -p xc6slx9tqg144-2 -dd _ngo -uc mojo_top.ucf mojo_top.edf

Executing edif2ngd -quiet "mojo_top.edf" "_ngo\mojo_top.ngo"
Release 14.7 - edif2ngd P.20131013 (nt)
Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
Reading NGO file
"./Matrix/build/Matrix/Matrix.runs/impl_1/_ngo/mojo_top.ngo"
...
Gathering constraint information from source properties...
Done.

Annotating constraints to design from ucf file "mojo_top.ucf" ...
Resolving constraint associations...
Checking Constraint Associations...
Done...

Checking expanded design ...

Partition Implementation Status
-------------------------------

  No Partitions were found in this design.

-------------------------------

NGDBUILD Design Results Summary:
  Number of errors:     0
  Number of warnings:   0

Writing NGD file "mojo_top.ngd" ...
Total REAL time to NGDBUILD completion:  11 sec
Total CPU time to NGDBUILD completion:   3 sec

Writing NGDBUILD log file "mojo_top.bld"...

NGDBUILD done.

*** Running map
    with args -intstyle pa -w -pr b -mt on "mojo_top.ngd"

Using target part "6slx9tqg144-2".
INFO:Map:284 - Map is running with the multi-threading option on. Map currently
   supports the use of up to 2 processors. Based on the the user options and
   machine load, Map will use 2 processors during this run.
Mapping design into LUTs...
WARNING:MapLib:701 - Signal spi_miso connected to top level port spi_miso has
   been removed.
WARNING:MapLib:701 - Signal spi_channel[0] connected to top level port
   spi_channel(0) has been removed.
WARNING:MapLib:701 - Signal spi_channel[1] connected to top level port
   spi_channel(1) has been removed.
WARNING:MapLib:701 - Signal spi_channel[2] connected to top level port
   spi_channel(2) has been removed.
WARNING:MapLib:701 - Signal spi_channel[3] connected to top level port
   spi_channel(3) has been removed.
WARNING:MapLib:701 - Signal avr_rx connected to top level port avr_rx has been
   removed.
Running directed packing...
Running delay-based LUT packing...
Updating timing models...
INFO:Map:215 - The Interim Design Summary has been generated in the MAP Report
   (.mrp).
Running timing-driven placement...
Total REAL time at the beginning of Placer: 6 secs
Total CPU  time at the beginning of Placer: 6 secs

Phase 1.1  Initial Placement Analysis
Phase 1.1  Initial Placement Analysis (Checksum:89bc74c2) REAL time: 7 secs

Phase 2.7  Design Feasibility Check
Phase 2.7  Design Feasibility Check (Checksum:89bc74c2) REAL time: 7 secs

Phase 3.31  Local Placement Optimization
Phase 3.31  Local Placement Optimization (Checksum:89bc74c2) REAL time: 7 secs

Phase 4.2  Initial Placement for Architecture Specific Features

Phase 4.2  Initial Placement for Architecture Specific Features
(Checksum:c02ac242) REAL time: 10 secs

Phase 5.36  Local Placement Optimization
Phase 5.36  Local Placement Optimization (Checksum:c02ac242) REAL time: 10 secs

Phase 6.30  Global Clock Region Assignment
Phase 6.30  Global Clock Region Assignment (Checksum:c02ac242) REAL time: 10 secs

Phase 7.3  Local Placement Optimization
Phase 7.3  Local Placement Optimization (Checksum:c02ac242) REAL time: 10 secs

Phase 8.5  Local Placement Optimization
Phase 8.5  Local Placement Optimization (Checksum:c02ac242) REAL time: 10 secs

Phase 9.8  Global Placement
.............................
.............................................................................................
...............................................................................................................................................................................................................
................................................................................................................................................................................................................................
...........................................................................
Phase 9.8  Global Placement (Checksum:a221aef3) REAL time: 32 secs

Phase 10.5  Local Placement Optimization
Phase 10.5  Local Placement Optimization (Checksum:a221aef3) REAL time: 32 secs

Phase 11.18  Placement Optimization
Phase 11.18  Placement Optimization (Checksum:71b2f733) REAL time: 35 secs

Phase 12.5  Local Placement Optimization
Phase 12.5  Local Placement Optimization (Checksum:71b2f733) REAL time: 36 secs

Phase 13.34  Placement Validation
Phase 13.34  Placement Validation (Checksum:52ec437b) REAL time: 36 secs

Total REAL time to Placer completion: 36 secs
Total CPU  time to Placer completion: 39 secs
Running post-placement packing...
Writing output files...

Design Summary:
Number of errors:      0
Number of warnings:   16
Slice Logic Utilization:
  Number of Slice Registers:                 2,291 out of  11,440   20%
    Number used as Flip Flops:               2,101
    Number used as Latches:                      0
    Number used as Latch-thrus:                  0
    Number used as AND/OR logics:              190
  Number of Slice LUTs:                      4,682 out of   5,720   81%
    Number used as logic:                    4,459 out of   5,720   77%
      Number using O6 output only:           2,947
      Number using O5 output only:             467
      Number using O5 and O6:                1,045
      Number used as ROM:                        0
    Number used as Memory:                     180 out of   1,440   12%
      Number used as Dual Port RAM:            180
        Number using O6 output only:             0
        Number using O5 output only:             0
        Number using O5 and O6:                180
      Number used as Single Port RAM:            0
      Number used as Shift Register:             0
    Number used exclusively as route-thrus:     43
      Number with same-slice register load:      1
      Number with same-slice carry load:        42
      Number with other load:                    0

Slice Logic Distribution:
  Number of occupied Slices:                 1,363 out of   1,430   95%
  Number of MUXCYs used:                     1,612 out of   2,860   56%
  Number of LUT Flip Flop pairs used:        4,788
    Number with an unused Flip Flop:         2,667 out of   4,788   55%
    Number with an unused LUT:                 106 out of   4,788    2%
    Number of fully used LUT-FF pairs:       2,015 out of   4,788   42%
    Number of unique control sets:             169
    Number of slice register sites lost
      to control set restrictions:             627 out of  11,440    5%

  A LUT Flip Flop pair for this architecture represents one LUT paired with
  one Flip Flop within a slice.  A control set is a unique combination of
  clock, reset, set, and enable signals for a registered element.
  The Slice Logic Distribution report is not meaningful if the design is
  over-mapped for a non-slice resource or if Placement fails.

IO Utilization:
  Number of bonded IOBs:                        39 out of     102   38%
    Number of LOCed IOBs:                       39 out of      39  100%
    IOB Flip Flops:                             10

Specific Feature Utilization:
  Number of RAMB16BWERs:                         2 out of      32    6%
  Number of RAMB8BWERs:                          6 out of      64    9%
  Number of BUFIO2/BUFIO2_2CLKs:                 0 out of      32    0%
  Number of BUFIO2FB/BUFIO2FB_2CLKs:             0 out of      32    0%
  Number of BUFG/BUFGMUXs:                       1 out of      16    6%
    Number used as BUFGs:                        1
    Number used as BUFGMUX:                      0
  Number of DCM/DCM_CLKGENs:                     0 out of       4    0%
  Number of ILOGIC2/ISERDES2s:                   3 out of     200    1%
    Number used as ILOGIC2s:                     3
    Number used as ISERDES2s:                    0
  Number of IODELAY2/IODRP2/IODRP2_MCBs:         0 out of     200    0%
  Number of OLOGIC2/OSERDES2s:                   7 out of     200    3%
    Number used as OLOGIC2s:                     7
    Number used as OSERDES2s:                    0
  Number of BSCANs:                              0 out of       4    0%
  Number of BUFHs:                               0 out of     128    0%
  Number of BUFPLLs:                             0 out of       8    0%
  Number of BUFPLL_MCBs:                         0 out of       4    0%
  Number of DSP48A1s:                            3 out of      16   18%
  Number of ICAPs:                               0 out of       1    0%
  Number of MCBs:                                0 out of       2    0%
  Number of PCILOGICSEs:                         0 out of       2    0%
  Number of PLL_ADVs:                            0 out of       2    0%
  Number of PMVs:                                0 out of       1    0%
  Number of STARTUPs:                            0 out of       1    0%
  Number of SUSPEND_SYNCs:                       0 out of       1    0%

Average Fanout of Non-Clock Nets:                3.62

Peak Memory Usage:  388 MB
Total REAL time to MAP completion:  38 secs
Total CPU time to MAP completion (all processors):   41 secs

Mapping completed.
See MAP report file "mojo_top.mrp" for details.

*** Running par
    with args -intstyle pa "mojo_top.ncd" -w "mojo_top_routed.ncd" -mt on




Constraints file: mojo_top.pcf.
Loading device for application Rf_Device from file '6slx9.nph' in environment E:\Xilinx\14.7\ISE_DS\ISE\.
   "mojo_top" is an NCD, version 3.2, device xc6slx9, package tqg144, speed -2

Initializing temperature to 85.000 Celsius. (default - Range: 0.000 to 85.000 Celsius)
Initializing voltage to 1.140 Volts. (default - Range: 1.140 to 1.260 Volts)


Device speed data version:  "PRODUCTION 1.23 2013-10-13".



Device Utilization Summary:

Slice Logic Utilization:
  Number of Slice Registers:                 2,291 out of  11,440   20%
    Number used as Flip Flops:               2,101
    Number used as Latches:                      0
    Number used as Latch-thrus:                  0
    Number used as AND/OR logics:              190
  Number of Slice LUTs:                      4,682 out of   5,720   81%
    Number used as logic:                    4,459 out of   5,720   77%
      Number using O6 output only:           2,947
      Number using O5 output only:             467
      Number using O5 and O6:                1,045
      Number used as ROM:                        0
    Number used as Memory:                     180 out of   1,440   12%
      Number used as Dual Port RAM:            180
        Number using O6 output only:             0
        Number using O5 output only:             0
        Number using O5 and O6:                180
      Number used as Single Port RAM:            0
      Number used as Shift Register:             0
    Number used exclusively as route-thrus:     43
      Number with same-slice register load:      1
      Number with same-slice carry load:        42
      Number with other load:                    0

Slice Logic Distribution:
  Number of occupied Slices:                 1,363 out of   1,430   95%
  Number of MUXCYs used:                     1,612 out of   2,860   56%
  Number of LUT Flip Flop pairs used:        4,788
    Number with an unused Flip Flop:         2,667 out of   4,788   55%
    Number with an unused LUT:                 106 out of   4,788    2%
    Number of fully used LUT-FF pairs:       2,015 out of   4,788   42%
    Number of slice register sites lost
      to control set restrictions:               0 out of  11,440    0%

  A LUT Flip Flop pair for this architecture represents one LUT paired with
  one Flip Flop within a slice.  A control set is a unique combination of
  clock, reset, set, and enable signals for a registered element.
  The Slice Logic Distribution report is not meaningful if the design is
  over-mapped for a non-slice resource or if Placement fails.

IO Utilization:
  Number of bonded IOBs:                        39 out of     102   38%
    Number of LOCed IOBs:                       39 out of      39  100%
    IOB Flip Flops:                             10

Specific Feature Utilization:
  Number of RAMB16BWERs:                         2 out of      32    6%
  Number of RAMB8BWERs:                          6 out of      64    9%
  Number of BUFIO2/BUFIO2_2CLKs:                 0 out of      32    0%
  Number of BUFIO2FB/BUFIO2FB_2CLKs:             0 out of      32    0%
  Number of BUFG/BUFGMUXs:                       1 out of      16    6%
    Number used as BUFGs:                        1
    Number used as BUFGMUX:                      0
  Number of DCM/DCM_CLKGENs:                     0 out of       4    0%
  Number of ILOGIC2/ISERDES2s:                   3 out of     200    1%
    Number used as ILOGIC2s:                     3
    Number used as ISERDES2s:                    0
  Number of IODELAY2/IODRP2/IODRP2_MCBs:         0 out of     200    0%
  Number of OLOGIC2/OSERDES2s:                   7 out of     200    3%
    Number used as OLOGIC2s:                     7
    Number used as OSERDES2s:                    0
  Number of BSCANs:                              0 out of       4    0%
  Number of BUFHs:                               0 out of     128    0%
  Number of BUFPLLs:                             0 out of       8    0%
  Number of BUFPLL_MCBs:                         0 out of       4    0%
  Number of DSP48A1s:                            3 out of      16   18%
  Number of ICAPs:                               0 out of       1    0%
  Number of MCBs:                                0 out of       2    0%
  Number of PCILOGICSEs:                         0 out of       2    0%
  Number of PLL_ADVs:                            0 out of       2    0%
  Number of PMVs:                                0 out of       1    0%
  Number of STARTUPs:                            0 out of       1    0%
  Number of SUSPEND_SYNCs:                       0 out of       1    0%


Overall effort level (-ol):   Standard
Router effort level (-rl):    High

PAR will use up to 2 processors
WARNING:Par:288 - The signal cclk_IBUF has no load.  PAR will not attempt to route this signal.
WARNING:Par:288 - The signal spi_sck_IBUF has no load.  PAR will not attempt to route this signal.
WARNING:Par:288 - The signal avr_rx_busy_IBUF has no load.  PAR will not attempt to route this signal.
WARNING:Par:288 - The signal avr_tx_IBUF has no load.  PAR will not attempt to route this signal.
WARNING:Par:288 - The signal spi_ss_IBUF has no load.  PAR will not attempt to route this signal.
WARNING:Par:288 - The signal spi_mosi_IBUF has no load.  PAR will not attempt to route this signal.
WARNING:Par:288 - The signal tetro2/field/Mram_mem1_RAMD_D1_O has no load.  PAR will not attempt to route this signal.
WARNING:Par:288 - The signal tetro2/evaluator/field/Mram_mem1_RAMD_D1_O has no load.  PAR will not attempt to route this signal.
WARNING:Par:288 - The signal tetro3/field/Mram_mem1_RAMD_D1_O has no load.  PAR will not attempt to route this signal.
WARNING:Par:288 - The signal tetro3/evaluator/field/Mram_mem1_RAMD_D1_O has no load.  PAR will not attempt to route this signal.
WARNING:Par:288 - The signal tetro2/evaluator/evaluator/field/Mram_mem1_RAMD_D1_O has no load.  PAR will not attempt to route this signal.
WARNING:Par:288 - The signal tetro3/evaluator/evaluator/field/Mram_mem1_RAMD_D1_O has no load.  PAR will not attempt to route this signal.
WARNING:Par:288 - The signal tetro1/field/Mram_mem1_RAMD_D1_O has no load.  PAR will not attempt to route this signal.
WARNING:Par:288 - The signal tetro1/evaluator/field/Mram_mem1_RAMD_D1_O has no load.  PAR will not attempt to route this signal.
WARNING:Par:288 - The signal tetro1/evaluator/evaluator/field/Mram_mem1_RAMD_D1_O has no load.  PAR will not attempt to route this signal.
Starting Multi-threaded Router


Phase  1  : 25592 unrouted;      REAL time: 3 secs

Phase  2  : 22056 unrouted;      REAL time: 4 secs

Phase  3  : 11273 unrouted;      REAL time: 6 secs

Phase  4  : 11273 unrouted; (Setup:0, Hold:403, Component Switching Limit:0)     REAL time: 7 secs

Updating file: mojo_top_routed.ncd with current fully routed design.

Phase  5  : 0 unrouted; (Setup:0, Hold:288, Component Switching Limit:0)     REAL time: 11 secs

Phase  6  : 0 unrouted; (Setup:0, Hold:288, Component Switching Limit:0)     REAL time: 11 secs

Phase  7  : 0 unrouted; (Setup:0, Hold:288, Component Switching Limit:0)     REAL time: 11 secs

Phase  8  : 0 unrouted; (Setup:0, Hold:288, Component Switching Limit:0)     REAL time: 11 secs

Phase  9  : 0 unrouted; (Setup:0, Hold:0, Component Switching Limit:0)     REAL time: 11 secs

Phase 10  : 0 unrouted; (Setup:0, Hold:0, Component Switching Limit:0)     REAL time: 12 secs
Total REAL time to Router completion: 12 secs
Total CPU time to Router completion (all processors): 17 secs

Generating "PAR" statistics.

**************************
Generating Clock Report
**************************

+---------------------+--------------+------+------+------------+-------------+
|        Clock Net    |   Resource   |Locked|Fanout|Net Skew(ns)|Max Delay(ns)|
+---------------------+--------------+------+------+------------+-------------+
|           clk_BUFGP | BUFGMUX_X2Y11| No   |  777 |  0.697     |  2.088      |
+---------------------+--------------+------+------+------------+-------------+

* Net Skew is the difference between the minimum and maximum routing
only delays for the net. Note this is different from Clock Skew which
is reported in TRCE timing report. Clock Skew is the difference between
the minimum and maximum path delays which includes logic delays.

* The fanout is the number of component pins not the individual BEL loads,
for example SLICE loads not FF loads.

Timing Score: 0 (Setup: 0, Hold: 0, Component Switching Limit: 0)

Asterisk (*) preceding a constraint indicates it was not met.
   This may be due to a setup or hold violation.

----------------------------------------------------------------------------------------------------------
  Constraint                                |    Check    | Worst Case |  Best Case | Timing |   Timing
                                            |             |    Slack   | Achievable | Errors |    Score
----------------------------------------------------------------------------------------------------------
  TS_clk = PERIOD TIMEGRP "clk" 50 MHz HIGH | SETUP       |     7.298ns|    12.702ns|       0|           0
   50%                                      | HOLD        |     0.305ns|            |       0|           0
----------------------------------------------------------------------------------------------------------


All constraints were met.


Generating Pad Report.

All signals are completely routed.

WARNING:Par:283 - There are 15 loadless signals in this design. This design will cause Bitgen to issue DRC warnings.

Total REAL time to PAR completion: 13 secs
Total CPU time to PAR completion (all processors): 18 secs

Peak Memory Usage:  328 MB

Placer: Placement generated during map.
Routing: Completed - No errors found.
Timing: Completed - No errors found.

Number of error messages: 0
Number of warning messages: 17
Number of info messages: 0

Writing design to file mojo_top_routed.ncd



PAR done!

*** Running trce
    with args -intstyle ise -o "mojo_top.twr" -v 30 -l 30 "mojo_top_routed.ncd" "mojo_top.pcf"

Loading device for application Rf_Device from file '6slx9.nph' in environment
E:\Xilinx\14.7\ISE_DS\ISE\.
   "mojo_top" is an NCD, version 3.2, device xc6slx9, package tqg144, speed -2

Analysis completed Sat Apr 27 10:13:09 2019
--------------------------------------------------------------------------------

Generating Report ...

Number of warnings: 0
Total time: 4 secs

*** Running xdl
    with args -secure -ncd2xdl -nopips "mojo_top_routed.ncd" "mojo_top_routed.xdl"

Release 14.7 - xdl P.20131013 (nt)
Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.

WARNING:XDL:213 - The resulting xdl output will not have LUT equation strings or RAM INIT strings.
Loading device for application Rf_Device from file '6slx9.nph' in environment E:\Xilinx\14.7\ISE_DS\ISE\.
   "mojo_top" is an NCD, version 3.2, device xc6slx9, package tqg144, speed -2
Successfully converted design 'mojo_top_routed.ncd' to 'mojo_top_routed.xdl'.

*** Running bitgen
    with args "mojo_top_routed.ncd" "mojo_top.bit" "mojo_top.pcf" -g Binary:Yes -g Compress -w -intstyle pa

INFO:Bitgen:341 - This design is using one or more 9K Block RAMs (RAMB8BWER).
   9K Block RAM initialization data, both user defined and default, requires a
   special bit stream format.  For more information, please reference Xilinx
   Answer Record 39999.
WARNING:PhysDesignRules:367 - The signal <tetro2/field/Mram_mem1_RAMD_D1_O> is
   incomplete. The signal does not drive any load pins in the design.
WARNING:PhysDesignRules:367 - The signal
   <tetro2/evaluator/field/Mram_mem1_RAMD_D1_O> is incomplete. The signal does
   not drive any load pins in the design.
WARNING:PhysDesignRules:367 - The signal <tetro3/field/Mram_mem1_RAMD_D1_O> is
   incomplete. The signal does not drive any load pins in the design.
WARNING:PhysDesignRules:367 - The signal
   <tetro3/evaluator/field/Mram_mem1_RAMD_D1_O> is incomplete. The signal does
   not drive any load pins in the design.
WARNING:PhysDesignRules:367 - The signal
   <tetro2/evaluator/evaluator/field/Mram_mem1_RAMD_D1_O> is incomplete. The
   signal does not drive any load pins in the design.
WARNING:PhysDesignRules:367 - The signal
   <tetro3/evaluator/evaluator/field/Mram_mem1_RAMD_D1_O> is incomplete. The
   signal does not drive any load pins in the design.
WARNING:PhysDesignRules:367 - The signal <tetro1/field/Mram_mem1_RAMD_D1_O> is
   incomplete. The signal does not drive any load pins in the design.
WARNING:PhysDesignRules:367 - The signal
   <tetro1/evaluator/field/Mram_mem1_RAMD_D1_O> is incomplete. The signal does
   not drive any load pins in the design.
WARNING:PhysDesignRules:367 - The signal
   <tetro1/evaluator/evaluator/field/Mram_mem1_RAMD_D1_O> is incomplete. The
   signal does not drive any load pins in the design.
WARNING:PhysDesignRules:2410 - This design is using one or more 9K Block RAMs
   (RAMB8BWER).  9K Block RAM initialization data, both user defined and
   default, may be incorrect and should not be used.  For more information,
   please reference Xilinx Answer Record 39999.
[Sat Apr 27 10:13:35 2019] impl_1 finished
wait_on_run: Time (s): elapsed = 00:00:21 . Memory (MB): peak = 310.863 ; gain = 0.000
INFO: [Common 17-206] Exiting PlanAhead at Sat Apr 27 10:13:35 2019...
INFO: [Common 17-83] Releasing license: PlanAhead
```
