antlr4='java -jar C:/JavaLib/antlr-4.5.2-complete.jar'
alias grun='java org.antlr.v4.runtime.misc.TestRig'
export CLASSPATH="C:/JavaLib/antlr-4.5.2-complete.jar"
export PATH=$PATH:"/cygdrive/C/Program Files/Java/jdk1.7.0_79/bin/"

# Need to manually add the grammar directory to the CLASSPATH environment variable.

#cd grammar
if [ $# -eq 0 ]; then
	$antlr4 Haskell.g4 -package hamskill.antlr
	$antlr4 ScalaOutput.g4 -package hamskill.antlr
else
	$antlr4 $1 -package hamskill.antlr
fi
javac *.java 

