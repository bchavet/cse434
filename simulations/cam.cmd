| define vectors for convenience
vector input input[0] input[1] input[2] input[3] input[4] input[5] input[6] input[7]
vector mask[7:0] mask[0] mask[1] mask[2] mask[3] mask[4] mask[5] mask[6] mask[7]
vector data[15:0] data[0] data[1] data[2] data[3] data[4] data[5] data[6] data[7] data[8] data[9] data[10] data[11] data[12] data[13] data[14] data[15]
vector output[15:0] output[0] output[1] output[2] output[3] output[4] output[5] output[6] output[7] output[8] output[9] output[10] output[11] output[12] output[13] output[14] output[15]

| set initial state
l write delete
h fullPrev notFoundPrev
set input 00000000
set mask[7:0] 00000000
set data[15:0] 0000000000000000

| reset the occupied bit to zero
h reset
s 13
l reset
s 13

| write
set input 10101010
set mask[7:0] 00000000
set data[15:0] 1010101010101010
h write
s 13
l write
assert output[15:0] 1010101010101010

| write
set input 01010101
set mask[7:0] 00000000
set data[15:0] 0101010101010101
h write
s 13
l write
assert output[15:0] 0101010101010101

| successful search
set input 10101010
set mask[7:0] 00000000
s 13
assert output[15:0] 1010101010101010
assert notFound 0

| unsuccessful search
set input 10101011
set mask[7:0] 00000000
s 13
assert output[15:0] 0000000000000000
assert notFound 1

| write
set input 10001000
set mask[7:0] 00000000
set data[15:0] 1000100010001000
h write
s 13
l write
assert output[15:0] 1000100010001000

| write
set input 01110111
set mask[7:0] 00000000
set data[15:0] 0111011101110111
h write
s 13
l write
assert output[15:0] 0111011101110111

| successful search w/mask (multiple matches)
set input 01010101
set mask[7:0] 00110011
s 13
assert output[15:0] 0101010101010101
assert notFound 0

| successful search
set input 01110111
set mask[7:0] 00000000
s 13
assert output[15:0] 0111011101110111
assert notFound 0

| write
set input 00010001
set mask[7:0] 00000000
set data[15:0] 0001000100010001
h write
s 13
l write
assert output[15:0] 0001000100010001

| write
set input 11101110
set mask[7:0] 00000000
set data[15:0] 1110111011101110
h write
s 13
l write
assert output[15:0] 1110111011101110

| successful search w/mask
set input 00000000
set mask[7:0] 00010001
s 13
assert output[15:0] 0001000100010001

| write
set input 10010010
set mask[7:0] 00000000
set data[15:0] 1001001001001001
h write
s 13
l write
assert output[15:0] 1001001001001001

| write
set input 01101101
set mask[7:0] 00000000
set data[15:0] 0110110110110110
h write
s 13
l write
assert output[15:0] 0110110110110110

| write
set input 00000000
set mask[7:0] 00000000
set data[15:0] 0000000000000000
h write
s 13
l write
assert output[15:0] 0000000000000000

| write
set input 11111111
set mask[7:0] 00000000
set data[15:0] 1111111111111111
h write
s 13
l write
assert output[15:0] 1111111111111111

| write
set input 10000001
set mask[7:0] 00000000
set data[15:0] 1000000000000001
h write
s 13
l write
assert output[15:0] 1000000000000001

| write
set input 01111110
set mask[7:0] 00000000
set data[15:0] 0111111111111110
h write
s 13
l write
assert output[15:0] 0111111111111110

| write
set input 11001100
set mask[7:0] 00000000
set data[15:0] 1100110011001100
h write
s 13
l write
assert output[15:0] 1100110011001100

| write
set input 00110011
set mask[7:0] 00000000
set data[15:0] 0011001100110011
h write
s 13
l write
assert output[15:0] 0011001100110011

| write
set input 11110000
set mask[7:0] 00000000
set data[15:0] 1111111100000000
h write
s 13
l write
assert output[15:0] 1111111100000000

| write
set input 00001111
set mask[7:0] 00000000
set data[15:0] 0000000011111111
h write
s 13
l write
assert output[15:0] 0000000011111111

| search
set input 10101010
set mask[7:0] 00000000
s 13
assert output[15:0] 1010101010101010
assert notFound 0

| search with mask
set input 00000000
set mask[7:0] 10101010
s 13
assert output[15:0] 1010101010101010
assert notFound 0
