#include <bits/stdc++.h>
using namespace std;
#define rep(i, n) for (int i = 0; i < (int)(n); i++)
#define rep2(i, s, n) for (int i = (s); i < (int)(n); i++)

int main() {
  int n;
  cin >> n;

  int mind = 1000000000;
  rep(i,n) {
    int ax;
    int count = 0;
    cin >> ax;
    while( ax % 2 == 0){
      ax = ax / 2;
      count += 1;
    }
    mind = min(mind, count);
  }  

  cout << mind << endl;
}