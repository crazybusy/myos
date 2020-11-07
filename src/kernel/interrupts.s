; In just a few pages in this tutorial, we will add our Interrupt
; Service Routines (ISRs) right here!
global isr0
global isr1
global isr2
global isr3
global isr4
global isr5
global isr6
global isr7
global isr8
global isr9
global isr10
global isr11
global isr12
global isr13
global isr14
global isr15
global isr16
global isr17
global isr18
global isr19
global isr20
global isr21
global isr22
global isr23
global isr24
global isr25
global isr26
global isr27
global isr28
global isr29
global isr30
global isr31

;  0: Divide By Zero Exception
isr0:
    cli
    push 0
    push 0
    jmp isr_common_stub

;  1: Debug Exception
isr1:
    cli
    push 0
    push 1
    jmp isr_common_stub

;  2: Non Maskable Interrupt Exception
isr2:
    cli
    push 0
    push 2
    jmp isr_common_stub

;  3: Int 3 Exception
isr3:
    cli
    push 0
    push 3
    jmp isr_common_stub

;  4: INTO Exception
isr4:
    cli
    push 0
    push 4
    jmp isr_common_stub

;  5: Out of Bounds Exception
isr5:
    cli
    push 0
    push 5
    jmp isr_common_stub

;  6: Invalid Opcode Exception
isr6:
    cli
    push 0
    push 6
    jmp isr_common_stub

;  7: Coprocessor Not Available Exception
isr7:
    cli
    push 0
    push 7
    jmp isr_common_stub

;  8: Double Fault Exception (With Error Code!)
isr8:
    cli
    push 8
    jmp isr_common_stub

;  9: Coprocessor Segment Overrun Exception
isr9:
    cli
    push 0
    push 9
    jmp isr_common_stub

; 10: Bad TSS Exception (With Error Code!)
isr10:
    cli
    push 10
    jmp isr_common_stub

; 11: Segment Not Present Exception (With Error Code!)
isr11:
    cli
    push 11
    jmp isr_common_stub

; 12: Stack Fault Exception (With Error Code!)
isr12:
    cli
    push 12
    jmp isr_common_stub

; 13: General Protection Fault Exception (With Error Code!)
isr13:
    cli
    push 13
    jmp isr_common_stub

; 14: Page Fault Exception (With Error Code!)
isr14:
    cli
    push 14
    jmp isr_common_stub

; 15: Reserved Exception
isr15:
    cli
    push 0
    push 15
    jmp isr_common_stub

; 16: Floating Point Exception
isr16:
    cli
    push 0
    push 16
    jmp isr_common_stub

; 17: Alignment Check Exception
isr17:
    cli
    push 0
    push 17
    jmp isr_common_stub

; 18: Machine Check Exception
isr18:
    cli
    push 0
    push 18
    jmp isr_common_stub

; 19: Reserved
isr19:
    cli
    push 0
    push 19
    jmp isr_common_stub

; 20: Reserved
isr20:
    cli
    push 0
    push 20
    jmp isr_common_stub

; 21: Reserved
isr21:
    cli
    push 0
    push 21
    jmp isr_common_stub

; 22: Reserved
isr22:
    cli
    push 0
    push 22
    jmp isr_common_stub

; 23: Reserved
isr23:
    cli
    push 0
    push 23
    jmp isr_common_stub

; 24: Reserved
isr24:
    cli
    push 0
    push 24
    jmp isr_common_stub

; 25: Reserved
isr25:
    cli
    push 0
    push 25
    jmp isr_common_stub

; 26: Reserved
isr26:
    cli
    push 0
    push 26
    jmp isr_common_stub

; 27: Reserved
isr27:
    cli
    push 0
    push 27
    jmp isr_common_stub

; 28: Reserved
isr28:
    cli
    push 0
    push 28
    jmp isr_common_stub

; 29: Reserved
isr29:
    cli
    push 0
    push 29
    jmp isr_common_stub

; 30: Reserved
isr30:
    cli
    push 0
    push 30
    jmp isr_common_stub

