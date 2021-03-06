    extern printf				; define external C function

    SECTION .data
fmt:    db "%d", 10, 0		    ; format string

    SECTION .text
    global print					;
print:
    mov rdi, fmt				; put format string to RDI
    mov rsi, 1337				; put number to RSI
    mov rax, 0					; set no xmm registers
    call printf					; call C printf function
exit:
    mov rax, 1					; set 'normal' exit
    ret