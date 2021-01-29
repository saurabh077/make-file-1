#this will execute the program 
OBJ=obj

OBJS=\
	$(OBJ)/hello_world_main \
	$(OBJ)/hello_world_main2 \
	$(OBJ)/hello_world_main3

all: make_dirs $(OBJS) 

#hello: 
#	gcc $< hello-world -o $@

make_dirs:
	@echo "----------------------------"
	@echo "CREATING REQUIRED DIRECTORIES"
	@echo "----------------------------"
	mkdir -p $(OBJ)

$(OBJ)/%: %.c 
	@echo "------------------------------------"
	@echo "BUILDING $@ from $<"
	@echo "------------------------------------"
	gcc  $< hello-world.c -o $@ 
	@echo "------------------------------------"
	@echo "*** $@ BUILD COMPLETE ***"
	@echo "------------------------------------"
	
	
clean: 
	@echo "------------------------------------"
	@echo "CLEANING $(OBJ)"
	@echo "------------------------------------"
	rm -f $(OBJS)
	@echo "------------------------------------"
	@echo "CLEAN $(OBJ) COMPLETE"
	@echo "------------------------------------"

clobber:
	@echo "------------------------------------"
	@echo "REMOVING DIRECTORIES"
	@echo "------------------------------------"
	rm -rf $(OBJ)
	@echo "------------------------------------"
	@echo "CLOBBER COMPLETE"
	@echo "------------------------------------"

