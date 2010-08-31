(defvar magit-mode-map
  (let ((map (make-keymap)))
    (suppress-keymap map t)
    (define-key map (kbd "n") 'magit-goto-next-section)
    (define-key map (kbd "p") 'magit-goto-previous-section)
    (define-key map (kbd "TAB") 'magit-toggle-section)
    (define-key map (kbd "<backtab>") 'magit-expand-collapse-section)
    (define-key map (kbd "1") 'magit-show-level-1)
    (define-key map (kbd "2") 'magit-show-level-2)
    (define-key map (kbd "3") 'magit-show-level-3)
    (define-key map (kbd "4") 'magit-show-level-4)
    (define-key map (kbd "M-1") 'magit-show-level-1-all)
    (define-key map (kbd "M-2") 'magit-show-level-2-all)
    (define-key map (kbd "M-3") 'magit-show-level-3-all)
    (define-key map (kbd "M-4") 'magit-show-level-4-all)
    (define-key map (kbd "M-h") 'magit-show-only-files)
    (define-key map (kbd "M-H") 'magit-show-only-files-all)
    (define-key map (kbd "M-s") 'magit-show-level-4)
    (define-key map (kbd "M-S") 'magit-show-level-4-all)
    (define-key map (kbd "<M-left>") 'magit-goto-parent-section)
    (define-key map (kbd "g") 'magit-refresh)
    (define-key map (kbd "G") 'magit-refresh-all)
    (define-key map (kbd "?") 'magit-describe-item)
    (define-key map (kbd "!") 'magit-shell-command)
    (define-key map (kbd ":") 'magit-git-command)
    (define-key map (kbd "RET") 'magit-visit-item)
    (define-key map (kbd "SPC") 'magit-show-item-or-scroll-up)
    (define-key map (kbd "DEL") 'magit-show-item-or-scroll-down)
    (define-key map (kbd "C-w") 'magit-copy-item-as-kill)
    (define-key map (kbd "R") 'magit-rebase-step)
    (define-key map (kbd "r s") 'magit-rewrite-start)
    (define-key map (kbd "r t") 'magit-rewrite-stop)
    (define-key map (kbd "r a") 'magit-rewrite-abort)
    (define-key map (kbd "r f") 'magit-rewrite-finish)
    (define-key map (kbd "r *") 'magit-rewrite-set-unused)
    (define-key map (kbd "r .") 'magit-rewrite-set-used)
    (define-key map (kbd "P") 'magit-push)
    (define-key map (kbd "f") 'magit-remote-update)
    (define-key map (kbd "F") 'magit-pull)
    (define-key map (kbd "c") 'magit-log-edit)
    (define-key map (kbd "l") (lambda () (interactive) (magit-key-mode 'logging)))
    (define-key map (kbd "$") 'magit-display-process)
    (define-key map (kbd "E") 'magit-interactive-rebase)
    (define-key map (kbd "q") 'quit-window)
    map))

(defvar magit-commit-mode-map
  (let ((map (make-sparse-keymap)))
    (define-key map (kbd "a") 'magit-apply-item)
    (define-key map (kbd "A") 'magit-cherry-pick-item)
    (define-key map (kbd "v") 'magit-revert-item)
    map))

(defvar magit-status-mode-map
  (let ((map (make-sparse-keymap)))
    (define-key map (kbd "-") 'magit-diff-smaller-hunks)
    (define-key map (kbd "+") 'magit-diff-larger-hunks)
    (define-key map (kbd "0") 'magit-diff-default-hunks)
    (define-key map (kbd "s") 'magit-stage-item)
    (define-key map (kbd "S") 'magit-stage-all)
    (define-key map (kbd "u") 'magit-unstage-item)
    (define-key map (kbd "U") 'magit-unstage-all)
    (define-key map (kbd "i") 'magit-ignore-item)
    (define-key map (kbd "I") 'magit-ignore-item-locally)
    (define-key map (kbd ".") 'magit-mark-item)
    (define-key map (kbd "=") 'magit-diff-with-mark)
    (define-key map (kbd "d") 'magit-diff-working-tree)
    (define-key map (kbd "D") 'magit-diff)
    (define-key map (kbd "a") 'magit-apply-item)
    (define-key map (kbd "A") 'magit-cherry-pick-item)
    (define-key map (kbd "v") 'magit-revert-item)
    (define-key map (kbd "b") 'magit-branch-menu)
    (define-key map (kbd "m") 'magit-manual-merge)
    (define-key map (kbd "M") 'magit-automatic-merge)
    (define-key map (kbd "k") 'magit-discard-item)
    (define-key map (kbd "e") 'magit-interactive-resolve-item)
    (define-key map (kbd "C") 'magit-add-log)
    (define-key map (kbd "x") 'magit-reset-head)
    (define-key map (kbd "X") 'magit-reset-working-tree)
    (define-key map (kbd "t") 'magit-tag)
    (define-key map (kbd "T") 'magit-annotated-tag)
    (define-key map (kbd "z") 'magit-stash)
    (define-key map (kbd "Z") 'magit-stash-snapshot)
    map))

(defvar magit-stash-mode-map
  (let ((map (make-sparse-keymap)))
    (define-key map (kbd "-") 'magit-diff-smaller-hunks)
    (define-key map (kbd "+") 'magit-diff-larger-hunks)
    (define-key map (kbd "0") 'magit-diff-default-hunks)
    (define-key map (kbd "a") 'magit-apply-item)
    (define-key map (kbd "A") 'magit-cherry-pick-item)
    (define-key map (kbd "v") 'magit-revert-item)
    map))

(defvar magit-log-mode-map
  (let ((map (make-sparse-keymap)))
    (define-key map (kbd ".") 'magit-mark-item)
    (define-key map (kbd "=") 'magit-diff-with-mark)
    (define-key map (kbd "d") 'magit-diff-working-tree)
    (define-key map (kbd "D") 'magit-diff)
    (define-key map (kbd "a") 'magit-apply-item)
    (define-key map (kbd "s") 'magit-log-grep)
    (define-key map (kbd "A") 'magit-cherry-pick-item)
    (define-key map (kbd "v") 'magit-revert-item)
    (define-key map (kbd "b") 'magit-branch-menu)
    (define-key map (kbd "m") 'magit-manual-merge)
    (define-key map (kbd "M") 'magit-automatic-merge)
    (define-key map (kbd "x") 'magit-reset-head)
    (define-key map (kbd "e") 'magit-log-show-more-entries)
    (define-key map (kbd "l") (lambda () (interactive) (magit-key-mode 'logging)))
    map))

(defvar magit-reflog-mode-map
  (let ((map (make-sparse-keymap)))
    (define-key map (kbd ".") 'magit-mark-item)
    (define-key map (kbd "=") 'magit-diff-with-mark)
    (define-key map (kbd "d") 'magit-diff-working-tree)
    (define-key map (kbd "D") 'magit-diff)
    (define-key map (kbd "a") 'magit-apply-item)
    (define-key map (kbd "A") 'magit-cherry-pick-item)
    (define-key map (kbd "v") 'magit-revert-item)
    (define-key map (kbd "x") 'magit-reset-head)
    map))

(defvar magit-diff-mode-map
  (let ((map (make-sparse-keymap)))
    (define-key map (kbd "-") 'magit-diff-smaller-hunks)
    (define-key map (kbd "+") 'magit-diff-larger-hunks)
    (define-key map (kbd "0") 'magit-diff-default-hunks)
    (define-key map (kbd "a") 'magit-apply-item)
    (define-key map (kbd "A") 'magit-cherry-pick-item)
    (define-key map (kbd "v") 'magit-revert-item)
    map))

(defvar magit-wazzup-mode-map
  (let ((map (make-sparse-keymap)))
    (define-key map (kbd ".") 'magit-mark-item)
    (define-key map (kbd "=") 'magit-diff-with-mark)
    (define-key map (kbd "d") 'magit-diff-working-tree)
    (define-key map (kbd "D") 'magit-diff)
    (define-key map (kbd "a") 'magit-apply-item)
    (define-key map (kbd "A") 'magit-cherry-pick-item)
    (define-key map (kbd "v") 'magit-revert-item)
    (define-key map (kbd "b") 'magit-branch-menu)
    (define-key map (kbd "m") 'magit-manual-merge)
    (define-key map (kbd "M") 'magit-automatic-merge)
    (define-key map (kbd "x") 'magit-reset-head)
    (define-key map (kbd "i") 'magit-ignore-item)
    map))

(defvar magit-key-mode-key-maps '()
  "This will be filled lazily with proper `define-key' built
  keymaps as they're reqeusted.")

(defvar magit-key-mode-buf-name "*magit-key*"
  "Name of the buffer.")

(defvar magit-key-mode-groups
  '((logging
     (actions
      ("l" "One line log" magit-log)
      ("L" "Long log" magit-log-long)
      ("h" "Reflog" magit-reflog)
      ("H" "Reflog on head" magit-reflog-head))
     (switches
      ("-f" "First parent" "--first-parent")
      ("-a" "All" "--all"))
     (arguments
      ("-g" "Grep" "--grep" read-from-minibuffer))))
  "Holds the key, help, function mapping for the log-mode. If you
  modify this make sure you reset `magit-key-mode-key-maps' to
  nil.")

(defun magit-key-mode-options-for-group (for-group)
  (or (cdr (assoc for-group magit-key-mode-groups))
      (error "Unknown group '%s'" for-group)))

(defun magit-key-mode-build-keymap (for-group)
  "Construct a normal looking keymap for the key mode to use and
put it in magit-key-mode-key-maps for fast lookup."
  (let* ((options (magit-key-mode-options-for-group for-group))
         (actions (cdr (assoc 'actions options)))
         (switches (cdr (assoc 'switches options)))
         (arguments (cdr (assoc 'arguments options))))
    (let ((map (make-sparse-keymap)))
      ;; all maps should 'quit' with C-g
      (define-key map (kbd "C-g") (lambda ()
                                    (interactive)
                                    (magit-key-mode-command nil)))
      (when actions
        (dolist (k actions)
          (define-key map (car k) `(lambda ()
                                     (interactive)
                                     (magit-key-mode-command ',(nth 2 k))))))
      (when switches
        (dolist (k switches)
          (define-key map (car k) `(lambda ()
                                     (interactive)
                                     (magit-key-mode-add-option
                                      ',for-group
                                      ,(nth 2 k))))))
      (when arguments
        (dolist (k arguments)
          (define-key map (car k) `(lambda ()
                                     (interactive)
                                     (magit-key-mode-add-argument
                                      ',for-group
                                      ,(nth 2 k)
                                      ',(nth 3 k))))))
      (aput 'magit-key-mode-key-maps for-group map)
      map)))

(defvar magit-key-mode-header-re
  (rx line-start (| "Actions" "Switches" "Arguments") ":"))

(defvar magit-key-mode-action-re
  (rx line-start
      (char space)
      (group
       (* "-")
       (char alpha))
      ": "
      (group
       (* not-newline))))

(defvar magit-key-mode-font-lock-keywords
  (list
   (list magit-key-mode-header-re 0 'font-lock-keyword-face)
   (list magit-key-mode-action-re '(1 font-lock-builtin-face))))

(defun magit-key-mode-command (func)
  (let ((args '()))
    ;; why can't maphash return a list?!
    (maphash (lambda (k v)
               (push (concat k "=" (shell-quote-argument v)) args))
             magit-key-mode-current-args)
    (let ((magit-custom-options (append args magit-key-mode-current-options)))
      (set-window-configuration magit-log-mode-window-conf)
      (when func
        (funcall func))
      (magit-key-mode-kill-buffer))))

(defvar magit-key-mode-current-args nil
  "A hash-table of current argument set (which will eventually
  make it to the git command-line).")

(defun debug-args ()
  (interactive)
  (maphash (lambda (k v) (print (format "%s: %s" k v))) magit-key-mode-current-args))

(defun magit-key-mode-add-argument (for-group arg-name input-func)
  (let ((input (funcall input-func (concat arg-name ": "))))
    (puthash arg-name input magit-key-mode-current-args)
   (magit-key-mode-redraw for-group)))

(defvar magit-key-mode-current-options '()
  "Current option set (which will eventually make it to the git
  command-line).")

(defun magit-key-mode-add-option (for-group option-name)
  "Toggles the appearance of OPTION-NAME in
`magit-key-mode-current-options'."
  (if (not (member option-name magit-key-mode-current-options))
      (add-to-list 'magit-key-mode-current-options option-name)
    (setq magit-key-mode-current-options
          (delete option-name magit-key-mode-current-options)))
  (magit-key-mode-redraw for-group))

(defun magit-key-mode-kill-buffer ()
  (interactive)
  (kill-buffer magit-key-mode-buf-name))

(defvar magit-log-mode-window-conf nil
  "Pre-popup window configuration.")

(defun magit-key-mode (for-group &optional original-opts)
  "Mode for magit key selection."
  (interactive)
  ;; save the window config to restore it as was (no need to make this
  ;; buffer local)
  (setq magit-log-mode-window-conf
        (current-window-configuration))
  ;; setup the mode, draw the buffer
  (let ((buf (get-buffer-create magit-key-mode-buf-name)))
    (pop-to-buffer buf)
    (kill-all-local-variables)
    (set (make-variable-buffer-local
          'magit-key-mode-current-options)
         original-opts)
    (set (make-variable-buffer-local
          'magit-key-mode-current-args)
         (make-hash-table))
    (magit-key-mode-redraw for-group)))

(defun magit-key-mode-redraw (for-group)
  "(re)draw the magit key buffer."
  (let ((buffer-read-only nil))
    (erase-buffer)
    (make-local-variable 'font-lock-defaults)
    (setq font-lock-defaults
          '(magit-key-mode-font-lock-keywords t nil nil nil))
    (use-local-map
     (or (cdr (assoc for-group magit-key-mode-key-maps))
         (magit-key-mode-build-keymap for-group)))
    (magit-key-mode-draw for-group)
    (setq mode-name "magit-key-mode" major-mode 'magit-key-mode))
  (setq buffer-read-only t)
  (fit-window-to-buffer))

(defun magit-key-mode-draw (for-group)
  "Function used to draw actions, switches and parameters."
  (let* ((options (magit-key-mode-options-for-group for-group))
         (switches (cdr (assoc 'switches options)))
         (arguments (cdr (assoc 'arguments options)))
         (actions (cdr (assoc 'actions options))))
    (insert "Actions:\n")
    (dolist (action actions)
      (insert
       (concat " " (car action) ": " (nth 1 action) "\n")))
    (insert "Switches:\n")
    (dolist (switch switches)
      (let ((option (nth 2 switch)))
        (insert
         (concat
          " "
          (car switch)
          ": "
          (nth 1 switch)
          " ("
          (if (member option magit-key-mode-current-options)
              (propertize option 'font-lock-face 'font-lock-warning-face)
            option)
          ")\n"))))
    (insert "Arguments:\n")
    (dolist (argument arguments)
      (insert
       (concat
        " "
        (car argument)
        ": "
        (nth 1 argument)
        " ("
        (nth 2 argument)
        ") "
        (propertize
         (gethash (nth 2 argument) magit-key-mode-current-args "")
         'font-lock-face 'widget-field)
        "\n")))))

(provide 'magit-key-mode)
