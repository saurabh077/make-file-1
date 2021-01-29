#this will execute the program 
BIN=bin

BINS=\
	$(BIN)/hello_world_main \
	$(BIN)/hello_world_main2 \
	$(BIN)/hello_world_main3

all: make_dirs $(BINS) 

make_dirs:
	@echo "----------------------------"
	@echo "CREATING REQUIRED DIRECTORIES"
	@echo "----------------------------"
	mkdir -p $(BIN)

$(BIN)/%: %.c 
	@echo "------------------------------------"
	@echo "BUILDING $@ from $<"
	@echo "------------------------------------"
	gcc  $< hello-world.c -o $@ 
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

