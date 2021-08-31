#获取golang
FROM golang:1.15

# 为我们的镜像设置必要的环境变量
ENV GO115MODULE=on \
    CGO_ENABLED=0 \
    GOOS=linux \
    GOARCH=amd64 \
	GOPROXY="https://goproxy.cn,direct"

# 移动到工作目录：/Users/mac/go/src/gitee.com/shirdonl/LeastMall
WORKDIR /Users/mac/go/src/gitee.com/shirdonl/LeastMall

# 将代码复制到容器中
COPY . .

# 将我们的代码编译成二进制可执行文件  可执行文件名为 app
RUN go build -o app .

# 声明服务端口
EXPOSE 8080

# 启动容器时运行的命令
CMD ["./app"]



