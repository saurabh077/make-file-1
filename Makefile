OBJ=obj

OBJS=\
	$(OBJ) $(OBJ)/hello-world3

all:$(OBJS)

$(OBJ):
	mkdir -p $(OBJ)

$(OBJ)/hello-world3: hello-world3.c
	gcc $< -o $@

clean:
	rm -rf $(OBJS)

