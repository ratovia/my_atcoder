#include <bits/stdc++.h>
using namespace std;
#define rep(i, n) for (int i = 0; i < (int)(n); i++)
#define rep2(i, s, n) for (int i = (s); i < (int)(n); i++)

long long cnt;
int l;
int A[1000000];
int n;
vector<int> G;

void insertSort(int A[], int n, int g) {
  rep2(i,g,n) {
    int v = A[i];
    int j =  i - g;
    while(j >=  0 && A[j] > v) {
      A[j + g] = A[j];
      j -= g;
      cnt++;
    }
    A[j + g] = v;
  }
}
void shellSort(int A[], int n) {
  int h = 1;
  while(h <= n) {
    G.push_back(h);
    h = 3 * h + 1;
  }

  for(int i = G.size() - 1; i >= 0; i--) {
    insertSort(A,n,G[i]);
  }
}

int main() {
  cin >> n;
  rep(i,n) cin >> A[i];
  cnt = 0;

  shellSort(A, n);

  cout << G.size() << endl;

  for(int i = G.size() - 1; i >= 0; i--) {
    cout << G[i];
    if(i != 0) cout << " ";
  }
  cout << endl;

  cout << cnt << endl;

  rep(i,n) cout << A[i] << endl;
}