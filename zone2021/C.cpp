// #include <bits/stdc++.h>
// using namespace std;
// #define rep(i, n) for (int i = 0; i < (int)(n); i++)
// #define rep2(i, s, n) for (int i = (s); i < (int)(n); i++)


// int ccmax(int a, int b, int c) {
//   int res
//   if(a > b) {
//     if (a > c) {
//       res = a
//     } else {
//       res = c
//     }
//   } else {
//     if (b > c) {
//       res = b
//     } else {
//       res = c
//     }
//   }
//   return res
// }
// int main() {
//   int n;
//   cin >> n;
//   int array[3001][5]
//   int maxarray[5]
//   rep(i,n) {
//     rep(j,5) {
//       cin >> array[i][j];
//     }
//   }

//   rep2(a,0,n-2) {
//     rep2(b,a,n-1) {
//       rep2(c,b,n) {
//         hmax = ccmax(array[a][0], array[b][0], array[c][0])
//         maxarray.push_back(hmax);
//       }
//     }
//   }

//   int min = 1000000001
//   rep(i, 5) {
//     if(min > maxarray[i]) {
//       min = maxarray[i]
//     }
//   }

//   cout << min << endl;
// }

#include <bits/stdc++.h>
using namespace std;
#define rep(i, n) for (int i = 0; i < (int)(n); i++)
#define rep2(i, s, n) for (int i = (s); i < (int)(n); i++)

int main() {
  int n;
  cin >> n;
  int m = 5;
  vector<vector<int> > a(n, vector<int>(m));
  rep(i,n) rep(j,m) cin >> a[i][j];
  int ac = 0, wa = 1001001001;
  while( ac + 1 < wa) {
    int wj = (ac+wa)/2;
    vector<int> s;
    rep(i,n) {
      int x = 0;
      rep(j,m) {
        if (a[i][j] >= wj) x |= 1<<j;
      }
      s.push_back(x);
    }
    sort(s.begin(), s.end());
    s.erase(unique(s.begin(), s.end()), s.end());
    bool ok = false;
    rep(i, s.size()) rep(j,i+1) rep(k,j+1) {
      if ((s[i]|s[j]|s[k]) == (1<<m)-1) {
        ok = true;
      }
    }
    if (ok) ac = wj; else wa = wj;
  }
  
  cout << ac << endl;
}