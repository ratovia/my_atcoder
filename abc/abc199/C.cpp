#include <bits/stdc++.h>
using namespace std;
#define rep(i, n) for (int i = 0; i < (int)(n); i++)
#define rep2(i, s, n) for (int i = (s); i < (int)(n); i++)

int main() {
  int n;
  cin >> n;
  string s, s1, s2;
  cin >> s;

  s1 = s.substr(0,n);
  s2 = s.substr(n,2*n-1);

  int q;
  cin >> q;
  char tmp;
  string tmp2;

  bool flip = false;

  rep(i,q) {
    int t, a, b;
    cin >> t >> a >> b;
    a--;
    b--;
    
    if(t == 1) {
      if(!flip) { // s1 s2
        if(a < n && b < n ) {
          // cout << "a" << endl;
          tmp = s1[a];
          s1[a] = s1[b];
          s1[b] = tmp;
        } else if(a < n && b >= n) {
          // cout << "b" << endl;
          tmp = s1[a];
          s1[a] = s2[b-n];
          s2[b-n] = tmp;
        } else if(a >= n && b < n) {
          // cout << "c" << endl;
          tmp = s2[a-n];
          s2[a-n] = s1[b];
          s1[b] = tmp;
        } else if(a >= n && b >= n) {
          // cout << "d" << endl;
          tmp = s2[a-n];
          s2[a-n] = s2[b-n];
          s2[b-n] = tmp;
        }
      } else {
        if(a < n && b < n ) { // s2, s1
          // cout << "e" << endl;
          tmp = s2[a];
          s2[a] = s2[b];
          s2[b] = tmp;
        } else if(a < n && b >= n) {
          // cout << "f" << endl;
          tmp = s2[a];
          s2[a] = s1[b-n];
          s1[b-n] = tmp;
        } else if(a >= n && b < n) {
          // cout << "g" << endl;
          tmp = s1[a-n];
          s1[a-n] = s2[b];
          s2[b] = tmp;
        } else if(a >= n && b >= n) {
          // cout << "h" << endl;
          tmp = s1[a-n];
          s1[a-n] = s1[b-n];
          s1[b-n] = tmp;
        }
      }
    }else if(t == 2) {
      flip = !flip;
    }
  } 
  if (flip) {
    cout << s2 + s1 << endl;
  } else {
    cout << s1 + s2 << endl;
  }
  
}