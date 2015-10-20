; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isalnum.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: pollier <pollier@student.42.fr>            +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/05/31 15:51:29 by pollier           #+#    #+#              ;
;    Updated: 2015/10/20 15:46:49 by pollier          ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

extern	_ft_isalpha
extern	_ft_isdigit

global	_ft_isalnum
section	.text

_ft_isalnum:

	call	_ft_isalpha
	cmp		rax, 0
	jg		true
	call	_ft_isdigit

true:

	ret
