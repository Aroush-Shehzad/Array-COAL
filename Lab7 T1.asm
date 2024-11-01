.model small
.stack 100h
.data

.code 
main proc
    mov ah,1 
    int 21h 
    mov cl,al
    sub cl,48
     
    mov al,cl
  
    mul cl
  
    AAM     
    
    mov ch,ah    ; for high bit
    mov cl,al
    
    mov dl,ch
    add dl,48
    
    mov ah,2
    int 21h 
                
    mov dl,cl    ; for low bit
    add dl,48
    
    mov ah,2
    int 21h
    
    mov ah,4ch
    int 21h
    main endp
end main



