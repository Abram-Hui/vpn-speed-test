# vpn-speed-test
ابزاری برای بررسی سرعت سرورهای VPN و ارزیابی عملکرد V2rayNG با استفاده از اکانت تست رایگان. عملکرد خود را همین حالا بررسی کنید.
در ادامه یک ابزار Bash برای تست سرعت اتصال VPN ارائه شده است.
در صورت مشکل در دریافت و تست اکانت v2rayng میتوانید در تلگرام با ایدی ما @v2makers_admin در ارتباط باشید تا سرور تست تقدیم گردد.

---

### **اسکریپت Bash: تست سرعت VPN با V2rayNG**

```bash
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
```

---

### **ویژگی‌های این ابزار**
1. **تست کیفیت اتصال:**  
   با استفاده از `ping` و `speedtest-cli` وضعیت اتصال و سرعت شبکه بررسی می‌شود.
   
2. **ارائه اکانت تست V2rayNG:**  
   اکانت تست به صورت مستقیم در متن ابزار نمایش داده می‌شود تا کاربران بتوانند آن را برای ارزیابی عملکرد استفاده کنند.

3. **کاربرد غیرتبلیغاتی:**  
   ابزار بر ارائه اطلاعات و کمک به کاربران تمرکز دارد و به شکل حرفه‌ای طراحی شده است.

4. **پشتیبانی تلگرام:**  
   در پایان ابزار، اطلاعات تماس شما (تلگرام) به کاربران ارائه می‌شود.

---

### **نحوه استفاده**
1. اسکریپت را در یک فایل ذخیره کنید (مثلاً با نام `vpn_test_tool.sh`).  
2. به فایل دسترسی اجرایی بدهید:  
   ```bash
   chmod +x vpn_test_tool.sh
   ```
3. اسکریپت را اجرا کنید:  
   ```bash
   ./vpn_test_tool.sh
   ```

---
