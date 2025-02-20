# Flutter 고급 - 현업 수준의 아키텍처 실습

> **본 저장소**는 infLearn의 [**Flutter 고급 - 현업 수준의 아키텍처**](https://www.inflearn.com/course/%ED%94%8C%EB%9F%AC%ED%84%B0%EA%B3%A0%EA%B8%89-%ED%98%84%EC%97%85%EC%88%98%EC%A4%80-%EC%95%84%ED%82%A4%ED%85%8D%EC%B2%98) 강의를 학습하며 작성한 실습 코드를 보관하기 위한 공간입니다.  
> 학습 시작일: **2025.01.07 (화)**

<br/>

## 소개

이 프로젝트는 Flutter로 레시피 앱을 만들면서 **현업 수준의 아키텍처**를 경험해 보는 것을 목표로 합니다.  
강의에서 제시된 Figma 디자인을 기반으로 **UI 작성**, **MVVM / MVI** 등 상태관리 패턴을 이해하고, **레포지토리(Repository) & UseCase**, **DI(의존성 주입)**, **Deep Link** 등 다양한 실무 테크닉을 적용합니다.

<br/>

## 개발자 소개

안녕하세요! 저는 안드로이드 개발자를 지향하는 학생 개발자입니다.

### 주요 기술 스택
- **모바일 개발**: Flutter/Dart, Kotlin/Android
- **UI 프레임워크**: Jetpack Compose, Flutter Widget
- **관심 분야**: 크로스 플랫폼 개발, 모바일 아키텍처

멀티플랫폼 개발에 큰 관심을 가지고 있으며, 특히 Kotlin과 Jetpack Compose를 활용한 안드로이드 네이티브 개발, 그리고 Flutter와 Dart를 이용한 크로스 플랫폼 개발을 주로 하고 있습니다.

<br/>

## 강의 정보

- **강의명**: Flutter 고급 - 현업 수준의 아키텍처
- **플랫폼**: [Inflearn](https://www.inflearn.com/)
- **강의자**: 오준석

<br/>

## 주요 학습 내용

- **UI 설계 & 스타일링**
  - Figma 프로젝트를 기반으로 한 **UI 컴포넌트**(버튼, 입력 필드, 탭 등) 작성
  - **폰트 설정** 및 **다양한 버튼 스타일** 구현
  - **반응형 UI 설계** 시 주의사항

- **상태관리 & 아키텍처**
  - **MVVM** 패턴과 **UI State Holder** 패턴 소개
  - **MVI** 패턴 적용
  - Provider, Bloc 등 라이브러리를 사용하지 않고도 상태를 관리하는 방법

- **로직 구현 & 데이터 관리**
  - **Repository**와 **UseCase** 패턴을 활용한 도메인 로직 분리
  - **DI(의존성 주입)**을 이용한 코드 유지보수성 확보
  - Result 패턴을 통한 **에러 핸들링** 전략

- **Routing & Navigation**
  - **go_router**를 활용한 라우팅 구성
  - **SplashScreen**, **SignInScreen**, **SignUpScreen** 등 화면 간 전환
  - **Deep Link** 적용 방법

- **추가 기능**
  - **검색 및 필터** 구현
  - **북마크 기능** 및 Stream을 활용한 **실시간 동기화**
  - **카테고리 선택 및 공유, Clipboard 활용**
  - **효율적인 라우팅 설계**와 BottomNavigation, Web 환경 연동

<br/>

## 커리큘럼

해당 강의의 주요 섹션과 학습 내용은 아래와 같습니다.

1. **섹션 1. 준비**  
   - 강의 소개

2. **섹션 2. 현업 수준의 레시피 앱 작성**  
   - 전체 소스코드  
   - Figma 프로젝트 가져오기  
   - 아키텍처(디렉토리 구조) / UI 스타일 정의 / 폰트 설정  
   - 각종 UI 컴포넌트(버튼, InputField, FilterButton, RatingButton 등) 작성  
   - 상태관리 심화 (MVVM, MVI, UI State Holder, freezed)  
   - Navigation (go_router) / Deep Link 적용  
   - Repository & UseCase 패턴  
   - DI(의존성 주입)  
   - 필터 기능 / 검색 기능 / 북마크 기능 / 카테고리 선택 기능  
   - 에러 핸들링 (Result 패턴)  
   - 메뉴 공유 & Rate Dialog & 클립보드 활용  

3. **섹션 3. 강의 영상에 도움이 되는 내용**  
   - 라우팅 설계시 실수하는 것 : Deep Link 가이드 (with Web 연동)

보다 상세한 커리큘럼 정보는 위 목록을 참고하거나 강의 페이지를 확인해주세요.

<br/>

## 학습 일지

### 2025-01-07
0. 강의 : 03 아키텍처 (디렉토리 구조)
1. 내용:
- 클린 아키텍처 기반의 프로젝트 디렉토리 구조 설정
  - core: 공통 유틸리티 및 핵심 기능
  - data: 데이터 소스 및 저장소 구현
  - domain: 비즈니스 로직 및 엔티티
  - presentation: 상태 관리 및 뷰모델
  - ui: 사용자 인터페이스 컴포넌트
- 스타일 상수 파일 생성
  - color_styles: 색상 테마 정의
  - text_styles: 텍스트 스타일 정의

2. 학습 내용 및 인사이트:
- **클린 아키텍처의 실제 적용**: 클린 아키텍처를 실제 프로젝트에 적용하면서, 각 계층의 역할과 책임을 명확히 이해하게 됨
- **구조화된 스타일 관리**: 색상과 텍스트 스타일을 별도 파일로 분리함으로써 일관된 디자인 시스템을 유지하고 테마 변경에 유연하게 대응할 수 있는 구조를 구축함

0. 강의 : 04 UI 스타일 정의
1. 내용:
- 피그마 디자인을 기반으로 한 스타일 시스템 구축
  - `color_styles.dart`: 색상 상수 정의
    - 기본 색상 (black, white, gray 계열)
    - 주요 색상 (primary, secondary 계열)
    - 상태 표시 색상 (warning, success, error 등)
  - `text_styles.dart`: 텍스트 스타일 정의
    - 크기별 스타일 (title, header, large, medium, normal, small, smaller)
    - 굵기별 스타일 (Bold, Regular)
    - 일관된 폰트 사이즈 체계 (50px ~ 11px)

2. 학습 내용 및 인사이트:
- **디자인 시스템의 체계화**: 색상과 텍스트 스타일을 추상 클래스로 분리하여 관리함으로써, 앱 전체에서 일관된 디자인 시스템을 유지할 수 있게 됨
- **색상 관리 전략**: 
  - 색상값을 명확한 의미를 가진 상수로 정의하여 유지보수성 향상
  - 색상의 투명도와 농도를 체계적으로 관리 (100%, 80%, 60%, 40%, 20%)
- **확장성 있는 텍스트 스타일**: 
  - Bold와 Regular 두 가지 weight를 기준으로 명확한 크기 체계를 구축
  - 재사용 가능한 스타일 상수를 통해 일관된 타이포그래피 유지

0. 강의 : 05 폰트 설정
1. 내용:
- google_fonts 패키지 추가 및 설정
  - pubspec.yaml에 google_fonts: ^6.2.1 의존성 추가
  - TextStyles 클래스의 모든 텍스트 스타일을 GoogleFonts.poppins로 변경
  - const 제거 및 정적 TextStyle 객체로 변환

2. 학습 내용 및 인사이트:
- **구글 폰트 적용**: 
  - GoogleFonts 패키지를 통해 Poppins 폰트를 앱 전체에 적용
  - 웹 폰트를 사용함으로써 앱 크기를 줄이고 폰트 관리를 간소화
- **정적 스타일 관리**: 
  - const 대신 정적 TextStyle 객체를 사용하여 GoogleFonts와 호환되는 구조로 변경
  - 일관된 폰트 스타일을 유지하면서도 동적인 폰트 적용이 가능해짐

### 2025-01-09
0. 강의 : 06-0 [UI 심화] UI 작성시 실수하는 것
1. 내용:
- Component를 만들 때 onTap 이벤트를 Component 내부에 만들지 말 것
- VoidCallBack을 매개변수로 넘겨 받아 onTap 이벤트를 처리할 것
- Component는 순수하게 Component 자체로 재사용 가능한 형태로 작성할 것