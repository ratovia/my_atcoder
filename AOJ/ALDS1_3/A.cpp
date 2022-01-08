#include <bits/stdc++.h>
using namespace std;
#define rep(i, n) for (int i = 0; i < (int)(n); i++)
#define rep2(i, s, n) for (int i = (s); i < (int)(n); i++)

int main() {
  vector<int> stack;
  long long sum;
  string x;
  while(1) {
    cin >> x;
    if( cin.eof() ) break;

    if(x == "+") {
      int chr2 = stack.at(stack.size() - 1 );
      stack.pop_back();
      int chr1 = stack.at(stack.size() - 1 );
      stack.pop_back();
      sum = chr1 + chr2;
      stack.push_back(sum);
    } else if(x == "-") {
      int chr2 = stack.at(stack.size() - 1 );
      stack.pop_back();
      int chr1 = stack.at(stack.size() - 1 );
      stack.pop_back();
      sum = chr1 - chr2;
      stack.push_back(sum);
    } else if(x == "*") {
      int chr2 = stack.at(stack.size() - 1 );
      stack.pop_back();
      int chr1 = stack.at(stack.size() - 1 );
      stack.pop_back();
      sum = chr1 * chr2;
      stack.push_back(sum);
    } else {
      stack.push_back(stoi(x));
    }
  }
  cout << stack.at(stack.size() - 1 ) << endl;
}

