---
name: pr-summary
description: Summarizes the current branch as a pull request description. Use when the user asks for a PR summary, pull request description, or branch change summary.
---

# PR Summary

Summarize the changes on the current branch for a pull request description.

## Workflow

1. Run `git log main..HEAD --oneline` to inspect all commits on the branch.
2. Run `git diff main...HEAD --stat` to get a file-level summary.
3. Run `git diff main...HEAD` to understand the actual changes.
4. Read the pull request template under `.github/`, if one exists, and format the description to match it.
5. Set `summary_file="/tmp/pr-summary-$(date +%s).md"` and write the final Markdown there.
6. Copy the file to the clipboard without blocking the shell with `setsid -f wl-copy < "$summary_file" >/dev/null 2>&1`.
7. Report the generated file path to the user.

## Summary Rules

- Start the description with `This PR <verb>`, using a verb such as `adds`, `fixes`, or `refactors`.
- Use brief bullet points for the high-level changes after the opening sentence.
- Never end bullet points in the `Changes Made` section with periods.
- Reference file names and class names with inline code, such as `ClassName` or `file.cpp`.
- Group related changes instead of listing every changed file separately.
- Focus on what changed and why, not implementation details.
- Omit trivial changes such as whitespace-only edits or import reordering.
- Order changes from most important to least important.
- Base every statement on the commits and diff; do not infer unsupported behavior or motivation.
