print([x for x in range(1, 10)])
#[1, 2, 3, 4, 5, 6, 7, 8, 9]

score = [x * x for x in range(1, 10)]
print(score)

print(list(map(lambda x:x + 1, score )))
