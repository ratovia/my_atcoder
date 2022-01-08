#include <bits/stdc++.h>
using namespace std;
#define rep(i, n) for (int i = 0; i < (int)(n); i++)
#define rep2(i, s, n) for (int i = (s); i < (int)(n); i++)



int n;
int A[1 << 18], B[1 << 18];
vector<int> G[1 << 18];
int dist[1 << 18];


void get_gist(int start) {
  const int INF = (1 << 29);
  rep(i,2 * n) {
    dist[i] = INF;
  }

  queue<int> Q;
	Q.push(start);
  dist[start] = 0;

  while (!Q.empty()) {
    int pos = Q.front(); Q.pop();
    
    int len = G[pos].size();
    rep(i,len) {
      int to = G[pos][i];
      if (dist[to] == INF) {
				dist[to] = dist[pos] + 1;
				Q.push(to);
			}
    }
  }
}

int main() {
  cin >> n;
  rep2(i,1,n) {
    cin >> A[i] >> B[i];
    G[A[i]].push_back(B[i]);
    G[B[i]].push_back(A[i]);
  }

  get_gist(1);

  int maxn1 = -1, maxid1 = -1;
	rep2(i,1,n+1) {
		if (maxn1 < dist[i]) {
			maxn1 = dist[i];
			maxid1 = i;
		}
	}

  get_gist(maxid1);

  int maxn2 = -1;
	rep2(i,1,n) {r
		maxn2 = max(maxn2, dist[i]);
	}


  cout << maxn2 + 1 << endl;
}