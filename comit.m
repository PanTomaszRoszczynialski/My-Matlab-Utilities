function comit(msg)
s_add = '!git add --all';
eval(s_add);

s_commit = ['!git commit -m "' msg '"'];
eval(s_commit);
