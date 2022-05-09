
nasm -f bin -o boot.bin boot.asm 
nasm -f bin -o stage2.bin stage2.asm 



cat boot.bin stage2.bin > boot.img

dd if=/dev/zero of=disk.img bs=1024 count=720
nasm -f bin boot.asm -o boot.bin
dd if=boot.bin of=disk.img conv=notrunc

nasm -f bin stage2.asm -o stage2.bin    
dd if=stage2.bin of=disk.img bs=512 seek=1 conv=notrunc

