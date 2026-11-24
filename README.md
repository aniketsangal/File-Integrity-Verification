# File Integrity Verification Tool

A lightweight command-line tool built using Bash scripting and SHA-256 hashing to monitor file integrity and detect unauthorized or unexpected file modifications.

## Overview

File integrity verification is an important cybersecurity practice used to identify changes in files by comparing their current cryptographic hashes against previously recorded baseline hashes.

This project automates that process using Linux command-line utilities and Bash scripts.

## Features

- Generate SHA-256 hashes for selected files.
- Create and store a baseline of file hashes.
- Detect modified files through checksum comparison.
- Identify missing files.
- Automate integrity verification.
- Interactive command-line menu.

## Technologies Used

- Kali Linux
- Bash Scripting
- SHA-256
- GNU Coreutils (`sha256sum`)

## Project Structure

```text
file-integrity-lab/
├── baseline/
│   └── baseline.sha256
├── main.sh
├── sample_files/
│   ├── network.txt
│   ├── sample1.txt
│   ├── system.txt
│   └── user.txt
├── screenshots/
└── scripts/
    ├── generate_hashes.sh
    └── verify_integrity.sh
```

## Getting Started

### 1. Clone the repository

```bash
git clone YOUR_REPOSITORY_URL
```

### 2. Navigate to the project directory

```bash
cd file-integrity-lab
```

### 3. Set execution permissions

```bash
chmod +x main.sh scripts/*.sh
```

### 4. Run the tool

```bash
./main.sh
```

## Available Options

| Option | Description |
|---|---|
| 1 | Generate Baseline |
| 2 | Verify File Integrity |
| 3 | Exit |

## Testing

The following scenarios were tested:

| Test Scenario | Result |
|---|---|
| Unmodified files | All files verified successfully |
| Modified file | Checksum mismatch detected |
| Missing file | Missing file detected |
| Restored file | Original baseline matched successfully |

## Learning Outcomes

- Understanding cryptographic hashing.
- Working with SHA-256 checksums.
- Linux command-line operations.
- Bash scripting and automation.
- Basic file integrity monitoring concepts.

## Limitations

- The tool detects changes but does not identify who made them.
- The baseline file must be protected against unauthorized modification.
- SHA-256 checksum matching alone does not establish whether a file is malware-free.

## Project Status

Core functionality implemented and tested.

