#include <bits/stdc++.h>
using namespace std;
#define rep(i, n) for (int i = 0; i < (int)(n); i++)
#define rep2(i, s, n) for (int i = (s); i < (int)(n); i++)

int n;
struct Card {
  char suit;
  char value;
};

void bubble_sort(Card C[], int n) {
  rep(i,n-1) {
    rep2(j,0,n-1-i) {
      if(C[j].value > C[j+1].value) {
        swap(C[j],C[j+1]);
      }
    }
  }
}

void select_sort(Card C[], int n) {
  int minj = 100;
  rep(i,n) {
    minj = i;
    rep2(j,i,n) {
      if (C[j].value < C[minj].value) {
        minj = j;
      }
    }
    if(C[i].value != C[minj].value) {
      swap(C[i],C[minj]);
    }
  }
}

void print(Card C[], int n) {
  rep(i,n) {
    if (i) cout << " ";
    cout << C[i].suit << C[i].value;
  }
  cout << endl;
}

bool isStable(Card  C1[], Card C2[], int n) { 
  rep(i,n) { 
    if (C1[i].suit != C2[i].suit) return false;
  }
  return true;
}


int main() {

  cin >> n;
  Card C1[n], C2[n];
  
  rep(i,n) { 
    cin >> C1[i].suit >> C1[i].value;
    C2[i] = C1[i];
  }


  bubble_sort(C1,n);
  select_sort(C2,n);


  print(C1,n);
  cout << "Stable" << endl;
  print(C2,n);

  if ( isStable(C1, C2, n)) {
    cout << "Stable" << endl;
  } else {
    cout << "Not stable" << endl;
  }
}