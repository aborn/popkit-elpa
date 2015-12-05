;;
;; 监控disk使用量的包
;;
(require 'json)

(defconst ab/disk-status-this-dir (file-name-directory (or load-file-name (buffer-file-name))))
(defcustom ab/disk-status-file-name (expand-file-name "html/disk_status.json" ab/disk-status-this-dir)
  "disk status file name"
  :group 'disk-status
  :type 'string)

(setq ab/disk-status-file-name (expand-file-name "html/disk_status.json" ab/disk-status-this-dir))

(defun ab/get-disk-status-command (arg)
  (cond
   ((string= system-type "darwin")
    (cond
     ((string= arg "used")
      "df -h |grep \"dev/disk1\" |awk '{print $8}'")
     ((string= arg "avail")
      "df -h |grep \"dev/disk1\" |awk '{print $4}'")))
   ((string= system-type "gun/linux")
    (cond
     ((string= arg "used")
      "df -h |grep \"/dev/\" |awk '{print $5}'")
     ((string= arg "avail")
      "df -h |grep \"/dev/\" |awk '{print $4}'")))))

(defun ab/shell-command-to-string (command)
  (replace-regexp-in-string "\r?\n$" ""    ;; 去掉换行符号
                            (shell-command-to-string command)))

(defun ab/disk-status ()
  (interactive)
  (with-temp-file ab/disk-status-file-name
    (let* ((command-result-used
            (ab/shell-command-to-string (ab/get-disk-status-command "used")))
           (command-result-avail
            (ab/shell-command-to-string (ab/get-disk-status-command "avail"))))
      (message (format "write result to %s" ab/disk-status-file-name))
      (insert
       (json-encode `(:used ,command-result-used :avail ,command-result-avail))))))

(provide 'disk-status)
