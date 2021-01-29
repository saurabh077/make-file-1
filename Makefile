#this will execute the program 
OBJ=obj
BIN=bin

BINS=\
	$(BIN)/hello_world_main \
	$(BIN)/hello_world_main2 \
	$(BIN)/hello_world_main3

OBJS=\
	$(OBJ)/hello-world.o

all: make_dirs $(OBJS) $(BIN)

make_dirs:
	@echo "----------------------------"
	@echo "CREATING REQUIRED DIRECTORIES"
	@echo "----------------------------"
	mkdir -p $(BIN)
	mkdir -p $(OBJ)

$(OBJ)/%: *.c
	@echo "-----------------------------"
	@echo "BULDING $@ from $<"
	@echo "-----------------------------"
	gcc -c $< -o $@

$(BIN)/%: %.c $(OBJ)/hello-world.o
	@echo "-----------------------------"
	@echo "BUILDING $@ from $<"
	@echo "-----------------------------"
	gcc $^ -o $@
	@echo "***$@ BUILD COMPLETE***"
	@echo "-----------------------------"
	
clean: 
	@echo "------------------------------------"
	@echo "CLEANING $(BIN)"
	@echo "------------------------------------"
	rm -f $(BINS)
	@echo "------------------------------------"
	@echo "CLEAN $(BIN) COMPLETE"
	@echo "------------------------------------"

clobber:
	@echo "------------------------------------"
	@echo "REMOVING DIRECTORIES"
	@echo "------------------------------------"
	rm -rf $(BIN)
	@echo "------------------------------------"
	@echo "CLOBBER COMPLETE"
	@echo "------------------------------------"