; 31: Reserved
isr31:
    cli
    push 0
    push 31
    jmp isr_common_stub

; We call a C function in here. We need to let the assembler know
; that 'isr_handler' exists in another file
extern isr_handler

; This is our common ISR stub. It saves the processor state, sets
; up for kernel mode segments, calls the C-level fault handler,
; and finally restores the stack frame.
isr_common_stub:
    pusha

    call isr_handler

    popa
    add esp, 8
    sti
    iret

global irq0
global irq1
global irq2
global irq3
global irq4
global irq5
global irq6
global irq7
global irq8
global irq9
global irq10
global irq11
global irq12
global irq13
global irq14
global irq15

; 32: IRQ0
irq0:
    cli
    push 0
    push 32
    jmp irq_common_stub

; 33: IRQ1
irq1:
    cli
    push 0
    push 33
    jmp irq_common_stub

; 34: IRQ2
irq2:
    cli
    push 0
    push 34
    jmp irq_common_stub

; 35: IRQ3
irq3:
    cli
    push 0
    push 35
    jmp irq_common_stub

; 36: IRQ4
irq4:
    cli
    push 0
    push 36
    jmp irq_common_stub

; 37: IRQ5
irq5:
    cli
    push 0
    push 37
    jmp irq_common_stub

; 38: IRQ6
irq6:
    cli
    push 0
    push 38
    jmp irq_common_stub

; 39: IRQ7
irq7:
    cli
    push 0
    push 39
    jmp irq_common_stub

; 40: IRQ8
irq8:
    cli
    push 0
    push 40
    jmp irq_common_stub

; 41: IRQ9
irq9:
    cli
    push 0
    push 41
    jmp irq_common_stub

; 42: IRQ10
irq10:
    cli
    push 0
    push 42
    jmp irq_common_stub

; 43: IRQ11
irq11:
    cli
    push 0
    push 43
    jmp irq_common_stub

; 44: IRQ12
irq12:
    cli
    push 0
    push 44
    jmp irq_common_stub

; 45: IRQ13
irq13:
    cli
    push 0
    push 45
    jmp irq_common_stub

; 46: IRQ14
irq14:
    cli
    push 0
    push 46
    jmp irq_common_stub

; 47: IRQ15
irq15:
    cli
    push 0
    push 47
    jmp irq_common_stub

extern irq_handler

irq_common_stub:
    pusha

    call irq_handler

    popa
    add esp, 8
    sti
    iret

;Define rest of the interrupts
; 48: free
global isr48
isr48:
    cli
    push 0
    push 48
    jmp isr_common_stub

; 49: free
global isr49
isr49:
    cli
    push 0
    push 49
    jmp isr_common_stub

; 50: free
global isr50
isr50:
    cli
    push 0
    push 50
    jmp isr_common_stub

; 51: free
global isr51
isr51:
    cli
    push 0
    push 51
    jmp isr_common_stub

; 52: free
global isr52
isr52:
    cli
    push 0
    push 52
    jmp isr_common_stub

; 53: free
global isr53
isr53:
    cli
    push 0
    push 53
    jmp isr_common_stub

; 54: free
global isr54
isr54:
    cli
    push 0
    push 54
    jmp isr_common_stub

; 55: free
global isr55
isr55:
    cli
    push 0
    push 55
    jmp isr_common_stub

; 56: free
global isr56
isr56:
    cli
    push 0
    push 56
    jmp isr_common_stub

; 57: free
global isr57
isr57:
    cli
    push 0
    push 57
    jmp isr_common_stub

; 58: free
global isr58
isr58:
    cli
    push 0
    push 58
    jmp isr_common_stub

; 59: free
global isr59
isr59:
    cli
    push 0
    push 59
    jmp isr_common_stub

; 60: free
global isr60
isr60:
    cli
    push 0
    push 60
    jmp isr_common_stub

; 61: free
global isr61
isr61:
    cli
    push 0
    push 61
    jmp isr_common_stub

; 62: free
global isr62
isr62:
    cli
    push 0
    push 62
    jmp isr_common_stub

; 63: free
global isr63
isr63:
    cli
    push 0
    push 63
    jmp isr_common_stub

