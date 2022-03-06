import UIKit

//Part1
//Arrays

var myFavoriteMovie = ["12 Angry Men", "Pulp Fiction", "The Godfather", "The Shawshank Redemption", "Seven", 5, true] as [Any]

//as --> casting yani bir şeyi bir şey gibi ata anlamında
//any --> any object yani herhangi bir objeyi koyabilirim anlamında

myFavoriteMovie[0]
myFavoriteMovie[1]
myFavoriteMovie[2]
myFavoriteMovie[3]
myFavoriteMovie[4]
myFavoriteMovie[5]
myFavoriteMovie[6]

var MyStringArrays = ["Test6", "Test8", "Test5"]

MyStringArrays[0]
MyStringArrays[1].uppercased()
MyStringArrays.count
MyStringArrays.last
MyStringArrays[MyStringArrays.count - 1]
MyStringArrays.sort() //Alfabetik şekilde diziyor

var myNumberArrays = [4,1,9,3,6,5,8,7,2]
myNumberArrays.append(22)
myNumberArrays.last
myNumberArrays[3]
myNumberArrays.last
myNumberArrays[0]
myNumberArrays[0] = 19
myNumberArrays[0]
myNumberArrays.sort()
myNumberArrays[0]
myNumberArrays[0] = 22
myNumberArrays[0]
myNumberArrays

//Part2
//Set
//Setlerde aynı Arrayler gibi fakat indexleme yani sıralama (rastgele sıralıyor) yok ve aynı elemandan yalnızca 1 adet bulunabiliyor.
//Setlerde Unordered collection ve uniq elements mantığı var.

var mySet: Set = [1,2,3,4,5]
var myStringSet: Set = ["a", "b", "a", "c"]

var myInternetArray = [1,2,3,4,2,4,5,1,3,6,2]
var myInternetSet = Set(myInternetArray)
print(myInternetArray)
print(myInternetSet)

var mySet1: Set = [1,2,3]
var mySet2: Set = [3,4,5]

var mySet3 = mySet1.union(mySet2)

//Part3
//Dictionary
//key-value pairing

var myFavoriteDirectors = ["Pulp Fiction" : "Tarantino", "Lock, Stock" : "Guy Ritchie", "The Dark Knight" : "Christopher Nolan"]

myFavoriteDirectors["Pulp Fiction"]
myFavoriteDirectors["The Dark Knight"]
myFavoriteDirectors["Pulp Fiction"] = "Quentin Tarantino"
myFavoriteDirectors["Pulp Fiction"]
print(myFavoriteDirectors)

myFavoriteDirectors["Yol Ayrımı"] = "Yavuz Turgul"
print(myFavoriteDirectors)

var myDictionary = ["Run" : 100, "Swim" : 200, "Basketball" : 150, "Football" : 175]
myDictionary["Run"]
