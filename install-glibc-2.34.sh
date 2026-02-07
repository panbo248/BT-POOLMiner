#!/bin/bash

set -e  # 遇到错误立即停止

echo "========================================"
echo "GLIBC 2.34 一键安装脚本"
echo "安装位置: /opt/glibc-2.34"
echo "不会影响系统原有的 GLIBC"
echo "========================================"
echo ""

# 检查是否为 root
if [ "$EUID" -ne 0 ]; then 
    echo "❌ 错误: 请使用 root 权限运行"
    echo "使用命令: sudo bash $0"
    exit 1
fi

# 检查是否已经安装
if [ -d "/opt/glibc-2.34" ]; then
    echo "⚠️  /opt/glibc-2.34 已存在"
    read -p "是否删除重装？(y/N): " answer
    if [ "$answer" = "y" ] || [ "$answer" = "Y" ]; then
        rm -rf /opt/glibc-2.34
    else
        echo "安装取消"
        exit 0
    fi
fi

echo "📦 步骤 1/5: 安装编译依赖..."
apt-get update -qq
apt-get install -y build-essential wget gawk bison python3 > /dev/null 2>&1
echo "✅ 依赖安装完成"

echo ""
echo "📥 步骤 2/5: 下载 GLIBC 2.34 源码..."
cd /tmp
rm -rf glibc-2.34 glibc-2.34.tar.gz
wget -q --show-progress https://ftp.gnu.org/gnu/glibc/glibc-2.34.tar.gz
echo "✅ 下载完成"

echo ""
echo "📦 步骤 3/5: 解压源码..."
tar -xzf glibc-2.34.tar.gz
cd glibc-2.34
echo "✅ 解压完成"

echo ""
echo "🔧 步骤 4/5: 配置和编译（需要 20-40 分钟，请耐心等待）..."
mkdir -p build && cd build
../configure --prefix=/opt/glibc-2.34 \
             --disable-werror \
             --enable-kernel=3.2 \
             --with-headers=/usr/include > /tmp/glibc-configure.log 2>&1

echo "   开始编译... 这可能需要较长时间"
make -j$(nproc) > /tmp/glibc-make.log 2>&1
echo "✅ 编译完成"

echo ""
echo "📥 步骤 5/5: 安装到 /opt/glibc-2.34..."
make install > /tmp/glibc-install.log 2>&1
echo "✅ 安装完成"

echo ""
echo "🧹 清理临时文件..."
cd /
rm -rf /tmp/glibc-2.34 /tmp/glibc-2.34.tar.gz
echo "✅ 清理完成"

echo ""
echo "========================================"
echo "✅ GLIBC 2.34 安装成功！"
echo "========================================"
echo ""
echo "📝 使用方法："
echo ""
echo "方法 1 - 直接运行您的程序："
echo "  /opt/glibc-2.34/lib/ld-linux-x86-64.so.2 --library-path /opt/glibc-2.34/lib ~/ama/gpu"
echo ""
echo "方法 2 - 创建启动脚本（推荐）："
echo "  cat > ~/ama/run-gpu.sh << 'EOF'"
echo "#!/bin/bash"
echo "/opt/glibc-2.34/lib/ld-linux-x86-64.so.2 \\"
echo "  --library-path /opt/glibc-2.34/lib \\"
echo '  $(dirname "$0")/gpu "$@"'
echo "EOF"
echo "  chmod +x ~/ama/run-gpu.sh"
echo "  ~/ama/run-gpu.sh"
echo ""
echo "========================================"
