-- MINH TRÍ HUB - BANANA BYPASS
print("Dang danh lua he thong Banana...")

-- Fake cái biến môi trường của nó (nếu có)
getgenv().BananaCat_Loaded = true

-- GỌI THẲNG TỪ LINK GỐC CỦA NÓ LUÔN (CHO NÓ KHỎI CHECK)
loadstring(game:HttpGet("https://raw.githubusercontent.com/obiiyeuem/vthangsitink/main/BF-BananaCat.lua"))()

-- Thông báo của riêng mày
warn("Minh Tri Hub: Da kich hoat Banana thanh cong!")
