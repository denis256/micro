# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: network/network.proto

require 'google/protobuf'

require 'router/router_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_message "network.Query" do
    optional :service, :string, 1
    optional :address, :string, 2
    optional :gateway, :string, 3
    optional :router, :string, 4
    optional :network, :string, 5
  end
  add_message "network.ConnectRequest" do
    repeated :nodes, :message, 1, "network.Node"
  end
  add_message "network.ConnectResponse" do
  end
  add_message "network.NodesRequest" do
    optional :depth, :uint32, 1
  end
  add_message "network.NodesResponse" do
    repeated :nodes, :message, 1, "network.Node"
  end
  add_message "network.GraphRequest" do
    optional :depth, :uint32, 1
  end
  add_message "network.GraphResponse" do
    optional :root, :message, 1, "network.Peer"
  end
  add_message "network.RoutesRequest" do
    optional :query, :message, 1, "network.Query"
  end
  add_message "network.RoutesResponse" do
    repeated :routes, :message, 1, "router.Route"
  end
  add_message "network.ServicesRequest" do
  end
  add_message "network.ServicesResponse" do
    repeated :services, :string, 1
  end
  add_message "network.StatusRequest" do
  end
  add_message "network.StatusResponse" do
    optional :status, :message, 1, "network.Status"
  end
  add_message "network.Error" do
    optional :count, :uint32, 1
    optional :msg, :string, 2
  end
  add_message "network.Status" do
    optional :error, :message, 1, "network.Error"
  end
  add_message "network.Node" do
    optional :id, :string, 1
    optional :address, :string, 2
    optional :network, :string, 3
    map :metadata, :string, :string, 4
    optional :status, :message, 5, "network.Status"
  end
  add_message "network.Connect" do
    optional :node, :message, 1, "network.Node"
  end
  add_message "network.Close" do
    optional :node, :message, 1, "network.Node"
  end
  add_message "network.Peer" do
    optional :node, :message, 1, "network.Node"
    repeated :peers, :message, 2, "network.Peer"
  end
  add_message "network.Sync" do
    optional :peer, :message, 1, "network.Peer"
    repeated :routes, :message, 2, "router.Route"
  end
end

module Network
  Query = Google::Protobuf::DescriptorPool.generated_pool.lookup("network.Query").msgclass
  ConnectRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("network.ConnectRequest").msgclass
  ConnectResponse = Google::Protobuf::DescriptorPool.generated_pool.lookup("network.ConnectResponse").msgclass
  NodesRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("network.NodesRequest").msgclass
  NodesResponse = Google::Protobuf::DescriptorPool.generated_pool.lookup("network.NodesResponse").msgclass
  GraphRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("network.GraphRequest").msgclass
  GraphResponse = Google::Protobuf::DescriptorPool.generated_pool.lookup("network.GraphResponse").msgclass
  RoutesRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("network.RoutesRequest").msgclass
  RoutesResponse = Google::Protobuf::DescriptorPool.generated_pool.lookup("network.RoutesResponse").msgclass
  ServicesRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("network.ServicesRequest").msgclass
  ServicesResponse = Google::Protobuf::DescriptorPool.generated_pool.lookup("network.ServicesResponse").msgclass
  StatusRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("network.StatusRequest").msgclass
  StatusResponse = Google::Protobuf::DescriptorPool.generated_pool.lookup("network.StatusResponse").msgclass
  Error = Google::Protobuf::DescriptorPool.generated_pool.lookup("network.Error").msgclass
  Status = Google::Protobuf::DescriptorPool.generated_pool.lookup("network.Status").msgclass
  Node = Google::Protobuf::DescriptorPool.generated_pool.lookup("network.Node").msgclass
  Connect = Google::Protobuf::DescriptorPool.generated_pool.lookup("network.Connect").msgclass
  Close = Google::Protobuf::DescriptorPool.generated_pool.lookup("network.Close").msgclass
  Peer = Google::Protobuf::DescriptorPool.generated_pool.lookup("network.Peer").msgclass
  Sync = Google::Protobuf::DescriptorPool.generated_pool.lookup("network.Sync").msgclass
end