; 64: free
global isr64
isr64:
    cli
    push 0
    push 64
    jmp isr_common_stub

; 65: free
global isr65
isr65:
    cli
    push 0
    push 65
    jmp isr_common_stub

; 66: free
global isr66
isr66:
    cli
    push 0
    push 66
    jmp isr_common_stub

; 67: free
global isr67
isr67:
    cli
    push 0
    push 67
    jmp isr_common_stub

; 68: free
global isr68
isr68:
    cli
    push 0
    push 68
    jmp isr_common_stub

; 69: free
global isr69
isr69:
    cli
    push 0
    push 69
    jmp isr_common_stub

; 70: free
global isr70
isr70:
    cli
    push 0
    push 70
    jmp isr_common_stub

; 71: free
global isr71
isr71:
    cli
    push 0
    push 71
    jmp isr_common_stub

; 72: free
global isr72
isr72:
    cli
    push 0
    push 72
    jmp isr_common_stub

; 73: free
global isr73
isr73:
    cli
    push 0
    push 73
    jmp isr_common_stub

; 74: free
global isr74
isr74:
    cli
    push 0
    push 74
    jmp isr_common_stub

; 75: free
global isr75
isr75:
    cli
    push 0
    push 75
    jmp isr_common_stub

; 76: free
global isr76
isr76:
    cli
    push 0
    push 76
    jmp isr_common_stub

; 77: free
global isr77
isr77:
    cli
    push 0
    push 77
    jmp isr_common_stub

; 78: free
global isr78
isr78:
    cli
    push 0
    push 78
    jmp isr_common_stub

; 79: free
global isr79
isr79:
    cli
    push 0
    push 79
    jmp isr_common_stub

; 80: free
global isr80
isr80:
    cli
    push 0
    push 80
    jmp isr_common_stub

; 81: free
global isr81
isr81:
    cli
    push 0
    push 81
    jmp isr_common_stub

; 82: free
global isr82
isr82:
    cli
    push 0
    push 82
    jmp isr_common_stub

; 83: free
global isr83
isr83:
    cli
    push 0
    push 83
    jmp isr_common_stub

; 84: free
global isr84
isr84:
    cli
    push 0
    push 84
    jmp isr_common_stub

; 85: free
global isr85
isr85:
    cli
    push 0
    push 85
    jmp isr_common_stub

; 86: free
global isr86
isr86:
    cli
    push 0
    push 86
    jmp isr_common_stub

; 87: free
global isr87
isr87:
    cli
    push 0
    push 87
    jmp isr_common_stub

; 88: free
global isr88
isr88:
    cli
    push 0
    push 88
    jmp isr_common_stub

; 89: free
global isr89
isr89:
    cli
    push 0
    push 89
    jmp isr_common_stub

; 90: free
global isr90
isr90:
    cli
    push 0
    push 90
    jmp isr_common_stub

; 91: free
global isr91
isr91:
    cli
    push 0
    push 91
    jmp isr_common_stub

; 92: free
global isr92
isr92:
    cli
    push 0
    push 92
    jmp isr_common_stub

; 93: free
global isr93
isr93:
    cli
    push 0
    push 93
    jmp isr_common_stub

; 94: free
global isr94
isr94:
    cli
    push 0
    push 94
    jmp isr_common_stub

; 95: free
global isr95
isr95:
    cli
    push 0
    push 95
    jmp isr_common_stub

; 96: free
global isr96
isr96:
    cli
    push 0
    push 96
    jmp isr_common_stub

; 97: free
global isr97
isr97:
    cli
    push 0
    push 97
    jmp isr_common_stub

; 98: free
global isr98
isr98:
    cli
    push 0
    push 98
    jmp isr_common_stub

; 99: free
global isr99
isr99:
    cli
    push 0
    push 99
    jmp isr_common_stub

; 100: free
global isr100
isr100:
    cli
    push 0
    push 100
    jmp isr_common_stub

; 101: free
global isr101
isr101:
    cli
    push 0
    push 101
    jmp isr_common_stub

