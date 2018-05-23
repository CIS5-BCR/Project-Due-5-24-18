; ¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤
    include \masm32\include\masm32rt.inc
    includelib \masm32\lib\masm32.lib
; ¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤

comment * -----------------------------------------------------
                     "Single Bet CRAPS"
        ----------------------------------------------------- *

    .data?
    
      usersNum    dd ?
      buffer      dd 1 dup (?)

    .data
      
      winMsg      db "You rolled your number. You Win!", 13,10,0
      loseMsg     db "You did not roll your number. You Lose.", 13,10,0

    .code

start:
   
; ¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤

    call main
    inkey
    exit

; ¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤

main proc

; Clear terminal and print greeting messages.
    cls
    print "Please guess a number you wager will be rolled next. ",13,10
    print "Enter a value between 1 and 6 then press enter to see results: ",13,10
    
; Receive Input from the user, Outputs NULL
    invoke StdIn, addr buffer, 1
    
; Receives ASCII input from user, Outputs DWORD
    invoke atodw, addr buffer
    mov usersNum, eax
    
; Get system time move to EAX
    invoke GetTickCount
    
; Seed random number generator using system time
    invoke nseed, eax
    
; Generates random number from 0 - 5
    invoke nrandom, 5
    
; Increments random number by 1 so that range is 1-6
    inc eax
    
; If Else statment to branch to either win msg or lose msg
    .IF usersNum == eax
    invoke StdOut, addr winMsg
    .ELSEIF usersNum != eax
    invoke StdOut, addr loseMsg
    .ENDIF

    ret

main endp

; ¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤

end start
