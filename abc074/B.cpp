#include <bits/stdc++.h>
using namespace std;
#define rep(i, n) for (int i = 0; i < (int)(n); i++)
#define rep2(i, s, n) for (int i = (s); i < (int)(n); i++)

int main() {
  int n,k;
  cin >> n >> k;
  int dis = 0;
  rep(i,n) {
    int x;
    cin >> x;
    if (x < abs(k - x)) {
      // Aを起動
      dis += x * 2;
    } else {
      // Bを起動
      dis += (k - x) * 2;
    }
  }
  
  cout << dis << endl;
}