; 102: free
global isr102
isr102:
    cli
    push 0
    push 102
    jmp isr_common_stub

; 103: free
global isr103
isr103:
    cli
    push 0
    push 103
    jmp isr_common_stub

; 104: free
global isr104
isr104:
    cli
    push 0
    push 104
    jmp isr_common_stub

; 105: free
global isr105
isr105:
    cli
    push 0
    push 105
    jmp isr_common_stub

; 106: free
global isr106
isr106:
    cli
    push 0
    push 106
    jmp isr_common_stub

; 107: free
global isr107
isr107:
    cli
    push 0
    push 107
    jmp isr_common_stub

; 108: free
global isr108
isr108:
    cli
    push 0
    push 108
    jmp isr_common_stub

; 109: free
global isr109
isr109:
    cli
    push 0
    push 109
    jmp isr_common_stub

; 110: free
global isr110
isr110:
    cli
    push 0
    push 110
    jmp isr_common_stub

; 111: free
global isr111
isr111:
    cli
    push 0
    push 111
    jmp isr_common_stub

; 112: free
global isr112
isr112:
    cli
    push 0
    push 112
    jmp isr_common_stub

; 113: free
global isr113
isr113:
    cli
    push 0
    push 113
    jmp isr_common_stub

; 114: free
global isr114
isr114:
    cli
    push 0
    push 114
    jmp isr_common_stub

; 115: free
global isr115
isr115:
    cli
    push 0
    push 115
    jmp isr_common_stub

; 116: free
global isr116
isr116:
    cli
    push 0
    push 116
    jmp isr_common_stub

; 117: free
global isr117
isr117:
    cli
    push 0
    push 117
    jmp isr_common_stub

; 118: free
global isr118
isr118:
    cli
    push 0
    push 118
    jmp isr_common_stub

; 119: free
global isr119
isr119:
    cli
    push 0
    push 119
    jmp isr_common_stub

; 120: free
global isr120
isr120:
    cli
    push 0
    push 120
    jmp isr_common_stub

; 121: free
global isr121
isr121:
    cli
    push 0
    push 121
    jmp isr_common_stub

; 122: free
global isr122
isr122:
    cli
    push 0
    push 122
    jmp isr_common_stub

; 123: free
global isr123
isr123:
    cli
    push 0
    push 123
    jmp isr_common_stub

; 124: free
global isr124
isr124:
    cli
    push 0
    push 124
    jmp isr_common_stub

; 125: free
global isr125
isr125:
    cli
    push 0
    push 125
    jmp isr_common_stub

; 126: free
global isr126
isr126:
    cli
    push 0
    push 126
    jmp isr_common_stub

; 127: free
global isr127
isr127:
    cli
    push 0
    push 127
    jmp isr_common_stub

; 128: free
global isr128
isr128:
    cli
    push 0
    push 128
    jmp isr_common_stub

; 129: free
global isr129
isr129:
    cli
    push 0
    push 129
    jmp isr_common_stub

; 130: free
global isr130
isr130:
    cli
    push 0
    push 130
    jmp isr_common_stub

; 131: free
global isr131
isr131:
    cli
    push 0
    push 131
    jmp isr_common_stub

; 132: free
global isr132
isr132:
    cli
    push 0
    push 132
    jmp isr_common_stub

; 133: free
global isr133
isr133:
    cli
    push 0
    push 133
    jmp isr_common_stub

; 134: free
global isr134
isr134:
    cli
    push 0
    push 134
    jmp isr_common_stub

; 135: free
global isr135
isr135:
    cli
    push 0
    push 135
    jmp isr_common_stub

; 136: free
global isr136
isr136:
    cli
    push 0
    push 136
    jmp isr_common_stub

; 137: free
global isr137
isr137:
    cli
    push 0
    push 137
    jmp isr_common_stub

; 138: free
global isr138
isr138:
    cli
    push 0
    push 138
    jmp isr_common_stub

; 139: free
global isr139
isr139:
    cli
    push 0
    push 139
    jmp isr_common_stub

; 140: free
global isr140
isr140:
    cli
    push 0
    push 140
    jmp isr_common_stub

