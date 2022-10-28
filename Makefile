compile:
	nasm -felf64 -o main.obj main.asm
	gcc main.obj -o main -nostartfiles -no-pie
	rm -f main.obj
	./main
