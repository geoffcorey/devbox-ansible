" Jazz

hi clear

if exists("syntax_on")
    syntax reset
endif

let g:colors_name="jazz"


" Main
hi default ctermfg= ctermbg= cterm=none
hi link ctermfg= ctermbg= cterm=underline,bold
hi cursor ctermfg= ctermbg= cterm=none
hi fringe ctermfg= ctermbg= cterm=none
hi highlight ctermfg= ctermbg= cterm=none
hi match ctermfg= ctermbg= cterm=bold
hi isearch ctermfg= ctermbg= cterm=none
hi menu ctermfg= ctermbg= cterm=none
hi region ctermfg= ctermbg= cterm=none
hi linum ctermfg= ctermbg= cterm=none
hi link-visited ctermfg= ctermbg= cterm=underline
hi escape-glyph-face ctermfg= ctermbg= cterm=none
hi header-line ctermfg= ctermbg= cterm=none
hi isearch-fail ctermfg= ctermbg= cterm=none
hi lazy-highlight ctermfg= ctermbg= cterm=none
hi minibuffer-prompt ctermfg= ctermbg= cterm=none
hi secondary-selection ctermfg= ctermbg= cterm=none
hi trailing-whitespace ctermfg= ctermbg= cterm=none
hi vertical-border ctermfg= ctermbg= cterm=none
hi font-latex-sedate ctermfg= ctermbg= cterm=bold
hi hl-line-face ctermfg= ctermbg= cterm=none
hi slime-repl-inputed-output-face ctermfg= ctermbg= cterm=none
hi which-func ctermfg= ctermbg= cterm=none

" Compilation
hi compilation-column-face ctermfg= ctermbg= cterm=none
hi compilation-enter-directory-face ctermfg= ctermbg= cterm=none
hi compilation-error-face ctermfg= ctermbg= cterm=bold,underline
hi compilation-face ctermfg= ctermbg= cterm=none
hi compilation-info-face ctermfg= ctermbg= cterm=none
hi compilation-info ctermfg= ctermbg= cterm=underline
hi compilation-leave-directory-face ctermfg= ctermbg= cterm=none
hi compilation-line-face ctermfg= ctermbg= cterm=none
hi compilation-line-number ctermfg= ctermbg= cterm=none
hi compilation-message-face ctermfg= ctermbg= cterm=none
hi compilation-warning-face ctermfg= ctermbg= cterm=bold,underline

" Grep
hi grep-context-face ctermfg= ctermbg= cterm=none
hi grep-error-face ctermfg= ctermbg= cterm=bold,underline
hi grep-hit-face ctermfg= ctermbg= cterm=none
hi grep-match-face ctermfg= ctermbg= cterm=bold

" Mode Line
hi mode-line ctermfg= ctermbg= cterm=none
hi mode-line-buffer-id ctermfg= ctermbg= cterm=bold
hi mode-line-inactive ctermfg= ctermbg= cterm=none
hi mode-line-folder-face ctermfg= ctermbg= cterm=none
hi mode-line-modified-face ctermfg= ctermbg= cterm=none
hi mode-line-ro-modified-face ctermfg= ctermbg= cterm=none
hi mode-line-buffer-name ctermfg= ctermbg= cterm=none
hi mode-line-mode-name ctermfg= ctermbg= cterm=none
hi mode-line-mode-string ctermfg= ctermbg= cterm=none
hi mode-line-vc-mode ctermfg= ctermbg= cterm=none
hi mode-line-minor-mode-face ctermfg= ctermbg= cterm=none

" Font Lock
hi font-lock-builtin-face ctermfg= ctermbg= cterm=none
hi font-lock-comment-face ctermfg= ctermbg= cterm=none
hi font-lock-comment-delimiter-face ctermfg= ctermbg= cterm=none
hi font-lock-constant-face ctermfg= ctermbg= cterm=none
hi font-lock-doc-face ctermfg= ctermbg= cterm=none
hi font-lock-doc-string-face ctermfg= ctermbg= cterm=none
hi font-lock-function-name-face ctermfg= ctermbg= cterm=none
hi font-lock-keyword-face ctermfg= ctermbg= cterm=none
hi font-lock-negation-char-face ctermfg= ctermbg= cterm=none
hi font-lock-preprocessor-face ctermfg= ctermbg= cterm=none
hi font-lock-string-face ctermfg= ctermbg= cterm=none
hi font-lock-type-face ctermfg= ctermbg= cterm=none
hi font-lock-variable-name-face ctermfg= ctermbg= cterm=none
hi font-lock-warning-face ctermfg= ctermbg= cterm=bold,underline

