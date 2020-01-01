[GLOBAL isr0]
isr0:
  cli                 ; Disable interrupts
  push byte 0         ; Push a dummy error code (if ISR0 doesn't push it's own error code)
  push byte 0         ; Push the interrupt number 
  jmp isr_common_stub ; Go to our common handler.

[GLOBAL isr1]
isr1:
  cli                 ; Disable interrupts
  push byte 0         ; Push a dummy error code (if ISR1 doesn't push it's own error code)
  push byte 1         ; Push the interrupt number 
  jmp isr_common_stub ; Go to our common handler.

[GLOBAL isr2]
isr2:
  cli                 ; Disable interrupts
  push byte 0         ; Push a dummy error code (if ISR0 doesn't push it's own error code)2 doesn't push it's own error code)
  push byte 2         ; Push the interrupt number 
  jmp isr_common_stub ; Go to our common handler.

[GLOBAL isr3]
isr3:
  cli                 ; Disable interrupts
  push byte 0         ; Push a dummy error code (if ISR0 doesn't push it's own error code)3 doesn't push it's own error code)
  push byte 3         ; Push the interrupt number 
  jmp isr_common_stub ; Go to our common handler.

[GLOBAL isr4]
isr4:
  cli                 ; Disable interrupts
  push byte 0         ; Push a dummy error code (if ISR0 doesn't push it's own error code)4 doesn't push it's own error code)
  push byte 4         ; Push the interrupt number 
  jmp isr_common_stub ; Go to our common handler.

[GLOBAL isr5]
isr5:
  cli                 ; Disable interrupts
  push byte 0         ; Push a dummy error code (if ISR0 doesn't push it's own error code)5 doesn't push it's own error code)
  push byte 5         ; Push the interrupt number 
  jmp isr_common_stub ; Go to our common handler.

[GLOBAL isr6]
isr6:
  cli                 ; Disable interrupts
  push byte 0         ; Push a dummy error code (if ISR0 doesn't push it's own error code)6 doesn't push it's own error code)
  push byte 6         ; Push the interrupt number 
  jmp isr_common_stub ; Go to our common handler.

[GLOBAL isr7]
isr7:
  cli                 ; Disable interrupts
  push byte 0         ; Push a dummy error code (if ISR0 doesn't push it's own error code)7 doesn't push it's own error code)
  push byte 7         ; Push the interrupt number 
  jmp isr_common_stub ; Go to our common handler.

[GLOBAL isr8]
isr8:
  cli                 ; Disable interrupts
;  push byte 0         ; Push a dummy error code (if ISR0 doesn't push it's own error code)8 doesn't push it's own error code)
  push byte 8         ; Push the interrupt number 
  jmp isr_common_stub ; Go to our common handler.

[GLOBAL isr9]
isr9:
  cli                 ; Disable interrupts
  push byte 0         ; Push a dummy error code (if ISR0 doesn't push it's own error code)9 doesn't push it's own error code)
  push byte 9         ; Push the interrupt number 
  jmp isr_common_stub ; Go to our common handler.

[GLOBAL isr10]
isr10:
  cli                 ; Disable interrupts
;  push byte 0         ; Push a dummy error code (if ISR0 doesn't push it's own error code)10 doesn't push it's own error code)
  push byte 10         ; Push the interrupt number 
  jmp isr_common_stub ; Go to our common handler.

[GLOBAL isr11]
isr11:
  cli                 ; Disable interrupts
;  push byte 0         ; Push a dummy error code (if ISR0 doesn't push it's own error code)11 doesn't push it's own error code)
  push byte 11         ; Push the interrupt number 
  jmp isr_common_stub ; Go to our common handler.

[GLOBAL isr12]
isr12:
  cli                 ; Disable interrupts
;  push byte 0         ; Push a dummy error code (if ISR0 doesn't push it's own error code)12 doesn't push it's own error code)
  push byte 12         ; Push the interrupt number 
  jmp isr_common_stub ; Go to our common handler.

[GLOBAL isr13]
isr13:
  cli                 ; Disable interrupts
;  push byte 0         ; Push a dummy error code (if ISR0 doesn't push it's own error code)13 doesn't push it's own error code)
  push byte 13         ; Push the interrupt number 
  jmp isr_common_stub ; Go to our common handler.

[GLOBAL isr14]
isr14:
  cli                 ; Disable interrupts
;  push byte 0         ; Push a dummy error code (if ISR0 doesn't push it's own error code)14 doesn't push it's own error code)
  push byte 14         ; Push the interrupt number 
  jmp isr_common_stub ; Go to our common handler.

[GLOBAL isr15]
isr15:
  cli                 ; Disable interrupts
  push byte 0         ; Push a dummy error code (if ISR0 doesn't push it's own error code)15 doesn't push it's own error code)
  push byte 15         ; Push the interrupt number 
  jmp isr_common_stub ; Go to our common handler.

[GLOBAL isr16]
isr16:
  cli                 ; Disable interrupts
  push byte 0         ; Push a dummy error code (if ISR0 doesn't push it's own error code)16 doesn't push it's own error code)
  push byte 16         ; Push the interrupt number 
  jmp isr_common_stub ; Go to our common handler.

[GLOBAL isr17]
isr17:
  cli                 ; Disable interrupts
  push byte 0         ; Push a dummy error code (if ISR0 doesn't push it's own error code)17 doesn't push it's own error code)
  push byte 17         ; Push the interrupt number 
  jmp isr_common_stub ; Go to our common handler.

