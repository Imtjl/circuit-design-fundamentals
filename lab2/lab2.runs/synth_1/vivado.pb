
�
Command: %s
1870*	planAhead2�
�read_checkpoint -auto_incremental -incremental /home/boris/dev/circuit-design-fundamentals/lab2/lab2.srcs/utils_1/imports/synth_1/top.dcpZ12-2866h px� 
�
;Read reference checkpoint from %s for incremental synthesis3154*	planAhead2\
Z/home/boris/dev/circuit-design-fundamentals/lab2/lab2.srcs/utils_1/imports/synth_1/top.dcpZ12-5825h px� 
T
-Please ensure there are no constraint changes3725*	planAheadZ12-7989h px� 
_
Command: %s
53*	vivadotcl2.
,synth_design -top top -part xc7a100tcsg324-1Z4-113h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
{
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2

xc7a100tZ17-347h px� 
k
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2

xc7a100tZ17-349h px� 
E
Loading part %s157*device2
xc7a100tcsg324-1Z21-403h px� 
[
$Part: %s does not have CEAM library.966*device2
xc7a100tcsg324-1Z21-9227h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
o
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
4Z8-7079h px� 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px� 
O
#Helper process launched with PID %s4824*oasys2
440662Z8-7075h px� 
�
%s*synth2�
�Starting RTL Elaboration : Time (s): cpu = 00:00:03 ; elapsed = 00:00:03 . Memory (MB): peak = 2342.727 ; gain = 413.629 ; free physical = 892 ; free virtual = 9358
h px� 
�
synthesizing module '%s'%s4497*oasys2
top2
 2S
O/home/boris/dev/circuit-design-fundamentals/lab2/lab2.srcs/sources_1/new/top.sv2
128@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
freq_divider2
 2S
O/home/boris/dev/circuit-design-fundamentals/lab2/lab2.srcs/sources_1/new/top.sv2
1428@Z8-6157h px� 
N
%s
*synth26
4	Parameter DIVIDER bound to: 50000 - type: integer 
h p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
freq_divider2
 2
02
12S
O/home/boris/dev/circuit-design-fundamentals/lab2/lab2.srcs/sources_1/new/top.sv2
1428@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2

debounce2
 2S
O/home/boris/dev/circuit-design-fundamentals/lab2/lab2.srcs/sources_1/new/top.sv2
2258@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

debounce2
 2
02
12S
O/home/boris/dev/circuit-design-fundamentals/lab2/lab2.srcs/sources_1/new/top.sv2
2258@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
edge_detector2
 2S
O/home/boris/dev/circuit-design-fundamentals/lab2/lab2.srcs/sources_1/new/top.sv2
2498@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
edge_detector2
 2
02
12S
O/home/boris/dev/circuit-design-fundamentals/lab2/lab2.srcs/sources_1/new/top.sv2
2498@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
lifo2
 2S
O/home/boris/dev/circuit-design-fundamentals/lab2/lab2.srcs/sources_1/new/top.sv2
1678@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
lifo2
 2
02
12S
O/home/boris/dev/circuit-design-fundamentals/lab2/lab2.srcs/sources_1/new/top.sv2
1678@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2	
display2
 2S
O/home/boris/dev/circuit-design-fundamentals/lab2/lab2.srcs/sources_1/new/top.sv2
888@Z8-6157h px� 
�
default block is never used226*oasys2S
O/home/boris/dev/circuit-design-fundamentals/lab2/lab2.srcs/sources_1/new/top.sv2
1118@Z8-226h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2	
display2
 2
02
12S
O/home/boris/dev/circuit-design-fundamentals/lab2/lab2.srcs/sources_1/new/top.sv2
888@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
top2
 2
02
12S
O/home/boris/dev/circuit-design-fundamentals/lab2/lab2.srcs/sources_1/new/top.sv2
128@Z8-6155h px� 
�
IMix of synchronous and asynchronous control for register %s in module %s.3969*oasys2
stack_reg[stack_mem][0]2
lifo2S
O/home/boris/dev/circuit-design-fundamentals/lab2/lab2.srcs/sources_1/new/top.sv2
1928@Z8-5413h px� 
�
IMix of synchronous and asynchronous control for register %s in module %s.3969*oasys2
stack_reg[stack_mem][1]2
lifo2S
O/home/boris/dev/circuit-design-fundamentals/lab2/lab2.srcs/sources_1/new/top.sv2
1928@Z8-5413h px� 
�
IMix of synchronous and asynchronous control for register %s in module %s.3969*oasys2
stack_reg[stack_mem][2]2
lifo2S
O/home/boris/dev/circuit-design-fundamentals/lab2/lab2.srcs/sources_1/new/top.sv2
1928@Z8-5413h px� 
�
IMix of synchronous and asynchronous control for register %s in module %s.3969*oasys2
stack_reg[stack_mem][3]2
lifo2S
O/home/boris/dev/circuit-design-fundamentals/lab2/lab2.srcs/sources_1/new/top.sv2
1928@Z8-5413h px� 
�
IMix of synchronous and asynchronous control for register %s in module %s.3969*oasys2
stack_reg[stack_mem][4]2
lifo2S
O/home/boris/dev/circuit-design-fundamentals/lab2/lab2.srcs/sources_1/new/top.sv2
1928@Z8-5413h px� 
�
IMix of synchronous and asynchronous control for register %s in module %s.3969*oasys2
stack_reg[stack_mem][5]2
lifo2S
O/home/boris/dev/circuit-design-fundamentals/lab2/lab2.srcs/sources_1/new/top.sv2
1928@Z8-5413h px� 
�
IMix of synchronous and asynchronous control for register %s in module %s.3969*oasys2
stack_reg[stack_mem][6]2
lifo2S
O/home/boris/dev/circuit-design-fundamentals/lab2/lab2.srcs/sources_1/new/top.sv2
1928@Z8-5413h px� 
�
IMix of synchronous and asynchronous control for register %s in module %s.3969*oasys2
stack_reg[stack_mem][7]2
lifo2S
O/home/boris/dev/circuit-design-fundamentals/lab2/lab2.srcs/sources_1/new/top.sv2
1928@Z8-5413h px� 
�
IMix of synchronous and asynchronous control for register %s in module %s.3969*oasys2
stack_reg[sp]2
lifo2S
O/home/boris/dev/circuit-design-fundamentals/lab2/lab2.srcs/sources_1/new/top.sv2
1928@Z8-5413h px� 
�
IMix of synchronous and asynchronous control for register %s in module %s.3969*oasys2
stack_reg[full]2
lifo2S
O/home/boris/dev/circuit-design-fundamentals/lab2/lab2.srcs/sources_1/new/top.sv2
1928@Z8-5413h px� 
�
IMix of synchronous and asynchronous control for register %s in module %s.3969*oasys2
stack_reg[empty]2
lifo2S
O/home/boris/dev/circuit-design-fundamentals/lab2/lab2.srcs/sources_1/new/top.sv2
1928@Z8-5413h px� 
�
IMix of synchronous and asynchronous control for register %s in module %s.3969*oasys2
data_out_reg2
lifo2S
O/home/boris/dev/circuit-design-fundamentals/lab2/lab2.srcs/sources_1/new/top.sv2
1988@Z8-5413h px� 
d
+design %s has port %s driven by constant %s3447*oasys2
top2	
LED16_B2
0Z8-3917h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
lifo_state[full]2	
displayZ8-7129h px� 
{
9Port %s in module %s is either unconnected or has no load4866*oasys2
lifo_state[empty]2	
displayZ8-7129h px� 
m
9Port %s in module %s is either unconnected or has no load4866*oasys2	
LED[15]2
topZ8-7129h px� 
m
9Port %s in module %s is either unconnected or has no load4866*oasys2	
LED[14]2
topZ8-7129h px� 
m
9Port %s in module %s is either unconnected or has no load4866*oasys2	
LED[13]2
topZ8-7129h px� 
m
9Port %s in module %s is either unconnected or has no load4866*oasys2	
LED[12]2
topZ8-7129h px� 
m
9Port %s in module %s is either unconnected or has no load4866*oasys2	
LED[11]2
topZ8-7129h px� 
m
9Port %s in module %s is either unconnected or has no load4866*oasys2	
LED[10]2
topZ8-7129h px� 
l
9Port %s in module %s is either unconnected or has no load4866*oasys2
LED[9]2
topZ8-7129h px� 
l
9Port %s in module %s is either unconnected or has no load4866*oasys2
LED[8]2
topZ8-7129h px� 
l
9Port %s in module %s is either unconnected or has no load4866*oasys2
LED[7]2
topZ8-7129h px� 
l
9Port %s in module %s is either unconnected or has no load4866*oasys2
LED[6]2
topZ8-7129h px� 
l
9Port %s in module %s is either unconnected or has no load4866*oasys2
LED[5]2
topZ8-7129h px� 
l
9Port %s in module %s is either unconnected or has no load4866*oasys2
LED[4]2
topZ8-7129h px� 
l
9Port %s in module %s is either unconnected or has no load4866*oasys2
SW[14]2
topZ8-7129h px� 
l
9Port %s in module %s is either unconnected or has no load4866*oasys2
SW[13]2
topZ8-7129h px� 
l
9Port %s in module %s is either unconnected or has no load4866*oasys2
SW[12]2
topZ8-7129h px� 
l
9Port %s in module %s is either unconnected or has no load4866*oasys2
SW[11]2
topZ8-7129h px� 
l
9Port %s in module %s is either unconnected or has no load4866*oasys2
SW[10]2
topZ8-7129h px� 
k
9Port %s in module %s is either unconnected or has no load4866*oasys2
SW[9]2
topZ8-7129h px� 
k
9Port %s in module %s is either unconnected or has no load4866*oasys2
SW[8]2
topZ8-7129h px� 
k
9Port %s in module %s is either unconnected or has no load4866*oasys2
SW[7]2
topZ8-7129h px� 
k
9Port %s in module %s is either unconnected or has no load4866*oasys2
SW[6]2
topZ8-7129h px� 
k
9Port %s in module %s is either unconnected or has no load4866*oasys2
SW[5]2
topZ8-7129h px� 
k
9Port %s in module %s is either unconnected or has no load4866*oasys2
SW[4]2
topZ8-7129h px� 
�
%s*synth2�
�Finished RTL Elaboration : Time (s): cpu = 00:00:04 ; elapsed = 00:00:04 . Memory (MB): peak = 2420.695 ; gain = 491.598 ; free physical = 795 ; free virtual = 9262
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
;
%s
*synth2#
!Start Handling Custom Attributes
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:04 ; elapsed = 00:00:04 . Memory (MB): peak = 2435.539 ; gain = 506.441 ; free physical = 795 ; free virtual = 9262
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:04 ; elapsed = 00:00:04 . Memory (MB): peak = 2435.539 ; gain = 506.441 ; free physical = 795 ; free virtual = 9262
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Netlist sorting complete. 2

00:00:002

00:00:002

2435.5392
0.0002
7952
9262Z17-722h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
>

Processing XDC Constraints
244*projectZ1-262h px� 
=
Initializing timing engine
348*projectZ1-569h px� 
�
Parsing XDC File [%s]
179*designutils2H
D/home/boris/dev/circuit-design-fundamentals/Nexys-A7-100T-Master.xdc8Z20-179h px� 
�
No ports matched '%s'.
584*	planAhead2	
LED17_B2H
D/home/boris/dev/circuit-design-fundamentals/Nexys-A7-100T-Master.xdc2
528@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2H
D/home/boris/dev/circuit-design-fundamentals/Nexys-A7-100T-Master.xdc2
528@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2	
LED17_G2H
D/home/boris/dev/circuit-design-fundamentals/Nexys-A7-100T-Master.xdc2
538@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2H
D/home/boris/dev/circuit-design-fundamentals/Nexys-A7-100T-Master.xdc2
538@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2	
LED17_R2H
D/home/boris/dev/circuit-design-fundamentals/Nexys-A7-100T-Master.xdc2
548@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2H
D/home/boris/dev/circuit-design-fundamentals/Nexys-A7-100T-Master.xdc2
548@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2

CPU_RESETN2H
D/home/boris/dev/circuit-design-fundamentals/Nexys-A7-100T-Master.xdc2
758@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2H
D/home/boris/dev/circuit-design-fundamentals/Nexys-A7-100T-Master.xdc2
758@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
BTNU2H
D/home/boris/dev/circuit-design-fundamentals/Nexys-A7-100T-Master.xdc2
798@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2H
D/home/boris/dev/circuit-design-fundamentals/Nexys-A7-100T-Master.xdc2
798@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
BTND2H
D/home/boris/dev/circuit-design-fundamentals/Nexys-A7-100T-Master.xdc2
828@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2H
D/home/boris/dev/circuit-design-fundamentals/Nexys-A7-100T-Master.xdc2
828@Z17-55h px�
�
Finished Parsing XDC File [%s]
178*designutils2H
D/home/boris/dev/circuit-design-fundamentals/Nexys-A7-100T-Master.xdc8Z20-178h px� 
�
�Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2F
D/home/boris/dev/circuit-design-fundamentals/Nexys-A7-100T-Master.xdc2
.Xil/top_propImpl.xdcZ1-236h px� 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Netlist sorting complete. 2

00:00:002

00:00:002

2579.2892
0.0002
7812
9248Z17-722h px� 
l
!Unisim Transformation Summary:
%s111*project2'
%No Unisim elements were transformed.
Z1-111h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2"
 Constraint Validation Runtime : 2
00:00:00.012

00:00:002

2579.2892
0.0002
7812
9248Z17-722h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Constraint Validation : Time (s): cpu = 00:00:08 ; elapsed = 00:00:08 . Memory (MB): peak = 2579.289 ; gain = 650.191 ; free physical = 780 ; free virtual = 9246
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
D
%s
*synth2,
*Start Loading Part and Timing Information
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Loading part: xc7a100tcsg324-1
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:08 ; elapsed = 00:00:08 . Memory (MB): peak = 2587.293 ; gain = 658.195 ; free physical = 780 ; free virtual = 9247
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
H
%s
*synth20
.Start Applying 'set_property' XDC Constraints
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:08 ; elapsed = 00:00:08 . Memory (MB): peak = 2587.293 ; gain = 658.195 ; free physical = 780 ; free virtual = 9247
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:08 ; elapsed = 00:00:09 . Memory (MB): peak = 2587.293 ; gain = 658.195 ; free physical = 778 ; free virtual = 9246
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
:
%s
*synth2"
 Start RTL Component Statistics 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Detailed RTL Component Info : 
h p
x
� 
(
%s
*synth2
+---Adders : 
h p
x
� 
F
%s
*synth2.
,	   2 Input    4 Bit       Adders := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    3 Bit       Adders := 1     
h p
x
� 
+
%s
*synth2
+---Registers : 
h p
x
� 
H
%s
*synth20
.	                4 Bit    Registers := 10    
h p
x
� 
H
%s
*synth20
.	                3 Bit    Registers := 1     
h p
x
� 
H
%s
*synth20
.	                1 Bit    Registers := 13    
h p
x
� 
'
%s
*synth2
+---Muxes : 
h p
x
� 
F
%s
*synth2.
,	   2 Input    4 Bit        Muxes := 2     
h p
x
� 
F
%s
*synth2.
,	   2 Input    2 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    1 Bit        Muxes := 7     
h p
x
� 
F
%s
*synth2.
,	   3 Input    1 Bit        Muxes := 6     
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
=
%s
*synth2%
#Finished RTL Component Statistics 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
6
%s
*synth2
Start Part Resource Summary
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
q
%s
*synth2Y
WPart Resources:
DSPs: 240 (col length:80)
BRAMs: 270 (col length: RAMB18 80 RAMB36 40)
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Finished Part Resource Summary
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
E
%s
*synth2-
+Start Cross Boundary and Area Optimization
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
H
&Parallel synthesis criteria is not met4829*oasysZ8-7080h px� 
d
+design %s has port %s driven by constant %s3447*oasys2
top2	
LED16_B2
0Z8-3917h px� 
m
9Port %s in module %s is either unconnected or has no load4866*oasys2	
LED[15]2
topZ8-7129h px� 
m
9Port %s in module %s is either unconnected or has no load4866*oasys2	
LED[14]2
topZ8-7129h px� 
m
9Port %s in module %s is either unconnected or has no load4866*oasys2	
LED[13]2
topZ8-7129h px� 
m
9Port %s in module %s is either unconnected or has no load4866*oasys2	
LED[12]2
topZ8-7129h px� 
m
9Port %s in module %s is either unconnected or has no load4866*oasys2	
LED[11]2
topZ8-7129h px� 
m
9Port %s in module %s is either unconnected or has no load4866*oasys2	
LED[10]2
topZ8-7129h px� 
l
9Port %s in module %s is either unconnected or has no load4866*oasys2
LED[9]2
topZ8-7129h px� 
l
9Port %s in module %s is either unconnected or has no load4866*oasys2
LED[8]2
topZ8-7129h px� 
l
9Port %s in module %s is either unconnected or has no load4866*oasys2
LED[7]2
topZ8-7129h px� 
l
9Port %s in module %s is either unconnected or has no load4866*oasys2
LED[6]2
topZ8-7129h px� 
l
9Port %s in module %s is either unconnected or has no load4866*oasys2
LED[5]2
topZ8-7129h px� 
l
9Port %s in module %s is either unconnected or has no load4866*oasys2
LED[4]2
topZ8-7129h px� 
l
9Port %s in module %s is either unconnected or has no load4866*oasys2
SW[14]2
topZ8-7129h px� 
l
9Port %s in module %s is either unconnected or has no load4866*oasys2
SW[13]2
topZ8-7129h px� 
l
9Port %s in module %s is either unconnected or has no load4866*oasys2
SW[12]2
topZ8-7129h px� 
l
9Port %s in module %s is either unconnected or has no load4866*oasys2
SW[11]2
topZ8-7129h px� 
l
9Port %s in module %s is either unconnected or has no load4866*oasys2
SW[10]2
topZ8-7129h px� 
k
9Port %s in module %s is either unconnected or has no load4866*oasys2
SW[9]2
topZ8-7129h px� 
k
9Port %s in module %s is either unconnected or has no load4866*oasys2
SW[8]2
topZ8-7129h px� 
k
9Port %s in module %s is either unconnected or has no load4866*oasys2
SW[7]2
topZ8-7129h px� 
k
9Port %s in module %s is either unconnected or has no load4866*oasys2
SW[6]2
topZ8-7129h px� 
k
9Port %s in module %s is either unconnected or has no load4866*oasys2
SW[5]2
topZ8-7129h px� 
k
9Port %s in module %s is either unconnected or has no load4866*oasys2
SW[4]2
topZ8-7129h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:10 ; elapsed = 00:00:10 . Memory (MB): peak = 2587.293 ; gain = 658.195 ; free physical = 749 ; free virtual = 9221
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
@
%s
*synth2(
&Start Applying XDC Timing Constraints
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:13 ; elapsed = 00:00:14 . Memory (MB): peak = 2587.293 ; gain = 658.195 ; free physical = 743 ; free virtual = 9215
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
4
%s
*synth2
Start Timing Optimization
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Timing Optimization : Time (s): cpu = 00:00:14 ; elapsed = 00:00:14 . Memory (MB): peak = 2587.293 ; gain = 658.195 ; free physical = 743 ; free virtual = 9215
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
3
%s
*synth2
Start Technology Mapping
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Technology Mapping : Time (s): cpu = 00:00:14 ; elapsed = 00:00:14 . Memory (MB): peak = 2587.293 ; gain = 658.195 ; free physical = 743 ; free virtual = 9215
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
-
%s
*synth2
Start IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
?
%s
*synth2'
%Start Flattening Before IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
B
%s
*synth2*
(Finished Flattening Before IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
6
%s
*synth2
Start Final Netlist Cleanup
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Finished Final Netlist Cleanup
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished IO Insertion : Time (s): cpu = 00:00:16 ; elapsed = 00:00:17 . Memory (MB): peak = 2587.293 ; gain = 658.195 ; free physical = 745 ; free virtual = 9216
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
=
%s
*synth2%
#Start Renaming Generated Instances
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Instances : Time (s): cpu = 00:00:16 ; elapsed = 00:00:17 . Memory (MB): peak = 2587.293 ; gain = 658.195 ; free physical = 745 ; free virtual = 9216
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
:
%s
*synth2"
 Start Rebuilding User Hierarchy
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:16 ; elapsed = 00:00:17 . Memory (MB): peak = 2587.293 ; gain = 658.195 ; free physical = 745 ; free virtual = 9216
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Start Renaming Generated Ports
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Ports : Time (s): cpu = 00:00:16 ; elapsed = 00:00:17 . Memory (MB): peak = 2587.293 ; gain = 658.195 ; free physical = 745 ; free virtual = 9216
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
;
%s
*synth2#
!Start Handling Custom Attributes
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:16 ; elapsed = 00:00:17 . Memory (MB): peak = 2587.293 ; gain = 658.195 ; free physical = 745 ; free virtual = 9216
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
8
%s
*synth2 
Start Renaming Generated Nets
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Nets : Time (s): cpu = 00:00:16 ; elapsed = 00:00:17 . Memory (MB): peak = 2587.293 ; gain = 658.195 ; free physical = 745 ; free virtual = 9216
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Start Writing Synthesis Report
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
/
%s
*synth2

Report BlackBoxes: 
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
8
%s
*synth2 
| |BlackBox name |Instances |
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
/
%s*synth2

Report Cell Usage: 
h px� 
2
%s*synth2
+------+-------+------+
h px� 
2
%s*synth2
|      |Cell   |Count |
h px� 
2
%s*synth2
+------+-------+------+
h px� 
2
%s*synth2
|1     |BUFG   |     1|
h px� 
2
%s*synth2
|2     |CARRY4 |    12|
h px� 
2
%s*synth2
|3     |LUT1   |     5|
h px� 
2
%s*synth2
|4     |LUT2   |    15|
h px� 
2
%s*synth2
|5     |LUT3   |    19|
h px� 
2
%s*synth2
|6     |LUT4   |    14|
h px� 
2
%s*synth2
|7     |LUT5   |     2|
h px� 
2
%s*synth2
|8     |LUT6   |    42|
h px� 
2
%s*synth2
|9     |MUXF7  |     8|
h px� 
2
%s*synth2
|10    |FDCE   |     4|
h px� 
2
%s*synth2
|11    |FDRE   |   100|
h px� 
2
%s*synth2
|12    |IBUF   |     9|
h px� 
2
%s*synth2
|13    |OBUF   |    23|
h px� 
2
%s*synth2
|14    |OBUFT  |    12|
h px� 
2
%s*synth2
+------+-------+------+
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Writing Synthesis Report : Time (s): cpu = 00:00:16 ; elapsed = 00:00:17 . Memory (MB): peak = 2587.293 ; gain = 658.195 ; free physical = 745 ; free virtual = 9216
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
a
%s
*synth2I
GSynthesis finished with 0 errors, 0 critical warnings and 25 warnings.
h p
x
� 
�
%s
*synth2�
�Synthesis Optimization Runtime : Time (s): cpu = 00:00:15 ; elapsed = 00:00:16 . Memory (MB): peak = 2587.293 ; gain = 514.445 ; free physical = 745 ; free virtual = 9217
h p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:00:17 ; elapsed = 00:00:17 . Memory (MB): peak = 2587.301 ; gain = 658.195 ; free physical = 745 ; free virtual = 9217
h p
x
� 
B
 Translating synthesized netlist
350*projectZ1-571h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Netlist sorting complete. 2

00:00:002

00:00:002

2587.3012
0.0002
9632
9434Z17-722h px� 
T
-Analyzing %s Unisim elements for replacement
17*netlist2
20Z29-17h px� 
X
2Unisim Transformation completed in %s CPU seconds
28*netlist2
0Z29-28h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
Q
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02
0Z31-138h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Netlist sorting complete. 2

00:00:002

00:00:002

2643.3202
0.0002
10422
9513Z17-722h px� 
l
!Unisim Transformation Summary:
%s111*project2'
%No Unisim elements were transformed.
Z1-111h px� 
V
%Synth Design complete | Checksum: %s
562*	vivadotcl2

e11e276cZ4-1430h px� 
C
Releasing license: %s
83*common2
	SynthesisZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
352
572
182
0Z4-41h px� 
L
%s completed successfully
29*	vivadotcl2
synth_designZ4-42h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
synth_design: 2

00:00:222

00:00:202

2643.3202

1018.2622
10422
9513Z17-722h px� 
�
%s peak %s Memory [%s] %s12246*common2
synth_design2

Physical2
PSS2=
;(MB): overall = 1914.147; main = 1573.650; forked = 395.243Z17-2834h px� 
�
%s peak %s Memory [%s] %s12246*common2
synth_design2	
Virtual2
VSS2>
<(MB): overall = 4248.652; main = 2643.324; forked = 1661.355Z17-2834h px� 
c
%s6*runtcl2G
ESynthesis results are not added to the cache due to CRITICAL_WARNING
h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Write ShapeDB Complete: 2

00:00:002

00:00:002

2667.3322
0.0002
10412
9513Z17-722h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2L
J/home/boris/dev/circuit-design-fundamentals/lab2/lab2.runs/synth_1/top.dcpZ17-1381h px� 
�
Executing command : %s
56330*	planAhead2Q
Oreport_utilization -file top_utilization_synth.rpt -pb top_utilization_synth.pbZ12-24828h px� 
\
Exiting %s at %s...
206*common2
Vivado2
Fri Nov 22 19:00:42 2024Z17-206h px� 


End Record