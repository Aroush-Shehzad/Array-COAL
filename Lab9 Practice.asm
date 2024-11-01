.model small
.stack 100h
.data 
m1 db 10,13,'Enter First Number $'
m2 db 10,13,'Enter Second Number $'
m3 db 10,13,'Numbers are equal $'
m4 db 10,13,'Numbers are not equal $'

.code         
main proc
    mov ax,@data
    mov dx,ax
    
    mov dx,offset m1
    mov ah,9
    int 21h
    
    mov ah,1
    int 21h  
    
    mov cl,al
   
    mov dx,offset m2
    mov ah,9
    int 21h
    
    mov ah,1
    int 21h  
    
    mov dl,al 
    
    cmp cl,dl
    je l1
    
    
    mov dx,offset m4
    mov ah,9
    int 21h
    
    
    l1:  
    mov dx,offset m3
    mov ah,9
    int 21h
    
    mov ah,4ch
    int 21h 
    
    main endp
end main


    
    
  ;Unconditiional Jumps
    ;l1:
 
    ;jmp l1    
    
    
  ;Condtional Jumps
    ;je = Jump Equal (compare if equal)    op code
    ;l2
    
    ;je l2
    