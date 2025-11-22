#include "../include/calculator.h"


int main() {
    int choice, x, y;

    cout << "Simple Calculator\n";
    cout << "1. Add\n";
    cout << "2. Subtract\n";
    cout << "3. Multiply\n";
    cout << "4. Divide\n";
    cout << "5. Exit\n";

    while (true) {
        cout << "\nEnter your choice: ";
        cin >> choice;

        if (choice == 5) {
            cout << "Exiting...\n";
            break;
        }

        cout << "Enter two numbers: ";
        cin >> x >> y;

        switch (choice) {
            case 1: add(x, y); break;
            case 2: sub(x, y); break;
            case 3: mul(x, y); break;
            case 4: divide(x, y); break;
            default: cout << "Invalid choice!\n"; break;
        }
    }

    return 0;
}
