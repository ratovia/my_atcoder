#include <bits/stdc++.h>
using namespace std;
#define rep(i, n) for (int i = 0; i < (int)(n); i++)
#define rep2(i, s, n) for (int i = (s); i < (int)(n); i++)


int selection_sort(vector<int> &a, int n) {
  int minj = 101;
  int count = 0; 
  rep(i,n) {
    minj = i;
    rep2(j,i,n) {
      if (a[j] < a[minj]) {
        minj = j;
      }
    }
    if(a[i] != a[minj]) {
      swap(a[i],a[minj]);
      count += 1;
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
  count = selection_sort(a, n);
  
  rep(i,n) {
    if (i) cout << " ";
    cout << a.at(i);
  }
  cout << endl;
  cout << count << endl;
}