" Directorio de plugins
call plug#begin('~/.local/share/nvim/plugged')
  Plug 'dracula/vim', { 'as': 'dracula' } " Tema dracula
  Plug 'artanikin/vim-synthwave84'  " Tema synthwave84
  Plug 'tpope/vim-surround' " Completa surroundings, parentesis, llaves, corhcetes
  "Plug 'sheerun/vim-polyglot' " Coleccion de plugins de resaltado de sintaxis
  Plug 'pangloss/vim-javascript'  " Soporte y resaltado sintaxis JAvascript para vim
  Plug 'prettier/vim-prettier'  " Prettier para formatear codigo javascript
  Plug 'w0rp/ale' " Analizador estatico de codigo parecido a eslint
  Plug 'mxw/vim-jsx'  " Soporte para jsx y reactjs
  Plug 'hail2u/vim-css3-syntax', { 'for': 'css' } " Resalta sintaxis css
  Plug 'othree/html5.vim', { 'for': 'html' }  " Resalta sintaxis html
  Plug 'plasticboy/vim-markdown', { 'for': 'markdown' } " Resalta sintaxis markdown
 " JSDOCS genera bloques de comentarios 
  Plug 'heavenshell/vim-jsdoc', { 
    \ 'for': ['javascript', 'javascript.jsx','typescript'], 
    \ 'do': 'make install'
    \}
  Plug 'scrooloose/nerdtree'  " Explorador de archivos, util para verla estructura del proyecto
  Plug 'xuyuanp/nerdtree-git-plugin'  " Muestra el estado de los archivos en Nerdtree
  Plug 'ryanoasis/vim-devicons' " Aniade iconos a plugins lo uso para iconos a NERDTree
  Plug 'vim-airline/vim-airline'  " Barra de estado
  Plug 'vim-airline/vim-airline-themes'  " Temas para airline
  Plug 'Yggdroot/indentLine'  " Muestra niveles de identacion con lineas verticales
  "  Nvim-Typescript completion with deoplete
  " # REQUIRED: Add a syntax file. YATS is the best
  Plug 'HerringtonDarkholme/yats.vim'
  Plug 'mhartington/nvim-typescript', {'do': './install.sh'}
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  Plug 'Shougo/neco-syntax'  " Fuente general de auto completado
  Plug 'Shougo/denite.nvim' " For Denite features
  Plug 'wokalski/autocomplete-flow' " Javascript autocomplete-flow
  " For func argument completion
  Plug 'Shougo/neosnippet'
  Plug 'Shougo/neosnippet-snippets'
  Plug 'ervandew/supertab'
  Plug 'Shougo/echodoc.vim'   " Muestra la firma de la función.
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' } " Wrapper de FZF buscador de archivos, buffers, grep, etc
  Plug 'junegunn/fzf.vim' " Buscador FZF de archivos
  Plug 'ctrlpvim/ctrlp.vim' " Buscador de archivos y buffers
Plug 'haya14busa/incsearch.vim' "  Búsqueda incremental mejorada.
  Plug 'jiangmiao/auto-pairs' " Inserta pares de comillas y parentesis
  Plug 'scrooloose/nerdcommenter' " Facilita agregary quitar comentarios
  Plug 'airblade/vim-gitgutter' " Muestra cambios hechos en el archivon la columna signos
  Plug 'mattn/emmet-vim'  " emmet para vim
  call plug#end()

" Connfiguraciones
set title " Muestra el nombre del archivo en la ventana de la terminal
set number relativenumber " Muestra los numeros de linea y activa numeros relativos
set mouse=a " Permite la integracion el mouse (selectionar texto, mover el cursor)

set nowrap " No dividir la linea si es muy larga

set cursorline " Resalta la linea actual
set colorcolumn=120 " Muestra la columna limite a 120 caracteres