" Ack
hi ack-separator ctermfg= ctermbg= cterm=none
hi ack-file ctermfg= ctermbg= cterm=none
hi ack-line ctermfg= ctermbg= cterm=none
hi ack-match ctermfg= ctermbg= cterm=none

" Auto Complete
hi ac-candidate-face ctermfg= ctermbg= cterm=none
hi ac-selection-face ctermfg= ctermbg= cterm=none

" Popup
hi popup-tip-face ctermfg= ctermbg= cterm=none
hi popup-scroll-bar-foreground-face ctermfg= ctermbg= cterm=none
hi popup-scroll-bar-background-face ctermfg= ctermbg= cterm=none
hi popup-isearch-match ctermfg= ctermbg= cterm=none

" Diff Mode
hi diff-added ctermfg= ctermbg= cterm=none
hi diff-changed ctermfg= ctermbg= cterm=none
hi diff-removed ctermfg= ctermbg= cterm=none
hi diff-header ctermfg= ctermbg= cterm=none
hi diff-file-header ctermfg= ctermbg= cterm=bold

" Emacs Regression Testing
hi ert-test-result-expected ctermfg= ctermbg= cterm=none
hi ert-test-result-unexpected ctermfg= ctermbg= cterm=none

" Eshell
hi eshell-prompt ctermfg= ctermbg= cterm=none
hi eshell-ls-archive ctermfg= ctermbg= cterm=bold
hi eshell-ls-directory ctermfg= ctermbg= cterm=bold
hi eshell-ls-executable ctermfg= ctermbg= cterm=bold
hi eshell-ls-unreadable ctermfg= ctermbg= cterm=none
hi eshell-ls-special ctermfg= ctermbg= cterm=none
hi eshell-ls-symlink ctermfg= ctermbg= cterm=bold

" Flymake
hi flymake-errline ctermfg= ctermbg= cterm=underline,bold
hi flymake-warnline ctermfg= ctermbg= cterm=underline,bold
hi flymake-infoline ctermfg= ctermbg= cterm=underline,bold

" Flyspell
hi flyspell-duplicate ctermfg= ctermbg= cterm=underline,bold
hi flyspell-incorrect ctermfg= ctermbg= cterm=underline,bold

" Flycheck
hi flycheck-error ctermfg= ctermbg= cterm=underline,bold
hi flycheck-fringe-error ctermfg= ctermbg= cterm=none
hi flycheck-warning ctermfg= ctermbg= cterm=underline,bold
hi flycheck-fringe-warning ctermfg= ctermbg= cterm=none

" Erc
hi erc-current-nick-face ctermfg= ctermbg= cterm=bold
hi erc-default-face ctermfg= ctermbg= cterm=none
hi erc-input-face ctermfg= ctermbg= cterm=none
hi erc-keyword-face ctermfg= ctermbg= cterm=bold
hi erc-nick-default-face ctermfg= ctermbg= cterm=bold
hi erc-my-nick-face ctermfg= ctermbg= cterm=none
hi erc-notice-face ctermfg= ctermbg= cterm=none
hi erc-pal-face ctermfg= ctermbg= cterm=bold
hi erc-prompt-face ctermfg= ctermbg= cterm=bold
hi erc-timestamp-face ctermfg= ctermbg= cterm=none

