# 1) Создайте числовой вектор из 10 элементов, содержащий значения от -4 до 5.
first <- -4:5 

second <- c("S", "V", "123", "NaN", "1")


third <- rep(101, 12)

third_numeric <- as.numeric(third)
third_character <- as.character(third)

# 2) Создайте вектор случайных чисел при помощи функции runif().
rand_vec <- runif(50, -20, 100)


ind <- which(rand_vec > 70)

good_inf <- rand_vec[rand_vec < 70 & rand_vec > 10]


abs_vec <- abs(rand_vec)


log_vec <- log2(abs_vec)


names(log_vec) <- letters[1:length(log_vec)]


replaced_alphabet <- log_vec[c("e", "f")]


results_of_rand_sum <- sum(rand_vec)
results_of_rand_prod <- prod(rand_vec)
results_of_rand_mean <- mean(rand_vec)


print("Сумма элементов вектора:")
print(results_of_rand_sum)

print("Произведение элементов вектора:")
print(results_of_rand_prod)

print("Среднее элементов вектора:")
print(results_of_rand_mean)

print("Элементы с названиями 'e' и 'f':")
print(replaced_alphabet)