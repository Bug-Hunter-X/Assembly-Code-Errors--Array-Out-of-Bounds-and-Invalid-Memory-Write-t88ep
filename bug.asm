mov eax, [ebx+ecx*4] ; This line assumes that ecx is a valid index into an array located at ebx.  If ecx is too large or negative, it will cause an access violation.

mov [eax], 10 ; This line attempts to write the value 10 to the memory address stored in eax. If eax points to read-only memory or an invalid memory location, it will also cause a segmentation fault.