;; -*- mode: emacs-lisp; lexical-binding: t; -*-
;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.

(defun dotspacemacs/init ()
  "Initialization:
This function is called at the very beginning of Spacemacs startup, before layer
configuration. It should only modify the values of Spacemacs settings."
  ;; This setq-default sexp is an exhaustive list of all the supported spacemacs
  ;; settings.
  (setq-default

  ;; If non-nil show the version string in the Spacemacs buffer. It will appear
  ;; as (spacemacs version)@(emacs version).
  ;; (default t)
  dotspacemacs-startup-buffer-show-version t

  ;; Specify the startup banner. Default value is `official', it displays the
  ;; official spacemacs logo. An integer value is the index of text banner,
  ;; `random' chooses a random text banner in `core/banners' directory. A string
  ;; value must be a path to an image format supported by your Emacs build. If
  ;; the value is nil then no banner is displayed.
  ;; (default 'official)
  dotspacemacs-startup-banner 'official

  ;; Scale factor controls the scaling (size) of the startup banner. Default
  ;; value is `auto' for scaling the logo automatically to fit all buffer
  ;; contents, to a maximum of the full image height and a minimum of 3 line
  ;; heights. If set to a number (int or float) it is used as a constant scaling
  ;; factor for the default logo size.
  dotspacemacs-startup-banner-scale 'auto

  ;; True if the home buffer should respond to resize events.
  ;; (default t)
  dotspacemacs-startup-buffer-responsive t

  ;; Show numbers before the startup list lines.
  ;; (default t)
  dotspacemacs-show-startup-list-numbers t

  ;; If non-nil, show file icons for entries and headings on Spacemacs home
  ;; buffer. This has no effect in terminal or if "all-the-icons" package or the
  ;; font is not installed.
  ;; (default nil)
  dotspacemacs-startup-buffer-show-icons t

  ;; List of items to show in startup buffer or an association list of the form
  ;; `(list-type . list-size)`. If nil then it is disabled. Possible values for
  ;; list-type are: `recents' `recents-by-project' `bookmarks' `projects'
  ;; `agenda' `todos'. List sizes may be nil, in which case
  ;; `spacemacs-buffer-startup-lists-length' takes effect. The exceptional case
  ;; is `recents-by-project', where list-type must be a pair of numbers, e.g.
  ;; `(recents-by-project . (7 . 5))', where the first number is the project
  ;; limit and the second the limit on the recent files within a project.
  dotspacemacs-startup-lists '((recents . 5)
                               (projects . 7))

  ;; If nil the home buffer shows the full path of agenda items and todos. If
  ;; non-nil only the file name is shown.
  dotspacemacs-home-shorten-agenda-source nil

  ;; The minimum delay in seconds between number key presses.
  ;; (default 0.4)
  dotspacemacs-startup-buffer-multi-digit-delay 0.3

  ;; If non-nil a progress bar is displayed when spacemacs is loading. This
  ;; may increase the boot time on some systems and emacs builds, set it to
  ;; nil to boost the loading time.
  ;; (default t)
  dotspacemacs-loading-progress-bar nil

  ;; If non-nil the frame is fullscreen when Emacs starts up (Emacs 24.4+ only).
  ;; (default nil)
  dotspacemacs-fullscreen-at-startup nil

  ;; If non-nil `spacemacs/toggle-fullscreen' will not use native fullscreen.
  ;; Use to disable fullscreen animations in OSX.
  ;; (default nil)
  dotspacemacs-fullscreen-use-non-native nil

  ;; If non-nil the frame is maximized when Emacs starts up. Takes effect only
  ;; if `dotspacemacs-fullscreen-at-startup' is nil (Emacs 24.4+ only).
  ;; (default nil)
  dotspacemacs-maximized-at-startup nil

  ;; If non-nil the frame is undecorated when Emacs starts up. Combine this
  ;; variable with `dotspacemacs-maximized-at-startup' in OSX to obtain
  ;; borderless fullscreen.
  ;; (default nil)
  dotspacemacs-undecorated-at-startup nil

  ;; Default major mode for a new empty buffer. Possible values are mode names
  ;; such as `text-mode' for example, and `nil' to use Fundamental mode.
  ;; (default `text-mode')
  dotspacemacs-new-empty-buffer-major-mode 'text-mode

  ;; Default major mode of the scratch buffer.
  ;; (default `text-mode')
  dotspacemacs-scratch-mode 'text-mode

  ;; If non-nil, *scratch* buffer will be persistent. Things you write down in
  ;; *scratch* buffer will be saved and restored automatically.
  dotspacemacs-scratch-buffer-persistent nil

  ;; If non-nil, `kill-buffer' on *scratch* buffer will bury it instead of
  ;; killing.
  dotspacemacs-scratch-buffer-unkillable nil

  ;; Initial message in the scratch buffer, such as "Welcome to Spacemacs!"
  ;; (default nil)
  dotspacemacs-initial-scratch-message nil

  ;; Control where `switch-to-buffer' displays the buffer. If nil,
  ;; `switch-to-buffer' displays the buffer in the current window even if
  ;; another same-purpose window is available. If non-nil, `switch-to-buffer'
  ;; displays the buffer in a same-purpose window even if the buffer can be
  ;; displayed in the current window.
  ;; (default nil)
  dotspacemacs-switch-to-buffer-prefers-purpose nil

  ;; Format specification for setting the frame title.
  ;; %a - the `abbreviated-file-name', or `buffer-name'
  ;; %t - `projectile-project-name'
  ;; %I - `invocation-name'
  ;; %S - `system-name'
  ;; %U - contents of $USER
  ;; %b - buffer name
  ;; %f - visited file name
  ;; %F - frame name
  ;; %s - process status
  ;; %p - percent of buffer above top of window, or Top, Bot or All
  ;; %P - percent of buffer above bottom of window, perhaps plus Top, or Bot or All
  ;; %m - mode name
  ;; %n - Narrow if appropriate
  ;; %z - mnemonics of buffer, terminal, and keyboard coding systems
  ;; %Z - like %z, but including the end-of-line format
  ;; If nil then Spacemacs uses default `frame-title-format' to avoid
  ;; performance issues, instead of calculating the frame title by
  ;; `spacemacs/title-prepare' all the time.
  ;; (default "%I@%S")
  dotspacemacs-frame-title-format "%I@%S"

  ;; Format specification for setting the icon title format.
  ;; (default nil - same as frame-title-format)
  dotspacemacs-icon-title-format nil

  ;; Size (in MB) above which spacemacs will prompt to open the large file
  ;; literally to avoid performance issues. Opening a file literally means that
  ;; no major mode or minor modes are active.
  ;; (default 1)
  dotspacemacs-large-file-size 1

  ;; Location where to auto-save files. Possible values are `original' to
  ;; auto-save the file in-place, `cache' to auto-save the file to another file
  ;; stored in the cache directory and `nil' to disable auto-saving.
  ;; (default 'cache)
  dotspacemacs-auto-save-file-location 'cache

  ;; Maximum number of rollback slots to keep in the cache.
  ;;(default 5)
  dotspacemacs-max-rollback-slots 5

  ;; Name of the default layout.
  ;; (default "Default")
  dotspacemacs-default-layout-name "Default"

  ;; If non-nil the default layout name is displayed in the mode-line.
  ;; (default nil)
  dotspacemacs-display-default-layout nil

  ;; If non-nil then the last auto saved layouts are resumed automatically upon
  ;; start.
  ;; (default nil)
  dotspacemacs-auto-resume-layouts nil

  ;; If non-nil, auto-generate layout name when creating new layouts. Only has
  ;; effect when using the "jump to layout by number" commands.
  ;; (default nil)
  dotspacemacs-auto-generate-layout-names nil

  ;; Control line numbers activation.
  ;; If set to `t', `relative' or `visual' then line numbers are enabled in all
  ;; `prog-mode' and `text-mode' derivatives. If set to `relative', line
  ;; numbers are relative. If set to `visual', line numbers are also relative,
  ;; but only visual lines are counted. For example, folded lines will not be
  ;; counted and wrapped lines are counted as multiple lines.
  ;; This variable can also be set to a property list for finer control:
  ;; '(:relative nil
  ;;   :visual nil
  ;;   :disabled-for-modes dired-mode
  ;;                       doc-view-mode
  ;;                       markdown-mode
  ;;                       org-mode
  ;;                       pdf-view-mode
  ;;                       text-mode
  ;;   :size-limit-kb 1000)
  ;; When used in a plist, `visual' takes precedence over `relative'.
  ;; (default nil)
  dotspacemacs-line-numbers t

  ;; Code folding method. Possible values are `evil', `origami' and `vimish'.
  ;; (default 'evil)
  dotspacemacs-folding-method 'evil

  ;; If non-nil and `dotspacemacs-activate-smartparens-mode' is also non-nil,
  ;; `smartparens-strict-mode' will be enabled in programming modes.
  ;; (default nil)
  dotspacemacs-smartparens-strict-mode nil

  ;; If non-nil smartparens-mode will be enabled in programming modes.
  ;; (default t)
  dotspacemacs-activate-smartparens-mode t

  ;; If non-nil pressing the closing parenthesis `)' key in insert mode passes
  ;; over any automatically added closing parenthesis, bracket, quote, etc. This
  ;; can be temporary disabled by pressing `C-q' before `)'.
  ;; (default nil)
  dotspacemacs-smart-closing-parenthesis nil

  ;; Select a scope to highlight delimiters. Possible values are `any',
  ;; `current', `all' or `nil'. Default is `all' (highlight any scope and
  ;; emphasis the current one).
  ;; (default 'all)
  dotspacemacs-highlight-delimiters 'all

  ;; Color highlight trailing whitespace in all prog-mode and text-mode derived
  ;; modes such as c++-mode, python-mode, emacs-lisp, html-mode, rst-mode etc.
  ;; (default t)
  dotspacemacs-show-trailing-whitespace t

  ;; Delete whitespace while saving buffer. Possible values are `all' to
  ;; aggressively delete empty line and long sequences of whitespace, `trailing'
  ;; to delete only the whitespace at end of lines, `changed' to delete only
  ;; whitespace for changed lines or `nil' to disable cleanup.
  ;; (default nil)
  dotspacemacs-whitespace-cleanup nil

  ;; If non-nil activate `clean-aindent-mode' which tries to correct virtual
  ;; indentation of simple modes. This can interfere with mode specific indent
  ;; handling like has been reported for `go-mode'. If it does deactivate it
  ;; here.
  ;; (default t)
  dotspacemacs-use-clean-aindent-mode t

  ;; If non-nil shift your number row to match the entered keyboard layout (only
  ;; in insert state). Currently supported keyboard layouts are: `qwerty-us',
  ;; `qwertz-de' and `querty-ca-fr'. New layouts can be added in
  ;; `spacemacs-editing' layer.
  ;; (default nil)
  dotspacemacs-swap-number-row nil

  ;; One of `vim', `emacs' or `hybrid'. `hybrid' is like `vim' except that
  ;; `insert state' is replaced by the `hybrid state' with `emacs' key bindings.
  ;; The value can also be a list with `:variables' keyword (similar to layers).
  ;; Check the editing styles section of the documentation for details on
  ;; available variables.
  ;; (default 'vim)
  dotspacemacs-editing-style 'vim

  ;; The leader key (default "SPC")
  dotspacemacs-leader-key "SPC"

  ;; The key used for Emacs commands `M-x' (after pressing on the leader key).
  ;; (default "SPC")
  dotspacemacs-emacs-command-key "SPC"

  ;; The key used for Vim Ex commands (default ":")
  dotspacemacs-ex-command-key ":"

  ;; The leader key accessible in `emacs state' and `insert state'
  ;; (default "M-m")
  dotspacemacs-emacs-leader-key "M-m"

  ;; Major mode leader key accessible in `emacs state' and `insert state'.
  ;; (default "C-M-m" for terminal mode, "<M-return>" for GUI mode).
  ;; Thus M-RET should work as leader key in both GUI and terminal modes.
  ;; C-M-m also should work in terminal mode, but not in GUI mode.
  dotspacemacs-major-mode-emacs-leader-key (if window-system "<M-return>" "C-M-m")

  ;; Major mode leader key is a shortcut key which is the equivalent of
  ;; pressing `<leader> m`. Set it to `nil` to disable it.
  ;; (default ",")
  dotspacemacs-major-mode-leader-key ","

  ;; These variables control whether separate commands are bound in the GUI to
  ;; the key pairs `C-i', `TAB' and `C-m', `RET'. Setting it to a non-nil value,
  ;; allows for separate commands under `C-i' and TAB or `C-m' and `RET'. In the
  ;; terminal, these pairs are generally indistinguishable, so this only works
  ;; in the GUI.
  ;; (default nil)
  dotspacemacs-distinguish-gui-tab nil

  ;; Accept SPC as y for prompts if non-nil.
  ;; (default nil)
  dotspacemacs-use-SPC-as-y nil

  ;; Which-key delay in seconds. The which-key buffer is the popup listing
  ;; the commands bound to the current keystroke sequence.
  ;; (default 0.4)
  dotspacemacs-which-key-delay 0.3

  ;; Which-key frame position. Possible values are `right', `bottom' and
  ;; `right-then-bottom'. right-then-bottom tries to display the frame to the
  ;; right; if there is insufficient space it displays it at the bottom.
  ;; (default 'bottom)
  dotspacemacs-which-key-position 'bottom

  ;; If non-nil, the paste transient-state is enabled. While enabled, after you
  ;; paste something, pressing `C-j' and `C-k' several times cycles through the
  ;; elements in the `kill-ring'.
  ;; (default nil)
  dotspacemacs-enable-paste-transient-state nil

  ;; If non-nil show the titles of transient states.
  ;; (default t)
  dotspacemacs-show-transient-state-title t

  ;; If non-nil show the color guide hint for transient state keys.
  ;; (default t)
  dotspacemacs-show-transient-state-color-guide t

  ;; If non-nil smooth scrolling (native-scrolling) is enabled. Smooth scrolling
  ;; overrides the default behavior of Emacs which recenters point when it
  ;; reaches the top or bottom of the screen.
  ;; (default t)
  dotspacemacs-smooth-scrolling t

  ;; Show the scroll bar while scrolling. The auto hide time can be configured
  ;; by setting this variable to a number.
  ;; (default t)
  dotspacemacs-scroll-bar-while-scrolling nil

  ;; If non-nil then spacemacs will check for updates at startup when the
  ;; current branch is not `develop'. Note that checking for new versions works
  ;; via git commands, thus it calls GitHub services whenever you start Emacs.
  ;; (default nil)
  dotspacemacs-check-for-update nil

  ;; If non-nil ELPA repositories are contacted via HTTPS whenever it's
  ;; possible. Set it to nil if you have no way to use HTTPS in your
  ;; environment, otherwise it is strongly recommended to let it set to t. This
  ;; variable has no effect if Emacs is launched with the parameter `--insecure'
  ;; which forces the value of this variable to nil.
  ;; (default t)
  dotspacemacs-elpa-https t

  ;; Maximum allowed time in seconds to contact an ELPA repository.
  ;; (default 5)
  dotspacemacs-elpa-timeout 5

  ;; If non-nil, a form that evaluates to a package directory. For example, to
  ;; use different package directories for different Emacs versions, set this to
  ;; `emacs-version'.
  ;; (default 'emacs-version)
  dotspacemacs-elpa-subdirectory 'emacs-version

  ;; If non-nil then Spacelpa repository is the primary source to install a
  ;; locked version of packages. If nil then Spacemacs will install the latest
  ;; version of packages from MELPA. Spacelpa is currently in experimental state
  ;; please use only for testing purposes.
  ;; (default nil)
  dotspacemacs-use-spacelpa nil

  ;; If non-nil then verify the signature for downloaded Spacelpa archives.
  ;; (default t)
  dotspacemacs-verify-spacelpa-archives t

  ;; If non-nil then enable support for the portable dumper. You'll need to
  ;; compile Emacs 27 from source following the instructions in file
  ;; EXPERIMENTAL.org at to root of the git repository.
  ;;
  ;; WARNING: pdumper does not work with Native Compilation, so it's disabled
  ;; regardless of the following setting when native compilation is in effect.
  ;;
  ;; (default nil)
  dotspacemacs-enable-emacs-pdumper nil

  ;; Name of executable file pointing to emacs 27+. This executable must be in
  ;; your PATH.
  ;; (default "emacs")
  dotspacemacs-emacs-pdumper-executable-file "emacs"

  ;; Name of the Spacemacs dump file. This is the file will be created by the
  ;; portable dumper in the cache directory under dumps sub-directory.
  ;; To load it when starting Emacs add the parameter `--dump-file'
  ;; when invoking Emacs 27.1 executable on the command line, for instance:
  ;;   ./emacs --dump-file=$HOME/.emacs.d/.cache/dumps/spacemacs-27.1.pdmp
  ;; (default (format "spacemacs-%s.pdmp" emacs-version))
  dotspacemacs-emacs-dumper-dump-file (format "spacemacs-%s.pdmp" emacs-version)

  ;; Set `gc-cons-threshold' and `gc-cons-percentage' when startup finishes.
  ;; This is an advanced option and should not be changed unless you suspect
  ;; performance issues due to garbage collection operations.
  ;; (default '(100000000 0.1))
  dotspacemacs-gc-cons '(100000000 0.1)

  ;; Set `read-process-output-max' when startup finishes. This defines how much
  ;; data is read from a foreign process. Setting this >= 1 MB should increase
  ;; performance for lsp servers in emacs 27.
  ;; (default (* 1024 1024))
  dotspacemacs-read-process-output-max (* 1024 1024)

  ;; If non-nil then byte-compile some of Spacemacs files.
  dotspacemacs-byte-compile nil

  ;; List of search tool executable names. Spacemacs uses the first installed
  ;; tool of the list. Supported tools are `rg', `ag', `pt', `ack' and `grep'.
  ;; (default '("rg" "ag" "pt" "ack" "grep"))
  dotspacemacs-search-tools '("rg" "ag" "pt" "ack" "grep")

  ;; Default font or prioritized list of fonts. The `:size' can be specified as
  ;; a non-negative integer (pixel size), or a floating-point (point size).
  ;; Point size is recommended, because it's device independent.
  ;; (default 10.0)
  dotspacemacs-default-font '("Source Code Pro"
                              :size 10.0
                              :weight normal
                              :width normal)

  ;; List of themes, the first of the list is loaded when spacemacs starts.
  ;; Press `SPC T n' to cycle to the next theme in the list (works great with 2
  ;; themes variants, one dark and one light)
  dotspacemacs-themes '(spacemacs-dark
                        spacemacs-light)

  ;; Set the theme for the Spaceline. Supported themes are `spacemacs',
  ;; `all-the-icons', `custom', `doom', `vim-powerline' and `vanilla'. The first
  ;; three are spaceline themes. `doom' is the doom-emacs mode-line. `vanilla'
  ;; is default Emacs mode-line. `custom' is a user defined themes, refer to the
  ;; DOCUMENTATION.org for more info on how to create your own spaceline theme.
  ;; Value can be a symbol or list with additional properties.
  ;; (default '(spacemacs :separator wave :separator-scale 1.5))
  dotspacemacs-mode-line-theme '(doom)

  ;; If non-nil unicode symbols are displayed in the mode line. If you use Emacs
  ;; as a daemon and wants unicode characters only in GUI set the value to
  ;; quoted `display-graphic-p'.
  ;; (default t)
  dotspacemacs-mode-line-unicode-symbols t

  ;; If non-nil the cursor color matches the state color in GUI Emacs.
  ;; (default t)
  dotspacemacs-colorize-cursor-according-to-state t

  ;; A value from the range (0..100), in increasing opacity, which describes
  ;; the transparency level of a frame when it's active or selected.
  ;; Transparency can be toggled through `toggle-transparency'.
  ;; (default 90)
  dotspacemacs-active-transparency 90

  ;; A value from the range (0..100), in increasing opacity, which describes
  ;; the transparency level of a frame when it's inactive or deselected.
  ;; Transparency can be toggled through `toggle-transparency'.
  ;; (default 90)
  dotspacemacs-inactive-transparency 90

  ;; A value from the range (0..100), in increasing opacity, which describes
  ;; the transparency level of a frame background when it's active or selected.
  ;; Transparency can be toggled through `toggle-background-transparency'.
  ;; (default 90)
  dotspacemacs-background-transparency 90

  ;; If non-nil, start an Emacs server if one is not already running.
  ;; (default nil)
  dotspacemacs-enable-server nil

  ;; Set the emacs server socket location. If nil, uses whatever the Emacs
  ;; default is, otherwise a directory path like \"~/.emacs.d/server\". It has
  ;; no effect if `dotspacemacs-enable-server' is nil.
  ;; (default nil)
  dotspacemacs-server-socket-dir nil

  ;; If non-nil, advise quit functions to keep server open when quitting.
  ;; (default nil)
  dotspacemacs-persistent-server nil

  ;; Either nil or a number of seconds. If non-nil zone out after the specified
  ;; number of seconds.
  ;; (default nil)
  dotspacemacs-zone-out-when-idle nil

  ;; Run `spacemacs/prettify-org-buffer' when visiting README.org files of
  ;; Spacemacs.
  ;; (default nil)
  dotspacemacs-pretty-docs nil))

(defun dotspacemacs/layers ()
  "Layer configuration:
This function should only modify configuration layer settings."
  (setq-default

  ;; Base distribution to use. This is a layer contained in the directory
  ;; `+distribution'. For now available distributions are `spacemacs-base' or
  ;; `spacemacs'. (default 'spacemacs)
  dotspacemacs-distribution 'spacemacs

  ;; Lazy installation of layers (i.e. layers are installed only when a file
  ;; with a supported type is opened). Possible values are `all', `unused'
  ;; and `nil'. `unused' will lazy install only unused layers (i.e. layers
  ;; not listed in variable `dotspacemacs-configuration-layers'), `all' will
  ;; lazy install any layer that support lazy installation even the layers
  ;; listed in `dotspacemacs-configuration-layers'. `nil' disable the lazy
  ;; installation feature and you have to explicitly list a layer in the
  ;; variable `dotspacemacs-configuration-layers' to install it.
  ;; (default 'unused)
  dotspacemacs-enable-lazy-installation 'unused

  ;; If non-nil then Spacemacs will ask for confirmation before installing
  ;; a layer lazily.
  ;; (default t)
  dotspacemacs-ask-for-lazy-installation t

  ;; List of additional paths where to look for configuration layers.
  ;; Paths must have a trailing slash (i.e. `~/.mycontribs/')
  dotspacemacs-configuration-layer-path '()

    ;; List of configuration layers to load.
    dotspacemacs-configuration-layers
    '(
      ;;; Checker Layers
      ;; ----------------------------------------------------------------
      spell-checking
      ;; syntax-checking

      ;;; Completion Layers
      ;; ----------------------------------------------------------------
      ;; auto-completion
      helm

      ;;; Emacs Layers
      ;; ----------------------------------------------------------------
      ;; better-defaults
      helpful
      (ibuffer :variables ibuffer-group-buffers-by 'projects)
      (org :variables org-enable-appear-support t
                      org-enable-sticky-header t
                      org-enable-transclusion-support t
                      org-enable-valign t
                      org-enable-roam-support t
                      org-enable-roam-ui t
                      org-enable-roam-protocol t)

      ;;; File Tree Layers
      ;; ----------------------------------------------------------------
      (treemacs :variables treemacs-use-git-mode 'deferred)

      ;;; Miscellaneous Layers
      ;; ----------------------------------------------------------------
      multiple-cursors

      ;;; Programming Language Layers
      ;; ----------------------------------------------------------------
      (c-c++ :variables c-c++-backend 'lsp-clangd)
      (csharp :variables csharp-backend 'lsp)
      emacs-lisp
      java
      (javascript :variables javascript-backend 'lsp
                             javascript-lsp-linter nil
                             javascript-repl 'nodejs
                             js2-mode-show-strict-warnings nil)
      (typescript :variables typescript-backend 'lsp
                             typescript-lsp-linter nil)
      (php :variables php-backend 'lsp)
      (python :variables python-backend 'lsp)
      shell-scripts

      ;;; Other Language Layers
      ;; ----------------------------------------------------------------
      csv
      gpu
      graphql
      (html :variables css-enable-lsp t
                       html-enable-lsp t
                       less-enable-lsp t
                       scss-enable-lsp t)
      (json :variables json-backend 'lsp)
      (latex :variables latex-refresh-preview t
                        latex-build-engine 'xetex
                        latex-view-pdf-in-split-window t)
      markdown
      (sql :variables sql-backend 'lsp)
      (yaml :variables yaml-enable-lsp t)

      ;;; Frameworks
      ;; ----------------------------------------------------------------
      django
      react
      (svelte :variables svelte-backend 'lsp)
      (vue :variables vue-backend 'lsp)

      ;;; Utilities
      ;; ----------------------------------------------------------------
      dotnet
      (ipython-notebook :variables ein-backend 'jupyter)

      ;;; Tool Layers
      ;; ----------------------------------------------------------------
      (docker :variables docker-dockerfile-backend 'lsp)
      kubernetes
      lsp
      (shell :variables shell-default-shell 'vterm
                        shell-default-height 30
                        shell-default-position 'bottom)

      ;;; Readers
      ;; ----------------------------------------------------------------
      pdf

      ;;; Version Control Layers
      ;; ----------------------------------------------------------------
      (git :variables git-enable-magit-todos-plugin t)
      version-control
      )

  ;; Defines the behaviour of Spacemacs when installing packages. Possible
  ;; values are `used-only', `used-but-keep-unused' and `all'. `used-only'
  ;; installs only explicitly used packages and deletes any unused packages as
  ;; well as their unused dependencies. `used-but-keep-unused' installs only
  ;; the used packages but won't delete unused ones. `all' installs *all*
  ;; packages supported by Spacemacs and never uninstalls them.
  ;; (default is `used-only')
  dotspacemacs-install-packages 'used-only

  ;; List of additional packages that will be installed without being wrapped
  ;; in a layer (generally the packages are installed only and should still be
  ;; loaded using load/require/use-package in the user-config section below in
  ;; this file). If you need some configuration for these packages, then
  ;; consider creating a layer. You can also put the configuration in
  ;; `dotspacemacs/user-config'. To use a local version of a package, use the
  ;; `:location' property: '(your-package :location "~/path/to/your-package/")
  ;; Also include the dependencies as they will not be resolved automatically.
  dotspacemacs-additional-packages '(leetcode
                                     org-drill
                                     org-inline-anim
                                     org-modern
                                     zotxt)

  ;; A list of packages that cannot be updated.
  dotspacemacs-frozen-packages '()

  ;; A list of packages that will not be installed and loaded.
  dotspacemacs-excluded-packages '()))

(defun dotspacemacs/user-env ()
  "Environment variables setup.
This function defines the environment variables for your Emacs session. By
default it calls `spacemacs/load-spacemacs-env' which loads the environment
variables declared in `~/.spacemacs.env' or `~/.spacemacs.d/.spacemacs.env'.
See the header of this file for more information."
  (spacemacs/load-spacemacs-env)
)

(defun dotspacemacs/user-init ()
  "Initialization for user code:
This function is called immediately after `dotspacemacs/init', before layer
configuration.It is mostly for variables that should be set before packages are
loaded. If you are unsure, try setting them in `dotspacemacs/user-config'
first."
  ;; Use ~/spacemacs.d/custom.el to store custom variables instead of the
  ;; standard `dotspacemacs/emacs-custom-settings' function within the init.el
  ;; file. This is a perferred alternative because tangling this file will
  ;; overwrite custom variables written to init.el
  (customize-set-variable 'custom-file (file-truename "~/.spacemacs.d/custom.el"))
  (load custom-file)
)

(defun dotspacemacs/user-load ()
  "Library to load while dumping.
This function is called only while dumping Spacemacs configuration. You can
`require' or `load' the libraries of your choice that will be included in the
dump."
)

(defun dotspacemacs/user-config ()
  "Configuration for user code:
This function is called at the very end of Spacemacs startup, after layer
configuration. Put your configuration code here, except for variables that
should be set before packages are loaded."
  ;;; Code Editing Configuration
  ;; ----------------------------------------------------------------
  ;; This snippet is used to fix an issue where the line number column appears
  ;; uneven with code folding and a high line count
  (defun equalize-line-number-column-width ()
    "Equalize the line number column width."
    (setq display-line-numbers-width (length (number-to-string (line-number-at-pos (point-max))))))

  ;; REVIEW: the `find-file-hook' could be too general
  (when dotspacemacs-line-numbers
    (add-hook 'find-file-hook #'equalize-line-number-column-width))

  ;; Prevents line wrapping in buffer displays while editing various files.
  ;; TODO: look for better hooks to disable line wrapping in a cleaner way
  (add-hook 'prog-mode-hook #'toggle-truncate-lines)
  (add-hook 'text-mode-hook #'toggle-truncate-lines)

  ;;; LeetCode Configuration
  ;; ----------------------------------------------------------------
  (with-eval-after-load 'leetcode
    (customize-set-variable 'leetcode-prefer-language "javascript")
    (customize-set-variable 'leetcode-prefer-sql "mysql")
    (customize-set-variable 'leetcode-save-solutions t)
    (customize-set-variable 'leetcode-directory "~/leetcode"))

  ;;; Magit Configuration
  ;; ----------------------------------------------------------------
  ;; The function added to the `git-commit-post-finish-hook' is used to display
  ;; the magit process-buffer after commiting. This provides a convenient way of
  ;; looking at any potential output from git commit hooks.
  ;; TODO: improve this hook and the process-buffer display
  (add-hook 'git-commit-post-finish-hook #'(lambda () (save-selected-window (magit-process-buffer))))

  ;;; Mode-line Configuration
  ;; ----------------------------------------------------------------
  (setq doom-modeline-height 30)

  ;;; Org Configuration
  ;; ----------------------------------------------------------------
  ;; The org-modern package is used give org-mode buffers a cleaner style. The
  ;; portion below contains the call to enable it globally and customize
  ;; associated variables.
  (global-org-modern-mode)
  (customize-set-variable 'org-modern-star '("​"))
  (customize-set-variable 'org-modern-list '((?- . "•")
                                             (?+ . "➤")))
  (customize-set-variable 'org-modern-tag nil)
  (customize-set-variable 'org-modern-table nil)
  (customize-set-variable 'org-modern-horizontal-rule nil)

  ;; Org mode face customizations.
  (customize-set-variable 'org-emphasis-alist '(("*" (:weight bold :foreground "#bb6dc4"))
                                                ("/" (:slant italic :foreground "#2c9372"))
                                                ("_" (:underline t))
                                                ("=" org-verbatim verbatim)
                                                ("~" (:foreground "#cc5279" :background "#171c21"))
                                                ("+" (:strike-through t))))

  ;; This section contains a series of `org-mode-hook' calls which are
  ;; intended to enable a collection of minor modes in org buffers.
  ;; TODO: find an alternative for `org-inline-anim-mode'
  (add-hook 'org-mode-hook #'spacemacs/disable-hl-line-mode)
  (add-hook 'org-mode-hook #'org-inline-anim-mode)
  (add-hook 'org-mode-hook #'org-zotxt-mode)

  ;; When `org-src-preserve-indentation' is non-nil the leading whitespace
  ;; characters in an org file are preserved on export. This also applies to the
  ;; tangled src blocks in this file.
  (customize-set-variable 'org-src-preserve-indentation t)

  ;; Enables display toggling of emphasized markers on hover.
  (customize-set-variable 'org-appear-autoemphasis t)

  ;; Enables a special font face for text in org quote blocks and verse blocks.
  (customize-set-variable 'org-fontify-quote-and-verse-blocks t)

  ;; Enables hidden emphasis markers.
  (customize-set-variable 'org-hide-emphasis-markers t)

  ;; The `org-emphasis-regexp-components' variable sets the Regex components
  ;; that will be used to recognize emphasized text in org mode. Tweaking this
  ;; variable can correct odd highlighting behavior for text that is meant to be
  ;; emphasized.
  (setq org-emphasis-regexp-components '("-[:space:]('\"{"
                                          "-[:space:].,—:!?;'\")}\\["
                                          "[:space:]"
                                          "."
                                          1))

  ;; Enables automatic LaTeX previews in org buffers on startup
  (customize-set-variable 'org-startup-with-latex-preview t)

  ;; This section introduces a fix for equation numbering in org LaTeX previews.
  ;; TODO: tweak the renumber equation later
  ;; TODO: provide credit to John Kitchin
  (defun org-renumber-environment (orig-func &rest args)
    (let ((results '())
          (counter -1)
          (numberp))
      (setq results (loop for (begin .  env) in
                          (org-element-map (org-element-parse-buffer) 'latex-environment
                            (lambda (env)
                              (cons
                              (org-element-property :begin env)
                              (org-element-property :value env))))
                          collect
                          (cond
                          ((and (string-match "\\\\begin{equation}" env)
                                (not (string-match "\\\\tag{" env)))
                            (incf counter)
                            (cons begin counter))
                          ((string-match "\\\\begin{align}" env)
                            (prog2
                                (incf counter)
                                (cons begin counter)
                              (with-temp-buffer
                                (insert env)
                                (goto-char (point-min))
                                ;; \\ is used for a new line. Each one leads to a number
                                (incf counter (count-matches "\\\\$"))
                                ;; unless there are nonumbers.
                                (goto-char (point-min))
                                (decf counter (count-matches "\\nonumber")))))
                          (t
                            (cons begin nil)))))
      (when (setq numberp (cdr (assoc (point) results)))
        (setf (car args)
              (concat
              (format "\\setcounter{equation}{%s}\n" numberp)
              (car args)))))
    (apply orig-func args))

  (advice-add 'org-create-formula-image :around #'org-renumber-environment)

  ;;; Org-roam
  ;; ----------------------------------------------------------------
  ;; Sets the default path to all org-roam files.
  (customize-set-variable 'org-roam-directory (file-truename "~/PKMS/00-notes/"))

  ;; The list of templates for the creation of new org-roam entries.
  (customize-set-variable 'org-roam-capture-templates
      '(("d" "default template" plain "%?"
        :target (file+head "${slug}_%<%Y%m%d%H%M%S>.org"
                            "#+title: ${title}\n#+filetags: <subject> 📝 🌰\n")
        :unnarrowed t)))

  ;; Sets the minibuffer history for org-roam nodes.
  (setq org-roam-node-history nil)

  ;; Sets the display formatting for org-roam nodes in minibuffer search.
  (customize-set-variable 'org-roam-node-display-template (concat "${title:100}"
                                                                  (propertize "${tags:60}" 'face 'org-tag)))

  ;; (customize-set-variable 'org-tag-alist '(("📕")
  ;;                                          ("📑")
  ;;                                          ("📝")
  ;;                                          ("🌲")
  ;;                                          ("🌿")
  ;;                                          ("🌱")
  ;;                                          ("🌰")
  ;;                                          ("browsers")
  ;;                                          ("career-development")
  ;;                                          ("computer-science")
  ;;                                          ("css")
  ;;                                          ("emacs-lisp")
  ;;                                          ("data-structures-&-algorithms")
  ;;                                          ("health-&-fitness")
  ;;                                          ("html")
  ;;                                          ("javascript")
  ;;                                          ("mathematics")
  ;;                                          ("programming-language-theory")
  ;;                                          ("software-architecture-&-design-patterns")
  ;;                                          ("software-engineering")
  ;;                                          ("theory-of-computation")
  ;;                                          ("web-development")))

  ;; Enables automatic roam db sync.
  (org-roam-db-autosync-mode)

  ;;; Org Drill Configuration
  ;; ----------------------------------------------------------------
  ;; Sets the maximum duration of an org-drill session in minutes.
  (setq org-drill-maximum-duration 30)

  ;; Sets the maximum amount of items that can be reviewed in a org-drill
  ;; session.
  (setq org-drill-maximum-items-per-session 40)

  ;; Custom interactive function for drilling portions of my knowledge base.
  (defun conf/org-drill ()
    "Custom function for initiating org-drill review sessions."
    (interactive)
    (with-eval-after-load 'org-roam
      (let* ((selected-drill (completing-read "Select drill topic: " '("programming"
                                                                        "mathematics"
                                                                        "career"
                                                                        "interviews")))
              (files (cond ((string-equal selected-drill "programming")
                            (flatten-tree (org-roam-db-query [:select [file]
                                                              :from nodes
                                                              :inner-join tags
                                                              :on (= nodes:id tags:node-id)
                                                              :where (or (= tags:tag "computer-science")
                                                                         (= tags:tag "software-engineering")
                                                                         (= tags:tag "web-development"))])))
                          ((string-equal selected-drill "mathematics")
                            (flatten-tree (org-roam-db-query [:select [file]
                                                              :from nodes
                                                              :inner-join tags
                                                              :on (= nodes:id tags:node-id)
                                                              :where (= tags:tag "mathematics")])))
                          ((string-equal selected-drill "career")
                            (flatten-tree (org-roam-db-query [:select [file]
                                                              :from nodes
                                                              :inner-join tags
                                                              :on (= nodes:id tags:node-id)
                                                              :where (= tags:tag "career-development")])))
                          ((string-equal selected-drill "interviews")
                            (flatten-tree (org-roam-db-query [:select [file]
                                                              :from nodes
                                                              :inner-join tags
                                                              :on (= nodes:id tags:node-id)
                                                              :where (= tags:tag "interviews")]))))))
        (setq 'org-drill-scope files)
        (org-drill))))

  ;;; Project Management
  ;; ----------------------------------------------------------------
  ;; Tell projectile about all my projects.
  ;; NOTE: settings specific to my file system
  (projectile-discover-projects-in-directory "~/Work/projects/" 1)
  (projectile-discover-projects-in-directory "~/Work/reference/" 1)

  ;;; Styling
  ;; ----------------------------------------------------------------
  ;; The `default-frame-alist' variable is a list of frame parameters which
  ;; control the default appearance and behaviour of all frames in Emacs. By
  ;; changing the value of the `alpha' parameter we can give each frame a
  ;; transparency effect.
  (add-to-list 'default-frame-alist '(alpha 92 92))

  ;; Adds column ruler at an 80 character width in all buffers with a
  ;; "prog-type" major modes.
  (add-hook 'prog-mode-hook #'display-fill-column-indicator-mode)

  ;; The `spacemacs-visual' layer includes `hl-todo' for highlighting TODO and
  ;; other important comment keywords. The code below tells `hl-todo' what
  ;; special comments it should look for and how they should appear.
  (with-eval-after-load 'hl-todo
    (customize-set-variable 'hl-todo-highlight-punctuation ":")
    (customize-set-variable 'hl-todo-keyword-faces '(("TODO" warning bold)
                                                     ("FIXME" error bold)
                                                     ("HACK" font-lock-constant-face bold)
                                                     ("REVIEW" font-lock-keyword-face bold)
                                                     ("DEPRECATED" font-lock-doc-face bold)
                                                     ("NOTE" success bold)
                                                     ("BUG" error bold)
                                                     ("XXX" font-lock-constant-face bold))))

  ;;; Treemacs configuration
  ;; ----------------------------------------------------------------
  ;; This snippet prevents projects in the treemacs buffer from displaying
  ;; gitignored files.
  (with-eval-after-load 'treemacs
    (add-to-list 'treemacs-pre-file-insert-predicates #'treemacs-is-file-git-ignored?))

  ;;; Web Development Configuration
  ;; ----------------------------------------------------------------
  ;; This section contains a collection of settings tweaks for indentation in
  ;; web-mode buffers.
  (setq-default js2-basic-offset 2
                js-indent-level 2
                css-indent-offset 2
                web-mode-markup-indent-offset 2
                web-mode-css-indent-offset 2
                web-mode-code-indent-offset 2
                web-mode-attr-indent-offset 2)

  ;;; Other
  ;; ----------------------------------------------------------------
  ;; Sets the default dictionary for the spell-checking layer. All spell
  ;; checking is tested against the dictionary (or dictionaries) selected.
  (setq ispell-dictionary "en_CA")
)
