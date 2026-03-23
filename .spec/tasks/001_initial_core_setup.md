---
task_id: CORE-001
status: COMPLETED
priority: HIGH
---

# Task Spec: Initial Core Setup & DI Architecture

## 1. Objective
Establish the technical foundation for **PomoAlly** using Clean Architecture, Manual BLoC (RxDart), and Dependency Injection (GetIt + Injectable).

## 2. Architectural Impact
- **Core Layer:** Define the `InjectionContainer` and `AppModule` for third-party dependencies.
- **Domain Layer:** Prepare the base `Failure` classes using `fpdart`.
- **Presentation Layer:** Implement the `BaseBloc` abstract class with `CompositeSubscription`.
- **L10n:** Initialize `intl` configuration to prevent hardcoded strings.

## 3. Implementation Plan (Step-by-Step)

### Phase 1: Dependencies & Linter
- Add `get_it`, `injectable`, `rxdart`, `fpdart`, and `intl` to `pubspec.yaml`.
- Configure `analysis_options.yaml` to enforce **Explicit Typing** and **Airy Code** standards. 

### Phase 2: Folder Structure
Create the following hierarchy:
- `lib/app/constants/`
- `lib/app/di/`
- `lib/app/routes/`
- `lib/app/themes/`
- `lib/core/enums/`
- `lib/core/extensions/`
<!-- - `lib/core/error/` -->
- `lib/domain/entities/`
- `lib/domain/repositories/`
- `lib/domain/use_cases/`
- `lib/data/data_sources/`
- `lib/data/data_sources/api_sources/`
- `lib/data/data_sources/db_sources/`
- `lib/data/models/`
- `lib/data/repositories/`
- `lib/l10n/`
- `lib/presentation/bloc/`
- `lib/presentation/pages/`
- `lib/presentation/widgets/`

### Phase 3: DI & Base Classes
- Setup `injectable` init function.
- Create `BaseBloc` with a mandatory `dispose()` and `_subscriptions`.
- Setup `l10n.yaml` and initial `app_en.arb`.

## 4. Testing Strategy
- Setup `mocktail` in `dev_dependencies`.
- Create a `FakeAppLocalizations` for future BLoC tests.

## 5. Review & Approval
- [ ] Explicit types used in all new files?
- [ ] Logical spacing (Airy Code) applied?
- [ ] Comments in English only?