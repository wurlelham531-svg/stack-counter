;; stack-counter -- per-user bump counter with global total
;; Clarity 4

(define-data-var total uint u0)
(define-map user-counts principal uint)

(define-public (bump)
  (let ((cur (default-to u0 (map-get? user-counts tx-sender)))
        (new-total (+ (var-get total) u1)))
    (map-set user-counts tx-sender (+ cur u1))
    (var-set total new-total)
    (print { event: "bump", user: tx-sender, total: new-total })
    (ok new-total)))

(define-read-only (get-count (user principal))
  (default-to u0 (map-get? user-counts user)))

(define-read-only (get-total)
  (var-get total))