; 141: free
global isr141
isr141:
    cli
    push 0
    push 141
    jmp isr_common_stub

; 142: free
global isr142
isr142:
    cli
    push 0
    push 142
    jmp isr_common_stub

; 143: free
global isr143
isr143:
    cli
    push 0
    push 143
    jmp isr_common_stub

; 144: free
global isr144
isr144:
    cli
    push 0
    push 144
    jmp isr_common_stub

; 145: free
global isr145
isr145:
    cli
    push 0
    push 145
    jmp isr_common_stub

; 146: free
global isr146
isr146:
    cli
    push 0
    push 146
    jmp isr_common_stub

; 147: free
global isr147
isr147:
    cli
    push 0
    push 147
    jmp isr_common_stub

; 148: free
global isr148
isr148:
    cli
    push 0
    push 148
    jmp isr_common_stub

; 149: free
global isr149
isr149:
    cli
    push 0
    push 149
    jmp isr_common_stub

; 150: free
global isr150
isr150:
    cli
    push 0
    push 150
    jmp isr_common_stub

; 151: free
global isr151
isr151:
    cli
    push 0
    push 151
    jmp isr_common_stub

; 152: free
global isr152
isr152:
    cli
    push 0
    push 152
    jmp isr_common_stub

; 153: free
global isr153
isr153:
    cli
    push 0
    push 153
    jmp isr_common_stub

; 154: free
global isr154
isr154:
    cli
    push 0
    push 154
    jmp isr_common_stub

; 155: free
global isr155
isr155:
    cli
    push 0
    push 155
    jmp isr_common_stub

; 156: free
global isr156
isr156:
    cli
    push 0
    push 156
    jmp isr_common_stub

; 157: free
global isr157
isr157:
    cli
    push 0
    push 157
    jmp isr_common_stub

; 158: free
global isr158
isr158:
    cli
    push 0
    push 158
    jmp isr_common_stub

; 159: free
global isr159
isr159:
    cli
    push 0
    push 159
    jmp isr_common_stub

; 160: free
global isr160
isr160:
    cli
    push 0
    push 160
    jmp isr_common_stub

; 161: free
global isr161
isr161:
    cli
    push 0
    push 161
    jmp isr_common_stub

; 162: free
global isr162
isr162:
    cli
    push 0
    push 162
    jmp isr_common_stub

; 163: free
global isr163
isr163:
    cli
    push 0
    push 163
    jmp isr_common_stub

; 164: free
global isr164
isr164:
    cli
    push 0
    push 164
    jmp isr_common_stub

; 165: free
global isr165
isr165:
    cli
    push 0
    push 165
    jmp isr_common_stub

; 166: free
global isr166
isr166:
    cli
    push 0
    push 166
    jmp isr_common_stub

; 167: free
global isr167
isr167:
    cli
    push 0
    push 167
    jmp isr_common_stub

; 168: free
global isr168
isr168:
    cli
    push 0
    push 168
    jmp isr_common_stub

; 169: free
global isr169
isr169:
    cli
    push 0
    push 169
    jmp isr_common_stub

; 170: free
global isr170
isr170:
    cli
    push 0
    push 170
    jmp isr_common_stub

; 171: free
global isr171
isr171:
    cli
    push 0
    push 171
    jmp isr_common_stub

; 172: free
global isr172
isr172:
    cli
    push 0
    push 172
    jmp isr_common_stub

; 173: free
global isr173
isr173:
    cli
    push 0
    push 173
    jmp isr_common_stub

; 174: free
global isr174
isr174:
    cli
    push 0
    push 174
    jmp isr_common_stub

; 175: free
global isr175
isr175:
    cli
    push 0
    push 175
    jmp isr_common_stub

; 176: free
global isr176
isr176:
    cli
    push 0
    push 176
    jmp isr_common_stub

; 177: free
global isr177
isr177:
    cli
    push 0
    push 177
    jmp isr_common_stub

; 178: free
global isr178
isr178:
    cli
    push 0
    push 178
    jmp isr_common_stub

