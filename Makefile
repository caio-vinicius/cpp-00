# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: csouza-f <caio@42sp.org.br>                +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/01/20 23:40:44 by csouza-f          #+#    #+#              #
#    Updated: 2022/01/25 23:25:28 by csouza-f         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = megaphone

SOURCES = ./
SOURCES_FILES = megaphone.cpp
SOURCES_FILES_FULL = $(addprefix $(SOURCES)/,$(SOURCES_FILES))

OBJECTS = ./objects
OBJECTS_FILES = $(patsubst $(SOURCES)/%.cpp,$(OBJECTS)/%.o,$(SOURCES_FILES_FULL))

CCFLAGS = -Wall -Wextra -Werror -std=c++98 -pedantic-errors

all: $(NAME)

$(NAME): $(OBJECTS_FILES)
	g++ $^ -o $@

$(OBJECTS)/%.o: $(SOURCES)/%.cpp
	g++ $(CCFLAGS) -c $< -o $@

clean:
	rm -f $(OBJECTS_FILES)

fclean: clean
	rm -f $(NAME)

re: fclean all 
