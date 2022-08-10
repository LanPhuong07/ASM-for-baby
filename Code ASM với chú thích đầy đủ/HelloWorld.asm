;code nay cua Dao Ngoc Anh

.386 ; dac trung cua MASM x86 (asm tren Win 32 bit)

.model flat, stdcall                    ;flat la trai dai code tren mot mat phang, cap dia chi doc theo code code
                                        ;stdcall la calling convention, thu vien, nhung usingname space std trong C++
option casemap: none                    ;khong phan biet chu hoa thuong o lenh


;4 cai thu vien
include \masm32\include\kernel32.inc
include \masm32\include\masm32.inc
includelib \masm32\lib\kernel32.lib
includelib \masm32\lib\masm32.lib

.data flat                              ;khai bao bien global
	msg db "Hello, World!", 0           ;0 là null, biet la ket thuc chuoi
                                        ;0ah la xuong dong. Neu muon xuong dong truoc thi lam *msg db "Hello, World!", 0ah, 0*
                                        ;20h la space

.code                                   ;phan chua cac ham code
main PROC                               ;ham bat buoc phai co (PROC trong process)
	push	offset msg                  ;syntax xuat
	call	StdOut
	
    push    0                           ;= return 0;
    call    ExitProcess
main ENDP                               ;ket thuc ham con ten la main (ban than main da la 1 ham con)
end main                                ;ket thuc toan bo .code