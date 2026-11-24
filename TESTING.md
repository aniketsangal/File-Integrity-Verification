# Testing and Verification Results

## 1. Purpose

The purpose of testing was to check whether the File Integrity Verification Tool could identify modified files, detect missing files, and verify unchanged files using SHA-256 checksums.

## 2. Test Cases

| Test | Action Performed | Expected Result | Observed Result |
|---|---|---|---|
| Normal verification | Checked files without modifying them | All files should return OK | Passed |
| Modified file | Added test text to network.txt | Checksum mismatch should be detected | Passed |
| Missing file | Temporarily renamed user.txt | Missing file should be reported | Passed |
| Restored file | Restored the original file and regenerated the baseline | All files should return OK | Passed |

## 3. Explanation of Changes

The modification to `network.txt` was intentional and performed for testing purposes. The tool detected that its SHA-256 checksum no longer matched the recorded baseline.

The temporary renaming of `user.txt` was also intentional. The tool correctly reported that the file was missing.

Both files were restored after testing, and the final verification confirmed that all sample files matched the regenerated baseline.

## 4. Conclusion

The tests demonstrated that the tool can detect file modifications and missing files by comparing SHA-256 checksums against a baseline.

All planned test cases were completed successfully.