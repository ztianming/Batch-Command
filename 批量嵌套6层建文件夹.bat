set limit=9
for /l %%i in (1,1,%limit%) do (
for /l %%j in (1,1,%limit%) do (
for /l %%k in (1,1,%limit%) do (
for /l %%l in (1,1,%limit%) do (
for /l %%m in (1,1,%limit%) do (
md %%i\%%j\%%k\%%l\%%m
)
)
)
)
)