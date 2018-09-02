| 0000
l input key mask matchPrev
s 2
assert match 0

| 0001
h matchPrev
s 2
assert match 1

| 0010
l matchPrev
h mask
s 2
assert match 0

| 0011
h matchPrev
s 2
assert match 1

| 0100
l mask matchPrev
h key
s 2
assert match 0

| 0101
h matchPrev
s 2
assert match 0

| 0110
l matchPrev
h mask
s 2
assert match 0

| 0111
h matchPrev
s 2
assert match 1

| 1000
l key mask matchPrev
h input
s 2
assert match 0

| 1001
h matchPrev
s 2
assert match 0

| 1010
h mask
l matchPrev
s 2
assert match 0

| 1011
h matchPrev
s 2
assert match 1

| 1100
h key
l mask matchPrev
s 2
assert match 0

| 1101
h matchPrev
s 2
assert match 1

| 1110
l matchPrev
h mask
s 2
assert match 0

| 1111
h matchPrev
s 2
assert match 1
