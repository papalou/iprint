i:
	@echo -= Build =-
	gcc i.c -o i

clean:
	@echo -= Clean =-
	rm -f i

install: i i.1
	@echo -= Install =-
	install ./i /usr/bin
	install -D -m644 ./i.1 /usr/share/man/man1/i.1
	ln -s i.1 /usr/share/man/man1/iprint.1
