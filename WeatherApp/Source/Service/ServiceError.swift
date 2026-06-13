import Foundation

enum ServiceError: Error {
  case clientError
  case invalidStatusCode
  case noData
  case invalidFormat
}
