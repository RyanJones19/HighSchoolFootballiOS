// swiftlint:disable all
import Amplify
import Foundation

extension LandmarkData {
  // MARK: - CodingKeys 
   public enum CodingKeys: String, ModelKey {
    case id
    case name
    case category
    case city
    case state
    case isFeatured
    case isFavorite
    case park
    case coordinates
    case imageName
    case createdAt
    case updatedAt
  }
  
  public static let keys = CodingKeys.self
  //  MARK: - ModelSchema 
  
  public static let schema = defineSchema { model in
    let landmarkData = LandmarkData.keys
    
    model.authRules = [
      rule(allow: .private, operations: [.create, .update, .delete, .read])
    ]
    
    model.listPluralName = "LandmarkData"

    
    model.attributes(
      .primaryKey(fields: [landmarkData.id])
    )
    
    model.fields(
      .field(landmarkData.id, is: .required, ofType: .string),
      .field(landmarkData.name, is: .required, ofType: .string),
      .field(landmarkData.category, is: .optional, ofType: .string),
      .field(landmarkData.city, is: .optional, ofType: .string),
      .field(landmarkData.state, is: .optional, ofType: .string),
      .field(landmarkData.isFeatured, is: .optional, ofType: .bool),
      .field(landmarkData.isFavorite, is: .optional, ofType: .bool),
      .field(landmarkData.park, is: .optional, ofType: .string),
      .field(landmarkData.coordinates, is: .optional, ofType: .embedded(type: CoordinateData.self)),
      .field(landmarkData.imageName, is: .optional, ofType: .string),
      .field(landmarkData.createdAt, is: .optional, isReadOnly: true, ofType: .dateTime),
      .field(landmarkData.updatedAt, is: .optional, isReadOnly: true, ofType: .dateTime)
    )
    }
}

extension LandmarkData: ModelIdentifiable {
  public typealias IdentifierFormat = ModelIdentifierFormat.Default
  public typealias IdentifierProtocol = DefaultModelIdentifier<Self>
}
