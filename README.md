# Flutter Clean Architecture & SDD Template

A professional-grade boilerplate for Flutter applications, built with a focus on **Clean Architecture**, **SOLID principles**, and **Spec-Driven Development (SDD)**. 

This template is designed for Senior Developers and Architects who prioritize maintainability, explicit code standards, and seamless integration with AI-assisted workflows like Cursor.

## 🚀 Architectural Vision

This project implements a strict separation of concerns, ensuring that the business logic remains independent of UI, frameworks, and external agents.

- **Domain Layer:** Pure Dart entities, use cases, and repository interfaces.
- **Data Layer:** Repository implementations, Data Sources (Remote/Local), and DTOs (Data Transfer Objects).
- **Presentation Layer:** State management using manual **BLoC** patterns powered by **RxDart**, ensuring reactive and predictable UI updates.

## 🛠 Tech Stack

- **State Management:** Custom BLoC implementation with `BehaviorSubject` (RxDart).
- **Functional Programming:** Robust error handling using the `Either` type from **`fpdart`**.
- **Dependency Injection:** Automated DI with **`injectable`** and **`get_it`**.
- **Formatting:** Adheres to the **"Airy Code"** standard (explicit typing, mandatory logical spacing, and high readability).

## 🤖 Spec-Driven Development (SDD) & AI Orchestration

This repository is optimized for **Cursor AI** and other agentic workflows. It includes a specialized `.cursor/rules/` configuration that enforces an **Orchestrator-Agent model**:

1.  **Technical Analysis:** Before any code is generated, the AI provides a technical proposal.
2.  **Specification First:** Features are defined via specifications before implementation.
3.  **Strict Compliance:** Automated enforcement of Clean Architecture boundaries and "Airy Code" formatting.

## 📏 Code Standards (Airy Code)

To ensure maximum clarity and reduce cognitive load, this template enforces:
- **No `var` keywords:** Explicit typing is mandatory for all variables and constants.
- **Logical Spacing:** Mandatory blank lines between assignments, logic blocks, and function calls.
- **Functional Failures:** No `try-catch` blocks in business logic; all errors are treated as data using `Either<Failure, Success>`.

## 📦 Getting Started

1. **Clone the repository:**
  ```bash
   git clone [https://github.com/alejantab/clean-architecture-template-sdd.git](https://github.com/alejantab/clean-architecture-template-sdd.git)
  ```
2. **Install dependencies:**
  ```bash
  flutter pub get
  ```
3. **Generar código (Injectable):**
  ```bash
  dart run build_runner build --delete-conflicting-outputs
  ```

## 📄 License

This project is licensed under the MIT License - see the LICENSE file for details.
