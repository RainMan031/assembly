.model small

.data

.code

; nos loop, toda vez que a execucao chega
; no loop, ela decrementa 1 do registro
; cx e verifica se ele e IGUAL A zero
; se nao, pula a execucao pra label top 
    main proc
             
        mov cx, 5
        ;bx vai ser tipo um placeholder pra
        ;parar o loop mais externo 
        mov bx, 5
        
        
        
        l1:
        ;toda vez que entrar na label l1
        ;bx vai ter seu valor decrescido por 1
        mov cx, 5  
        
        mov dl, 1
        add dl, 48
        
        mov ah, 2h ;printa char de dl
        int 21h    ; DOS do it
        
        l2:
        
        mov dl, 2
        add dl, 48
        
        mov ah, 2h ;printa char de dl
        int 21h ; DOS do it 
        
        
        
        
        loop l2
        
        mov cx, bx
        
        dec bx
        loop l1 
        
        
        
 ;OUTPUT:12222122222122222122222
 ;Quando printar os 5 primeiros '2', cx sera
 ;igual a zero e ira pra instrucao l1.
 ;Ao chegar la, l1 decrementara 1 de 0 e cx
 ;tera o valor de zero         
        
    endp
    
    end main