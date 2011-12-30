// http://projecteuler.net/problem=4
// Find the largest palindrome made from the product of two 3-digit numbers.

function is_palindrome(n) {
	var n_str = (n).toString().split('')
	return n_str.join('') == n_str.reverse().join('') }

function reverse_loop_2(start, end, fun) {
   for(var diff = 0, dif1 = 0, dif2 = 0; diff <= start - end; dif1 = ++diff, dif2 = 0)
       do if (fun(start - dif1, start - dif2)) return true
       while(++dif2, --dif1 >= 0)
       return false }

function reverse_find_palindrome_product(start, end) {
    var prod
    var hasresult = reverse_loop_2(start, end, function(x, y) {
        return is_palindrome(prod = x * y) })
    return hasresult ? prod : "not found" }

var result = reverse_find_palindrome_product(999, 100)
if (console) console.log("Problem 4 Result:", result)
else if (print) print("Problem 4 Result: " + result)
