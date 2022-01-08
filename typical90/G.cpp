#include <bits/stdc++.h>
using namespace std;
#define rep(i, n) for (int i = 0; i < (int)(n); i++)
#define rep2(i, s, n) for (int i = (s); i < (int)(n); i++)
const int INF = 1000000000;
int main() {
  int n;
  cin >> n;
  vector<int> A(n);
  rep(i,n) cin >> A.at(i);
  sort(A.begin(), A.end());
  int q;
  cin >> q;

  int B;

  rep(j,q) {
    cin >> B;
    int ans = INF;
    auto dis = upper_bound(A.begin(),A.end(), B);
    if (dis != A.end()) ans = min(ans, *dis - B);
    if (dis != A.begin()) ans = min(ans, B - *prev(dis));
    cout << ans << endl;
  }
}