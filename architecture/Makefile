all: work
	touch .stamp

clean::
	rm -f .stamp

define template
$(foreach design,$(1),
$(foreach script,$(2),
work:: $(design)/work_$(script)/.stamp

$(design)/work_$(script)/.stamp:
	bash run.sh $(design) $(script)

clean::
	rm -rf $(design)/work_$(script)
))
endef

#achronix
$(eval $(call template,synth_achronix,synth_achronix synth_achronix_top synth_achronix_vout synth_achronix_run synth_achronix_noflatten synth_achronix_retime))
$(eval $(call template,synth_achronix_error,synth_achronix_fully_selected))

#anlogic
$(eval $(call template,synth_anlogic,synth_anlogic synth_anlogic_top synth_anlogic_edif synth_anlogic_json synth_anlogic_run synth_anlogic_noflatten synth_anlogic_retime))
$(eval $(call template,synth_anlogic_fulladder,synth_anlogic synth_anlogic_top synth_anlogic_edif synth_anlogic_json synth_anlogic_run synth_anlogic_noflatten synth_anlogic_retime))
$(eval $(call template,synth_anlogic_mem,synth_anlogic synth_anlogic_top synth_anlogic_edif synth_anlogic_json synth_anlogic_run synth_anlogic_noflatten synth_anlogic_retime anlogic_determine_init_eqn))
$(eval $(call template,synth_anlogic_error,synth_anlogic_fully_selected))

#coolrunner2
$(eval $(call template,synth_coolrunner2,synth_coolrunner2 synth_coolrunner2_top synth_coolrunner2_vout synth_coolrunner2_run synth_coolrunner2_noflatten synth_coolrunner2_retime))
$(eval $(call template,synth_coolrunner2_fulladder,synth_coolrunner2 synth_coolrunner2_top synth_coolrunner2_vout synth_coolrunner2_run synth_coolrunner2_noflatten synth_coolrunner2_retime))
$(eval $(call template,synth_coolrunner2_error,synth_coolrunner2_fully_selected))

#easic - issue #920
# we do not have eTools anymore available, commented until aquired
#$(eval $(call template,synth_easic,synth_easic synth_easic_top synth_easic_vlog synth_easic_run synth_easic_noflatten synth_easic_retime))
$(eval $(call template,synth_easic_error,synth_easic_fully_selected))

#ecp5
$(eval $(call template,synth_ecp5,synth_ecp5 synth_ecp5_top synth_ecp5_blif synth_ecp5_edif synth_ecp5_json synth_ecp5_run synth_ecp5_flatten synth_ecp5_noflatten synth_ecp5_retime synth_ecp5_noccu2 synth_ecp5_nodffe synth_ecp5_nobram synth_ecp5_nodram synth_ecp5_nomux synth_ecp5_abc2 synth_ecp5_vpr ecp5_ffinit))
$(eval $(call template,synth_ecp5_wide_ffs,synth_ecp5 synth_ecp5_top synth_ecp5_blif synth_ecp5_edif synth_ecp5_json synth_ecp5_run synth_ecp5_flatten synth_ecp5_noflatten synth_ecp5_retime synth_ecp5_noccu2 synth_ecp5_nodffe synth_ecp5_nobram synth_ecp5_nodram synth_ecp5_nomux synth_ecp5_abc2 synth_ecp5_vpr ecp5_ffinit))
$(eval $(call template,synth_ecp5_error,synth_ecp5_fully_selected))

#gowin
$(eval $(call template,synth_gowin,synth_gowin synth_gowin_top synth_gowin_vout synth_gowin_run synth_gowin_retime synth_gowin_nobram synth_gowin_noflatten ))
$(eval $(call template,synth_gowin_mem,synth_gowin synth_gowin_top synth_gowin_vout synth_gowin_run synth_gowin_retime synth_gowin_nobram synth_gowin_noflatten ))
$(eval $(call template,synth_gowin_error,synth_gowin_fully_selected ))

