function comit(msg)
% comit(msg) - msg must be valid matlab string
% take time to figure vnargins out pls;

s_add = '!git add --all';
eval(s_add);

s_commit = ['!git commit -m "' msg '"'];
eval(s_commit);