; 179: free
global isr179
isr179:
    cli
    push 0
    push 179
    jmp isr_common_stub

; 180: free
global isr180
isr180:
    cli
    push 0
    push 180
    jmp isr_common_stub

; 181: free
global isr181
isr181:
    cli
    push 0
    push 181
    jmp isr_common_stub

; 182: free
global isr182
isr182:
    cli
    push 0
    push 182
    jmp isr_common_stub

; 183: free
global isr183
isr183:
    cli
    push 0
    push 183
    jmp isr_common_stub

; 184: free
global isr184
isr184:
    cli
    push 0
    push 184
    jmp isr_common_stub

; 185: free
global isr185
isr185:
    cli
    push 0
    push 185
    jmp isr_common_stub

; 186: free
global isr186
isr186:
    cli
    push 0
    push 186
    jmp isr_common_stub

; 187: free
global isr187
isr187:
    cli
    push 0
    push 187
    jmp isr_common_stub

; 188: free
global isr188
isr188:
    cli
    push 0
    push 188
    jmp isr_common_stub

; 189: free
global isr189
isr189:
    cli
    push 0
    push 189
    jmp isr_common_stub

; 190: free
global isr190
isr190:
    cli
    push 0
    push 190
    jmp isr_common_stub

; 191: free
global isr191
isr191:
    cli
    push 0
    push 191
    jmp isr_common_stub

; 192: free
global isr192
isr192:
    cli
    push 0
    push 192
    jmp isr_common_stub

; 193: free
global isr193
isr193:
    cli
    push 0
    push 193
    jmp isr_common_stub

; 194: free
global isr194
isr194:
    cli
    push 0
    push 194
    jmp isr_common_stub

; 195: free
global isr195
isr195:
    cli
    push 0
    push 195
    jmp isr_common_stub

; 196: free
global isr196
isr196:
    cli
    push 0
    push 196
    jmp isr_common_stub

; 197: free
global isr197
isr197:
    cli
    push 0
    push 197
    jmp isr_common_stub

; 198: free
global isr198
isr198:
    cli
    push 0
    push 198
    jmp isr_common_stub

; 199: free
global isr199
isr199:
    cli
    push 0
    push 199
    jmp isr_common_stub

; 200: free
global isr200
isr200:
    cli
    push 0
    push 200
    jmp isr_common_stub

; 201: free
global isr201
isr201:
    cli
    push 0
    push 201
    jmp isr_common_stub

; 202: free
global isr202
isr202:
    cli
    push 0
    push 202
    jmp isr_common_stub

; 203: free
global isr203
isr203:
    cli
    push 0
    push 203
    jmp isr_common_stub

; 204: free
global isr204
isr204:
    cli
    push 0
    push 204
    jmp isr_common_stub

; 205: free
global isr205
isr205:
    cli
    push 0
    push 205
    jmp isr_common_stub

; 206: free
global isr206
isr206:
    cli
    push 0
    push 206
    jmp isr_common_stub

; 207: free
global isr207
isr207:
    cli
    push 0
    push 207
    jmp isr_common_stub

; 208: free
global isr208
isr208:
    cli
    push 0
    push 208
    jmp isr_common_stub

; 209: free
global isr209
isr209:
    cli
    push 0
    push 209
    jmp isr_common_stub

; 210: free
global isr210
isr210:
    cli
    push 0
    push 210
    jmp isr_common_stub

; 211: free
global isr211
isr211:
    cli
    push 0
    push 211
    jmp isr_common_stub

; 212: free
global isr212
isr212:
    cli
    push 0
    push 212
    jmp isr_common_stub

; 213: free
global isr213
isr213:
    cli
    push 0
    push 213
    jmp isr_common_stub

; 214: free
global isr214
isr214:
    cli
    push 0
    push 214
    jmp isr_common_stub

; 215: free
global isr215
isr215:
    cli
    push 0
    push 215
    jmp isr_common_stub

; 216: free
global isr216
isr216:
    cli
    push 0
    push 216
    jmp isr_common_stub

; 217: free
global isr217
isr217:
    cli
    push 0
    push 217
    jmp isr_common_stub

