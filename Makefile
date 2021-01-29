#this will execute the program 
OBJ=obj

OBJS=\
	$(OBJ)/hello-world \
	$(OBJ)/hello-world2 \
	$(OBJ)/hello-world3

all: make_dirs $(OBJS)

make_dirs:
	@echo "----------------------------"
	@echo "CREATING REQUIRED DIRECTORIES"
	@echo "----------------------------"
	mkdir -p $(OBJ)

$(OBJ)/%: %.c
	@echo "------------------------------------"
	@echo "BUILDING $@ from $<"
	@echo "------------------------------------"
	gcc $< -o $@
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

