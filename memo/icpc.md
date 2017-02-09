# Knowledges for Competitive Programming
## N個のデータから作られる最大2<sup>N</sup>通りの合計値の組み合わせ
N 問の問題があるコンテストがあり、i 問目の問題の配点は p<sub>i</sub>点である。コンテスタントは、この問題の中から何問か解き、解いた問題の配点の合計が得点となる。このコンテストの得点は何通り考えられるか。Nは100以下、p<sub>i</sub>は100以下である。([AtCoderTDPC: A](http://tdpc.contest.atcoder.jp/tasks/tdpc_contest))

```c
#include <stdio.h>
int main(){
    int i, j, count=0, n, bound, point, data[10000]={};
    // bound... データ数nに対する合計点の最大値(=indexの最大値)
    // data[]... 入力データから構成することのできる合計点をindexとした要素をflagとして管理するための配列
    data[0] = 1; // 合計0点のケースは必ず存在する

    scanf("%d", &n);
    bound = n * 100;
    // 各配点データの入力と、それらがそれぞれ解けた場合の合計得点のindexを持つdataの要素のフラグを立てる
    for(i=0; i<n; i++){
        scanf("%d", &point);
        // 各問題を解いた場合の合計得点のパターンを全てチェックする。
        for(j=bound; j>=0; j--){
            if(data[j]){ data[j+point] = 1; }
        }
    }
    // 立っているflagを全てチェックしてパターン数を合計する
    for(i=0; i<bound; i++){
        if(data[i]){ count++; }
    }
    printf("%d\n", count);
    return 0;
}
```
jに関するforループがindexの降順で比較するようになっているのは、昇順ループにしてしまうと任意のflagについてdata[j+point]が再帰的に全てtrueになってしまうためである。
