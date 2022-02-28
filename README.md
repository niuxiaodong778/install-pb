# install-pb
linux centos一键安装pb

# 1. linux 安装protoc 3
## 下载二进制文件到本地
```bash
wget https://github.com/protocolbuffers/protobuf/releases/download/v3.14.0/protoc-3.14.0-linux-x86_64.zip
```
## 解压并移动到用户目录
```bash
unzip protoc-3.14.0-linux-x86_64.zip
mv bin/protoc /usr/local/bin/
mv include/ /usr/local/include/
```
## 查看是否生效
```bash
protoc --version
libprotoc 3.14.0
```

## 
### 1. 常见问题
这样设置以后，找不到命令
### 解决方案
修改$PATH环境变量
### 2. protoc 没有执行权限
解决方案
```bash
chmod +x /usr/local/bin/protoc 
```
# 2. 生成xxx_grpc.pb.go
```
protoc  --go-grpc_out=./ xxx.proto
```
# 3. 生成xxx.pb.go
```bash
protoc  --go_out=./ xxx.proto
```
# 4. proto 3 demo
```proto
syntax = "proto3";
option go_package = "./";
message Request {
    string name = 1;
}

message Response {
    string name = 1;
}
// 定义服务
service Speak {

        // 定义方法
        rpc SpeakData(Request) returns (Response) {}

}
```