" Gnus
hi gnus-summary-cancelled ctermfg= ctermbg= cterm=none
hi gnus-summary-high-ancient ctermfg= ctermbg= cterm=none
hi gnus-summary-high-read ctermfg= ctermbg= cterm=bold
hi gnus-summary-high-ticked ctermfg= ctermbg= cterm=bold
hi gnus-summary-high-unread ctermfg= ctermbg= cterm=bold
hi gnus-summary-low-ancient ctermfg= ctermbg= cterm=none
hi gnus-summary-low-read ctermfg= ctermbg= cterm=none
hi gnus-summary-low-ticked ctermfg= ctermbg= cterm=bold
hi gnus-summary-low-unread ctermfg= ctermbg= cterm=none
hi gnus-summary-normal-ancient ctermfg= ctermbg= cterm=none
hi gnus-summary-normal-read ctermfg= ctermbg= cterm=none
hi gnus-summary-normal-ticked ctermfg= ctermbg= cterm=bold
hi gnus-summary-normal-unread ctermfg= ctermbg= cterm=none
hi gnus-summary-selected ctermfg= ctermbg= cterm=bold
hi gnus-cite-1 ctermfg= ctermbg= cterm=none
hi gnus-cite-10 ctermfg= ctermbg= cterm=none
hi gnus-cite-11 ctermfg= ctermbg= cterm=none
hi gnus-cite-2 ctermfg= ctermbg= cterm=none
hi gnus-cite-3 ctermfg= ctermbg= cterm=none
hi gnus-cite-4 ctermfg= ctermbg= cterm=none
hi gnus-cite-5 ctermfg= ctermbg= cterm=none
hi gnus-cite-6 ctermfg= ctermbg= cterm=none
hi gnus-cite-7 ctermfg= ctermbg= cterm=none
hi gnus-cite-8 ctermfg= ctermbg= cterm=none
hi gnus-cite-9 ctermfg= ctermbg= cterm=none
hi gnus-group-news-1-empty ctermfg= ctermbg= cterm=none
hi gnus-group-news-2-empty ctermfg= ctermbg= cterm=none
hi gnus-group-news-3-empty ctermfg= ctermbg= cterm=none
hi gnus-group-news-4-empty ctermfg= ctermbg= cterm=none
hi gnus-group-news-5-empty ctermfg= ctermbg= cterm=none
hi gnus-group-news-6-empty ctermfg= ctermbg= cterm=none
hi gnus-group-news-low-empty ctermfg= ctermbg= cterm=none
hi gnus-signature ctermfg= ctermbg= cterm=none
hi gnus-x ctermfg= ctermbg= cterm=none

" Helm
hi helm-header ctermfg= ctermbg= cterm=none
hi helm-source-header ctermfg= ctermbg= cterm=bold
hi helm-selection ctermfg= ctermbg= cterm=none
hi helm-selection-line ctermfg= ctermbg= cterm=none
hi helm-visible-mark ctermfg= ctermbg= cterm=none
hi helm-candidate-number ctermfg= ctermbg= cterm=none

" Interactively Do Things
hi ido-first-match ctermfg= ctermbg= cterm=none
hi ido-only-match ctermfg= ctermbg= cterm=none
hi ido-subdir ctermfg= ctermbg= cterm=none

" JavaScript Mode 2
hi js2-error-face ctermfg= ctermbg= cterm=bold
hi js2-jsdoc-tag-face ctermfg= ctermbg= cterm=none
hi js2-jsdoc-type-face ctermfg= ctermbg= cterm=none
hi js2-jsdoc-value-face ctermfg= ctermbg= cterm=none
hi js2-function-param-face ctermfg= ctermbg= cterm=none
hi js2-external-variable-face ctermfg= ctermbg= cterm=none

" Jabber
hi jabber-roster-user-away ctermfg= ctermbg= cterm=none
hi jabber-roster-user-online ctermfg= ctermbg= cterm=none
hi jabber-roster-user-dnd ctermfg= ctermbg= cterm=none
hi jabber-rare-time-face ctermfg= ctermbg= cterm=none
hi jabber-chat-prompt-local ctermfg= ctermbg= cterm=none
hi jabber-chat-prompt-foreign ctermfg= ctermbg= cterm=none
hi jabber-activity-face ctermfg= ctermbg= cterm=none
hi jabber-activity-personal-face ctermfg= ctermbg= cterm=none

