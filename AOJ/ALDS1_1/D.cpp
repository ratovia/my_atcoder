// #include <bits/stdc++.h>
// using namespace std;
// #define rep(i, n) for (int i = 0; i < (int)(n); i++)
// #define rep2(i, s, n) for (int i = (s); i < (int)(n); i++)

// int main() {
//   int n;
//   cin >> n;
//   int minv;
//   int maxv = -2000000000;

//   rep(i,n) {
//     int cur;
//     cin >> cur;
//     maxv = max(maxv, cur - minv);
//     minv = min(minv, cur);
//   }

//   cout << maxv << endl;
//   return 0;
// }

// #include<iostream>
// #include<algorithm>
#include <bits/stdc++.h>
using namespace std;
#define rep(i, n) for (int i = 0; i < (int)(n); i++)
#define rep2(i, s, n) for (int i = (s); i < (int)(n); i++)

using namespace std;
static const int MAX = 200000;

int main() {
  int R[MAX], n;

  cin >>  n;
  for (int i = 0; i < n; i++ ) cin >> R[i];

  int maxv = -2000000000;
  int minv = R[0];

  for(int i = 1; i < n; i++ ) {
    maxv = max(maxv, R[i] - minv);
    minv = min(minv, R[i]);
  }

  cout << maxv << endl;

  return 0;
}