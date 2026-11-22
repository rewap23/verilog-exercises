IVERILOG ?= iverilog
VVP ?= vvp
VFLAGS ?= -g2012

.PHONY: all mux_2_to_1 mux_4_to_1 mux_256_to_1 clean

all: mux_2_to_1 mux_4_to_1 mux_256_to_1

mux_2_to_1: mux_2_to_1.vvp
	$(VVP) $<

mux_2_to_1.vvp: mux_2_to_1/mux_2_to_1.v
	$(IVERILOG) $(VFLAGS) -o $@ $<

mux_4_to_1: mux_4_to_1.vvp
	$(VVP) $<

mux_4_to_1.vvp: mux_4_to_1/mux_4_to_1.v
	$(IVERILOG) $(VFLAGS) -o $@ $<

mux_256_to_1: mux_256_to_1.vvp
	$(VVP) $<

mux_256_to_1.vvp: mux_256_to_1/mux_256_to_1.v
	$(IVERILOG) $(VFLAGS) -o $@ $<

clean:
	rm -f fourmux.vvp twomux.vvp mux_2_to_1.vvp mux_4_to_1.vvp mux_256_to_1.vvp
