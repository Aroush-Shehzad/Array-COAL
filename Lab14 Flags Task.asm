.model small
.stack 100h
.data
    num1 db 4       
    num2 db 4        
    
    m1 db 'Zero Flag is set!$'
    m2 db 'Zero Flag is not set!$'
.code
main proc
    mov ax, @data    
    mov ds, ax

    mov al, num1     
    sub al, num2     

    jz zero_flag_set     ; jz = jump if zero

    
    mov ah, 09h
    lea dx, m2
    int 21h
    jmp exit

zero_flag_set:
    
    mov ah, 09h
    lea dx, m1
    int 21h

exit:
    mov ah, 4Ch      
    int 21h

main endp
end main

