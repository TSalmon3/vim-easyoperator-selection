## vim-easyoperator-selection

基于 easymotion 中文单词选择插件

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