" Magit
hi magit-section-title ctermfg= ctermbg= cterm=bold
hi magit-branch ctermfg= ctermbg= cterm=bold
hi magit-item-highlight ctermfg= ctermbg= cterm=none

" Message
hi message-header-name ctermfg= ctermbg= cterm=none
hi message-header-other ctermfg= ctermbg= cterm=none
hi message-header-to ctermfg= ctermbg= cterm=bold
hi message-header-from ctermfg= ctermbg= cterm=bold
hi message-header-cc ctermfg= ctermbg= cterm=bold
hi message-header-newsgroups ctermfg= ctermbg= cterm=bold
hi message-header-subject ctermfg= ctermbg= cterm=bold
hi message-header-xheader ctermfg= ctermbg= cterm=none
hi message-mml ctermfg= ctermbg= cterm=bold

" Mew
hi mew-face-header-subject ctermfg= ctermbg= cterm=none
hi mew-face-header-from ctermfg= ctermbg= cterm=none
hi mew-face-header-date ctermfg= ctermbg= cterm=none
hi mew-face-header-to ctermfg= ctermbg= cterm=none
hi mew-face-header-key ctermfg= ctermbg= cterm=none
hi mew-face-header-private ctermfg= ctermbg= cterm=none
hi mew-face-header-important ctermfg= ctermbg= cterm=none
hi mew-face-header-marginal ctermfg= ctermbg= cterm=bold
hi mew-face-header-warning ctermfg= ctermbg= cterm=none
hi mew-face-header-xmew ctermfg= ctermbg= cterm=none
hi mew-face-header-xmew-bad ctermfg= ctermbg= cterm=none
hi mew-face-body-url ctermfg= ctermbg= cterm=none
hi mew-face-body-comment ctermfg= ctermbg= cterm=italic
hi mew-face-body-cite1 ctermfg= ctermbg= cterm=none
hi mew-face-body-cite2 ctermfg= ctermbg= cterm=none
hi mew-face-body-cite3 ctermfg= ctermbg= cterm=none
hi mew-face-body-cite4 ctermfg= ctermbg= cterm=none
hi mew-face-body-cite5 ctermfg= ctermbg= cterm=none
hi mew-face-mark-review ctermfg= ctermbg= cterm=none
hi mew-face-mark-escape ctermfg= ctermbg= cterm=none
hi mew-face-mark-delete ctermfg= ctermbg= cterm=none
hi mew-face-mark-unlink ctermfg= ctermbg= cterm=none
hi mew-face-mark-refile ctermfg= ctermbg= cterm=none
hi mew-face-mark-unread ctermfg= ctermbg= cterm=none
hi mew-face-eof-message ctermfg= ctermbg= cterm=none
hi mew-face-eof-part ctermfg= ctermbg= cterm=none

" Minimap
hi minimap-semantic-function-face ctermfg= ctermbg=gray10 cterm=none
hi minimap-semantic-type-face ctermfg= ctermbg=gray10 cterm=none
hi minimap-semantic-variable-face ctermfg= ctermbg=gray10 cterm=none

" Paren
hi paren-face-match ctermfg= ctermbg= cterm=bold
hi paren-face-mismatch ctermfg= ctermbg= cterm=bold
hi paren-face-no-match ctermfg= ctermbg= cterm=bold

" File-system Navigator
hi nav-face-heading ctermfg= ctermbg= cterm=none
hi nav-face-button-num ctermfg= ctermbg= cterm=none
hi nav-face-dir ctermfg= ctermbg= cterm=none
hi nav-face-hdir ctermfg= ctermbg= cterm=none
hi nav-face-file ctermfg= ctermbg= cterm=none
hi nav-face-hfile ctermfg= ctermbg= cterm=none

