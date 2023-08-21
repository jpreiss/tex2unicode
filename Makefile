tex2uni: tex2uni.c
	gcc -o tex2uni tex2uni.c

 # We need delete-then-copy to avoid some annoying issue with Macs
install: tex2uni
	chmod +x tex2uni
	rm /usr/local/bin/tex2uni
	cp tex2uni /usr/local/bin

uninstall:
	rm /usr/local/bin/tex2uni

clean:
	rm tex2uni
