; Pad Frame arrangement file
; David_Harris@hmc.edu
; 1/18/02
; Generate a padframe for a 40-pin MOSIS tinychip layout

; specify the cell library with the pads
celllibrary muddpads11_ami05.elib

; create a top-level facet containing the padframe and core
facet chip{lay}

; place this facet as the "core"
core cam{lay}

; set the alignment of the pads (specifying input and output port names)
align pad_corner{lay}      dvdd-1 dvdd
align pad_in{lay}          dvdd-1 dvdd
align pad_out{lay}         dvdd-1 dvdd
align pad_analog{lay}	  dvdd-1 dvdd
align pad_dvdd{lay}        dvdd-1 dvdd
align pad_dgnd{lay}        dvdd-1 dvdd

;; replace the pad_in and pad_out statements with the pad frame arrangement you want.
;; keep at least two pad_dvdd and pad_dgnd pads somewhere on the chip to supply
;; power and ground to the pads and core

; place the top edge of pads, starting with upper-right
place pad_corner{lay}
place pad_in{lay} din=mask[5] export din=mask[5]
place pad_in{lay} din=data[5] export din=data[5]
place pad_in{lay} din=input[5] export din=input[5]
place pad_in{lay} din=mask[4] export din=mask[4]
place pad_in{lay} din=input[4] export din=input[4]
place pad_in{lay} din=mask[3] export din=mask[3]
place pad_in{lay} din=input[3] export din=input[3]
place pad_dvdd{lay} 
place pad_dvdd{lay} export pad = VDD
place pad_dvdd{lay}


; place the left edge of pads
rotate cc
place pad_corner{lay}
place pad_in{lay} din=reset export pad=reset
place pad_in{lay} din=delete export din=delete
place pad_in{lay} din=write export din=write
place pad_in{lay} din=fullPrev export din=fullPrev 
place pad_in{lay} din=input[0] export din=input[0]
place pad_in{lay} din=mask[0] export din=mask[0]
place pad_in{lay} din=input[1] export din=input[1]
place pad_in{lay} din=mask[1] export din=mask[1]
place pad_in{lay} din=input[2] export din=input[2]
place pad_in{lay} din=mask[2] export din=mask[2]


; place the bottom edge of pads
rotate cc
place pad_corner{lay}
place pad_out{lay} dout=full export dout=full
place pad_dgnd{lay} export pad = GND
place pad_dgnd{lay}
place pad_out{lay} dout=output[5] export dout=output[5]
place pad_out{lay} dout=output[4] export dout=output[4]
place pad_out{lay} dout=output[3] export dout=output[3]
place pad_out{lay} dout=output[2] export dout=output[2]
place pad_out{lay} dout=output[1] export dout=output[1]
place pad_out{lay} dout=output[0] export dout=output[0]
place pad_out{lay} dout=notFound export dout=notFound

; place the right edge of pads
rotate cc
place pad_corner{lay}
place pad_in{lay} din=data[4] export din=data[4]
place pad_in{lay} din=input[6] export din=input[6]
place pad_in{lay} din=mask[6] export din=mask[6]
place pad_in{lay} din=data[3] export din=data[3]
place pad_in{lay} din=input[7] export din=input[7]
place pad_in{lay} din=data[2] export din=data[2]
place pad_in{lay} din=mask[7] export din=mask[7]
place pad_in{lay} din=data[1] export din=data[1]
place pad_in{lay} din=notFoundPrev export din=notFoundPrev
place pad_in{lay} din=data[0] export din=data[0]