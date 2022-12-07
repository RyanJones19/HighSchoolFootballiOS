// swiftlint:disable all
import Amplify
import Foundation

// Contains the set of classes that conforms to the `Model` protocol. 

final public class AmplifyModels: AmplifyModelRegistration {
  public let version: String = "f86db6401f3cc6ec7bb6d1ae37d31c76"
  
  public func registerModels(registry: ModelRegistry.Type) {
    ModelRegistry.register(modelType: LandmarkData.self)
  }
}