# ntk_language

## Description

My attempt at making my very own interpreted language called "ntk" following my education in CMSC 330 at UMD.

## Features

-   Interpreted Language
-   High Level Language
-   Garbage Collection
-   Lightweight and Scalable

## Syntax

### Simple Lexical Tokens

| Token Name        | Lexical Representation |
| ----------------- | ---------------------- |
| TOK_LPAREN        | (                      |
| TOK_RPAREN        | )                      |
| TOK_LCURLY        | {                      |
| TOK_RCURLY        | }                      |
| TOK_DOT           | .                      |
| TOK_EQUAL         | =                      |
| TOK_EQUAL_EQUAL   | ==                     |
| TOK_NOT           | !                      |
| TOK_NOT_EQUAL     | !=                     |
| TOK_GREATER       | >                      |
| TOK_LESS          | <                      |
| TOK_GREATER_EQUAL | >=                     |
| TOK_LESS_EQUAL    | <=                     |

### Literal Tokens

-   `TOK_ID`: Valid IDs must start with a letter or underscore. If started with an underscore, it must be followed by at least 1 letter and then can be followed by any number of letters, numbers, and underscores. If started with a letter it can then be followed by any number of letters, numbers, and underscores.
    -   _Regular Expression_: `_?[a-zA-Z][a-zA-Z0-9_]*`
    -   _Valid Examples_
        -   "a"
        -   "ABC"
        -   "\_a"
        -   "\_a12_csa_2123dasdkjbno"
        -   "fun1"
        -   "ifthenelse"

### Keyword Tokens

-   `if`: Denotes the if clause of a control flow statement
-   `else`: Denotes the else clause of a control flow statement
-   `let`: Denotes a variable declaration
-   `func`: Denotes a function declaration

### Other Tokens

-   `/* Comments */`: Valid comments are anything between `/*` and `*/`
    -   Regular Expression: `\/\*.*\*\/`

## Semantics

-   **Dynamically typed**: types are assigned to variables at runtime

### Data Types

#### Literals Types

-   `int`: Any 32 bit number within the range (-2,147,483,648 to 2,147,483,647)
    -   5
    -   1203
    -   -123456
-   `float`: Floating point number within the range (1.2E-38 to 3.4E+38)
    -   0.1235
    -   -.213
-   `string`: text
    -   "Hello World"
    -   "blob"
    -   "5551341234"

#### Sequence Types

-   `list`: Sequence of items, all items in the list must be of the same type
    -   [1,2,3,4,5]
    -   ["first", "second", "third"]
    -   [[1,2,3], [4,5], [4,3,8,9,900]]

#### Mapping Types

-   `dict`: Mapping of identifiers to values
    -   {"name": "Neil", "age": 20}
