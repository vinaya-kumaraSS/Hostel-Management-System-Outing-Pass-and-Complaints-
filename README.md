# Hostel Management System (Outing Pass and Complaints)

## Overview

The Hostel Management System is a digital solution designed to streamline the management of hostel complaints and outing passes. It replaces traditional book-keeping methods with a structured, centralized approach for both hostel managers and students.

## Features

### Manager Login:
- **Add Students:** Easily add new students to the system.
- **View Complaints:** Access and manage complaints lodged by students.
- **Manage Outing Passes:** Approve or reject outing pass requests from students.

### Student Login:
- **Apply Complaints:** Lodge complaints directly through the app.
- **Apply for Outing Pass:** Request outing passes through a digital form.

## Technology Stack

- **Frontend:** Flutter
- **Backend:** PHP
- **Database:** SQL

## Installation

### Prerequisites

- Flutter SDK
- PHP and XAMPP (or any other local server)
- MySQL (or any compatible SQL database)

### Steps

1. **Clone the repository:**

    ```bash
    git clone https://github.com/your-username/hostel-management-system.git
    cd hostel-management-system
    ```

2. **Setup Backend:**

    - Start your XAMPP server.
    - Copy the backend PHP files to the `htdocs` directory in your XAMPP installation.
    - Import the SQL database:

        ```sql
        -- Open phpMyAdmin and create a new database
        CREATE DATABASE hostel_management;

        -- Import the provided SQL file
        USE hostel_management;
        SOURCE /path-to-your-cloned-repo/database/hostel_management.sql;
        ```

3. **Setup Frontend:**

    - Navigate to the Flutter project directory:

        ```bash
        cd hostel-management-system/flutter_app
        ```

    - Get the Flutter dependencies:

        ```bash
        flutter pub get
        ```

    - Run the Flutter app:

        ```bash
        flutter run
        ```

## Usage

1. **Manager Login:** Access the manager dashboard to add students, view complaints, and manage outing passes.
2. **Student Login:** Students can log in to apply for outing passes and lodge complaints.

## Project Structure

- **Backend:** Contains PHP scripts for handling database operations and server-side logic.
- **Frontend:** Contains the Flutter project for the mobile and web interface.

## Objectives

- **Centralized Complaints Management:** Efficiently handle and resolve student complaints.
- **Streamlined Outing Pass Management:** Digitalize the outing pass request and approval process.
- **Detailed Student Records:** Maintain accurate and up-to-date records of all students.
- **Manager Interface:** Provide a comprehensive interface for hostel managers to manage operations.

## Challenges Addressed

- Inefficiencies in manual complaint management.
- Delays in handling outing pass requests.
- Data inconsistencies with traditional record-keeping.

## Contributing

1. Fork the repository.
2. Create your feature branch (`git checkout -b feature/your-feature`).
3. Commit your changes (`git commit -m 'Add some feature'`).
4. Push to the branch (`git push origin feature/your-feature`).
5. Open a pull request.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Contact

For any inquiries or support, please contact [Vinayakumara S S](mailto:vinaykumarss904@gmail.com).

## App Images

| Image | Title |
|-------|-------|
| ![Image 1](path/to/image1.png) | Title 1 |
| ![Image 2](student login.png) | Title 2 |
| ![Image 3](path/to/image3.png) | Title 3 |
| ![Image 4](path/to/image4.png) | Title 4 |
| ![Image 5](path/to/image5.png) | Title 5 |
| ![Image 6](path/to/image6.png) | Title 6 |
| ![Image 7](path/to/image7.png) | Title 7 |
| ![Image 8](path/to/image8.png) | Title 8 |
| ![Image 9](path/to/image9.png) | Title 9 |
| ![Image 10](path/to/image10.png) | Title 10 |
| ![Image 11](path/to/image11.png) | Title 11 |
| ![Image 12](path/to/image12.png) | Title 12 |
| ![Image 13](path/to/image13.png) | Title 13 |
| ![Image 14](path/to/image14.png) | Title 14 |
