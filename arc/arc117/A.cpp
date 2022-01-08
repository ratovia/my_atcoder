#include <bits/stdc++.h>
using namespace std;
#define rep(i, n) for (int i = 0; i < (int)(n); i++)
#define rep2(i, s, n) for (int i = (s); i < (int)(n); i++)

int main() {
  int A,B,E[1 << 18];
  cin >> A >> B;
  
  if (A >= B) {
    rep(i,A) E[i] = i + 1;
    rep2(i,A, A + B -1) E[i] = -(i - A + 1);
    rep(i,A + B - 1) E[A+B-1] -= E[i];
  } else {
    rep(i,A - 1) E[i] = i + 1;
    rep2(i,A, A + B) E[i] = -(i - A + 1);
    rep(i,A + B) {
      if(i != A - 1) {
        E[A-1] -= E[i];
      }
    }
  }
  rep(i,A+B) {
    if (i) cout << " ";
    cout << E[i];
  }
  cout << endl;
  return 0;
}