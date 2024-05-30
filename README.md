# Flutter BLoC Communication

This repository demonstrates multiple methods for communicating between BLoCs in a Flutter application.

## Methods

1. **Shared Repository/Service**
2. **Event Bus with Dependency Injection**
3. **Custom StreamController**

### 1. Shared Repository/Service

Shared Repository or Service allows BLoCs to communicate by listening to changes in a shared resource.

### 2. Event Bus with Dependency Injection

An Event Bus decouples BLoCs and allows them to communicate by emitting and listening for events. Using Dependency Injection with `get_it` enhances modularity.

### 3. Custom StreamController

A custom `StreamController` provides a direct way for BLoCs to communicate through a shared stream.

## Getting Started

### Prerequisites

- Flutter SDK
- Dart SDK

### Installation

1. Clone the repository
   ```sh
   git clone https://github.com/mhmdVoj/flutter_bloc_communication.git