" Organizer Mode
hi org-agenda-date-today ctermfg= ctermbg= cterm=italic,bold
hi org-archived ctermfg= ctermbg= cterm=bold
hi org-checkbox ctermfg= ctermbg= cterm=none
hi org-date ctermfg= ctermbg= cterm=underline
hi org-deadline-announce ctermfg= ctermbg= cterm=none
hi org-done ctermfg= ctermbg= cterm=bold
hi org-formula ctermfg= ctermbg= cterm=none
hi org-headline-done ctermfg= ctermbg= cterm=none
hi org-hide ctermfg= ctermbg= cterm=none
hi org-level-1 ctermfg= ctermbg= cterm=none
hi org-level-2 ctermfg= ctermbg= cterm=none
hi org-level-3 ctermfg= ctermbg= cterm=none
hi org-level-4 ctermfg= ctermbg= cterm=none
hi org-level-5 ctermfg= ctermbg= cterm=none
hi org-level-6 ctermfg= ctermbg= cterm=none
hi org-level-7 ctermfg= ctermbg= cterm=none
hi org-level-8 ctermfg= ctermbg= cterm=none
hi org-link ctermfg= ctermbg= cterm=underline
hi org-scheduled ctermfg= ctermbg= cterm=none
hi org-scheduled-previously ctermfg= ctermbg= cterm=none
hi org-scheduled-today ctermfg= ctermbg= cterm=none
hi org-special-keyword ctermfg= ctermbg= cterm=none
hi org-table ctermfg= ctermbg= cterm=none
hi org-time-grid ctermfg= ctermbg= cterm=none
hi org-todo ctermfg= ctermbg= cterm=bold
hi org-warning ctermfg= ctermbg= cterm=bold

" Rainbow Delimiters
hi rainbow-delimiters-depth-1-face ctermfg= ctermbg= cterm=none
hi rainbow-delimiters-depth-2-face ctermfg= ctermbg= cterm=none
hi rainbow-delimiters-depth-3-face ctermfg= ctermbg= cterm=none
hi rainbow-delimiters-depth-4-face ctermfg= ctermbg= cterm=none
hi rainbow-delimiters-depth-5-face ctermfg= ctermbg= cterm=none
hi rainbow-delimiters-depth-6-face ctermfg= ctermbg= cterm=none
hi rainbow-delimiters-depth-7-face ctermfg= ctermbg= cterm=none
hi rainbow-delimiters-depth-8-face ctermfg= ctermbg= cterm=none
hi rainbow-delimiters-depth-9-face ctermfg= ctermbg= cterm=none
hi rainbow-delimiters-depth-10-face ctermfg= ctermbg= cterm=none
hi rainbow-delimiters-depth-11-face ctermfg= ctermbg= cterm=none
hi rainbow-delimiters-depth-12-face ctermfg= ctermbg= cterm=none

" Rcirc
hi rcirc-my-nick ctermfg= ctermbg= cterm=none
hi rcirc-other-nick ctermfg= ctermbg= cterm=none
hi rcirc-bright-nick ctermfg= ctermbg= cterm=none
hi rcirc-dim-nick ctermfg= ctermbg= cterm=none
hi rcirc-server ctermfg= ctermbg= cterm=none
hi rcirc-server-prefix ctermfg= ctermbg= cterm=none
hi rcirc-timestamp ctermfg= ctermbg= cterm=none
hi rcirc-nick-in-message ctermfg= ctermbg= cterm=none
hi rcirc-prompt ctermfg= ctermbg= cterm=bold
hi rcirc-keyword ctermfg= ctermbg= cterm=bold

" Rpm
hi rpm-spec-dir-face ctermfg= ctermbg= cterm=none
hi rpm-spec-doc-face ctermfg= ctermbg= cterm=none
hi rpm-spec-ghost-face ctermfg= ctermbg= cterm=none
hi rpm-spec-macro-face ctermfg= ctermbg= cterm=none
hi rpm-spec-obsolete-tag-face ctermfg= ctermbg= cterm=none
hi rpm-spec-package-face ctermfg= ctermbg= cterm=none
hi rpm-spec-section-face ctermfg= ctermbg= cterm=none
hi rpm-spec-tag-face ctermfg= ctermbg= cterm=none
hi rpm-spec-var-face ctermfg= ctermbg= cterm=none

" Rst
hi rst-level-1-face ctermfg= ctermbg= cterm=none
hi rst-level-2-face ctermfg= ctermbg= cterm=none
hi rst-level-3-face ctermfg= ctermbg= cterm=none
hi rst-level-4-face ctermfg= ctermbg= cterm=none
hi rst-level-5-face ctermfg= ctermbg= cterm=none
hi rst-level-6-face ctermfg= ctermbg= cterm=none

