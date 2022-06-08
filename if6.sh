#if [ $# -lt 3 ]
#  $# = number of arguements on the command line.
if (( $# == 3 ))   # if [ $# == 3 ]
# Numbers of arguements on the command line.
echo '$#:' $$
#Process number of the current process.
echo '$$:' $$
#Display the 3rd argument on the command line, from left to right
echo '$3:' $3
#Display the 10th argument on the command line, from left to right
echo '${10}:' ${10}
#Display the name of the current shell or program.
echo '$0:' $0
#Display all the arguement on the command line using * symbol.
echo '$*:' $*
#Display all the arguement on the command line using @ symbol.
echo '$@:'  $@
date
echo '$?:' $?
else
echo Please pass the 3 command line args along with script
fi