[GLOBAL isr18]
isr18:
  cli                 ; Disable interrupts
  push byte 0         ; Push a dummy error code (if ISR0 doesn't push it's own error code)18 doesn't push it's own error code)
  push byte 18         ; Push the interrupt number 
  jmp isr_common_stub ; Go to our common handler.

[GLOBAL isr19]
isr19:
  cli                 ; Disable interrupts
  push byte 0         ; Push a dummy error code (if ISR0 doesn't push it's own error code)19 doesn't push it's own error code)
  push byte 19         ; Push the interrupt number 
  jmp isr_common_stub ; Go to our common handler.

[GLOBAL isr20]
isr20:
  cli                 ; Disable interrupts
  push byte 0         ; Push a dummy error code (if ISR0 doesn't push it's own error code)20 doesn't push it's own error code)
  push byte 20         ; Push the interrupt number 
  jmp isr_common_stub ; Go to our common handler.

[GLOBAL isr21]
isr21:
  cli                 ; Disable interrupts
  push byte 0         ; Push a dummy error code (if ISR0 doesn't push it's own error code)21 doesn't push it's own error code)
  push byte 21         ; Push the interrupt number 
  jmp isr_common_stub ; Go to our common handler.

[GLOBAL isr22]
isr22:
  cli                 ; Disable interrupts
  push byte 0         ; Push a dummy error code (if ISR0 doesn't push it's own error code)22 doesn't push it's own error code)
  push byte 22         ; Push the interrupt number 
  jmp isr_common_stub ; Go to our common handler.

[GLOBAL isr23]
isr23:
  cli                 ; Disable interrupts
  push byte 0         ; Push a dummy error code (if ISR0 doesn't push it's own error code)23 doesn't push it's own error code)
  push byte 23         ; Push the interrupt number 
  jmp isr_common_stub ; Go to our common handler.

[GLOBAL isr24]
isr24:
  cli                 ; Disable interrupts
  push byte 0         ; Push a dummy error code (if ISR0 doesn't push it's own error code)24 doesn't push it's own error code)
  push byte 24         ; Push the interrupt number 
  jmp isr_common_stub ; Go to our common handler.

[GLOBAL isr25]
isr25:
  cli                 ; Disable interrupts
  push byte 0         ; Push a dummy error code (if ISR0 doesn't push it's own error code)25 doesn't push it's own error code)
  push byte 25         ; Push the interrupt number 
  jmp isr_common_stub ; Go to our common handler.

[GLOBAL isr26]
isr26:
  cli                 ; Disable interrupts
  push byte 0         ; Push a dummy error code (if ISR0 doesn't push it's own error code)26 doesn't push it's own error code)
  push byte 26         ; Push the interrupt number 
  jmp isr_common_stub ; Go to our common handler.

[GLOBAL isr27]
isr27:
  cli                 ; Disable interrupts
  push byte 0         ; Push a dummy error code (if ISR0 doesn't push it's own error code)27 doesn't push it's own error code)
  push byte 27         ; Push the interrupt number 
  jmp isr_common_stub ; Go to our common handler.

[GLOBAL isr28]
isr28:
  cli                 ; Disable interrupts
  push byte 0         ; Push a dummy error code (if ISR0 doesn't push it's own error code)28 doesn't push it's own error code)
  push byte 28         ; Push the interrupt number 
  jmp isr_common_stub ; Go to our common handler.

[GLOBAL isr29]
isr29:
  cli                 ; Disable interrupts
  push byte 0         ; Push a dummy error code (if ISR0 doesn't push it's own error code)29 doesn't push it's own error code)
  push byte 29         ; Push the interrupt number 
  jmp isr_common_stub ; Go to our common handler.

[GLOBAL isr30]
isr30:
  cli                 ; Disable interrupts
  push byte 0         ; Push a dummy error code (if ISR0 doesn't push it's own error code)30 doesn't push it's own error code)
  push byte 30         ; Push the interrupt number 
  jmp isr_common_stub ; Go to our common handler.

[GLOBAL isr31]
isr31:
  cli                 ; Disable interrupts
  push byte 0         ; Push a dummy error code (if ISR0 doesn't push it's own error code)31 doesn't push it's own error code)
  push byte 31         ; Push the interrupt number 
  jmp isr_common_stub ; Go to our common handler.


; In isr.c
[EXTERN isr_handler]

; This is our common ISR stub. It saves the processor state, sets
; up for kernel mode segments, calls the C-level fault handler,
; and finally restores the stack frame.

isr_common_stub:
   pusha                    ; Pushes edi,esi,ebp,esp,ebx,edx,ecx,eax

   mov ax, ds               ; Lower 16-bits of eax = ds.
   push eax                 ; save the data segment descriptor

   mov ax, 0x10  ; load the kernel data segment descriptor
   mov ds, ax
   mov es, ax
   mov fs, ax
   mov gs, ax

   call isr_handler

   pop eax        ; reload the original data segment descriptor
   mov ds, ax
   mov es, ax
   mov fs, ax
   mov gs, ax

   popa                     ; Pops edi,esi,ebp...
   add esp, 8     ; Cleans up the pushed error code and pushed ISR number
   ;sti
   cli
   iret           ; pops 5 things at once: CS, EIP, EFLAGS, SS, and ESP