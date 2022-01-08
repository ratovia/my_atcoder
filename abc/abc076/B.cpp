#include <bits/stdc++.h>
using namespace std;
#define rep(i, n) for (int i = 0; i < (int)(n); i++)
#define rep2(i, s, n) for (int i = (s); i < (int)(n); i++)

int main() {
  int n,k;
  cin >> n >> k;
  int res = 1;
  rep(i,n) {
    int res_A, res_B;
    res_A = res * 2;
    res_B = res + k;

    res = min(res_A, res_B);
  }

  cout << res << endl;
}