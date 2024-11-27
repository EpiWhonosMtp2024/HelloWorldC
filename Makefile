SRC		:= app/main.c
OBJ		:= $(SRC:.c=.o)

TARGET	:= compiled-app

all: $(TARGET)

clean:
	rm -f $(OBJ)

fclean:
	rm -f $(TARGET)

re: clean all

$(TARGET): $(OBJ)
	$(CC) -o $@ $^
