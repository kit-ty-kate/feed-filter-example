all:
	ocamlbuild -use-ocamlfind -classic-display feedfilter.native

clean:
	ocamlbuild -clean

.PHONY: all clean