" Parenthesis Matching
hi show-paren-mismatch ctermfg= ctermbg= cterm=bold
hi show-paren-match ctermfg= ctermbg= cterm=bold

" Undo Tree
hi undo-tree-visualizer-active-branch-face ctermfg= ctermbg= cterm=none
hi undo-tree-visualizer-current-face ctermfg= ctermbg= cterm=bold
hi undo-tree-visualizer-default-face ctermfg= ctermbg= cterm=none
hi undo-tree-visualizer-register-face ctermfg= ctermbg= cterm=none
hi undo-tree-visualizer-unmodified-face ctermfg= ctermbg= cterm=none

" Whitespace
hi whitespace-space ctermfg= ctermbg= cterm=none
hi whitespace-hspace ctermfg= ctermbg= cterm=none
hi whitespace-tab ctermfg= ctermbg= cterm=none
hi whitespace-newline ctermfg= ctermbg= cterm=none
hi whitespace-trailing ctermfg= ctermbg= cterm=none
hi whitespace-line ctermfg= ctermbg= cterm=none
hi whitespace-space-before-tab ctermfg= ctermbg= cterm=none
hi whitespace-indentation ctermfg= ctermbg= cterm=none
hi whitespace-empty ctermfg= ctermbg= cterm=none
hi whitespace-space-after-tab ctermfg= ctermbg= cterm=none

" Wander Lust
hi wl-highlight-folder-few-face ctermfg= ctermbg= cterm=none
hi wl-highlight-folder-many-face ctermfg= ctermbg= cterm=none
hi wl-highlight-folder-path-face ctermfg= ctermbg= cterm=none
hi wl-highlight-folder-unread-face ctermfg= ctermbg= cterm=none
hi wl-highlight-folder-zero-face ctermfg= ctermbg= cterm=none
hi wl-highlight-folder-unknown-face ctermfg= ctermbg= cterm=none
hi wl-highlight-message-citation-header ctermfg= ctermbg= cterm=none
hi wl-highlight-message-cited-text-1 ctermfg= ctermbg= cterm=none
hi wl-highlight-message-cited-text-2 ctermfg= ctermbg= cterm=none
hi wl-highlight-message-cited-text-3 ctermfg= ctermbg= cterm=none
hi wl-highlight-message-cited-text-4 ctermfg= ctermbg= cterm=none
hi wl-highlight-message-header-contents-face ctermfg= ctermbg= cterm=none
hi wl-highlight-message-headers-face ctermfg= ctermbg= cterm=none
hi wl-highlight-message-important-header-contents ctermfg= ctermbg= cterm=none
hi wl-highlight-message-header-contents ctermfg= ctermbg= cterm=none
hi wl-highlight-message-important-header-contents2 ctermfg= ctermbg= cterm=none
hi wl-highlight-message-signature ctermfg= ctermbg= cterm=none
hi wl-highlight-message-unimportant-header-contents ctermfg= ctermbg= cterm=none
hi wl-highlight-summary-answered-face ctermfg= ctermbg= cterm=none
hi wl-highlight-summary-disposed-face ctermfg= ctermbg= cterm=italic
hi wl-highlight-summary-new-face ctermfg= ctermbg= cterm=none
hi wl-highlight-summary-normal-face ctermfg= ctermbg= cterm=none
hi wl-highlight-summary-thread-top-face ctermfg= ctermbg= cterm=none
hi wl-highlight-thread-indent-face ctermfg= ctermbg= cterm=none
hi wl-highlight-summary-refiled-face ctermfg= ctermbg= cterm=none

" Enhanced Scala Interaction Mode
hi ensime-errline-highlight ctermfg= ctermbg= cterm=none
hi ensime-warnline ctermfg= ctermbg= cterm=none

" CoffeeScript
hi coffee-mode-function-param ctermfg= ctermbg= cterm=none
hi coffee-mode-class-name ctermfg= ctermbg= cterm=none