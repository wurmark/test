#!/bin/bash

read -p 'enter name fo file : ' file

if [ -f $file ] && [ -s $file ]
  then 
      if [ -w $file ]
        then
	  echo you can modifie this file !
	  cat >> $file
	else
	  echo you have not a permision try chmod +w for the file
      fi  

else
   echo file not here
fi
