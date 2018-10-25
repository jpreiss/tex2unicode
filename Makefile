tex2uni: tex2uni.c
	gcc -o tex2uni tex2uni.c

install: tex2uni
	chmod +x tex2uni
	cp tex2uni /usr/local/bin

uninstall:
	rm /usr/local/bin/tex2uni

clean:
	rm tex2uni
