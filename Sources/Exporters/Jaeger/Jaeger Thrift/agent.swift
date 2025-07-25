/**
 * Autogenerated by Thrift Compiler (0.13.0)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */

#if !os(watchOS) && !os(visionOS)

  import Foundation

  import Thrift

  public protocol Agent {
    ///
    /// - Parameters:
    ///   - spans:
    /// - Throws:
    func emitZipkinBatch(spans: TList<Span>) throws

    ///
    /// - Parameters:
    ///   - batch:
    /// - Throws:
    func emitBatch(batch: Batch) throws
  }

  open class AgentClient: TClient /* , Agent */ {}

  public protocol AgentAsync {
    ///
    /// - Parameters:
    ///   - spans:
    ///   - completion: TAsyncResult<Void> wrapping return and following Exceptions:
    func emitZipkinBatch(spans: TList<Span>, completion: @escaping (TAsyncResult<Void>) -> Void)

    ///
    /// - Parameters:
    ///   - batch:
    ///   - completion: TAsyncResult<Void> wrapping return and following Exceptions:
    func emitBatch(batch: Batch, completion: @escaping (TAsyncResult<Void>) -> Void)
  }

  open class AgentAsyncClient<Protocol: TProtocol, Factory: TAsyncTransportFactory>: TAsyncClient<Protocol, Factory> /* , Agent */ {}

  open class AgentProcessor /* Agent */ {
    typealias ProcessorHandlerDictionary = [String: (Int32, TProtocol, TProtocol, Agent) throws -> Void]

    public var service: Agent

    public required init(service: Agent) {
      self.service = service
    }
  }

#endif
