#include <bits/stdc++.h>
using namespace std;
#define rep(i, n) for (int i = 0; i < (int)(n); i++)
#define rep2(i, s, n) for (int i = (s); i < (int)(n); i++)

long long mod = 1000000007;

int main() {
  int n;
  cin >> n;
  vector<long long> A(n), Q(n);

  rep(i, n) {
    cin >> A.at(i);
  }
  sort(A.begin(), A.end());

  rep(i,n) {
    if(i) {
      Q.at(i) = A.at(i) - A.at(i-1) + 1;
    } else {
      Q.at(i) = A.at(i) - 0 + 1;
    }
  }

  long long ans = 1;
  rep(i,n) {
    ans *= Q[i];
    ans %= mod;
  }
  cout << ans << endl;
  return 0;
}