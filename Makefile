#this will execute the program 
OBJ=obj

all: 
	mkdir -p $(OBJ) 
	gcc hello-world.c -o $(OBJ)/hello-world
	gcc hello-world2.c -o $(OBJ)/hello-world2
	
clean: 
	rm -f $(OBJ)/hello-world
	rm -f $(OBJ)/hello-world2
	
clobber: 
	rm -rf $(OBJ)
