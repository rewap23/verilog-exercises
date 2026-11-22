IVERILOG ?= iverilog
VVP ?= vvp
VFLAGS ?= -g2012

.PHONY: all fourmux twomux clean

all: fourmux twomux

fourmux: fourmux.vvp
	$(VVP) $<

fourmux.vvp: four-one-mux/four_one_mux.v
	$(IVERILOG) $(VFLAGS) -o $@ $<

twomux: twomux.vvp
	$(VVP) $<

twomux.vvp: two-one-mux/two_one_mux.v
	$(IVERILOG) $(VFLAGS) -o $@ $<

clean:
	rm -f fourmux.vvp twomux.vvp
