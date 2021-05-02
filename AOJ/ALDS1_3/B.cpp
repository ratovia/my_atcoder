#include <bits/stdc++.h>
using namespace std;
#define rep(i, n) for (int i = 0; i < (int)(n); i++)
#define rep2(i, s, n) for (int i = (s); i < (int)(n); i++)

struct Process {
  string name;
  int time;
};
int main() {
  int n;
  int q;
  cin >> n >> q;
  vector<Process> queue;
  rep(i,n) {
    string name;
    int time;
    cin >> name >> time;
    Process pro;
    pro.name = name;
    pro.time = time;
    queue.push_back(pro);
  }

  int top = 0;
  int cur_time = 0;
  while(top < queue.size()) {
    Process process = queue.at(top);
    if (process.time <= q) {
      cur_time += process.time;
      cout << process.name << " " << cur_time << endl;
    } else {
      process.time = process.time - q;
      queue.push_back(process);
      cur_time += q;
    }
    top++;
  } 
}