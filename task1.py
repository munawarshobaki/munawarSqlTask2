def is_palindrome(s):
    listt = list(s)

    listt.reverse()
    reversedstring = ''.join(listt)
    is_palindrome = (s == reversedstring)
    fre = {}
    
    for c in s:
        if c in fre:
            fre[c] += 1
        else:
            fre[c] = 1
    t=()

    return t+(is_palindrome, fre)


import math

def is_prime(n):
    result = []
    
    for i in range(2, int(math.sqrt(n)) + 1):
        is_divisible = (n % i == 0)
        result.append((is_divisible, i))
    
    return result


def main():
    r = []
    failed_attempts = []
    max_retries = 3

    for _ in range(max_retries):
        try:
            user_input_str = input("Enter a string : ")
            p = is_palindrome(user_input_str)
            r.append({
                'input': user_input_str,
                'palindrome_result': p,
                'prime_result': None
            })
            break
        except Exception as e:
            failed_attempts.append((user_input_str, str(e)))
            print(f"Error: {e}. Please try again.")
    else:
        print("Maximum tries .")
    
    for _ in range(max_retries):
        try:
            user_input_num = int(input("Enter a number : "))
            is_prime_num = is_prime(user_input_num)
            r[-1]['prime_result'] = is_prime_num
            break
        except ValueError as e:
            failed_attempts.append((user_input_num, str(e)))
            print(f"Error: {e}. Please enter a valid int number.")
        except Exception as e:
            failed_attempts.append((user_input_num, str(e)))
            print(f"Error: {e}.  try again.")
    else:
        print(" sorry,Maximum tries.")
    
    print("Results:")
    for result in r:
        print(result)

    if failed_attempts:
        print("\nFailed Attempts:")
        for attempt in failed_attempts:
            print(attempt)

if __name__ == "__main__":
    main()