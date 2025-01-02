#!/bin/bash

# تنظیمات اولیه
TEST_SERVER="your-v2ray-server.com"
TEST_PORT="443"
TEST_PROTOCOL="v2ray"
TEST_ACCOUNT="vmess://your-test-account" # اکانت تست

# بررسی نصب speedtest-cli
if ! command -v speedtest-cli &> /dev/null; then
  echo "ابزار speedtest-cli نصب نشده است. لطفاً ابتدا آن را نصب کنید:"
  echo "sudo apt install speedtest-cli"
  exit 1
fi

# نمایش اطلاعات اولیه
echo "===================================="
echo "    ابزار تست سرعت اتصال VPN"
echo "===================================="
echo "این ابزار برای بررسی کیفیت و سرعت اتصال VPN طراحی شده است."
echo "برای ارزیابی سرویس‌های مبتنی بر پروتکل V2rayNG از اطلاعات زیر استفاده کنید:"
echo "آدرس سرور تست: $TEST_SERVER"
echo "پروتکل: $TEST_PROTOCOL"
echo "لینک اکانت تست V2rayNG:"
echo "$TEST_ACCOUNT"
echo "===================================="

# تست اتصال به سرور
echo "در حال بررسی وضعیت سرور تست ($TEST_SERVER)..."
ping -c 3 $TEST_SERVER &> /dev/null
if [ $? -ne 0 ]; then
  echo "خطا: سرور تست در دسترس نیست. لطفاً اتصال خود را بررسی کنید."
  exit 1
fi

# اجرای تست سرعت
echo "در حال اندازه‌گیری سرعت دانلود و آپلود..."
speedtest-cli --simple

echo "===================================="
echo "    پایان تست سرعت"
echo "===================================="
echo "برای دریافت اطلاعات بیشتر یا اکانت دائمی، با تلگرام ما در ارتباط باشید: @v2makers_admin"
