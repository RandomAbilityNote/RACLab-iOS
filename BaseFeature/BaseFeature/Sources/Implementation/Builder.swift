import Foundation

public protocol Buildable: AnyObject {}

open class Builder<DependencyType>: Buildable {
  private let dependency: DependencyType

    public init(dependency: DependencyType) {
        self.dependency = dependency
    }
}
