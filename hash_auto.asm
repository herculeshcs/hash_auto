;este arquivo sera composto por 2 funções  a para_linha  e a para_coluna
;prototipo em c de para_linha-> int * para_linha (int *matriz,int i)
;prototipo em c de para_coluna-> int * para_coluna(int *matriz,int i)
; para_linha devolve um ponteiro para o primeiro elemento da linha i na matriz
; para_coluna devolve um ponteiro para a posição i da linha apontada por matriz 
; ou seja  o um ponteiro para o elemento que esta na linha apontada por matriz e esta na coluna i
;para_vetorem c para_vetor -> int * para_vetor(int *vetor ,int i)
global para_linha
global para_coluna
global	para_vetor
section .data
size dd 4

section .text

para_linha:
  push	ebp
  mov	ebp,esp
  push	esi
  push	edi
  mov	esi,dword [ebp+8]
  mov	edi,dword [ebp+12]
  mov	eax,dword 94
  mul	edi
  mul	dword [size]
  add	eax,esi
  pop	edi
  pop	esi
  pop	ebp
  ret

  
para_coluna:
  push	ebp
  mov	ebp,esp
  push	esi
  push	edi
  mov	esi,dword[ebp+8]	
  mov	edi,dword[ebp+12]
  mov	eax,dword[size]
  sub	edi, 32
  mul	edi
  add	eax,esi
  pop	edi
  pop	esi
  pop	ebp
  ret
para_vetor:
push	ebp
mov	ebp,esp
push	esi
push	edi
push	ebx
push	edx
mov	ebx,[esp+8]
mov	eax,[esp+12]
mul	dword [size]
add	eax,ebx
pop	edx
pop	ebx
pop	edi
pop	esi
pop	ebp
ret