OBJ=obj
BIN=bin

BINS = \
	$(BIN)/hello_world_main \
	$(BIN)/hello_world_main2 \
	$(BIN)/hello_world_main3 

OBJS = \
	$(OBJ)/hello-world.o

all: make_dirs $(BINS)

make_dirs:
	@echo "------------------------------------"
	@echo "CREATING REQUIRED DIRECTORIES"
	@echo "------------------------------------"
	mkdir -p $(BIN)
	mkdir -p $(OBJ)
	@echo "------------------------------------"
	@echo "REQUIRED DIRECTORIES CREATED"
	@echo "------------------------------------"

$(OBJ)/%: *.c 
	@echo "------------------------------------"
	@echo "BUILDING $@ from $<"
	@echo "------------------------------------"
	gcc  -c $< -o $@
	@echo "***$@ BUILD COMPLETE***"
	@echo "------------------------------------"
	
$(BIN)/%: %.c $(OBJ)/hello-world.o
	@echo "------------------------------------"
	@echo "BUILDING $@ from $<"
	@echo "------------------------------------"
	gcc $^ -o $@
	@echo "------------------------------------"
	@echo "***$@ BUILD COMPLETE***"
	@echo "------------------------------------"

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

