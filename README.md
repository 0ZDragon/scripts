# scripts

本存储库用来放一些自用脚本，其中的一些可能会帮到你

## rime-stroke-convert.sh

此 shell 脚本用于将宋天郑码提供的 `笔画输入法码表.txt` 转为 Rime 码表格式，并使用 Unix 风格换行符

原 `笔画输入法码表.txt` 使用 UTF-16LE 编码，码表格式为：单字+空格+数字笔顺（12345），例如：

```
⺀ 44
⺁ 33
⺂ 5
⺊ 21
```

同时，增加单字「〇」，编码为z

需要本地存在 [Rime 八股文](https://github.com/rime/rime-essay)

注意：`rimehead.yaml` 是 Rime 的码表头部，请勿修改！
