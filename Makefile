##
## EPITECH PROJECT, 2021
## Makefile
## File description:
## Makefile
##

NAME			=	wolfram

NAME_CREATE		=	wolfram-exe

all:
		@stack build --system-ghc
		@stack install --local-bin-path	. --system-ghc
		@mv $(NAME_CREATE) $(NAME)
clean:
		@stack clean
fclean:	clean
		$(RM) $(NAME_CREATE) $(NAME)

re:		fclean all

.PHONY:	all clean fclean re
