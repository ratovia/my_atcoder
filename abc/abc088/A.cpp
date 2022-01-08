#include <bits/stdc++.h>
using namespace std;

int main() {
  int n, a;
  int x;
  cin >> n >> a;

  x = n % 500;

  if(a >= x) {
    cout << "Yes" << endl;
  } else {
    cout << "No" << endl;
  }
}
