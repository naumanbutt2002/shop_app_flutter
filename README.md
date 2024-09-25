![shopping](https://github.com/user-attachments/assets/2d90bf39-03e1-459e-bc3d-1f500c18bbcf)

# Shop App Flutter

![Platform](https://img.shields.io/badge/platform-iOS%20|%20Android-brightgreen)
![Version](https://img.shields.io/badge/version-1.0.0-blue)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

## Table of Contents

- [Introduction](#introduction)
- [Features](#features)
- [Screenshots](#screenshots)
- [Installation](#installation)
- [Usage](#usage)
- [Technologies Used](#technologies-used)
- [Architecture](#architecture)
- [Roadmap](#roadmap)
- [Contributing](#contributing)
- [License](#license)
- [Contact](#contact)

## Introduction
The **Shop App Flutter** is a fully functional e-commerce application developed using **Flutter**, **Provider**, **Firebase**, and **Dart**. It features a sleek and intuitive UI for browsing products, managing a shopping cart, and handling orders. Firebase integration allows for adding products to the cart and fetching cart data, ensuring a dynamic user experience. The app architecture is designed with scalability in mind, making it easy to extend and adapt for future features.

## Features

- **Product Listing**: Browse a wide range of products with detailed descriptions and images.
- **Shopping Cart:** Add products to your cart via Firebase, update quantities, and remove items as needed.
- **Product Details**: View detailed information about each product, including images, descriptions, and pricing.
- **Firebase Integration:** Add products to the cart and fetch cart details directly from Firebase.
- **Provider State Management**: Efficient state management across the app using the Provider package.
- **Responsive Design**: Optimized for both iOS and Android, ensuring a smooth experience across devices.

## Screenshots

| ![IMG-20240903-WA0001](https://github.com/user-attachments/assets/732a89b4-e6ab-4758-b894-69b3ec8cabc2) | ![IMG-20240903-WA0003](https://github.com/user-attachments/assets/b43232d9-52ef-41d8-9822-6dedf70d6560) |
|:---------------------------------------:|:--------------------------------------:|
| *Product List Screen*                           | *Product Details Screen*                   |

| ![IMG-20240903-WA0002](https://github.com/user-attachments/assets/a6ac7b0b-c17b-4fbf-90b6-6a18d566ea6f) | ![IMG-20240903-WA0004](https://github.com/user-attachments/assets/d96d6285-b028-4211-bdb8-2cb5dedf03b9) |
|:-----------------------------------------:|:----------------------------------------------------:|
| *Shopping Cart*      | *Shopping Cart Dialog*                           |

## Installation

### Prerequisites

- **Flutter**: Ensure Flutter is installed on your machine. Follow the official [Flutter installation guide](https://flutter.dev/docs/get-started/install) for your OS.
- **Firebase:** Set up a Firebase project and add the necessary configurations for Android and iOS.
### Steps

1. Clone the repository:
   ```bash
   git clone https://github.com/naumanbutt2002/shop_app_flutter.git
2. Navigate to the project directory:
   ```bash
   cd shop_app_flutter
3. Install dependencies:
   ```bash
   flutter pub get
4. Set up Firebase:
    - Add your google-services.json (for Android) and GoogleService-Info.plist (for iOS) to the respective directories.
5. Run the app:
- For iOS:
   ```bash
   flutter run -d ios
- For Android:
   ```bash
   flutter run -d android
   
## Usage
### Browsing Products:
- Start the application after installation by running 'flutter run' on your preferred device.
- Browse the list of products on the home screen.
- Select a product to view its details, including description and pricing.
  
### Managing the Shopping Cart:

- Add items to the shopping cart from the product details screen.
- The cart data is stored and fetched from Firebase.
- Review your cart, update quantities, or remove items.
- Proceed to checkout (functionality to be implemented).

## Technologies Used
- **Flutter**: Cross-platform UI toolkit.
- **Provider**: State management solution for Flutter.
- **Firebase**: For managing cart functionality and real-time data sync.
- **Dart**: Programming language used to build the application.
  
## Architecture
This project is structured to ensure scalability and maintainability. It is organized into the following layers:

- **Presentation Layer**: Handles the UI, including Widgets and state management using Provider.
- **Domain Layer**: Manages business logic and use cases.
- **Data Layer**: Manages data retrieval from repositories, including mock data sources.
  
### Folder Structure
   ```bash
lib/
├── data/
│   ├── datasources/
│   ├── repositories/
│   └── models/
├── domain/
│   ├── repositories/
│   ├── usecases/
├── presentation/
│   ├── providers/
│   ├── pages/
|       ├── cart_page.dart
|       ├── home_page.dart
|       ├── product_details_page.dart
│   └── widgets/

```
## Roadmap
- - [x] Initial release with core features.
- - [ ] Add advanced search filters.
- - [ ] Integration with payment gateways.
- - [ ] Release version 1.0.

## Contributing
Contributions are welcome! Please follow the steps below:

1. Fork the repository.
2. Create a new branch ('**git checkout -b feature-branch**').
3. Make your changes.
4. Commit your changes ('**git commit -m 'Add some feature'**').
5. Push to the branch ('**git push origin feature-branch**').
6. Open a pull request.

Please ensure all contributions align with the Clean Architecture principles used in this project.

## License
Distributed under the [MIT](https://choosealicense.com/licenses/mit/) License. See LICENSE for more information.

## Contact
Muhammad Nauman</br>
naumanbutt2002@gmail.com</br>
[Linkedin](https://www.linkedin.com/in/muhammad-nauman-3746b718a//) | [Instagram](https://www.instagram.com/naumanbutt2002/)

You can also follow my GitHub Profile to stay updated about my latest projects: [Github](https://github.com/naumanbutt2002)
