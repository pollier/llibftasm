; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_puts.s                                          :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: pollier <pollier@student.42.fr>            +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/06/01 18:15:52 by pollier           #+#    #+#              ;
;    Updated: 2015/06/01 19:16:32 by pollier          ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

global _ft_puts
section .text

_ft_puts:

	push rdi

comp:

	cmp byte [rdi], 0
	jne parse

trail:

	mov al, byte [rsi]
	mov byte [rdi], al
	cmp byte [rdi], 0
	je end

parse2:

	inc rdi
	inc rsi
	jmp trail

parse:

	inc rdi
	jmp comp

end:
	pop rax
	ret
