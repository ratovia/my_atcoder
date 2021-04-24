#include <bits/stdc++.h>
using namespace std;
#define rep(i, n) for (int i = 0; i < (int)(n); i++)
#define rep2(i, s, n) for (int i = (s); i < (int)(n); i++)

int main() {
  int h,w;
  cin >> h >> w;

  vector<int> h_cucum(h);
  vector<int> w_cucum(w);
  vector<vector<int> > array(h, vector<int>(w));

  rep(i,h) {
    rep(j,w) {
      int ele;
      cin >> ele;
      array[i][j] = ele;
      h_cucum[i] += ele;
      w_cucum[j] += ele;
    }
  }

  rep(i,h) {
    rep(j,w) {
      array[i][j] = h_cucum[i] + w_cucum[j] - array[i][j];
      if(j != 0) cout << " ";
      cout << array[i][j];
    }
    cout << endl;
  }
}