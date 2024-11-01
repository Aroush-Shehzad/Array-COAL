.model small
.stack 100h
.data
.code

main proc
    
    mov cx,6
    mov ah,1
    int 21h
    
    L1:    
    
    mov dx,ax
    mov ah,2
    int 21h
                                                                                             ,
    Loop L1
    
    mov ah,4ch
    int 21h 
    
    main endp
end main
