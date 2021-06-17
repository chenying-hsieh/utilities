OFILE=ctags.files
FILES=
IGNORE=

if [ -z "$*" ]; then
  DIRS="."
else
  DIRS="$*"
fi

echo "Reset $OFILE"
touch "$OFILE"
truncate -s 0 $OFILE

echo "Find files in directories: $DIRS"
for DIR in $DIRS; do
  find $DIR -type f | grep ".cpp$" >> $OFILE
  find $DIR -type f | grep ".c$" >> $OFILE
  find $DIR -type f | grep ".hpp$" >> $OFILE
  find $DIR -type f | grep ".h$" >> $OFILE
done

for FILE in $FILES; do
  echo $FILE >> $OFILE
done

echo "Build tags"
ctags -R \
    --sort=yes \
    --languages="c++,c" \
    --language-force=C++ \
    --exclude=*.java \
    --fields=+iaS \
    --extras=+q \
    --c++-kinds=+p \
    -L $OFILE \
    -o tags
