; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strcat.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: pollier <pollier@student.42.fr>            +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/05/31 15:51:29 by pollier           #+#    #+#              ;
;    Updated: 2015/10/20 15:47:08 by pollier          ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

global _ft_strcat
section .text

_ft_strcat:

	push rdi

first_string:

	cmp		byte [rdi], 0
	jne		repeat

add_to_string:

	mov		al, byte [rsi]
	mov		byte [rdi], al
	cmp		byte [rdi], 0
	je		end

repeat2:

	inc		rdi
	inc		rsi
	jmp		add_to_string

repeat:

	inc		rdi
	jmp		first_string

end:
	pop		rax
	ret
