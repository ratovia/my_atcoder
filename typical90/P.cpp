#include <bits/stdc++.h>
using namespace std;
#define rep(i, n) for (int i = 0; i < (int)(n); i++)
#define rep2(i, s, n) for (int i = (s); i < (int)(n); i++)

int main() {
  long long n;
  cin >> n;
  long long a,b,c;
  cin >> a >> b >> c;
  int L = 9999;
  long long ans = (1LL << 30);

  rep(i,L+1) {
    rep(j,L+1-i) {
      long long v = n - 1LL * i * a - 1LL * j * b;
      long long r = 1LL * i + 1LL * j + v/c;
      if (v % c != 0LL || v < 0 || r > 9999LL) continue;
      ans = min(ans, r);
    }
  }  
  cout << ans << endl;
}