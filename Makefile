#this will execute the program 
OBJ=obj

all: 
	mkdir -p $(OBJ) 
	gcc hello-world2.c -o $(OBJ)/hello-world
	
clean: 
	rm -f $(OBJ)/hello-world
	
clobber: 
	rm -rf $(OBJ)
