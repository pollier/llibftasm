; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_bzero.s                                         :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: pollier <pollier@student.42.fr>            +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/05/31 16:38:51 by pollier           #+#    #+#              ;
;    Updated: 2015/05/31 19:38:45 by pollier          ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

global _ft_bzero
section .text

_ft_bzero:

	mov rcx, rsi
	jmp comp

comp:
	cmp rcx, 0
	je end
	jg set

set:

mov byte [rdi], 0
inc rdi
dec rcx
jmp comp

end:
	ret
