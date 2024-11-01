.model small
.stack 100h
.data

msg db 'Enter Character : $'

.code

main proc
    
    ; Task 8
    
    mov ax,@data
    mov ds,ax
    mov dl,msg
    mov dx,offset msg
    mov ah,9
    int 21h
    
    mov cx,10
     
    mov ah,1
    int 21h 
    mov bx,ax
     
    
    mov dl,10
    mov ah,2
    int 21h 
    mov dl,13
    mov ah,2
    int 21h
     
    L1:
    mov dx,bx 
    mov ah,2
    
    int 21h
    
    mov dl,13
    mov ah,2
    int 21h 
    mov dl,10
    mov ah,2
    int 21h        
          
    Loop L1
    
    mov ah,4ch
    int 21h 
    
    main endp
end main
