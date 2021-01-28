#this will execute the program 
OBJ=obj

OBJS=\
	$(OBJ)/hello-world \
	$(OBJ)/hello-world2 \
	$(OBJ)/hello-world3

all: make_dirs $(OBJS)

make_dirs:
	@echo "------------------------------"
	@echo "CREATING REQUIRED DIRECTORIES"
	@echo "------------------------------"
	mkdir -p $(OBJ)

$(OBJ)/%: %.c
	@echo "------------------------"
	@echo "COMPILATION IN PROGRESS"
	@echo "------------------------"
	gcc $< -o $@

clean: 
	@echo "------------------------------"
	@echo "CLEANING ALL THE OBJECT FILES"
	@echo "------------------------------"
	rm -f $(OBJS)

clobber:
	@echo "------------------------"
	@echo "DELETING THE FOLDER"
	@echo "------------------------"
     	rm -rf $(OBJ)
	

