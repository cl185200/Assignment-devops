#!/bin/bash
makedir(){
        echo -n "Enter the directory which you want to create : "
        read dir;
        path="/home/chetanya/Documents/bash/assign/$dir";
        if [ -d "$path" ]
            then
                echo "Hello,dir already exists.";
            else
                mkdir $dir;
                echo "Directory created !!";
        fi

}
readfile(){
        echo -n "Enter the file name which you want to read : ";
        read fname;
        path="/home/chetanya/Documents/bash/assign/$fname"
        if [ -f "$path" ]
           then
                cat $path;
                #echo "Read!!";
           else
                echo "File doesn't exist :(";
        fi

}
deletefile(){
        echo -n "Enter the file name which you want to delete : ";
        read fname;
        path="/home/chetanya/Documents/bash/assign/$fname"
        if [ -f $path  ]
           then
                rm $path
                echo "File deleted!!";
           else 
                echo "File doesn't exist";
        fi

}
appendtofile(){
        echo -n "Enter the file name on which want to append : ";
        read fname;
        path="/home/chetanya/Documents/bash/assign/$fname";
        if [ -f $path ]
           then
                echo "Enter the text you want to add in $fname :";
                read text;
                echo $text >> $path;
                echo "Successfully appended!!";
           else
                echo "File doesn't exist!";
        fi
}
renameafile(){
         echo -n "Enter the file name which you want to rename : ";
         read fname;
         echo -n "Enter the name which you want to make : ";
         read nname;
         path="/home/chetanya/Documents/bash/assign/$fname";
         npath="/home/chetanya/Documents/bash/assign/$nname";
         if [ -f $path ]
            then
                $(mv $path $npath)
                echo "Renamed successfully!!";
            else
                echo "File doesn't exists";
         fi

}
echo "Enter 1 for creating a directory";
echo "Enter 2 for reading a file";
echo "Enter 3 for deleting a file";
echo "Enter 4 for appending to a file";
echo "Enter 5 for rename a file";
echo -n "Enter input : "
read val;
case $val in
     1)
	makedir
	;;
     2)
	readfile
	;;
     3)
	deletefile
	;;
     4)
	appendtofile
	;;
     5)
	renameafile
	;;
     *)
        echo "There are no outputs for following input";
        ;;
esac
