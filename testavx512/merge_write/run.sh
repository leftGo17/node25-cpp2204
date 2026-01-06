c++ -O3 -fomit-frame-pointer -fverbose-asm -march=native -S a.cpp -o mnative.S

c++ -O3 -fomit-frame-pointer -fverbose-asm -march=native -mprefer-vector-width=512 -S a.cpp -o mprefer.S
