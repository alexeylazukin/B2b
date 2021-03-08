///1.0 Создать 45 разных целых чисел от -10 до 10 и заполнить ими массив. Рассчитать количество нулевые значения, больше нуля и меньше. Распечатать на экране сам массив и эти значения.

var firstArray = [Int]()
let taskCount = 45
var positive = 0
var negative = 0
var zeroValue = 0

for _ in 0..<taskCount {
    let randomNumber = Int.random(in: -10...10)
    firstArray.append(randomNumber)
    
    if randomNumber < 0 {
        negative += 1
    } else if randomNumber == 0 {
        zeroValue += 1
    } else {
        positive += 1
    }
}
print("""
      В массиве случайных чисел - \(firstArray):
             отрицательных - \(negative)
             положительных - \(positive)
             равных нулю - \(zeroValue)
      """)

///1.1 С помощью сортировки выбором расположить элементы массива по убыванию. Массив чисел [15, 26, -10, 47, 13, 0, 24]

var secondArray = [15, 26, -10, 47, 13, 0, 24]

func swap(array: inout [Int], index left: Int, index right: Int) {
    if array[left] != array[right] {
        let value = array[left]
        array[left] = array[right]
        array[right] = value
    }
}

var index = 0
    
while index < secondArray.count - 1 {
    var indexMax = index
    var next = index + 1
    
    while next < secondArray.count {
        if secondArray[next] > secondArray[indexMax] {
            indexMax = next
        }
        next += 1
    }
    swap(array: &secondArray, index: index, index: indexMax)
    index += 1
}

print("Отсортированный массив второй задачи по убыванию: \(secondArray)")
