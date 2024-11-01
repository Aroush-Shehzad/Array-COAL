;stack
;mov ax,1
;push ax
;mov bx,2
;push bx
;pop ax

;reverse a string  through stack
;si=source index
;

.model small
.stack 100h
.data
 arr db 48,49,50,51,52,53,54,55,56,57
.code 
main proc
    mov ax,@data
    mov ds,ax
    
    mov si,offset arr  
    mov cx,10
    
    p: 
    mov bx,[si]
    push bx
    inc si
    loop p
    
    mov cx,10
    
    pp:     
    pop [si]
    mov dx,[si]
    mov ah,2
    int 21h
    loop pp
    
    mov ah,4ch
    int 21h
    main endp
end main
