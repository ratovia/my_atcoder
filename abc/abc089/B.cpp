#include <bits/stdc++.h>
using namespace std;
#define rep(i, n) for (int i = 0; i < (int)(n); i++)
#define rep2(i, s, n) for (int i = (s); i < (int)(n); i++)

int main() {
  int n;
  cin >> n;
  
  int y_num;

  y_num = 0;

  rep(i,n) {
    string item;
    cin >> item;

    if (item == "Y") {
      y_num += 1;
    }
  }

  if (y_num == 0) {
    cout << "Three" << endl;
  } else {
    cout << "Four" << endl;
  }
}