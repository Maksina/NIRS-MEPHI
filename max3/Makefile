PORT   = 10010
TARGET = t.abs
   
$(TARGET): max_test.c max.s
	nmc-g++ -x none max.s -x c max_test.c -o$(TARGET) -lm

clean: 
	rm $(TARGET) dump

run: $(TARGET)
	qemu-ppdl -g $(PORT) $(TARGET) &
	nm-gdb 	-ex='target remote localhost:$(PORT)' -q \
		-ex='set disassemble-next-line on' \
		-ex='set confirm off' \
		-ex='load $(TARGET)' \
		-ex='file $(TARGET)' \
		-ex='b*(start+6)' \
		-ex='cont' \
		-ex='p/x $$gr7' \
		-ex='quit'

debug: $(TARGET)
	qemu-ppdl -g $(PORT) $(TARGET) &
	nm-gdb 	-ex='target remote localhost:$(PORT)' -q \
		-ex='set disassemble-next-line on' \
		-ex='set confirm off' \
		-ex='load $(TARGET)' \
		-ex='file $(TARGET)' \
		-ex='b*(start+6)' \
		-ex='b*(0x8a)' \
        -ex='cont' \
        -ex='p/x $$gr4'
 
                
nmgdb:
	qemu-ppdl -g $(PORT) $(TARGET) &
	nm-gdb -x=1 -q

dump: $(TARGET)
	nmc-objdump -D $(TARGET) > dump