#ice40
$(eval $(call template,synth_ice40,synth_ice40 synth_ice40_top synth_ice40_blif synth_ice40_edif synth_ice40_json synth_ice40_run synth_ice40_noflatten synth_ice40_flatten synth_ice40_retime synth_ice40_nocarry synth_ice40_nodffe synth_ice40_nobram synth_ice40_abc2 synth_ice40_vpr synth_ice40_relut synth_ice40_dsp synth_ice40_min_ce synth_ice40_noabc))
$(eval $(call template,synth_ice40_mem,synth_ice40 synth_ice40_top synth_ice40_blif synth_ice40_edif synth_ice40_json synth_ice40_run synth_ice40_noflatten synth_ice40_flatten synth_ice40_retime synth_ice40_nocarry synth_ice40_nodffe synth_ice40_nobram synth_ice40_abc2 synth_ice40_vpr synth_ice40_relut synth_ice40_dsp synth_ice40_min_ce synth_ice40_noabc))
$(eval $(call template,synth_ice40_wide_ffs,synth_ice40 synth_ice40_top synth_ice40_blif synth_ice40_edif synth_ice40_json synth_ice40_run synth_ice40_noflatten synth_ice40_flatten synth_ice40_nocarry synth_ice40_nodffe synth_ice40_nobram synth_ice40_abc2 synth_ice40_vpr synth_ice40_relut synth_ice40_dsp synth_ice40_min_ce synth_ice40_noabc))
$(eval $(call template,synth_ice40_error,synth_ice40_fully_selected))

#intel
$(eval $(call template,synth_intel,synth_intel synth_intel_top synth_intel_vqm synth_intel_vpr synth_intel_run synth_intel_noflatten synth_intel_retime synth_intel_noiopads synth_intel_nobram synth_intel_max10 ))
$(eval $(call template,synth_intel_cycloneiv,synth_intel_cycloneiv  ))
$(eval $(call template,synth_intel_cycloneive,synth_intel_cycloneive   ))
$(eval $(call template,synth_intel_cyclonev ,synth_intel_cyclonev ))
$(eval $(call template,synth_intel_cyclone10,synth_intel_cyclone10 ))
$(eval $(call template,synth_intel_a10gx ,synth_intel_a10gx ))
$(eval $(call template,synth_intel_error ,synth_intel_fully_selected synth_intel_invalid_family ))

#sf2
$(eval $(call template,synth_sf2,synth_sf2 synth_sf2_top synth_sf2_edif synth_sf2_json synth_sf2_run synth_sf2_noflatten synth_sf2_retime synth_sf2_vlog synth_sf2_noiobs synth_sf2_clkbuf ))
$(eval $(call template,synth_sf2_error,synth_sf2_fully_selected ))

#xilinx
$(eval $(call template,synth_xilinx,synth_xilinx synth_xilinx_top synth_xilinx_blif synth_xilinx_edif synth_xilinx_run synth_xilinx_flatten synth_xilinx_retime synth_xilinx_vpr synth_xilinx_arch_xcup synth_xilinx_arch_xcu synth_xilinx_arch_xc7 synth_xilinx_arch_xc6s synth_xilinx_nobram synth_xilinx_nodram synth_xilinx_nosrl))
$(eval $(call template,synth_xilinx_error,synth_xilinx_fully_selected synth_xilinx_invalid_arch ))

#greenpak4
$(eval $(call template,synth_greenpak4,synth_greenpak4 synth_greenpak4_top synth_greenpak4_json synth_greenpak4_run synth_greenpak4_noflatten synth_greenpak4_retime synth_greenpak4_part621 synth_greenpak4_part620 synth_greenpak4_part140))
$(eval $(call template,synth_greenpak4_wide_ffs,synth_greenpak4 synth_greenpak4_top synth_greenpak4_json synth_greenpak4_run synth_greenpak4_noflatten synth_greenpak4_retime synth_greenpak4_part621 synth_greenpak4_part620 synth_greenpak4_part140))
$(eval $(call template,synth_greenpak4_error,synth_greenpak4_fully_selected synth_greenpak4_invalid_part))

.PHONY: all clean
