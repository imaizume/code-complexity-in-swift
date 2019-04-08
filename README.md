## Sample Code for Reducing Code Complexity Nunmber (CCN)

This is a repogitory of sample codes presented in [Otemachi.swift #03](https://nikkei.connpass.com/event/123343/) by [@imaizume](https://github.com/imaizume).

1. [AvoidUnncessaryOptional.swift](https://github.com/imaizume/code-complexity-in-swift/blob/master/code-complexity.playground/Sources/AvoidUnncessaryOptional.swift)
2. [UserStructInSteadOfEnum.swift](https://github.com/imaizume/code-complexity-in-swift/blob/master/code-complexity.playground/Sources/UserStructInSteadOfEnum.swift)
3. [MakeModuleProtocolOriented.swift](https://github.com/imaizume/code-complexity-in-swift/blob/master/code-complexity.playground/Sources/MakeModuleProtocolOriented.swift)

### How to Calcurate CCN

Using [lizard](https://github.com/terryyin/lizard), you can see CCNs for each method with:

```sh
lizard ./code-complexity.playground/Sources
```

### LICENSE

[MIT](https://github.com/imaizume/code-complexity-in-swift/blob/master/LICENSE)

---

## 循環的複雑度(CCN)を減らすコードのサンプル

このリポジトリは[Otemachi.swift #03](https://nikkei.connpass.com/event/123343/)にて[@imaizume](https://github.com/imaizume)が発表したサンプルコードです。

1. [AvoidUnncessaryOptional.swift](https://github.com/imaizume/code-complexity-in-swift/blob/master/code-complexity.playground/Sources/AvoidUnncessaryOptional.swift)
2. [UserStructInSteadOfEnum.swift](https://github.com/imaizume/code-complexity-in-swift/blob/master/code-complexity.playground/Sources/UserStructInSteadOfEnum.swift)
3. [MakeModuleProtocolOriented.swift](https://github.com/imaizume/code-complexity-in-swift/blob/master/code-complexity.playground/Sources/MakeModuleProtocolOriented.swift)

### CCNの算出方法

[lizard](https://github.com/terryyin/lizard)を使い、以下のコマンドでメソッド毎のCCNを算出可能です。

```sh
lizard ./code-complexity.playground/Sources
```

### ライセンス

[MIT](https://github.com/imaizume/code-complexity-in-swift/blob/master/LICENSE)

