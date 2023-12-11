all:
	javac P4.java
	java P4 < P.microIR > P.miniRA
	java -jar kgi.jar < P.miniRA

clean:
	rm *.class
	rm visitor/*.class
	rm syntaxtree/*.class