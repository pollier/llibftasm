; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_cat.s                                           :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: pollier <pollier@student.42.fr>            +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/05/31 16:38:51 by pollier           #+#    #+#              ;
;    Updated: 2015/05/31 19:34:48 by pollier          ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

%define	WRITE				4
%define	STDOUT				1
%define	BUFF_SIZE			1
%define	MACH_SYSCALL(nb)	0x2000000 | nb

global _ft_cat
section .text

_ft_cat:
	
	
	ret
