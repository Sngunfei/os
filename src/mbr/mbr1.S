; mbr, -----> xian ka
;---------

SECTION MBR vstart=0x7c00
    mov ax, cs
    mov ds, ax
    mov es, ax
    mov ss, ax
    mov fs, ax
    mov sp, 0x7c00
    mov ax, 0xb800
    
    mov gs, ax
    
    ; clean screen
    mov ax, 0x0600
    mov bx, 0x0700
    mov cx, 0
    mov dx, 0x184f
    
    int 0x10
    
    ; color
    
    mov byte [gs:0x00], 'H'
    mov byte [gs:0x01], 0xA4
    
    mov byte [gs:0x02], 'e' 
    mov byte [gs:0x03], 0xA4
    
    mov byte [gs:0x04], 'l' 
    mov byte [gs:0x05], 0xA4
    
    mov byte [gs:0x06], 'l' 
    mov byte [gs:0x07], 0xA4
    
    mov byte [gs:0x08], 'o' 
    mov byte [gs:0x09], 0xA4
    
    mov byte [gs:0x0a], 'W' 
    mov byte [gs:0x0b], 0xA4
    
    mov byte [gs:0x0c], 'o' 
    mov byte [gs:0x0d], 0xA4
    
    mov byte [gs:0x0e], 'r' 
    mov byte [gs:0x0f], 0xA4
    
    mov byte [gs:0x10], 'l' 
    mov byte [gs:0x11], 0xA4
    
    mov byte [gs:0x12], 'd' 
    mov byte [gs:0x13], 0xA4
    
    jmp $
    
    times 510-($-$$) db 0
    db 0x55, 0xaa
    
    