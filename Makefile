VIVADO = /media/cotton/HDD0/Xilinx/Vivado/2022.2/bin/vivado

flow :
	$(VIVADO) -mode batch -source flow.tcl  -nolog -nojournal
test :
	$(VIVADO) -mode batch -source sim.tcl -nolog -nojournal; \
	cd export_sim/xsim && ./tb.sh
	
all: test flow

clean:
	rm -rf export_sim