#include <bits/stdc++.h>
using namespace std;
#define rep(i, n) for (int i = 0; i < (int)(n); i++)
#define rep2(i, s, n) for (int i = (s); i < (int)(n); i++)

vector<int> insertionSort(vector<int>a, int n) {

  for(int i = 1; i < n - 1; i++) {
    int v = a[i];
    int j = i - 1;
    while( j >= 0 && a[j] > v ) {
      a[j+1] = a[j];
      j--;
    }
    a[j+1] = v;
  }

  return a;
}

int main() {
  int n;
  cin >> n; 
  vector<int> array(n); // [ _, _, _, _, _, _]
  rep(i,n) {
    cin >> array.at(i);
  }

  array = insertionSort(array, n);

  rep(i,n) {
    cout << array.at(i) << endl;
  }
}