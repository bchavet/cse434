| define vectors for convenience
vector input input[0] input[1] input[2] input[3] input[4] input[5] input[6] input[7]
vector mask[7:0] mask[0] mask[1] mask[2] mask[3] mask[4] mask[5] mask[6] mask[7]
vector data[15:0] data[0] data[1] data[2] data[3] data[4] data[5] data[6] data[7] data[8] data[9] data[10] data[11] data[12] data[13] data[14] data[15]
vector output[15:0] output[0] output[1] output[2] output[3] output[4] output[5] output[6] output[7] output[8] output[9] output[10] output[11] output[12] output[13] output[14] output[15]
vector outputPrev[7:0] outputPrev[0] outputPrev[1] outputPrev[2] outputPrev[3] outputPrev[4] outputPrev[5] outputPrev[6] outputPrev[7]
vector outputPrev[15:8] outputPrev[8] outputPrev[9] outputPrev[10] outputPrev[11] outputPrev[12] outputPrev[13] outputPrev[14] outputPrev[15]

| set initial state
h notFoundPrev fullPrev
l write delete
set input 00000000
set mask[7:0] 00000000
set data[15:0] 0000000000000000
set outputPrev[7:0] 00000000
set outputPrev[15:8] 00000000

| reset the occupied bit to zero
h reset
s 20
l reset
s 20

| write input=10101010 mask=00000000 data=1010101010101010
set input 10101010
set mask[7:0] 00000000
set data[15:0] 1010101010101010
h write
s 10
assert output[15:0] 1010101010101010
