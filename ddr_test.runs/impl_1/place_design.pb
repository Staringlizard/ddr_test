
Q
Command: %s
53*	vivadotcl2 
place_design2default:defaultZ4-113h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xc7s252default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xc7s252default:defaultZ17-349h px? 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px? 
V
DRC finished with %s
79*	vivadotcl2
0 Errors2default:defaultZ4-198h px? 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px? 
p
,Running DRC as a precondition to command %s
22*	vivadotcl2 
place_design2default:defaultZ4-22h px? 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px? 
?
?	v7v8_mmcm_fvco_rule1: The current computed target frequency, FVCO, is out of range for cell %s. The computed FVCO is 400.000 MHz. The valid FVCO range for speed grade -1 is 600MHz to 1200MHz. The cell attribute values used to compute FVCO are CLKFBOUT_MULT_F = 4.000, CLKIN1_PERIOD = 10.00000, and DIVCLK_DIVIDE = 1 (FVCO = 1000 * CLKFBOUT_MULT_F/(CLKIN1_PERIOD * DIVCLK_DIVIDE)).
This violation may be corrected by:
  1. The timer uses timing constraints for clock period or clock frequency that affect CLKIN1 to set cell attribute CLKIN1_PERIOD, over-riding any previous value. This may already be in place and, if so this violation will be resolved once Timing is run.  Otherwise, consider modifying timing constraints to adjust the CLKIN1_PERIOD and bring FVCO into the allowed range.
  2. In the absence of timing constraints that affect CLKIN1, consider modifying the cell CLKIN1_PERIOD to bring FVCO into the allowed range.
  3. If CLKIN1_PERIOD is satisfactory, modify the CLKFBOUT_MULT_F or DIVCLK_DIVIDE cell attributes to bring FVCO into the allowed range.
  4. The MMCM configuration may be dynamically modified by use of DRP which is recognized by an ACTIVE signal on DCLK pin.%s*DRC2?
 "?
Wu_example_top/u_mig_7series_0/u_mig_7series_0_mig/u_ddr3_infrastructure/gen_mmcm.mmcm_i	Wu_example_top/u_mig_7series_0/u_mig_7series_0_mig/u_ddr3_infrastructure/gen_mmcm.mmcm_i2default:default2default:default2M
 5DRC|Netlist|Instance|Invalid attribute value|MMCM_ADV2default:default8ZAVAL-46h px? 
k
DRC finished with %s
79*	vivadotcl21
0 Errors, 1 Critical Warnings2default:defaultZ4-198h px? 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px? 
U

Starting %s Task
103*constraints2
Placer2default:defaultZ18-103h px? 
}
BMultithreading enabled for place_design using a maximum of %s CPUs12*	placeflow2
22default:defaultZ30-611h px? 
v

Phase %s%s
101*constraints2
1 2default:default2)
Placer Initialization2default:defaultZ18-101h px? 
?

