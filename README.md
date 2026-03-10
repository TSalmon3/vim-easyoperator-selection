## vim-easyoperator-selection

基于 easymotion 中文单词选择插件

### 用法

以下面这段中文为例， 选中 `中文单词` ：

```
<cursor>基于 easymotion 中文单词选择插件
```

在 `normal` 模式下，键入 `vmv`(`v<Plug>(easyoperator-selection-select)`)，

根据提示输入第一个单词 `z`：

```
<cursor>基于 easymotion {a}文单词选{s}插件
```

按 `a` 会高亮中文汉字 `中`。根据提示输入第二个单词 `c`：

```
<cursor>基于 easymotion 中文{a}{s}选择{d}件
```

按 `s` 选中 ` 中文单词`。

### 依赖

- [easymotion](https://github.com/Lokaltog/vim-easymotion)
- [vim-easymotion-zh](https://github.com/zzhirong/vim-easymotion-zh)

### 安装/参考配置

```vim
Plug 'easymotion/vim-easymotion'
Plug 'zzhirong/vim-easymotion-zh'
Plug 'tsalmon3/vim-easyoperator-selection'

let g:EasyMotion_use_migemo = 1
let g:EasyOperator_selection_do_mapping = 0

xnoremap mv  <Plug>(easyoperator-selection-select)
nnoremap dmv <Plug>(easyoperator-selection-delete)
nnoremap ymv <Plug>(easyoperator-selection-yank)
```

### 感谢

本项目基于 [vim-easyoperator-phrase](https://github.com/haya14busa/vim-easyoperator-phrase) 开发，特别感谢原作者的优秀工作。

### 许可

MIT license
