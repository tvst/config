function ranger-cd

  set tempfile '/tmp/chosendir'
  /usr/bin/ranger --choosedir=$tempfile (pwd)

  if test -f $tempfile -a (cat $tempfile) != (echo -n (pwd))
    cd (cat $tempfile)
  end

  rm -f $tempfile

end
