GNAT:=gnatmake
FLAGS:=-gnatwa -gnat2022
.PHONY: all test clean
all:
	mkdir -p obj bin
	$(GNAT) $(FLAGS) -Ptopic.gpr
test: all
	@bin/tests
clean:
	rm -rf obj bin
