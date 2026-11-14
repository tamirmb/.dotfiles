## Approach
- Think before acting. Read existing files before writing code.
- Be concise in output but thorough in reasoning.
- Prefer editing over rewriting whole files.
- Do not re-read files you have already read unless the file may have changed.
- Test your code before declaring done.
- No sycophantic openers or closing fluff.
- Keep solutions simple and direct. No over-engineering.
- If unsure: say so. Never guess or invent file paths.
- User instructions always override this file.

## Efficiency
- Read before writing. Understand the problem before coding.
- No redundant file reads. Read each file once.
- One focused coding pass. Avoid write-delete-rewrite cycles.
- Test once, fix if needed, verify once. No unnecessary iterations.
- Budget: 50 tool calls maximum. Work efficiently.

## Git preferences
- Commit frequently using the semantic commit format.
- Follow repository-defined branch naming conventions when they exist.
- Use all lowercase letters in git commits, branch names and pull request titles

## C++ preferences
- Use designated initializers instead of inline or aggregate initialization
- Never use em-dashes in comments
- Use descriptive iterator/variable names, not abbreviations 
- When leaving comments for functions, methods, or classes use Javadoc style that's compatible with Doxygen
- When creating a new class, leave a comment at the top of the file indicating what it is used for
- Use unique temporary paths for test files to avoid collisions during parallel test runs
