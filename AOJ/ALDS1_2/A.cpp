#include <bits/stdc++.h>
using namespace std;
#define rep(i, n) for (int i = 0; i < (int)(n); i++)
#define rep2(i, s, n) for (int i = (s); i < (int)(n); i++)



int bubble_sort(vector<int> &a,int n) {
  int count = 0;
  int tmp;
  rep(i,n-1) {
    rep2(j,0,n-1-i) {
      if(a[j] > a[j+1]) {
        swap(a[j],a[j+1]);
        count += 1;
      }
    }
  }
  return count;
}

int main() {
  int n;
  cin >> n;
  vector<int> a(n);
  rep(i,n) {
    cin >> a.at(i);
  }
  int count;
  count = bubble_sort(a,n);
  rep(i,n) {
    if (i) cout << " ";
    cout << a[i];
  }
  cout << endl;
  cout << count << endl;
}