#this will execute the program 
OBJ=obj

OBJS=\
	$(OBJ) \
	$(OBJ)/hello-world \
	$(OBJ)/hello-world2 \
	$(OBJ)/hello-world3

all: 	$(OBJS)

$(OBJ):
	mkdir -p $@

$(OBJ)/%: %.c
	gcc $< -o $@

clean: 
	rm -rf $(OBJS)
	