" Identacion a 2 espacios
set tabstop=2
set shiftwidth=2
set softtabstop=2
set shiftround
set expandtab " Insertar espacios en lugar de <tab>s

set hidden " Permitir cambiar de buffers sin tener que  guardarlos

set ignorecase " Ignorar mayusculas al hacer una busqueda
set smartcase " No ignorar mayusculas si la palabra a buscar contiene mayusculas

set spelllang=en,es  "Corregir palabras usando diccionarios en ingles y espanol

set termguicolors " Activa true colors en la terminal
set background=dark  " Fondo del tema: light o dark

" Tema
"packadd! dracula
syntax enable
" colorscheme dracula " Nombre del tema
colorscheme synthwave84 " Tema synthwave84

" EMMET-VIM
" /Enable just for html/css
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall

" VIM-JAVASCRIPT
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1
set conceallevel=1

" NERDTree
let g:NERDTreeChDirMode = 2 " Cambia el directorio actual al nodo padre actual

" Airline
let g:airline#extensions#tabline#enabled = 1  " Mostrar buffers abiertos (como pestañas)
let g:airline#extensions#tabline#fnamemod = ':t'  " Mostrar sólo el nombre del archivo

" Cargar fuente Powerline y símbolos (ver nota)
let g:airline_powerline_fonts = 1

set noshowmode  " No mostrar el modo actual (ya lo muestra la barra de estado)

"Identline
" No mostrar en ciertos tipos de buffers y archivos
let g:indentLine_fileTypeExclude = ['text', 'sh', 'help', 'terminal']
let g:indentLine_bufNameExclude = ['NERD_tree.*', 'term:.*']

" Activar deoplete al iniciar Neovim
let g:deoplete#enable_at_startup = 1
" neosnippet
let g:neosnippet#enable_completed_snippet = 1
let g:autocomplete_flow#insert_paren_after_function = 0

" Cerrar automaticamente la ventana de vista previa (donde se muestra documentación, si existe)
augroup deopleteCompleteDoneAu
  autocmd!
  autocmd CompleteDone * silent! pclose!
augroup END

" Supertab - Invertir direccion de navegacion (de arriba a abajo)
let g:SuperTabDefaultCompletionType = '<c-n>'

" Echodoc
set noshowmode  " No mostrar el modo actual (echodoc hace uso de este espacio)

" Activar echodoc al iniciar Neovim
let g:echodoc_enable_at_startup = 1

"FZF
" Ejecutar comandos con alt-enter :Commands
let g:fzf_commands_expect = 'alt-enter'
" Guardar historial de búsquedas
let g:fzf_history_dir = '~/.local/share/fzf-history'

" Empezar a buscar presionando Ctrl + p
nnoremap <C-p> :Files<CR>

" CtrlPvim
" Archivos ignorados
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_custom_ignore = {
   \ 'dir':  '\v[\/](\.(git|hg|svn)|node_modules)$',
     \ 'file': '\v\.(exe|so|dll)$',
       \ }

" Ignorar archivos en .gitignore
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

" Nerdcommenter
let g:NERDSpaceDelims = 1  " Agregar un espacio después del delimitador del comentario
let g:NERDTrimTrailingWhitespace = 1  " Quitar espacios al quitar comentario

" Gitgutter
" Actualizar barra cada 250 mili segundos
set updatetime=250

" Mappings
let g:mapleader = ' ' " Definir espacio como la tecla lider

nnoremap <leader>s :w<CR> " Guardar con <lider> + s

nnoremap <leader>e :e ~/.config/nvim/init.vim<CR>  " Abrir el archivo init.vim con <lider> + e

" Incsearch - Maps requeridos
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)

" Quitar resaltado luego de buscar
let g:incsearch#auto_nohlsearch = 1

" Abrir/Cerrar NERDTree con F2
map <F2> :NERDTreeToggle<CR>
" Ctrl + ww -> Cambiar entre ventanas (NERDTree y tu buffer actual) 