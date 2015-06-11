; **************************************************************************** ;
;		                                                                 ;
;                                                         :::      ::::::::    ;
;    ft_puts.s                                          :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: pollier <pollier@student.42.fr>            +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/06/01 18:15:52 by pollier           #+#    #+#              ;
;    Updated: 2015/06/03 01:10:55 by pollier          ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

extern _ft_strlen

global _ft_puts
section .text

_ft_puts:
	
	push rdi
	call _ft_strlen
	push rax
	mov rax, 4              ; System call write = 4
	mov rbx, 1              ; Write to standard out = 1
	pop rdx		             ; The size to write
	pop rcx    ; The address of hello_world string
	syscall                 ; Invoke the kernel
	ret