#!/usr/bin/env python3
"""
Simple MQTT Web Server
Serve web interface và có thể dùng làm MQTT broker test (nếu cần)
"""

import http.server
import socketserver
import os
import sys
import webbrowser
from pathlib import Path

PORT = 8000

class MyHTTPRequestHandler(http.server.SimpleHTTPRequestHandler):
    def end_headers(self):
        self.send_header('Access-Control-Allow-Origin', '*')
        self.send_header('Access-Control-Allow-Methods', 'GET, POST, OPTIONS')
        self.send_header('Access-Control-Allow-Headers', 'Content-Type')
        if self.path.endswith('.html') or self.path == '/':
            self.send_header('Content-Type', 'text/html; charset=utf-8')
        super().end_headers()
    
    def do_GET(self):
        if self.path == '/':
            self.path = '/mqtt_control.html'
        return super().do_GET()

def main():
    print("\n" + "="*60)
    print("  " + "\033[1m\033[96mMQTT Relay Control - Web Server\033[0m")
    print("="*60 + "\n")
    
    os.chdir(Path(__file__).parent)
    
    try:
        with socketserver.TCPServer(("", PORT), MyHTTPRequestHandler) as httpd:
            server_url = f"http://localhost:{PORT}/mqtt_control.html"
            
            print(f"\033[92m[SUCCESS]\033[0m Server đã khởi động!")
            print(f"\033[93m[INFO]\033[0m Địa chỉ: \033[1m{server_url}\033[0m")
            print()
            print("\033[96m[NOTE]\033[0m Cấu hình MQTT Broker:")
            print("       - Local: ws://localhost:9001")
            print("       - Remote: ws://your-broker-ip:9001")
            print()
            print("\033[93m[ACTION]\033[0m Đang mở browser...")
            print("\033[90m[INFO]\033[0m Nhấn Ctrl+C để dừng server\n")
            
            try:
                webbrowser.open(server_url)
            except:
                print(f"Vui lòng mở thủ công: {server_url}\n")
            
            httpd.serve_forever()
            
    except OSError as e:
        if "Address already in use" in str(e):
            print(f"\033[91m[ERROR]\033[0m Port {PORT} đã được sử dụng!")
            print(f"       Thử: python3 mqtt_server.py --port 8080")
        else:
            print(f"\033[91m[ERROR]\033[0m {e}")
        sys.exit(1)
    except KeyboardInterrupt:
        print("\n\n\033[93m[INFO]\033[0m Đang dừng server...")
        print("\033[92m[SUCCESS]\033[0m Server đã dừng.\n")
        sys.exit(0)

if __name__ == "__main__":
    if len(sys.argv) > 1 and ('--port' in sys.argv or '-p' in sys.argv):
        try:
            idx = sys.argv.index('--port') if '--port' in sys.argv else sys.argv.index('-p')
            PORT = int(sys.argv[idx + 1])
        except:
            print("Port không hợp lệ!")
            sys.exit(1)
    
    main()
