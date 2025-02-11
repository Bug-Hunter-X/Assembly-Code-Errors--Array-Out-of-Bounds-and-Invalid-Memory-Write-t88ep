section .data
array dd 10, 20, 30, 40, 50
arraySize equ $-array ; Calculate the size of the array

section .text
global _start

_start:
    ; Get index from user input (replace with actual input method)
    mov ecx, 2 ; Example index

    ; Check for valid index
    cmp ecx, arraySize
    jge error_handler ; Index out of bounds
    cmp ecx, 0
    jl error_handler ; Negative index

    mov eax, array
    add eax, ecx*4 ; Calculate correct address
    mov edx, 10 ; Value to write
    mov [eax], edx ; Write value only if index is valid

    ; Exit program gracefully
    mov eax, 1
    xor ebx, ebx
    int 0x80

error_handler:
    ; Handle error (e.g., print error message, exit with error code)
    mov eax, 1 ; sys_exit
    mov ebx, 1 ; exit code 1 (error)
    int 0x80 