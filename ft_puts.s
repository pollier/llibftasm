; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_puts.s                                          :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: pollier <pollier@student.42.fr>            +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/06/01 18:15:52 by pollier           #+#    #+#              ;
;    Updated: 2015/06/03 01:10:55 by pollier          ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

global _ft_puts
section .text

_ft_puts:

	push rdi

comp:

	mov rcx, 0
	cmp byte [rdi], 0
	jne parse

go:

	mov rax, 4
	mov rbx, 1
	pop r8
	push rcx
	mov rcx, r8

parse:

	inc rdi
	inc rcx
	jmp comp

end:
	mov rax, 1
	ret
