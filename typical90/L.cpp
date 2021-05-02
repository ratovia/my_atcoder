#include <bits/stdc++.h>
using namespace std;
#define rep(i, n) for (int i = 0; i < (int)(n); i++)
#define rep2(i, s, n) for (int i = (s); i < (int)(n); i++)

class UnionFind {
  public:
    vector<int> par;

    void init(int sz) {
      par.resize(sz, -1);
    }

    int root(int pos) {
      if(par[pos] == -1) return pos;
      par[pos] = root(par[pos]);
      return par[pos]; 
    }

    void unite(int u, int v) {
      u = root(u); v = root(v);
      if (u == v) return;
      par[u] = v;
    }

    bool same(int u, int v) {
      if(root(u) == root(v)) return true;
      return false;
    }
};

int H, W, Q;

UnionFind UF;
bool used[1009][1009];

void  query1(int px, int py) {
  int dx[4] = {-1, 0, 1, 0};
  int dy[4] = {0, 1, 0, -1};
  for(int i = 0; i < 4; i++) {
    int sx = px + dx[i], sy = py + dy[i];
    if (used[sx][sy] == false) continue;
    int hash1 = (px - 1) * W + (py - 1);
    int hash2 = (sx - 1) * W + (sy - 1);
    UF.unite(hash1, hash2);
  }
  used[px][py] = true;
}

bool query2(int px, int py, int qx, int qy) {
  if(used[px][py] == false || used[qx][qy] == false) {
    return false;
  }
  int hash1 = (px - 1) * W + (py - 1);
  int hash2 = (qx - 1) * W + (qy - 1);
  if (UF.same(hash1, hash2) == true) return true;
  return false; 
}

int main() {
  cin >> H >> W >> Q;
  UF.init(H * W);

  for (int i = 1; i <= Q; i++){
    int ty;
    cin >> ty;
    if(ty == 1) {
      int x,y;
      cin >> x >> y;
      query1(x,y);
    }
    if(ty == 2) {
      int xa, xb, ya, yb;
      cin >> xa >> ya >> xb >> yb;
      bool Answer = query2(xa, ya, xb, yb);
      if(Answer == true) cout << "Yes" << endl;
      else cout << "No" << endl;
    }
  }
}