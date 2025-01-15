# Supermarket Management System

## Overview

The **Supermarket Management System** is a desktop application built using Visual Basic 6.0. It simplifies the management of supermarket operations, including inventory management, sales processing, and customer management. This project utilizes `.bas`, `.cls`, `.form` files for program logic and user interface design, along with `.db` files for database storage.

## Features

- **Inventory Management**  
  Add, update, and delete products in the inventory, including details like price, stock, and category.

- **Sales Processing**  
  Process sales transactions and generate invoices for customers.

- **Customer Management**  
  Store customer details for loyalty programs and purchase tracking.

- **Reporting**  
  Generate daily, weekly, or monthly sales reports.

- **User Authentication**  
  Secure login system for admins and staff members.

## File Structure

- **`.bas` Files**  
  Contain core program logic, including utility functions and global variables.

- **`.cls` Files**  
  Encapsulate reusable components, such as database connection handlers or data models.

- **`.form` Files**  
  Define the graphical user interface for various components of the system, including:
  - Inventory Management
  - Sales Dashboard
  - Reports Viewer
  - Login Screen

- **`.db` File**  
  Stores the application’s data, such as product details, sales records, and customer information.

## Prerequisites

- **Visual Basic 6.0** installed on your system.
- A supported Windows operating system.
- Database engine compatible with the `.db` file format (e.g., Microsoft Access).

## Installation

1. Clone this repository to your local machine:
   ```bash
   git clone https://github.com/yourusername/supermarket-management.git
   cd supermarket-management
   ```

2. Open the project in Visual Basic 6.0:
   - Launch VB6 IDE.
   - Open the `.vbp` project file included in the repository.

3. Set up the database:
   - Open the `.db` file using Microsoft Access or your preferred database editor.
   - Configure connection strings in the `.bas` or `.cls` files if necessary.

4. Run the application:
   - Press the `Run` button in the VB6 IDE.

## Usage

1. **Login**  
   Enter admin or staff credentials to access the system.

2. **Manage Inventory**  
   - Navigate to the "Inventory" section.
   - Add, update, or delete products.

3. **Process Sales**  
   - Use the "Sales" interface to scan products, calculate totals, and print invoices.

4. **Generate Reports**  
   - Navigate to the "Reports" section.
   - Choose the desired report type and date range.

5. **Logout**  
   - Click on the "Logout" button to secure your session.

## Screenshots

*Include screenshots of the login screen, inventory management, sales processing, and reports here.*

## Contributing

We welcome contributions to enhance the functionality of this project. Please follow these steps:

1. Fork the repository.
2. Create a new branch for your feature or bug fix:
   ```bash
   git checkout -b feature-name
   ```
3. Commit your changes and push to your branch:
   ```bash
   git commit -m "Description of changes"
   git push origin feature-name
   ```
4. Open a pull request.

## License

This project is licensed under the [MIT License](LICENSE).

## Acknowledgments

- Visual Basic 6.0 for providing a robust platform for desktop application development.
- Microsoft Access for database management.
