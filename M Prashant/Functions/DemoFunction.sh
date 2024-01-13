# Type -> A
## Function Declaration
function welcome {
        echo "-----------"
        echo "Welcome"
        echo "-----------"
}

## Function Call
welcome
welcome

# Type -> B
## Function Declaration
welcome1 () {
        echo "-----------"
        echo "Welcome"
        echo "-----------"
}

## Function Call
welcome1
welcome1
