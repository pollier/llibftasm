; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strcat.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: pollier <pollier@student.42.fr>            +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/05/31 19:35:56 by pollier           #+#    #+#              ;
;    Updated: 2015/05/31 20:29:28 by pollier          ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

global _ft_strcat
section .text

_ft_strcat:

	push rdi
	jmp comp

comp:

	cmp byte[rdi], '\0'
	jne parse
	jmp trail

trail:

	mov byte[rdi], byte[rsi]
	cmp byte[rdi], '\0'
	je end
	jmp parse2

parse:

	inc rdi
	jmp comp

parse2:

	inc rdi
	inc rsi
	jmp trail

end:
	pop rax
	ret
