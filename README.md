# ワールドの太陽がリアルタイムに同期するデータパック
お使いのサーバーの地域の時間に合わせて太陽が動きます。
通称どうもりデータパックです。
## 前提データパック
-   りっとー作 [realtime](https://github.com/Lit-to/realtime)
※必須
## 対応バージョン
-   1.18.2
-   1.19以降
なお、1.19でのみ動作確認をしています。
## 使い方
導入した段階で``gamerule doDaylightcycle``は``false``となり、現在時刻に太陽が設定されます。
また、現在時刻は``scoreboard objectives setdisplay sidebar clock_board``で確認することが出来ます。

-   ``function dlcy:set``:storage ``dlcy: Now``に入れた値に太陽が設定されます。
-   ``function dlcy:now``:現在時刻に設定されます。

### storageの設定
```json
dlcy:
{Now:[
    hour(int),
    minute(int),
    second(int)
]}
```


協力:[なお](https://twitter.com/nao2002_)



