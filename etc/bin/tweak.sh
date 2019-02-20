a=($( ls -ld .))
u=${a[2]}
g=${a[3]}
read -p "chown -R $u.$g $PWD ? [Y]" yn
echo chown -R $u.$g .
chown -R $u.$g .
echo "find . -type d | xargs chmod 750"
find . -type d -print0 | xargs -0 chmod 750
echo "find . -type f | xargs chmod 740"
find . -type f -print0 | xargs -0 chmod 740
