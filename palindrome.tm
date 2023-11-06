# Phase 0: Mark the first symbol as 'X'
0 0 0 X R
0 1 0 1 R
0 B 1 B S

# Phase 1: Move to the end of the input while marking the last symbol as 'Y'
1 0 1 0 R
1 1 1 1 R
1 X 1 X R
1 Y 2 Y S
1 B 2 B S

# Phase 2: Compare the first and last symbols
2 0 3 0 L
2 1 4 1 L
2 X 2 X S
2 Y 5 Y L

# Phase 3: Move leftward to find the first symbol
3 0 3 0 L
3 1 3 1 L
3 X 3 X L
3 Y 3 Y L
3 B 3 B L
3  # 6  # S

# Phase 4: Move leftward to find the last symbol
4 0 4 0 L
4 1 4 1 L
4 X 4 X L
4 Y 4 Y L
4 B 4 B L
4  # 7  # S

# Phase 5: Compare the symbols
5 0 8 0 L
5 1 9 1 L
5 X 5 X L
5 Y 5 Y L
5 B 10 B S

# Phase 6: Acceptance state (even-length palindrome)
6 0 6 0 S
6 1 6 1 S
6 X 6 X S
6 Y 6 Y S
6 B 11 B S

# Phase 7: Acceptance state (odd-length palindrome)
7 0 7 0 S
7 1 7 1 S
7 X 7 X S
7 Y 7 Y S
7 B 11 B S

# Phase 8: Reject state (mismatch)
8 0 12 0 S
8 1 12 1 S
8 X 12 X S
8 Y 12 Y S
8 B 12 B S

# Phase 9: Reject state (mismatch)
9 0 12 0 S
9 1 12 1 S
9 X 12 X S
9 Y 12 Y S
9 B 12 B S

# Phase 10: Acceptance state (empty tape, palindrome)
10 0 10 0 S
10 1 10 1 S
10 X 10 X S
10 Y 10 Y S
10 B 11 B S

# Phase 11: Halt and accept
11 0 11 0 S
11 1 11 1 S
11 X 11 X S
11 Y 11 Y S
11 B 11 B S

# Phase 12: Halt and reject
12 0 12 0 S
12 1 12 1 S
12 X 12 X S
12 Y 12 Y S
12 B 12 B S

