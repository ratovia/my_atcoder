#include <bits/stdc++.h>
using namespace std;

int main() {
  int s;
  int sum;
  cin >> s;
  sum = 0;

  sum = s % 10 + (s / 10) % 10 + (s / 100) % 10;
  cout << sum << endl;
}