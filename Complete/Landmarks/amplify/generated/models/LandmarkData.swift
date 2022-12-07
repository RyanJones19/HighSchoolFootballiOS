// swiftlint:disable all
import Amplify
import Foundation

public struct LandmarkData: Model {
  public let id: String
  public var name: String
  public var category: String?
  public var city: String?
  public var state: String?
  public var isFeatured: Bool?
  public var isFavorite: Bool?
  public var park: String?
  public var coordinates: CoordinateData?
  public var imageName: String?
  public var createdAt: Temporal.DateTime?
  public var updatedAt: Temporal.DateTime?
  
  public init(id: String = UUID().uuidString,
      name: String,
      category: String? = nil,
      city: String? = nil,
      state: String? = nil,
      isFeatured: Bool? = nil,
      isFavorite: Bool? = nil,
      park: String? = nil,
      coordinates: CoordinateData? = nil,
      imageName: String? = nil) {
    self.init(id: id,
      name: name,
      category: category,
      city: city,
      state: state,
      isFeatured: isFeatured,
      isFavorite: isFavorite,
      park: park,
      coordinates: coordinates,
      imageName: imageName,
      createdAt: nil,
      updatedAt: nil)
  }
  internal init(id: String = UUID().uuidString,
      name: String,
      category: String? = nil,
      city: String? = nil,
      state: String? = nil,
      isFeatured: Bool? = nil,
      isFavorite: Bool? = nil,
      park: String? = nil,
      coordinates: CoordinateData? = nil,
      imageName: String? = nil,
      createdAt: Temporal.DateTime? = nil,
      updatedAt: Temporal.DateTime? = nil) {
      self.id = id
      self.name = name
      self.category = category
      self.city = city
      self.state = state
      self.isFeatured = isFeatured
      self.isFavorite = isFavorite
      self.park = park
      self.coordinates = coordinates
      self.imageName = imageName
      self.createdAt = createdAt
      self.updatedAt = updatedAt
  }
}