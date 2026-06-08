# Bug Report: score label boundary

The tiny demo in `simple_app.js` turns a numeric score into a label.

Expected behavior:

| Score | Expected label |
| --- | --- |
| 80 | great |
| 79 | ok |
| 50 | ok |
| 49 | check |

Current suspicion:

- `80` may be labeled `ok`.
- `50` may be labeled `check`.

Task:

1. Read `simple_app.js`.
2. Explain the boundary issue.
3. Make the smallest fix.
4. Run the file with Node.js and confirm the output.
