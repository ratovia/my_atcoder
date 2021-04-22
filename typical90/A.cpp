#include <bits/stdc++.h>
using namespace std;
#define rep(i, n) for (int i = 0; i < (int)(n); i++)
#define rep2(i, s, n) for (int i = (s); i < (int)(n); i++)

long long N,L,K;
long long A[1 << 18];

bool solve(long long M) {
  long long cnt = 0, pre = 0;
  rep2(i,1,N + 1) {
    if(A[i] - pre >= M && L - A[i] >= M) {
      cnt += 1;
      pre = A[i];
    }
  }
  if (cnt >= K) return true;
  return false;
}
int main() {
  cin >> N >> L;
  cin >> K;

  rep2(i,1,N+1) {
    cin >> A[i];
  }
  
  long long left = -1;
  long long right = L + 1;
  while(right - left > 1) {
    long long mid = left + (right - left) / 2;
    if(solve(mid) == false) right = mid;
    else left = mid;
  }
  cout << left << endl;
}