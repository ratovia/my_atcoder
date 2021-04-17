#include <bits/stdc++.h>
using namespace std;
#define rep(i, n) for (int i = 0; i < (int)(n); i++)
#define rep2(i, s, n) for (int i = (s); i < (int)(n); i++)

int main() {
  int a,b;
  cin >> a >> b;
  
  int count = 0;
  rep2(num, a, b + 1) {
    string text = to_string(num);
    string rtext = text;
    reverse(rtext.begin(), rtext.end());
    if (text == rtext) {
      count += 1;
    }
  }

  cout << count << endl;
}