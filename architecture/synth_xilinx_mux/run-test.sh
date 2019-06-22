#!/bin/bash

OPTIND=1
seed=""    # default to no seed specified
while getopts "S:" opt
do
    case "$opt" in
	S) arg="${OPTARG#"${OPTARG%%[![:space:]]*}"}" # remove leading space
	   seed="SEED=$arg" ;;
    esac
done
shift "$((OPTIND-1))"

# check for Icarus Verilog
if ! which iverilog > /dev/null ; then
  echo "$0: Error: Icarus Verilog 'iverilog' not found."
  exit 1
fi

wget https://raw.githubusercontent.com/YosysHQ/yosys-bench/master/verilog/benchmarks_small/mux/generate.py -O generate_small.py -o /dev/null
wget https://raw.githubusercontent.com/YosysHQ/yosys-bench/master/verilog/benchmarks_small/mux/common.py -O common.py -o /dev/null
wget https://raw.githubusercontent.com/YosysHQ/yosys-bench/master/verilog/benchmarks_large/mux/generate.py -O generate_large.py -o /dev/null
python3 generate_small.py
python3 generate_large.py
${MAKE:-make} -f ../../../../tools/autotest.mk $seed *.v EXTRA_FLAGS="-p 'synth_xilinx -abc9' -l ../../../../../techlibs/xilinx/cells_sim.v"

python3 ../assert_area.py > assert_area.ys
yosys -q assert_area.ys