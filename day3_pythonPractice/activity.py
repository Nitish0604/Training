todo_list = []

def add_todo(item):
    todo_list.append(item)
    print(f'"{item}" has been added to your to-do list.')

def remove_todo(item):
    if item in todo_list:
        todo_list.remove(item)
        print(f'"{item}" has been removed from your to-do list.')
    else:
        print(f'"{item}" is not in your to-do list.')


def view_todos():
    if todo_list:
        print("\nYour to-do list:")
        for idx, item in enumerate(todo_list, start=1):
            print(f"{idx}. {item}")
    else:
        print("Your to-do list is empty.")

# Main program loop
while True:
    print("\nEnter your choice:")
    print("1: Add to-do")
    print("2: Remove to-do")
    print("3: View all to-dos")
    print("4: Exit")
    
    choice = input("Enter your choice: ")
    
    if choice == '1':
        item = input("Enter the to-do item: ")
        add_todo(item)
    elif choice == '2':
        item = input("Enter the to-do item to remove: ")
        remove_todo(item)
    elif choice == '3':
        view_todos()
    elif choice == '4':
        print("Exiting the program. Goodbye!")
        break
    else:
        print("Invalid choice. Please enter a number between 1 and 4.")
