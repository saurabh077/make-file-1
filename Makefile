#this will execute the program 
OBJ=obj

OBJS=\
	$(OBJ) $(OBJ)/hello-world \
	$(OBJ)/hello-world2 $(OBJ)/hello-world3

all: 	$(OBJS)

$(OBJ):
	mkdir -p $@

$(OBJ)/hello-world: hello-world.c
	gcc $< -o $@

$(OBJ)/hello-world2: hello-world2.c
	gcc $< -o $@

$(OBJ)/hello-world3: hello-world3.c
	gcc $< -o $@
	
clean: 
	rm -f $(OBJS)
	

