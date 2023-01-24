.PHONY: test check

build:
	dune build

utop:
	OCAMLRUNPARAM=b dune utop src

test:
	OCAMLRUNPARAM=b dune exec test/test.exe

play:
	OCAMLRUNPARAM=b dune exec bin/main.exe

check:
	@bash check.sh

finalcheck:
	@bash check.sh final

zip:
	rm -f Con4.zip
	zip -r Con4.zip . -x@exclude.lst

clean:
	dune clean
	rm -f Con4.zip

doc:
	dune build @doc
