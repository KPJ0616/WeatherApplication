# 🌤 Apple Weather App Clone

Apple 기본 날씨 앱을 참고하여 제작한 iOS 날씨 애플리케이션입니다.
사용자의 현재 위치 및 저장된 지역의 날씨 정보를 조회할 수 있으며, Dark Sky API를 이용하여 실시간 날씨 데이터를 제공합니다.

---

## 📱 프로젝트 소개

이 프로젝트는 Apple Weather 앱의 UI와 주요 기능을 구현하는 것을 목표로 개발되었습니다.

사용자는 현재 위치의 날씨를 확인할 수 있으며, 원하는 지역을 추가하여 여러 지역의 날씨 정보를 한 번에 조회할 수 있습니다.

---

## 🚀 주요 기능

### 현재 위치 날씨 조회
- GPS 기반 현재 위치 확인
- 현재 기온 및 날씨 상태 표시

### 지역별 날씨 조회
- 여러 지역 저장 가능
- 저장된 지역의 날씨 정보 확인

### 시간별 예보
- 시간 단위 날씨 정보 제공
- 기온 및 날씨 아이콘 표시

### 일별 예보
- 주간 날씨 예보 제공
- 최고/최저 기온 표시

### 상세 날씨 정보
- 습도
- 체감온도
- 풍속
- 기압
- 가시거리
- 자외선 지수
- 일출/일몰 시간

### 데이터 저장
- UserDefaults 활용
- 앱 종료 후에도 저장된 위치 유지

---

## 🛠 개발 환경

| 항목 | 내용 |
|--------|--------|
| Language | Swift 5 |
| IDE | Xcode |
| Architecture | MVC |
| Network | URLSession |
| Parsing | JSONSerialization |
| Location | CoreLocation |
| Map | MapKit |
| Storage | UserDefaults |

---

## 📂 프로젝트 구조

```text
WeatherApp
│
├── DataModel
│   ├── Weather
│   ├── Currently
│   ├── Hourly
│   ├── Daily
│   ├── Location
│   └── DataManager
│
├── Service
│   ├── WeatherService
│   ├── WeatherServiceType
│   └── ServiceError
│
├── Utility
│   ├── Extensions
│   └── Helper
│
└── Weather
    ├── CurrentLocationWeatherView
    ├── DailyWeatherCollectionView
    ├── HourlyWeatherCollectionView
    └── MyWeatherList
```

---

## 🌐 API

### Dark Sky API

본 프로젝트는 Dark Sky API를 사용하여 날씨 데이터를 가져옵니다.

```swift
https://api.darksky.net/forecast/{API_KEY}/{latitude},{longitude}
```

사용 데이터

- 현재 날씨(Currently)
- 시간별 예보(Hourly)
- 일별 예보(Daily)

---

## 📊 데이터 흐름

```text
사용자 위치 획득
        ↓
WeatherService 요청
        ↓
Dark Sky API 응답
        ↓
JSON Parsing
        ↓
DataManager 저장
        ↓
UI 업데이트
```

---

## 🔧 핵심 구현 내용

### Network Layer

- URLSession 사용
- Result 타입 기반 비동기 처리
- 에러 핸들링 구현

### Data Manager

- Singleton 패턴 적용
- 날씨 데이터 중앙 관리
- NotificationCenter를 통한 데이터 변경 감지

### Location Management

- CoreLocation 활용
- 현재 위치 자동 갱신

### Persistence

- UserDefaults 저장
- 저장된 위치 복원 기능

---

## 📸 주요 화면

### 메인 날씨 화면
- 현재 위치 날씨 표시
- 시간별 예보
- 일별 예보
- 상세 기상 정보

### 지역 관리 화면
- 지역 추가
- 저장된 지역 목록 조회
- 지역 선택 시 날씨 확인

---

## 💡 배운 점

- URLSession을 이용한 네트워크 통신
- JSONSerialization 기반 데이터 파싱
- CoreLocation을 활용한 위치 서비스 구현
- NotificationCenter를 이용한 데이터 동기화
- UserDefaults를 활용한 데이터 영속성 관리
- CollectionView 기반 UI 구성

---

## 📌 향후 개선 사항

- 최신 WeatherKit API 적용
- MVVM 아키텍처 리팩토링
- Combine 적용
- 다크 모드 지원
- 검색 기능 개선
- Unit Test 추가

---

## 👨‍💻 개발자

김필중

---

## 📄 License

MIT License