; 218: free
global isr218
isr218:
    cli
    push 0
    push 218
    jmp isr_common_stub

; 219: free
global isr219
isr219:
    cli
    push 0
    push 219
    jmp isr_common_stub

; 220: free
global isr220
isr220:
    cli
    push 0
    push 220
    jmp isr_common_stub

; 221: free
global isr221
isr221:
    cli
    push 0
    push 221
    jmp isr_common_stub

; 222: free
global isr222
isr222:
    cli
    push 0
    push 222
    jmp isr_common_stub

; 223: free
global isr223
isr223:
    cli
    push 0
    push 223
    jmp isr_common_stub

; 224: free
global isr224
isr224:
    cli
    push 0
    push 224
    jmp isr_common_stub

; 225: free
global isr225
isr225:
    cli
    push 0
    push 225
    jmp isr_common_stub

; 226: free
global isr226
isr226:
    cli
    push 0
    push 226
    jmp isr_common_stub

; 227: free
global isr227
isr227:
    cli
    push 0
    push 227
    jmp isr_common_stub

; 228: free
global isr228
isr228:
    cli
    push 0
    push 228
    jmp isr_common_stub

; 229: free
global isr229
isr229:
    cli
    push 0
    push 229
    jmp isr_common_stub

; 230: free
global isr230
isr230:
    cli
    push 0
    push 230
    jmp isr_common_stub

; 231: free
global isr231
isr231:
    cli
    push 0
    push 231
    jmp isr_common_stub

; 232: free
global isr232
isr232:
    cli
    push 0
    push 232
    jmp isr_common_stub

; 233: free
global isr233
isr233:
    cli
    push 0
    push 233
    jmp isr_common_stub

; 234: free
global isr234
isr234:
    cli
    push 0
    push 234
    jmp isr_common_stub

; 235: free
global isr235
isr235:
    cli
    push 0
    push 235
    jmp isr_common_stub

; 236: free
global isr236
isr236:
    cli
    push 0
    push 236
    jmp isr_common_stub

; 237: free
global isr237
isr237:
    cli
    push 0
    push 237
    jmp isr_common_stub

; 238: free
global isr238
isr238:
    cli
    push 0
    push 238
    jmp isr_common_stub

; 239: free
global isr239
isr239:
    cli
    push 0
    push 239
    jmp isr_common_stub

; 240: free
global isr240
isr240:
    cli
    push 0
    push 240
    jmp isr_common_stub

; 241: free
global isr241
isr241:
    cli
    push 0
    push 241
    jmp isr_common_stub

; 242: free
global isr242
isr242:
    cli
    push 0
    push 242
    jmp isr_common_stub

; 243: free
global isr243
isr243:
    cli
    push 0
    push 243
    jmp isr_common_stub

; 244: free
global isr244
isr244:
    cli
    push 0
    push 244
    jmp isr_common_stub

; 245: free
global isr245
isr245:
    cli
    push 0
    push 245
    jmp isr_common_stub

; 246: free
global isr246
isr246:
    cli
    push 0
    push 246
    jmp isr_common_stub

; 247: free
global isr247
isr247:
    cli
    push 0
    push 247
    jmp isr_common_stub

; 248: free
global isr248
isr248:
    cli
    push 0
    push 248
    jmp isr_common_stub

; 249: free
global isr249
isr249:
    cli
    push 0
    push 249
    jmp isr_common_stub

; 250: free
global isr250
isr250:
    cli
    push 0
    push 250
    jmp isr_common_stub

; 251: free
global isr251
isr251:
    cli
    push 0
    push 251
    jmp isr_common_stub

; 252: free
global isr252
isr252:
    cli
    push 0
    push 252
    jmp isr_common_stub

; 253: free
global isr253
isr253:
    cli
    push 0
    push 253
    jmp isr_common_stub

; 254: free
global isr254
isr254:
    cli
    push 0
    push 254
    jmp isr_common_stub

; 255: free
global isr255
isr255:
    cli
    push 0
    push 255
    jmp isr_common_stub
