#include <bits/stdc++.h>
using namespace std;

int main() {
  int a, b;
  double x;
  cin >> a >> b;
  x = (a + b) / 2;
  if( x == (a + b) * 1.0 / 2 ) {
    cout << x << endl;
  } else {
    cout << x+1 << endl;
  }
}