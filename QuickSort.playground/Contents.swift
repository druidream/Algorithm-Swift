func quicksort(_ array: Array<Int>) -> Array<Int> {
    if array.count < 2 {
        return array
    } else {
        let first = array[0]
        var less = Array<Int>()
        var greater = Array<Int>()
        for item in array.suffix(from: 1) {
            item <= first ? less.append(item) : greater.append(item)
        }
        return quicksort(less) + [first] + quicksort(greater)
    }
}

print(quicksort([]))
print(quicksort([1]))
print(quicksort([2, 3, 1]))
print(quicksort([5, 0, 10, 4, 2, 7, 8, 9, 6]))
