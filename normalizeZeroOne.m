function out = normalizeZeroOne(in)
out = in - min(in);
out = out/max(out);