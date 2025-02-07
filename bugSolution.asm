mov ecx, [array_size]
mov eax, [ebx+ecx*4]
;check array size before array access
cmp ecx, 0
je error_handler
mov edx, [array_size]
;check bounds
cmp ecx, edx
jge error_handler
mov eax, [ebx+ecx*4]
jmp end
error_handler:
;handle error
end: