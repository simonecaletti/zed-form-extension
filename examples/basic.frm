* Small FORM example for testing the Zed extension
#define N "4"

Symbols x,y,z;
CFunction f,g;
Vector p,q;
Index mu,nu;

Local F = f(x) + g(y)^2;
id x^2 = y;
if (count(y,1) > 0);
  multiply z;
endif;
.sort

Print +s F;
.end
