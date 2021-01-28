#this will execute the program 
OBJ=obj

all: 	$(OBJ) $(OBJ)/hello-world $(OBJ)/hello-world2

$(OBJ):
	mkdir -p $@

$(OBJ)/hello-world: hello-world.c
	gcc $< -o $@

$(OBJ)/hello-world2: hello-world2.c
	gcc $< -o $@
	
clean: 
	rm -f $(OBJ)/hello-world
	rm -f $(OBJ)/hello-world2
	
clobber: 
	rm -rf $(OBJ)
