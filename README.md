# Enigma Project

## Create an Enigma class with the following methods:
### Enigma#encrypt(message, key, date)

The encrypt method takes a message String as an argument. It can optionally take a Key and Date as arguments to use for encryption. If the key is not included, generate a random key. If the date is not included, use today’s date.

The encrypt method returns a hash with three keys:

    :encryption => the encrypted String
    :key => the key used for encryption as a String
    :date => the date used for encryption as a String in the form DDMMYY

### Enigma#decrypt(ciphertext, key, date)

The decrypt method takes a ciphertext String and the Key used for encryption as arguments. The decrypt method can optionally take a date as the third argument. If no date is given, this method should use today’s date for decryption.

The decrypt method returns a hash with three keys:

    :decryption => the decrypted String
    :key => the key used for decryption as a String
    :date => the date used for decryption as a String in the form DDMMYY

##  Cracking
### The following is only required for scoring a 4 on functionality

### Enigma#crack(ciphertext, date)

The crack method decrypts a message without being given the key. This method can optionally take a date to use for cracking as a second argument. If no date is given, it should use today’s date for cracking. It should output a hash containing the decrypted message, the date used for encryption in the form of DDMMYY, and the Key used for encryption.

We believe that each enemy message ends with the characters " end". Use this to crack the encryption.

## Command Line Interface

Add a command line interface for encryption and decryption. You should create a Runner file called encrypt.rb that takes two command line arguments. The first is an existing file that contains a message to encrypt. The second is a file where your program should write the encrypted message. In addition to writing the encrypted message to the file, your program should output to the screen the file it wrote to, the key and the date.

Additionally, you should create a Runner file called decrypt.rb that takes four command line arguments. The first is an existing file that contains an encrypted message. The second is a file where your program should write the decrypted message. The third is the key to be used for decryption. The fourth is the date to be used for decryption. In addition to writing the decrypted message to the file, your program should output to the screen the file it wrote to, the key used for decryption, and the date used for decryption.

Additionally, create a Runner file called crack.rb that takes three command line arguments. The first is an existing file that contains an encrypted message. The second is a file where your program should write the cracked message. The third is the date to be used for cracking. In addition to writing the cracked message to the file, your program should output to the screen the file it wrote to, the key used for cracking, and the date used for cracking.

---
## Self Evaluation

### Functionality: 4
  * crack method and cli were properly added.
### OOP: 4
  * have a module and a super class that both have potential use outside of this project. AlphabetShifter super class could be used for any type of cypher, and TodaysDate module could be used and updated whenever you need rubys Date.today object to return a very specific output using todays date. All classes are under 100 lines, no method is more than 8 lines, and variable names are clear.
### TTD: 3
  * All test are clearly named, and were created before functionality was made. SimpleCov shows 100% coverage. As of now no mocks or stubs were used.
### Version Control: 4
  * at time of writing 54 commits were made and 15 pull request. Commits were made individually for test and for each separate method or piece of functionality.
