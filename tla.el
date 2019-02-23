(setq tla-highlights
      '(
        ("ASSUME\\|UNCHANGED\\|EXCEPT\\|EXTENDS\\|RECURSIVE\\|CONSTANT\\|VARIABLES\\|SUBSET" . font-lock-keyword-face)
        (".+ ==" . font-lock-function-name-face)
        ("TRUE\\|FALSE\\|Nat\\|\\\\in\\|\\\\cup\\|\\\\A\\|\\\\E\\|IF\\|ELSE\\|THEN\\|/\\\\\\|\\\\/" . font-lock-constant-face)
       )
)

(define-derived-mode tla-mode fundamental-mode "tla"
  "major mode for editing tla language code."
  (setq font-lock-defaults '(tla-highlights))
  (font-lock-add-keywords nil '(("\\\\\\*.+" . font-lock-comment-face)))
  (font-lock-add-keywords nil '(("====.+" . font-lock-doc-face)))
  (font-lock-add-keywords nil '(("----.+" . font-lock-doc-face)))
  (setq-local comment-start "\\* ")
  (setq-local comment-end "")
)