Phase %s%s
101*constraints2
1.1 2default:default29
%Placer Initialization Netlist Sorting2default:defaultZ18-101h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0022default:default2
1376.8712default:default2
0.0002default:defaultZ17-268h px? 
[
FPhase 1.1 Placer Initialization Netlist Sorting | Checksum: 17c655d67
*commonh px? 
?

%s
*constraints2s
_Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.012 . Memory (MB): peak = 1376.871 ; gain = 0.0002default:defaulth px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0052default:default2
1376.8712default:default2
0.0002default:defaultZ17-268h px? 
?

Phase %s%s
101*constraints2
1.2 2default:default2F
2IO Placement/ Clock Placement/ Build Placer Device2default:defaultZ18-101h px? 
?
[Partially locked IO Bus is found. Following components of the IO Bus %s are not locked: %s
87*place2
	ddr3_addr2default:default2e
6 '<MSGMETA::BEGIN::BLOCK>ddr3_addr[14]<MSGMETA::END>' "
ddr3_addr[14]2 ':' 2default:default8Z30-87h px? 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px? 
?
BSub-optimal placement for a clock-capable IO pin and MMCM pair. %s522*place2?
?	If this sub optimal condition is acceptable for this design, you may use the CLOCK_DEDICATED_ROUTE constraint in the .xdc file to demote this message to a WARNING. However, the use of this override is highly discouraged. These examples can be used directly in the .xdc file to override this clock rule.
	< set_property CLOCK_DEDICATED_ROUTE BACKBONE [get_nets instance_name/inst/clk_in1_clk_wiz_0] >

	<MSGMETA::BEGIN::BLOCK>instance_name/inst/clkin1_ibufg<MSGMETA::END> (IBUF.O) is locked to IOB_X1Y26
	<MSGMETA::BEGIN::BLOCK>instance_name/inst/mmcm_adv_inst<MSGMETA::END> (MMCME2_ADV.CLKIN1) is provisionally placed by clockplacer on MMCME2_ADV_X0Y0

	The above error could possibly be related to other connected instances. Following is a list of 
	all the related clock rules and their respective instances.

	Clock Rule: rule_mmcm_bufg
	Status: PASS 
	Rule Description: An MMCM driving a BUFG must be placed on the same half side (top/bottom) of the device
	<MSGMETA::BEGIN::BLOCK>instance_name/inst/mmcm_adv_inst<MSGMETA::END> (MMCME2_ADV.CLKFBOUT) is provisionally placed by clockplacer on MMCME2_ADV_X0Y0
	<MSGMETA::BEGIN::BLOCK>instance_name/inst/clkf_buf<MSGMETA::END> (BUFG.I) is provisionally placed by clockplacer on BUFGCTRL_X0Y0

"?
instance_name/inst/clkin1_ibufg2?If this sub optimal condition is acceptable for this design, you may use the CLOCK_DEDICATED_ROUTE constraint in the .xdc file to demote this message to a WARNING. However, the use of this override is highly discouraged. These examples can be used directly in the .xdc file to override this clock rule.
	< set_property CLOCK_DEDICATED_ROUTE BACKBONE [get_nets instance_name/inst/clk_in1_clk_wiz_0] >

	:" (IBUF.O) is locked to IOB_X1Y26
	"?
 instance_name/inst/mmcm_adv_inst:? (MMCME2_ADV.CLKIN1) is provisionally placed by clockplacer on MMCME2_ADV_X0Y0

	The above error could possibly be related to other connected instances. Following is a list of 
	all the related clock rules and their respective instances.

	Clock Rule: rule_mmcm_bufg
	Status: PASS 
	Rule Description: An MMCM driving a BUFG must be placed on the same half side (top/bottom) of the device
	"x
 instance_name/inst/mmcm_adv_inst:R (MMCME2_ADV.CLKFBOUT) is provisionally placed by clockplacer on MMCME2_ADV_X0Y0
	"d
instance_name/inst/clkf_buf:C (BUFG.I) is provisionally placed by clockplacer on BUFGCTRL_X0Y0

2default:default8Z30-575h px? 
g
RPhase 1.2 IO Placement/ Clock Placement/ Build Placer Device | Checksum: cbe697e2
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:04 ; elapsed = 00:00:03 . Memory (MB): peak = 1376.871 ; gain = 0.0002default:defaulth px? 
H
3Phase 1 Placer Initialization | Checksum: cbe697e2
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:04 ; elapsed = 00:00:03 . Memory (MB): peak = 1376.871 ; gain = 0.0002default:defaulth px? 
?
?Placer failed with error: '%s'
Please review all ERROR and WARNING messages during placement to understand the cause for failure.
1*	placeflow2*
IO Clock Placer failed2default:defaultZ30-99h px? 
=
(Ending Placer Task | Checksum: cbe697e2
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:04 ; elapsed = 00:00:03 . Memory (MB): peak = 1376.871 ; gain = 0.0002default:defaulth px? 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
502default:default2
12default:default2
12default:default2
32default:defaultZ4-41h px? 
N

%s failed
30*	vivadotcl2 
place_design2default:defaultZ4-43h px? 
m
Command failed: %s
69*common28
$Placer could not place all instances2default:defaultZ17-69h px? 
?
Exiting %s at %s...
206*common2
Vivado2default:default2,
Thu Feb  3 21:38:59 20222default:defaultZ17-206h px? 


End Record